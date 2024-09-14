# resource "aws_instance" "web" {
#   #count = 11 # count.index is a special variable given by terraform
#   count = length(var.instance_names)
#   ami           = var.ami_id #devops-practice
#   instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
#  tags = {
#     Name = var.instance_names[count.index]
#   }
# }

# resource "aws_route53_record" "www" {
#   #count = 11
#   count = length(var.instance_names)
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.domain_name}" #interpolation
#   type    = "A"
#   ttl     = 1
#   records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
# }

# resource "aws_instance" "web" {
#   ami           = var.iam_id
#   instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "redis" || var.instance_names[count.index] == "cart" || var.instance_names[count.index] == "catalogue" || var.instance_names[count.index] == "mysql" ? "t2.micro" : "t3.small"
#   #vpc_security_group_ids = [aws_security_group.roboshop-all-aws.id]
#   count = length(var.instance_names)
#   tags = {
#     Name = var.instance_names{count.index}
#   }
# }

resource "aws_instance" "web" {
  for_each = var.instance_names
  ami      = var.ami_id
  instance_type = each.key
  tags = {
    Name = each.value
  }
}
