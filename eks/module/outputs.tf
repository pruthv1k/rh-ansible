output "cluster_endpoint" {
  description = "API endpoint for the cluster"
  value = module.eks.cluster_endpoint
}
