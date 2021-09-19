provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket = "desafiojunto"
    key    = "desafiojunto/desafiojunto.tfstate"
    region = "us-east-1"
  }
}
