terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "fichas-magicas-terraform"
    key    = "fichas-magicas-stg"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      project   = "fichas-magicas"
      env       = "stg"
      terraform = "true"
    }
  }
}