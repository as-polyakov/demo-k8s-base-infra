terraform {  
backend "s3" {  
      
  }  
}

variable "cluster_name" {type=string}
module eks {
    source = "./modules/eks"
    cluster_name = var.cluster_name
}
