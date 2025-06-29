module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = var.instance_name

  ami           = var.ami_id == "" ? data.aws_ami.ubuntu.id : var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  monitoring    = var.monitoring_enabled
  subnet_id     = var.subnet_id
}
