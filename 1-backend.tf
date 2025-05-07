# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "im-locked-in"
    prefix = "terraform/state"
    credentials = "tyrone-454801-80b759b3cbad.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
