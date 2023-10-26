# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user" 
}

# Store terrafrom state file in s3
terraform {
  backend "s3" {
    bucket = "liamlim-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"
  }
}

