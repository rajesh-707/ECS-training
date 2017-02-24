provider "aws" {
  region = "${var.aws_region}"
}

module "key_pair" {
  source          = "git::ssh://git@github.com/opstree-terraform/key_pair"
  public_key_path = "${var.pub_key_path}"
  name            = "${var.vpc_name}-key"
}

module "vpc" {
  source = "git::ssh://git@github.com/opstree-terraform/vpc"
  cidr   = "${var.vpc_cidr}"
  name   = "${var.vpc_name}"
}

module "pub_subnet" {
  source                  = "git::ssh://git@github.com/opstree-terraform/subnet"
  vpc_id                  = "${module.vpc.id}"
  cidr                    = "${var.pub_sn_cidr}"
  az                      = "${var.aws_region}a"
  map_public_ip_on_launch = "true"
  name                    = "${var.vpc_name}-pub-sn"
}

module "pvt_subnet" {
  source = "git::ssh://git@github.com/opstree-terraform/subnet"
  vpc_id = "${module.vpc.id}"
  cidr   = "${var.pvt_sn_cidr}"
  az     = "${var.aws_region}a"
  name   = "${var.vpc_name}-pvt-sn"
}

module "vpc_pvt_rtb_association" {
  source    = "git::ssh://git@github.com/opstree-terraform/pvt_route_table_association"
  pub_sn_id = "${module.pub_subnet.id}"
  vpc_name  = "${var.vpc_name}"
  vpc_id    = "${module.vpc.id}"
  pvt_sn_id = "${module.pvt_subnet.id}"
}
