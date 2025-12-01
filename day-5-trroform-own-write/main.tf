# create vpc
resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "veera1"
    }
  
}

# internetgateway
resource "aws_internet_gateway" "ig" {
    vpc_id = aws_vpc.vpc.id
    tags = {
      Name = "veera_ig"
    }
  
}

# subnet creation
resource "aws_subnet" "sub" {
    vpc_id = aws_vpc.vpc.id
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "public_subnet"
    }
  
}
 
 
resource "aws_subnet" "sub1" {
    vpc_id = aws_vpc.vpc.id
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.1.0/24"
    tags = {
      Name = "private_subnet"
    }

   
}


resource "aws_route_table" "name" {
    vpc_id = aws_vpc.vpc.id
    tags = {
      Name = "veera-route-table"
    }

    route  {
        gateway_id = aws_internet_gateway.ig.id
        cidr_block = "0.0.0.0/0"
    }
}

# subnet association 
resource "aws_route_table_association" "name" {
    route_table_id = aws_route_table.name.id
    subnet_id = aws_subnet.sub.id
  
}

   
# security group creation
resource "aws_security_group" "name" {
    vpc_id = aws_vpc.vpc.id
    description = "allowing"
    tags = {
      Name = "security group"
    }


    ingress {
    description = "Allow ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"    # all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }
    
  
}