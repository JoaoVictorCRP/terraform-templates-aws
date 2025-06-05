resource "aws_instance" "main_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [
    aws_security_group.ssh.id,
    aws_security_group.http_https.id
  ]
  associate_public_ip_address = true

  root_block_device {
    volume_type = "gp3"
    volume_size = var.ebs_volume_size
    delete_on_termination = true
    encrypted = true
  }

  tags = {
    Name = var.app_name
  }
}
