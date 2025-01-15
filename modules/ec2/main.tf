resource "aws_instance" "my_instance" {
  count = length(var.ec2_names)
  ami = data.aws_ami.amazon-2.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]
  subnet_id = var.subnets[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  user_data = <<EOF
  #!/bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo systemctl start httpd
    sudo systemctl enable httpd
    echo "<h1>Hello from Terraform EC2 instance</h1>" > /var/www/html/index.html
    sudo systemctl restart httpd
  EOF

  tags = {
    Name = var.ec2_names[count.index]
  }
}