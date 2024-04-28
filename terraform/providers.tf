provider "aws" {
  region = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "tfstate_bucket" {
    bucket = var.TFSTATE_BUCKET_NAME
}

terraform {
    backend "s3" {
        bucket = var.TFSTATE_BUCKET_NAME
        key = "tfstate"
        region = var.region
        encrypt = true
    }
}

