resource "aws_instance" "web" {
  ami                     = var.iam_id
  instance_type           = var.instance_type == "mongodb" ? "t2.micro" : "t3.small"
}