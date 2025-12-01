resource "aws_instance" "name" {
    ami = "ami-0a9098891d675c629"
    instance_type = "t2.micro"
    key_name = "veera"
    tags = {
      Name = "dev"
    
    }
  
}