resource "aws_instance" "web" {
  ami           = var.instance_name
  instance_type = var.instance_type
  tags          = var.tags
}

resource "aws_security_group" "roboshop-all" { #this is terraform name, for terraform reference only
    name        = var.sg-name # this is for AWS
    description = var.description
    #vpc_id      = aws_vpc.main.id

    ingress {
        description      = "Allow All ports"
        from_port        = var.inbound-from-port # 0 means all ports
        to_port          = 0 
        protocol         = "tcp"
       
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }
}

resource "aws_vpc" "main" {
  cidr_block       = var.vpc_id
  tags = var.vpc_tags
}