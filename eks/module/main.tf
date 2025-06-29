module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.kubernetes_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids


  eks_managed_node_group_defaults = {
    ami_type       = "AL2_x86_64"
    disk_size      = 20
    instance_types = [var.instance_type]
  }

  eks_managed_node_groups = {
    group = {
      name         = var.node_group_name
      min_size     = var.minimum_nodes
      max_size     = var.maximum_nodes
      desired_size = var.desired_nodes

      capacity_type = "ON_DEMAND"
    }
  }
}
