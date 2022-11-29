data "local_file" "kind" {
  filename = "${path.module}/kind-config.yml"
}

resource "kind_cluster" "local-cluster" {
  name        = "test-cluster"
  node_image  = "kindest/node:v1.25.2@sha256:f52781bc0d7a19fb6c405c2af83abfeb311f130707a0e219175677e366cc45d1"
  kind_config = data.local_file.kind.content
}