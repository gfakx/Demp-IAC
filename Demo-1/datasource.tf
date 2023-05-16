data "aws_ami" "amazon-linux-2" {

  most_recent = true
  owners      = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-x86_64-gp2"]
    #values = ["RHEL-9.0.0_HVM-*-43-Hourly2-GP2"]
    #values = ["amzn2-ami-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
    # filter {
    #   name   = "architecture"
    #   values = ["x86_64"]
    # }
}