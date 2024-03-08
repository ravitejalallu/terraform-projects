output "instance_public_ip" {
  description = "ec2 instance public ip"
  value = aws_instance.ec2.public_ip
}

output "instance_public_dns" {
  description = "ec2 instance public dns"
  value = aws_instance.ec2.public_dns
}