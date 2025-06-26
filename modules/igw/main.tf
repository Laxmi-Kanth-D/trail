resource "aws_internet_gateway" "internet" {
    vpc_id = var.vpc
}