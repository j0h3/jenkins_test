variable "instance_name" {
  type = string
  description = "Instance name"
}

variable "region" {
  type = string
  description = "AWS region"
  default = "eu-west-3"
}

variable "access_key" {
  type = string
  description = "AWS access key"
}

variable "secret_key" {
  type = string
  description = "AWS secret key"
}

variable "instance_type" {
  type = string
  description = "Instance type"
  default = "t2.micro"
}

variable "instance_number" {
  type = number
  description = "Instance number"
  default = 1
}

variable "create_instance" {
  type = bool
  description = "Create instance or not"
  default = true
}
