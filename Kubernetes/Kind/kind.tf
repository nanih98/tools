provider "kind" {}

data "local_file" "kind" {
    filename = "${path.module}/kind-config.yml"
}

# creating a cluster with kind of the name "test-cluster" with kubernetes version v1.18.4 and two nodes
resource "kind_cluster" "default" {
    name = "test-cluster"
    node_image = "kindest/node:v1.18.4"
    kind_config = data.local_file.kind.content
}

terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.2.3"
    }

      kind = {
      source = "unicell/kind"
      version = "0.0.2-u2"
    }
  }
}

provider "local" {
  # Configuration options
}