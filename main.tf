terraform {
  backend "s3" {
    bucket = "kaniaisa-github-actions-tfstate-2026"
    key    = "github-actions/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "kaniaisa-github-actions-workshop-"

  tags = {
    Purpose = "github-actions-workshop"
  }
}