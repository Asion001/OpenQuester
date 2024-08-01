export interface IUser {
  name: string;
  email: string;
  password?: string;
  birthday?: Date;
  avatar?: File;
  access_token: string;
  refresh_token: string;
}
