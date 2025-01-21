terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws"{
    region = "${var.region}"
    profile = "${var.profile}"
}

resource "aws_security_group" "allow_all" {
    name = "allow_all"
    description = "Allow all inbounds traffic"
    vpc_id = "vpc-030103e579f9ba412"

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    } 
}


resource "aws_instance" "firstinstance" {
    ami = "${var.imageid}"
    instance_type = "${var.instancetype}"
    key_name = "${var.key}"
    security_groups = ["${aws_security_group.allow_all.name}"]
    tags = {
        Name = "MyEc2Instance"
    }
}


