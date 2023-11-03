resource "aws_security_group" "tf-ec2-sg" {
  name_prefix = "example-sg-"
  vpc_id      = aws_default_vpc.default.id

  # Allow incoming traffic on ports 22 (SSH) and 80 (HTTP)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["77.102.78.14/32"] # Restricted to my IP address only.

    description = "SSH"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

    description = "HTTP"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}