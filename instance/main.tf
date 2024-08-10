provider "aws" {
    region = "us-east-2"
  
}
     variable "ami-id" {
        type = string
       
     }
     variable "key_pair"{
        type = string
     }
     variable "security_groups" {
        type = list
       
     }
     variable "instance_type" {
        type = string
       
     }
     

resource "aws_instance" "test-instance" {
    ami = var.ami-id
    key_name = var.key_pair
    instance_type = var.instance_type
    security_groups = var.security_groups
}
