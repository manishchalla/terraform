variable "region" {
    default = "us-east-1"
}

variable "profile" {
    type = string 
}

variable "imageid" {
    default = "ami-005fc0f236362e99f"
}

variable "instancetype" {
    default = "t2.micro"
}

variable "key"{
    default = "packer"
}
