provider "aws" {
  region = var.region
}

terraform {
    backend "s3" {
        bucket = "homeless-webapp-terraform-tfstate"
        key = "tfstate"
        region = "eu-west-2"
        encrypt = true
    }
}

