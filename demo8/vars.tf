variable "AWS_REGION"{
 default = "us-west-1"
}
variable "AMIS" {
    type = map(string)
    default = {
        us-west-1 = "ami-08d70e59c07c61a3a"
    }
}
variable "PATH_TO_PRIVATE_KEY" {
    default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
    default = "mykey.pub"
}