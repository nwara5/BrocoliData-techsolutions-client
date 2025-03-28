variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "assume_role_arn" {
  type        = string
  description = "ARN of the IAM data engineer role"
  default     = "arn:aws:iam::954976290594:role/DataPlatformEngineerRole"
}

variable "session_name" {
  type        = string
  default     = "terraform-session"
}

variable "profile" {
    type      = string
    default   = "data-engineer"
}

variable "lakehouse_bucket_name" {
  description = "Name of the lakehouse S3 bucket"
  type        = string
}

variable "landing_bucket_name" {
  description = "Name of the landing S3 bucket"
  type        = string
}

variable "tags" {
    description = "Tags to apply to the S3 buckets"
    type      = map(string)
}