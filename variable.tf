variable "region" {}
variable "cidr_block" {}

variable "public_cidr1" {}
variable "public_cidr2" {}

variable "private_cidr1" {}
variable "tags" {
  type = map(any)
}