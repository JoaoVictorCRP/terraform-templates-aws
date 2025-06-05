resource "aws_eip" "eip" {
  instance = aws_instance.main_instance.arn
  domain   = "vpc"
}
