resource "aws_instance" "main_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [
    aws_security_group.ssh
    aws_security_group.http_https
  ]
  associate_public_ip_address = true

  tags = {
    Name = var.app_name
  }
}