variable "app_name" {
  type = string
}

variable "ebs_volume_size" {
  type    = number
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  default = "t3.micro"
}
