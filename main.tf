resource "aws_instance" "example" {
  ami           = "ami-071226ecf16aa7d96"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Test-Instance"
  }
}
