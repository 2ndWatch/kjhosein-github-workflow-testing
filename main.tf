# S3 object creation

resource "aws_s3_bucket_object" "folder" {
  bucket = "kjh-test-bucket-tagging"
  key    = "foldertest2/.keep"
  source = "/dev/null"
}

resource "aws_s3_bucket_object" "file8" {
  bucket = "kjh-test-bucket-tagging"
  key    = "foldertest2/keep9"
  source = "/dev/null"
}

# Outputs
output "folder_id" {
  value       = "Folder id is ${aws_s3_bucket_object.folder.id}"
  description = "ID of the S3 object"
}
