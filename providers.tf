provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::123456789:role/CrossAccountIAMRole" #it is an example
  }
}