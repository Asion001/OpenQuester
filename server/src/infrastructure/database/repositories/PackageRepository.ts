import { In, Repository } from "typeorm";

import {
  PACKAGE_SELECT_FIELDS,
  PACKAGE_SELECT_RELATIONS,
} from "domain/constants/package";
import { FileSource } from "domain/enums/file/FileSource";
import { FileDTO } from "domain/types/dto/file/FileDTO";
import { PackageDTO } from "domain/types/dto/package/PackageDTO";
import { PaginatedResult } from "domain/types/pagination/PaginatedResult";
import {
  PaginationOpts,
  PaginationOrder,
} from "domain/types/pagination/PaginationOpts";
import { SelectOptions } from "domain/types/SelectOptions";
import { Database } from "infrastructure/database/Database";
import { File } from "infrastructure/database/models/File";
import { FileUsage } from "infrastructure/database/models/FileUsage";
import { Package } from "infrastructure/database/models/package/Package";
import { PackageAnswerFile } from "infrastructure/database/models/package/PackageAnswerFile";
import { PackageQuestion } from "infrastructure/database/models/package/PackageQuestion";
import { PackageQuestionChoiceAnswer } from "infrastructure/database/models/package/PackageQuestionChoiceAnswer";
import { PackageQuestionFile } from "infrastructure/database/models/package/PackageQuestionFile";
import { PackageRound } from "infrastructure/database/models/package/PackageRound";
import { PackageTag } from "infrastructure/database/models/package/PackageTag";
import { PackageTheme } from "infrastructure/database/models/package/PackageTheme";
import { User } from "infrastructure/database/models/User";
import { FileRepository } from "infrastructure/database/repositories/FileRepository";
import { PackageTagRepository } from "infrastructure/database/repositories/TagRepository";
import { StorageUtils } from "infrastructure/utils/StorageUtils";

export class PackageRepository {
  constructor(
    private readonly db: Database,
    private readonly repository: Repository<Package>,
    private readonly packageTagRepository: PackageTagRepository,
    private readonly fileRepository: FileRepository
  ) {
    //
  }

  public async get(
    id: number,
    select: (keyof Package)[] = PACKAGE_SELECT_FIELDS,
    relations: string[]
  ) {
    return this.repository.findOne({
      where: { id },
      select,
      relations,
    });
  }

  public async list(
    paginationOpts: PaginationOpts<Package>
  ): Promise<PaginatedResult<Package[]>> {
    const {
      order = PaginationOrder.ASC,
      sortBy = "created_at",
      offset,
      limit,
    } = paginationOpts;

    const [data, total] = await this.repository.findAndCount({
      relations: PACKAGE_SELECT_RELATIONS,
      select: PACKAGE_SELECT_FIELDS,
      order: { [sortBy]: order.toUpperCase() },
      skip: offset,
      take: limit,
    });

    return {
      data,
      pageInfo: { total },
    };
  }
  public findByIds(
    ids: number[],
    selectOptions: SelectOptions<Package>
  ): Promise<Package[]> {
    return this.repository.find({
      where: { id: In(ids) },
      relations: selectOptions.relations,
    });
  }

  public async getCountsForPackage(
    packageId: number
  ): Promise<{ roundsCount: number; questionsCount: number }> {
    const result = await this.repository
      .createQueryBuilder("package")
      .select("COUNT(DISTINCT round.id)", "roundCount")
      .addSelect("COUNT(question.id)", "questionCount")
      .leftJoin("package.rounds", "round")
      .leftJoin("round.themes", "theme")
      .leftJoin("theme.questions", "question")
      .where("package.id = :packageId", { packageId })
      .getRawOne();

    if (!result) {
      return {
        roundsCount: 0,
        questionsCount: 0,
      };
    }

    return {
      roundsCount: Number(result.roundCount),
      questionsCount: Number(result.questionCount),
    };
  }

  // TODO: Implement better errors handling
  /**
   * Creates package and all related data (rounds, themes etc.) in one transaction
   * @param packageData Full package data with rounds and other
   * @param author Package author, typically current user
   * @returns Package data and files, which can be used for links generation
   */
  public async create(
    packageData: PackageDTO,
    author: User
  ): Promise<{
    pack: Package;
    files: FileDTO[];
  }> {
    /** Files used for file upload links generating later */
    const files: FileDTO[] = [];

    return this.db.dataSource.transaction(async (transaction) => {
      // Process Tags, fetch old and save new tags
      const tagNames = (packageData.tags || []).map((tagData) => tagData.tag);

      const existingTags: PackageTag[] =
        await this.packageTagRepository.getTagsByNames(tagNames);

      const existingTagMap = new Map<string, PackageTag>(
        existingTags.map((tag) => [tag.tag, tag])
      );

      const newTags: PackageTag[] = [];
      const tagEntities: PackageTag[] = [];
      for (const tagName of tagNames) {
        let tag = existingTagMap.get(tagName);
        if (!tag) {
          tag = new PackageTag();
          tag.import({ tag: tagName });
          newTags.push(tag);
        }
        tagEntities.push(tag);
      }

      // Save logo info to DB before creating package
      let logoFile = null;
      if (packageData.logo?.file.md5) {
        logoFile = await this.fileRepository.getFileByFilename(
          packageData.logo.file.md5
        );
        if (!logoFile) {
          logoFile = new File();
          logoFile.import({
            filename: packageData.logo.file.md5,
            source: FileSource.S3,
            created_at: new Date(),
            path: StorageUtils.getFilePath(packageData.logo.file.md5),
          });
          await transaction.save(logoFile);
        }
      }

      // Create, import and save package
      const pack = new Package();

      pack.import({
        ageRestriction: packageData.ageRestriction,
        createdAt: new Date(),
        author: author,
        title: packageData.title,
        description: packageData.description,
        language: packageData.language,
        logo: logoFile,
        // Saved automatically because of cascade
        tags: tagEntities,
      });
      await transaction.save(pack);

      // Arrays for bulk upload
      const roundsToSave: PackageRound[] = [];
      const themesToSave: PackageTheme[] = [];
      const questionsToSave: PackageQuestion[] = [];
      const questionFilesToSave: PackageQuestionFile[] = [];
      const answerFilesToSave: PackageAnswerFile[] = [];
      const filesToSave: File[] = [];
      const fileUsagesToSave: FileUsage[] = [];
      const answersToSave: PackageQuestionChoiceAnswer[] = [];

      // Create Rounds, Themes, Questions, and Associated Entities
      for (const roundData of packageData.rounds) {
        const round = new PackageRound();

        // Import and save round
        round.import({
          description: roundData.description,
          name: roundData.name,
          package: pack,
        });
        roundsToSave.push(round);

        for (const themeData of roundData.themes) {
          const theme = new PackageTheme();

          // Import and save theme
          theme.import({
            description: themeData.description,
            name: themeData.name,
            round,
          });
          themesToSave.push(theme);

          for (const questionData of themeData.questions) {
            const question = new PackageQuestion();

            // Import and save question data
            question.import({
              theme: theme,
              price: questionData.price,
              type: questionData.type,
              isHidden: questionData.isHidden,
              text: questionData.text,
              answerHint: questionData.answerHint,
              answerText: questionData.answerText,
              answerDelay: questionData.answerDelay,
              questionComment: questionData.questionComment,
              subType: questionData.subType,
              maxPrice: questionData.maxPrice,
              allowedPrices: questionData.allowedPrices,
              transferType: questionData.transferType,
              priceMultiplier: questionData.priceMultiplier,
              showDelay: questionData.showDelay,
            });
            questionsToSave.push(question);

            // Create and save question files
            for (const questionFileData of questionData.questionFiles || []) {
              const fileEntity = new File();
              fileEntity.import({
                filename: questionFileData.file.md5,
                source: FileSource.S3,
                created_at: new Date(),
                path: StorageUtils.getFilePath(questionFileData.file.md5),
              });

              const questionFile = new PackageQuestionFile();
              questionFile.import({
                file: fileEntity,
                type: questionFileData.file.type,
                display_time: questionFileData.displayTime,
                question: question,
              });

              filesToSave.push(fileEntity);
              questionFilesToSave.push(questionFile);

              const fileUsage = new FileUsage();
              fileUsage.import({
                file: fileEntity,
                user: undefined,
                package: pack,
              });
              fileUsagesToSave.push(fileUsage);

              files.push(fileEntity.toDTO());
            }

            // Create and save answer files with the saved question
            for (const answerFileData of questionData.answerFiles || []) {
              const fileEntity = new File();
              fileEntity.import({
                filename: answerFileData.file.md5,
                source: FileSource.S3,
                created_at: new Date(),
                path: StorageUtils.getFilePath(answerFileData.file.md5),
              });

              const answerFile = new PackageAnswerFile();
              answerFile.import({
                file: fileEntity,
                type: answerFileData.file.type,
                display_time: answerFileData.displayTime,
                question: question,
              });

              filesToSave.push(fileEntity);
              answerFilesToSave.push(answerFile);

              const fileUsage = new FileUsage();
              fileUsage.import({
                file: fileEntity,
                user: undefined,
                package: pack,
              });
              fileUsagesToSave.push(fileUsage);

              files.push(fileEntity.toDTO());
            }

            // Create and save answers for choice questions (if there any)
            for (const answerData of questionData.answers || []) {
              const answer = new PackageQuestionChoiceAnswer();
              let file = null;
              if (answerData.file) {
                const fileEntity = new File();
                fileEntity.import({
                  filename: answerData.file.md5,
                  source: FileSource.S3,
                  created_at: new Date(),
                  path: StorageUtils.getFilePath(answerData.file.md5),
                });
                file = fileEntity;
                filesToSave.push(file);

                const fileUsage = new FileUsage();
                fileUsage.import({
                  file,
                  user: undefined,
                  package: pack,
                });
                fileUsagesToSave.push(fileUsage);

                files.push(file.toDTO());
              }

              const type = answerData.file?.type;
              answer.import({
                question: question,
                text: answerData.text,
                fileData: file && type ? { file, type } : null,
              });

              answersToSave.push(answer);
            }
          }
        }
      }

      // Bulk Save in Order of Dependency
      await transaction.save([
        ...roundsToSave,
        ...themesToSave,
        ...questionsToSave,
        ...filesToSave,
        ...questionFilesToSave,
        ...answerFilesToSave,
        ...fileUsagesToSave,
        ...answersToSave,
      ]);

      return { pack, files };
    });
  }
}
