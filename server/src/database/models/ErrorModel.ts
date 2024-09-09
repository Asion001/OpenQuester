import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";
import { IErrorModel } from "../../interfaces/IError";

@Entity("error")
export class ErrorModel implements IErrorModel {
  @PrimaryGeneratedColumn()
  id!: number;

  @Column()
  message!: string;

  @Column()
  created_at!: Date;

  public import(data: IErrorModel) {
    this.message = data.message;
    this.created_at = data.created_at;
  }
}
