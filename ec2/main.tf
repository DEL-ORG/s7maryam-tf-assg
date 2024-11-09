provider "aws" {
  region = var.aws_region
}

# Define an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0866a3c8686eaeeba" # Use the appropriate AMI ID for your region
  instance_type = "t2.micro"

  # Specify a key pair for SSH access
  key_name = "s7maryam"

  # Tags for the instance
  tags = {
    Name = "homework-instance"
  }
}

