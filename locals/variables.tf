variable "isProd" {
  type = bool
  default = true
}

variable "ami_id" {
  default = "ami-03265a0778a880afb"
}

variable "instance_names" {
  type = list
  default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}