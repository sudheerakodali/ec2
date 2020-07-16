provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "webapp" {
    for_each = toset(var.instances)
    ami = "data.aws_ami.ami.id"
    instance_type = "${var.instance_type}"
    vpc_security_group_ids = ["aws_security_group.ssh_http_sg.id"]
    
    tags = {
    Name = "each.value"
  }
}

data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

