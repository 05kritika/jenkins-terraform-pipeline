provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "jenkins-pipeline" {
  name        = "jenkins-pipeline"
  description = "built-by-jenkins-pipeline"
}
