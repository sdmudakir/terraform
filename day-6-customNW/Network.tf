# Create VPC

resource "aws_vpc" "dev" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev"
  }
}
  

# Create SUbnets

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.dev.id
  cidr_block = "10.0.1.0/24"
  tags = {
  Name = "public_subnet"
  }
}
resource "aws_subnet" "Private" {
  vpc_id = aws_vpc.dev.id
  cidr_block = "10.0.2.0/24"
  tags = {
  Name = "private_subnet"
  }
}

#Create Internet Gataway and Attach to VPC

resource "aws_internet_gateway" "dev" {
  vpc_id = aws_vpc.dev.id
  tags = {
    Name = "dev"
  }
}

#Create NAT gateway
 
# Create Route table and and Edit Routes
resource "aws_route_table" "dev" {
  vpc_id = aws_vpc.dev.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev.id
    }

}

 # Subnet association to route

 resource "aws_route_table_association" "dev" {
   route_table_id = aws_route_table.dev.id
   subnet_id = aws_subnet.public.id
 }
 #Subnet association for nat gateway
#Create SG group

resource "aws_security_group" "allow_tls" {
  name = "allow_tls"
  vpc_id = aws_vpc.dev.id
  tags = {
    Name = "dev_sg"
  }
  ingress {

    description ="TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]

  }
  ingress {

    description ="TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]

  }
   egress {

    description ="TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}



