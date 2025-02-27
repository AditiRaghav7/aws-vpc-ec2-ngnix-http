output "instance_public_ip" { #jo b ec2 instance bnega uski public ip print kr dega ye
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.nginxserver.public_ip
}

output "instance_url" {
  description = "The URL to access the Nginx server"
  value       = "http://${aws_instance.nginxserver.public_ip}"
#can access it from  this url to see ngnix page
}
