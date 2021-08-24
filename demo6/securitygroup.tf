data "aws_ip_ranges" "european_ec2" {
    region = [ "eu-west-1", "eu-central-1"]
    services = ["ec2"]
}
resource "aws_security" "from_europe" {
    name = "from europe"
    ingress {
        from_port = "443"
        to_port = "443"
        protocal = "tcp"
        cidr_block = data.aws_ip_ranges.european_ec2.cidr_block
    }
tags ={ 
    CreateDate = date.aws_ip_ranges.european_ec2.create_date
    SyncToken = date.aws_ip_ranges.european_ec2.SyncToken
}