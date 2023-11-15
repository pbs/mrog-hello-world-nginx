module "ecr" {
  source = "github.com/pbs/terraform-aws-ecr-module?ref=0.3.25"

  organization = var.organization
  environment  = var.environment
  product      = var.product
  repo         = var.repo
}

module "service" {
  source = "github.com/pbs/terraform-aws-ecs-service-module?ref=4.2.2"

  primary_hosted_zone = "playground.pbskids.org"

  cluster = "main"

  image_repo = "041972234615.dkr.ecr.us-east-1.amazonaws.com/mrog-hello-world-nginx"
  image_tag  = "latest"

  container_port = 8080

  organization = var.organization
  environment  = var.environment
  product      = var.product
  repo         = var.repo
}
