resource "aws_security_group" "allow_ssh" {
    vpc_id = aws_vpc.main.id
    name = "allow-ssh"
    description "secuity group that allows ssh and all egress trafic"
    egress {
        from_port = "0"
        to_port = "0"
        protocal = "-1"
        cidr_block = ["0.0.0.0/0"]
    }
    ingress {
     from_port = "22"
     to_port = "22"
     protocal = "tcp"
     cidr_block = ["0.0.0.0/0"]
    }
    tags = {
    name = "allow-ssh"
    }
}