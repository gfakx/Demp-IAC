

output "aws_ami" {
  value       = aws_instance.gfakx-demo-1.ami
  description = "To Output Instance Ami ID to show instance can be created in any region "

}