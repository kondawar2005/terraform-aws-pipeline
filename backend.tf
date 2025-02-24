terraform {
  backend "s3" {
    bucket = "skn-6"
    key    = "terraform-aws-pipeline/terraform.tfstate"
    region = "us-east-1"
  }
}
