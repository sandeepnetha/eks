module "eks-node-group" {
  source = "umotif-public/eks-node-group/aws"
  version = "~> 3.0.0"

  cluster_name =aws_eks_cluster.default.id

  subnet_ids = var.subnet_ids

  desired_size = 1
  min_size     = 1
  max_size     = 1

  instance_types = var.instance_type

  kubernetes_labels = {
    lifecycle = "OnDemand"
  }

  force_update_version = true

  tags = {
    Environment = "test"
  }
}