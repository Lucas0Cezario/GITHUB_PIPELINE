terraform {

  required_version = ">= 1.0.0"

    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      owner      = "Lucas0Cezario"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "lucas0cezarioteste"
    key    = "aws-PIPE-GIT/terraform.tfstate"
    region = "us-west-2"
  }
}