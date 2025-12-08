terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.0.0"
}

provider "docker" {}
provider "null" {}
