variable "aws_region" {
  description = "AWS region where resources will be created"
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS IAM user access key"
}

variable "aws_secret_key" {
  description = "AWS IAM user secret key"
}

variable "company" {
  description = "Company name"
}

variable "project" {
  description = "Project name"
}

variable "environment" {
  description = "Environment name"
}
