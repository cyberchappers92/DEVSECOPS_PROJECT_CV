provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-project-cv" {
  bucket = "terraform-project-cv"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-project-cv"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}