locals {
  name = "aws-${var.region}-${var.stage}-${var.env}-${var.project}-${var.own}-rtype"
  common_tags = {
    env     = var.env
    project = var.project
    team    = "DevOps"
    owner   = "Irina"
  }
}