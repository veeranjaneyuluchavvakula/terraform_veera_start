terraform {
    backend "s3" {
        bucket = "veera-1bucket"
        key = "terraform.tfstate"
        region = "ap-south-2"
        dynamodb_table = "terraform-state-lock-dynamo"
        
      
    }
}