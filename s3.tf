resource "aws_s3_bucket" "demo" {
  bucket = "mycompany-${var.company}myproject-${var.project}myenv-${var.environment}"
}

resource "aws_s3_bucket_object" "demo" {
  bucket = aws_s3_bucket.demo.bucket
  key    = "demo.txt"
  source = "data/demo.txt"
  acl    = "public-read"
}
