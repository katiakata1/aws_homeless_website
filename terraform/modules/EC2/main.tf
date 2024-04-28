resource "aws_instance" "ec2" {
  ami           = "ami-053a617c6207ecc7b"
  instance_type = "t2.micro"  # Free Tier eligible instance type

  tags = {
    Name = "ExampleInstance"
  }
}