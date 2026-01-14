variable "aws_region" {
    default = "us-east-1"
}

variable "environment" {
    description = "Environment name"
}

variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}

variable "instance_type" {
    default = "t2.micro"
}

variable "key_name" {
    description = "EC2 key pair"
}

