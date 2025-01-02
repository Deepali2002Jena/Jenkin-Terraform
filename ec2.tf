provider "aws"{
    region= "us-east-1"
}
resource "aws_instance" "web-data" {
  ami           = "ami-0fd05997b4dff7aac"
  key_name   = "new-key-ssh-http"
  instance_type = "t2.micro"
  tags = {
    Name = "ServerA" 
    }
}
