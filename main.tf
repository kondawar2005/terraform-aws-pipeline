resource "aws_s3_bucket" "my_bucket" {
    bucket = "skn-125"

    tags = {
      Env= var.env
      Serviceid ="ts0123"
    }
  
}
