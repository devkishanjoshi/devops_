locals {
  prefix = "AWS_project"
}

data "aws_availability_zones" "available" {}



module "vpc1" {
  source = "./modules/VPC"

  name = "Project_AWS"
  cidr = var.cidr_block
  azs  = data.aws_availability_zones.available.names
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }

  enable_dns_hostnames = false
  enable_nat_gateway   = false
  single_nat_gateway   = false
  create_igw           = true

  public_subnets = [cidrsubnet(var.cidr_block, 3, 0)]
  private_subnets = [cidrsubnet(var.cidr_block, 3, 1),
  cidrsubnet(var.cidr_block, 3, 2)]

  manage_default_security_group = true
  default_security_group_name   = "${local.prefix}-sg"

  default_security_group_egress = [{
    cidr_blocks = "0.0.0.0/0"
  }]

  default_security_group_ingress = [{
    description = "Allow all internal TCP and UDP"
    self        = true
  }]
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}

module "security_group" {
  source = "./modules/Security_Group"

  name        = local.name
  description = "Security group for example usage with EC2 instance"
  vpc_id      = module.vpc1.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp", "all-icmp"]
  egress_rules        = ["all-all"]

  tags = local.tags
}

locals {
  name              = "AWS_Project"
  region            = "us-east-1"
  availability_zone = "us-east-1a"
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "ec2" {
  source = "./modules/EC2"

  name = local.name

  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "c5.large"
  availability_zone           = local.availability_zone
  subnet_id                   = element(module.vpc1.private_subnets, 0)
  vpc_security_group_ids      = [module.security_group.security_group_id]
  associate_public_ip_address = true

  tags = local.tags
}

module "ec2" {
  source = "./modules/EC2"

  name = "testmachine"

  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "c5.large"
  availability_zone           = local.availability_zone
  subnet_id                   = element(module.vpc1.private_subnets, 0)
  vpc_security_group_ids      = [module.security_group.security_group_id]
  associate_public_ip_address = true

  tags = local.tags
}