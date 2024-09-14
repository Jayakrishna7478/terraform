variable "instance_names" {
  type = map
  default = {
    #mongodb = "t3.small"
    redis = "t2.micro"
    # mysql = "t3.small"
    # rabbitmq = "t2.micro"
    # catalogue = "t2.micro"
    # cart = "t2.micro"
    # user = "t2.micro"
    # shipping = "t3.small"
    # payment = "t2.micro"
    # dispatch = "t2.micro"
    # web = "t2.micro"
  }
}

variable "ami_id" {
  default = "ami-03265a0778a880afb"
}


# variable "zone_id" {
#   default = "Z09910591W5C3KGORVU80"
# }

# variable "domain_name" {
#   default = "kubernete.online"
# }

# variable "iam_id" {
#   type = string
#   default = "ami-03265a0778a880afb"
# }

# variable "instance_names" {
#   type = list
#   default = ["mongodb", "redis", "cart", "catalogue", "mysql"]
# }

# variable "tags" {
#   type = map
# }