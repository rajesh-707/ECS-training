variable "aws_region" {
  default = "us-west-1"
}

variable "vpc_name" {
  default = "ecs_training"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "pub_sn_cidr" {
  default = "10.0.0.0/24"
}

variable "pvt_sn_cidr" {
  default = "10.0.1.0/24"
}

variable "pub_key_path" {
  default = "~/.ssh/id_rsa.pub"
}
