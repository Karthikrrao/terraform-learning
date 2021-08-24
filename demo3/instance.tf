resource "aws_instance" "example10" {
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
}
