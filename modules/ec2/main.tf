resource "aws_instance" "web" {

    ami = var.amiid
    instance_type = var.ins
    subnet_id = var.subnetid
    key_name = var.key
    # user_data =""
    
    
}

