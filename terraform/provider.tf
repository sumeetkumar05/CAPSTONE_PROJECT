terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.35.0"
    }
  }
  backend "s3" {
    bucket = "bucket-caps"
    key    = "terraform.tfstate"
    region = "us-east-1"
    
  }
}

provider "aws" {
  region = "us-east-1"
}


