terraform {
  backend "s3" {
    bucket = "teste-minikel-rds-tfstate"
    key    = "global/s3/terraform.tfstate"
    region = "sa-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.46.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}
