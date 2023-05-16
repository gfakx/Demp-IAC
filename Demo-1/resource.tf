
resource "aws_instance" "gfakx-demo-1" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = "t2.micro"

  tags = {
    "Name" = "Gfakx-Demo"
  }


}