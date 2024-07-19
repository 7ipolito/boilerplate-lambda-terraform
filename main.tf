terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      Project   = "Serverless REST API Tutorial"
      CreatedAt = "2021-09-05"
      ManagedBy = "Terraform"
      Owner     = "Cleber Gasparoto"
      Env       = var.env
    }
  }
}
