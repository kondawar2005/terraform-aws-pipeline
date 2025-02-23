terraform {
  backend "s3" {
    bucket = "skn-123"
    key    = "terraform-aws-pipeline/terraform.tfstate"
    region = "us-east-1"
  }
}
