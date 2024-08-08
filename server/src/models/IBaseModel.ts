export interface IBaseModel {
  created_at: Date; // always in UTC
  updated_at: Date; // always in UTC
  is_deleted: boolean;
}
