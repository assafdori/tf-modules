variable "region" {
  description = "The AWS region to deploy the instance in."
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "The AMI ID for the instance."
  type        = string
}

variable "instance_type" {
  description = "The instance type for the instance."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key name to use for the instance."
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in."
  type        = string
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the instance."
  type        = bool
  default     = true
}

variable "security_group_ids" {
  description = "List of security group IDs to assign to the instance."
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the instance."
  type        = map(string)
  default     = {}
}

variable "user_data" {
  description = "The user data script to use for the instance."
  type        = string
  default     = ""
}
