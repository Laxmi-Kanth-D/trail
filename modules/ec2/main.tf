resource "aws_instance" "web" {

    ami = var.amiid
    instance_type = var.ins
    
    subnet_id = var.subnetid
    key_name = var.key
    user_data = var.user_data
    # user_data =""
    tags = {
    Name        = "mine"
    for     = "me"         # ← added manually, now in code
    Environment = "dev1"
  }
    
}

