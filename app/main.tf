resource "kubernetes_deployment" "example" {
  metadata {
    name = "example-deployment"
  }

  spec {
    replicas = var.node_count

    template {
      metadata {
        labels = {
          app = "example-app"
        }
      }

      spec {
        container {
          image = var.app_image
          name  = "example-container"
          ports {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "example" {
  metadata {
    name = "example-service"
  }

  spec {
    selector = {
      app = "example-app"
    }

    port {
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}
