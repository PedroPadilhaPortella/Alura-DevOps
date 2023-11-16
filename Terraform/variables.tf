variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-026c8acd92718196b"
    "us-east-2" = "ami-0d8f6eb4f641ef691"
  }
}

variable "cdir_acesso_remoto" {
  type = "list"
  default = ["177.102.118.19"]
}

variable "key_name" {
  type = "string"
  default = "terraform-aws"
}