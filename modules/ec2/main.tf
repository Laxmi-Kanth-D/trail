resource "aws_instance" "web" {

    ami = "var.ami"
    subnet_id = "var.subnetid"
    key_name = "var.key"
    user_data =""
    
}

