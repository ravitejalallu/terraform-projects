resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.aws-linux.id
  instance_type          = var.instance_type
  user_data              = file("${path.module}/app.sh")
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "demo ec2"
  }
}
