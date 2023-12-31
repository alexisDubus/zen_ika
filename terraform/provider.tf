# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "tokyo-analyst-390015"
  region  = "europe-west9"
}

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "tfstate_tokyo-analyst-390015"
    prefix = "terraform_tokyo-analyst-390015/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
