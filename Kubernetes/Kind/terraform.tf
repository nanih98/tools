terraform {
  backend "local" {
    path = "terraform.tfstate"
  }

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.2.3"
    }

    kind = {
      source  = "unicell/kind"
      version = "0.0.2-u2"
    }
  }
}

provider "local" {}

provider "kind" {}