module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.10.9"
  # insert the 1 required variable here
  gcp_project = "jenkinsx-pluralsight-project"
  cluster_name = "ps-jx-cluster"
}

terraform {
  backend "gcs" {
    bucket = "ps-jx-terraform-state-files-susantha"
    prefix = "terraform/state"
  }
}

output "jx_requirements" {
  value = module.jx.jx_requirements
} 
