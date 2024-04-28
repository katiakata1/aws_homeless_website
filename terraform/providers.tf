provider "aws" {
  region = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "tfstate_bucket" {
    bucket = var.tfstate_bucket_name
}

terraform {
    backend "s3" {
        bucket = var.tfstate_bucket_name
        key = "tfstate"
        region = var.region
        encrypt = true
    }
}

