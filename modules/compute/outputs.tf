output "instance_id" {
  value = aws_instance.web.id
  description = "The ID of the web server instance"
}

output "public_ip" {
  value = aws_instance.web.public_ip  
  description = "The public IP address of the web server instance"
}
