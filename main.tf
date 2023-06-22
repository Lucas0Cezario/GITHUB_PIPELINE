terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.4.0"
    }
  }

  backend "s3" {
    bucket = "lucas0cezarioteste"
    key    = "aws-vm-Pipeline/terraform.tfstate"
    region = "us-west-2"
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

module "network" {
  source = "./network"

  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  environment = "desenvolvimento"
}
