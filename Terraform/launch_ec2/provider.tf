
# This block is to connect to TF repository.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

provider "aws" {
  # Configuration options

  region     = "ap-south-1"
  access_key = var.access_key_name
  secret_key = var.secret_key_name

}
