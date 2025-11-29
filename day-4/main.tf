resource "aws_instance" "name" {
    ami = "ami-0a9098891d675c629"
    instance_type = "t3.micro"
    key_name = "veera"
    tags = {
        Name = "veera"
    }
  
}