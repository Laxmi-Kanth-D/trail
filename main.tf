module "vm" {
  source    = "./modules/ec2"
  amiid     = var.ami_id
  subnetid  = var.subnet_id
  key       = var.key_id
  ins       = var.ins_ty
  user_data = <<-EOF
              #!/bin/bash
              yum update -y

              # Install Java
              amazon-linux-extras install java-openjdk11 -y

              # Install Git
              yum install git -y

              # Install Docker
              amazon-linux-extras install docker -y
              service docker start
              usermod -aG docker ec2-user

              # # Install Jenkins
              # wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
              # rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
              # yum install jenkins -y
              # systemctl start jenkins
              # systemctl enable jenkins

              EOF  
}

module "pub_igw" {
  source = "./modules/igw"
  vpc    = var.vpc_name
}