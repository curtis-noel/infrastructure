provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "curtis.noel-terraform"
    key    = "pipeline.tfstate"
    region = "us-east-1"
  }
}
