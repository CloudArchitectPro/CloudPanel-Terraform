terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 6.21.0"
    }
  }

  backend "remote" {
    organization = "medicalbrothers"

    workspaces {
      name = "cloudpanel"
    }
  }
}