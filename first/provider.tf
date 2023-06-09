terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.2"

    }
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
  required_version = "1.4.6"
}

provider "aws" {

  region = "us-east-1"
  shared_credentials_files = ["d:/aws/credentials/credentials.txt"]
  profile = "raja"
}

data "terraform_remote_state" "output_as" {
  backend = "local"
  config = {
    path = "../output/terraform.tfstate"
  }

}
