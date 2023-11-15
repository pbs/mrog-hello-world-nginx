terraform {
  backend "s3" {
    bucket         = "pbs-kids-playground-tfstate"
    key            = "mrog-hello-world-nginx"
    profile        = "pbs-kids-playground"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}
