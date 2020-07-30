resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}

provider "aws"{
  region = "us-east-2"
}

resource "aws_instance" "example" {
   ami           = "ami-0c55b159cbfafe1f0"
   instance_type = "t2.micro"
   tags = {
     Name = "terraform-example"  }
     }