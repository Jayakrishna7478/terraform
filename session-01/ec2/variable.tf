variable "instance_name" {
  type = string
  default = "ami-0e9107ed11be76fde"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
  type = map
  default = {
    Name = "terra"
    terraform = "true"
    Environment = "dev"
  }
}

variable "sg-name" {
  type = string
  default = "roboshop-ala-aws"
}

variable "description" {
  type = string
  default = "Allow TLS inbound traffic"

}

variable "inbound-from-port" {
  default = 0
}

variable "cidr-blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "vpc_id" {
default = "10.0.0.0/16"
}

variable "vpc_tags" {
 type = map
  default = {
    name = "roboshop"
  }
}