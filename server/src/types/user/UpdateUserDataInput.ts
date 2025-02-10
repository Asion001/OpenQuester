import { UpdateUserDTO } from "types/user/UpdateUserData";

export interface UpdateUserInputDTO
  extends Pick<UpdateUserDTO, "id" | "username" | "email" | "birthday"> {
  avatar?: string;
}
