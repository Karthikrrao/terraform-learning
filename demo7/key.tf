resource "aws_key_pair" "mykeypair_karthik" {
  key_name = "mykeypair_karthik"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}