variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type        = string
}

variable "availability_zone_1" {
  description = "First availability zone"
  type        = string
  default     = "eu-west-3a"
}

variable "availability_zone_2" {
  description = "Second availability zone"
  type        = string
  default     = "eu-west-3b"
}

variable "public_subnet_1_cidr" {
  description = "CIDR block of the first public subnet"
  type        = string
  default     = "10.20.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR block of the second public subnet"
  type        = string
  default     = "10.20.2.0/24"
}

variable "private_app_subnet_1_cidr" {
  description = "CIDR block of the first private application subnet"
  type        = string
  default     = "10.20.11.0/24"
}

variable "private_app_subnet_2_cidr" {
  description = "CIDR block of the second private application subnet"
  type        = string
  default     = "10.20.12.0/24"
}

variable "private_db_subnet_1_cidr" {
  description = "CIDR block of the first private database subnet"
  type        = string
  default     = "10.20.21.0/24"
}

variable "private_db_subnet_2_cidr" {
  description = "CIDR block of the second private database subnet"
  type        = string
  default     = "10.20.22.0/24"
}
