# ANSIBLE MASTER
resource "aws_instance" "ans_master" {
  ami           = "ami-05a36e1502605b4aa"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.ecomm-pub-sn.id
  key_name = "kesienaf"
  vpc_security_group_ids = [aws_security_group.allow_ecomm.id]
  user_data = file("install_ansible.sh")
  private_ip = "10.0.1.10"


  tags = {
    Name = "Ansible Master"
  }
}

# ANSIBLE NODE
resource "aws_instance" "ans_n1" {
  ami           = "ami-05a36e1502605b4aa"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.ecomm-pub-sn.id
  key_name = "kesienaf"
  vpc_security_group_ids = [aws_security_group.allow_ecomm.id]
  user_data = file("install_ansible.sh")
  private_ip = "10.0.1.11"


  tags = {
    Name = "Ansible Node"
  }
}

