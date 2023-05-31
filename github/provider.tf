terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}
provider "github" {
  token = "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"
}