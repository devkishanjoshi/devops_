variable "aws_access_key" {
  type        = string
  description = "AWS access key"
}


variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
}

variable "cidr_block" {
  default = "10.4.0.0/16"
}

variable "region" {
  default = "eu-west-1"
}



