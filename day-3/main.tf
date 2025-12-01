<<<<<<< HEAD
resource "aws_instance" "name" {
    ami = "ami-0a9098891d675c629"
    instance_type = "t2.micro"
    key_name = "veera"
    tags = {
      Name = "dev"
    
    }
=======
resource "aws_s3_bucket" "name" {
    bucket = "veera-1bucket"
>>>>>>> ff1214be086ec61ad2058b7751f7358a2e22dc04
  
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name           = "terraform-state-lock-dynamo"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}