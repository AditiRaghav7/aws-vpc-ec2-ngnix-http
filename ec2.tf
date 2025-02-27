
# EC2 instance For Nginx setup
resource "aws_instance" "nginxserver" {
  ami                         = "ami-0c0e147c706360bd7" #replace with your ami-id or fetch dynamically 
  instance_type               = "t3.nano"
  subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = [aws_security_group.nginx-sg.id] #jo hum security group add kiya h vo hum apne ec2 ko bta rhe h ye rha bhai 
  associate_public_ip_address = true #jab ye instance bane toh isko ek public ip de do 

  user_data = <<-EOF
            #!/bin/bash
            sudo yum install nginx -y
            sudo systemctl start nginx
            EOF

  tags = {
    Name = "NginxServer"
  }
}
