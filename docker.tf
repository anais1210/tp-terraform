resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "app" {
  name  = "BC-app"
  image = docker_image.nginx.latest

  ports {
    external = 8081
    internal = 80
  }
}


resource "docker_network" "MyBridgedNetwork" {
  name = "MyBridgedNetwork"
  driver= "bridge"
}

resource "docker_network" "BCNetwork" {
  name = "BCNetwork"
}

# module "ethereum-node" {
#   source  = "cardstack/ethereum-node/aws"
#   version = "0.1.3"
#   network = "rinkeby"
#   public_key = "VIKodG3gAI285VlOz1aEKAc8Hyhk6m66QQU6I"
#   availability_zone = "us-central-1"
# }