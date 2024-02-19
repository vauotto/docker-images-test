target "docker-metadata-action" {}

variable "TAG" {
  default = "1.0.0"
}

group "default" {
    targets = ["build-container", "dev-container"]
}

target "build-container" {
    inherits = ["docker-metadata-action"]
    dockerfile = "DockerFile.build.container"
    platforms = ["linux/amd64", "linux/arm64"]
    tags = ["ghcr.io/vauotto/emr-node-build-container:${TAG}"]
}

target "dev-container" {
    inherits = ["docker-metadata-action"]
    dockerfile = "DockerFile.dev.container"
    platforms = ["linux/amd64", "linux/arm64"]
    tags = ["ghcr.io/vauotto/emr-node-dev-container:${TAG}"]
}
