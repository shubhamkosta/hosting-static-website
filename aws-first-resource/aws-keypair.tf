resource "aws_key_pair" "terra-key" {
  key_name   = "first-key"
  public_key = file("${path.module}/id_rsa.pub")
}
