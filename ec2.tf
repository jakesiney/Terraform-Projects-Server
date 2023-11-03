resource "aws_instance" "tf-ec2" {
  ami           = "ami-06ce6bb40e50efe77"
  instance_type = "t2.micro"
  key_name      = "uploader-key"

  security_groups = "tf-ec2-sg"
  tags = {
    Name = "terraform-example"
  }

}