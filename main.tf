# S3 object creation

variable "folder_file" {
  default = "foldertest/keep1"
}
resource "aws_s3_bucket_object" "folder" {
  bucket = "kjh-test-bucket-tagging"
  key    = "foldertest2/.keep"
  source = "/dev/null"
}

resource "aws_s3_bucket_object" "file9" {
  bucket = "kjh-test-bucket-tagging"
  key    = var.folder_file
  source = "/dev/null"
}

# Outputs
output "folder_id" {
  value       =  "Folder id is ${aws_s3_bucket_object.folder.id}"
  description = "ID of the S3 object"
}
