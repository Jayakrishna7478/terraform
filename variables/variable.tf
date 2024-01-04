variable "iam_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
  type = map
  default = {
    Name = "jaya"
  }
}

variable "sg-name" {
  type = string
  default = "roboshop-all"
}

variable "sg-description" {
  type = string
  default = "allowing all ports"
}

variable "inbound-from_port" {
  type = number
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

