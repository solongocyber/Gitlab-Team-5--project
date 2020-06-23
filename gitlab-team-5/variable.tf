variable "region"{}
variable "key_name"{}
variable "public_key"{}
variable "instance_type"{}
variable "vpc_cidr"{}
variable "private1_cidr"{}
variable "private2_cidr"{}
variable "private3_cidr"{}
variable "public1_cidr"{}
variable "public2_cidr"{}
variable "public3_cidr"{}
variable "availability_zone1"{}
variable "availability_zone2"{}
variable "availability_zone3"{}
variable "tags" {
    type = "map" 
}
variable "ami"{}
variable "httpd"{}
variable "httpd2"{}
variable "ssh"{}
