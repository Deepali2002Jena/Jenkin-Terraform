provider "aws"{
    region= "us-east-1"
}
resource "aws_instance" "web-data" {
  ami           = "ami-01816d07b1128cd2d"
  key_name   = "new-key-ssh-http-https"
  instance_type = "t2.micro"
  tags = {
    Name = "ServerA" 
    }
}
