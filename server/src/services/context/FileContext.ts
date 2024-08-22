export class FileContext {
  public bucket!: string;
  public accessKey!: string;
  public secretKey!: string;

  constructor(data: any) {
    this.bucket = data.bucket;
    this.accessKey = data.accessKey;
    this.secretKey = data.secretKey;
  }
}
