resource "aws_security_group" "ssh_http_sg" {
  name = "ssh-http_sg"


ingress {
  description = "allows ssh traffic"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

ingress {
  description = "allows http traffic"
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
}
