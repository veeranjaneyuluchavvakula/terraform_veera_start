output "ram" {
    value = aws_instance.veera.ami
  
}

output "ram1" {
    value = aws_instance.veera.instance_type
    
  
}

output "ram2" {
    value = aws_instance.veera.vpc_security_group_ids
    
  
}