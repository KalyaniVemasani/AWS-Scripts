provider "aws" {
  region = "us-east-1"  # Change if needed
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-s3bucket-369121"  # Replace with a unique bucket name
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
