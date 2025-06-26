module "vm" {
  source = "./modules/ec2"
  amiid = var.ami_id
  subnetid = var.subnet_id
  key = var.key_id
  ins = var.ins_ty
}

module "pub_igw"{
  source = "./modules/igw"
  vpc = var.vpc_name
}