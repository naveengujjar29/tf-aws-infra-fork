# Main provider block, the region and credentials could be dynamically set based on the environment
provider "aws" {
  region = var.aws_region
}

# Select the environment to deploy
module "environment" {
  source     = "./envs/${var.environment}"
  aws_region = var.aws_region
}
