terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.2"
    }
  }
  required_version = "1.4.6"
}
provider "aws" {

  region = "us-east-1"
  shared_credentials_files = ["d:/aws/credentials/credentials.txt"]
  profile = "raja"
}
