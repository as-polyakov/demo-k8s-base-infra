terraform {  
backend "s3" {  
      
  }  
}

variable "cluster_name" {type=string}
module eks {
    source = "./modules/eks"
    cluster_name = var.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

output "cluster_token" {
    value = module.eks.cluster_token
}
output "cluster_ca_certificate" {
    value = ${base64decode(module.cluster_ca_certificate)
}

