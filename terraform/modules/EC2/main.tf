resource "aws_instance" "ec2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"  # Free Tier eligible instance type

  tags = {
    Name = "ExampleInstance"
  }
}