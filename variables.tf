# Root input variables.
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-west-3"
}

variable "environment" {
  description = "Environment name for resource naming and tagging"
  type        = string
  default     = "staging"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.20.0.0/16"
}
