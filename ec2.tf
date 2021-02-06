resource "aws_instance" "demo" {
  ami           = data.aws_ami.ubuntu-18_04.id
  instance_type = "t2.micro"

  tags = {
    Name        = "demo-server"
    Project     = var.project
    Environment = var.environment
  }
}

output "server_ip" {
  description = "Server public ip"
  value       = aws_instance.demo.public_ip
}
