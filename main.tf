terraform {
backend "s3" {
bucket = "myterraforms3bucketforstoring"
key = "terraform/state.tfstate"
region = "us-east-1"
encrypt = true
dynamodb_table = "terraform-lock"
}
 }