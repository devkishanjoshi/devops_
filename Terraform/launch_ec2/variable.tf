variable "access_key_name" {
  type    = string
  default = "put_keys_here"
}

variable "secret_key_name" {
  type    = string
  default = "put_keys_here"
}

variable "ami" {
  type    = string
  default = "ami-0da59f1af71ea4ad2"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}