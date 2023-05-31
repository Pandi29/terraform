resource "aws_s3_bucket" "terraform" {
    bucket  = "raja-terraform"
}

output "S3_ARN" {
  value = aws_s3_bucket.terraform.arn
}

output "S3_ID" {
  value = aws_s3_bucket.terraform.id
}