resource "aws_vpc" "karthik_main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.karthik_main.id
  cidr_block = "10.0.1.0/24"
 }
 