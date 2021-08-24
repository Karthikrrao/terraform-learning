resource "aws_instance" "kar_example"{
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
}

output "ip" {
    value = aws_instance.kar_example.public_ip
}
