resource "aws_eip" "eip" {
  instance = aws_instance.main_instance
  domain   = "vpc"
}