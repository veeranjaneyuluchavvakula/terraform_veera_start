resource "aws_instance" "veera" {
    ami = "ami-0a9098891d675c629"
    instance_type = "t3.micro"
    key_name = "veera"
    tags = {
        Name = "veera"
    }
  
}



terraform {
  backend "s3" {
    bucket = "veera-1bucket"
    key = "day-5/terraform.tfstate"
    region = "ap-south-2"
    dynamodb_table = "terraform-state-lock-dynamo"
  }



  
}