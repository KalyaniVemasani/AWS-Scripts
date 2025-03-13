provider "aws" {
  region = "us-east-1"  # Change this if needed
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-08b5b3a93ed654d19"  # Your AMI ID
  instance_type = "t2.micro"
  key_name      = "MyWindowsKeyPair"  # Your Key Pair Name

  tags = {
    Name = "myterraforminstance"  # Instance Name
  }
}
