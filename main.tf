terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


#Configure the AWS Provider:
provider "aws" {
  region     = "ap-south-1"
}



# Creating a EC-2 Instance:
resource "aws_instance" "ubuntu" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  associate_public_ip_address = true

  tags = {
    Name = "web"
  }
}

