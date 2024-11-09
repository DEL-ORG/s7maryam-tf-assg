variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "key_pair_name" {
  description = "The name of the SSH key pair"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the instance will be launched"
  type        = string
  default     = null
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  default     = []
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "terraform-ec2-instance"
}

variable "tags" {
  description = "A map of tags to assign to the instance"
  type        = map(string)
  default     = {
    "Environment" = "dev",
    "Project"     = "Terraform EC2"
  }
}
