# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "~>5.70.0"
#     }
#   }
# }

# provider "aws" {
#   # Configuration options
#   region = "ap-south-1"
#   profile = "default"
# }
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.71.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
   profile = "default"
  
}