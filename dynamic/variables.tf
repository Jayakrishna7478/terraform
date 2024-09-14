variable "ingress_rules" {
  default = [
    {
        description      = "Allow port 80"
        from_port        = 80
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
   },
   {
        description      = "Allow port 443"
        from_port        = 443
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
   },
   {
        description      = "Allow port 22"
        from_port        = 22
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
   }
  ]
}