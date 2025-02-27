resource "aws_security_group" "nginx-sg" {
  vpc_id = aws_vpc.my_vpc.id

  #Inbound rule for HTTP
  ingress { #incoming request example we upload a file on cloud aws
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # khai se bhi access koi se b ip se
  }

  #Outbound rule
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # all protocol allowed 
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { #ye toh bss naam h apne sg ka
    Name = "nginx-sg"
  }
}
