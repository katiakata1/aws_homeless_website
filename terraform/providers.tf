provider "aws" {
  region = "eu-west-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "tfstate_bucket" {
    bucket = "homeless-webapp-terraform-tfstate"
}

terraform {
    backend "s3" {
        bucket = "homeless-webapp-terraform-tfstate"
        key = "tfstate"
        region = var.region
        encrypt = true
    }
}

