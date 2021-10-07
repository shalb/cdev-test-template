variable "name" {
  type = string
}

resource "aws_s3_bucket" "cdevautotests" {
  bucket = var.name
  tags = {
    Name        = "Cdev auto tests bucket"
  }
}

output "id" {
    value = aws_s3_bucket.cdevautotests.id
}

output "test" {
    value = "Test output"
}
