variable "bucket_name" {
  type = string
}

resource "aws_s3_bucket_object" "cdev_object" {
  key    = "s3file.txt"
  bucket = var.bucket_name
  source = "${path.module}/s3file.txt"

  force_destroy = true
}
