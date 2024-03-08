variable "aws-region" {
  description = "Region in which the resources are created"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "will specify the ec2 instance type"
  type        = string
  default     = "t2.micro"

}

variable "instance_keypair" {
   description = "AWS ec2 key pair that should be associated with ec2 machine"
   type = string
   default = "terraform_keypair"
}
