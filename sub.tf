resource "aws_s3_bucket" "b1" {
  bucket = "my-s3-bucket-asdfg"
  acl    = "private"
  
  versioning  {
    enabled = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "object" {
  bucket = "my-s3-bucket-asdfg"
  key    = "mytextfile.txt"
  source = "/home/ec2-user/mytextfile.txt"
  acl    = "private"
}


resource "aws_s3_object" "object1" {
  bucket = "my-s3-bucket-asdfg"
  key    = "terraform.tfstate"
  source = "/home/ec2-user/ab/terraform.tfstate"
  acl    = "private"
}
