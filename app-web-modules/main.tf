provider "aws" {
}

module "server" {
  source = "https://github.com/m0nda/terraform-aws-server"

  ami                    = var.ami
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  identity               = var.identity
  web_count              = var.web_count
}
