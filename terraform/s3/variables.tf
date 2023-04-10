variable "bucket_name" {
  description = "Name of the clients S3 bucket to create"
  type        = string
}

variable "environment" {
  description = "The environment this bucket is for"
  type        = string
}

variable "project_name" {
  description = "The name of the project this bucket is for"
  type        = string
}