resource "tls_private_key" "kp" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "sid"
  public_key = tls_private_key.kp.public_key_openssh
}
