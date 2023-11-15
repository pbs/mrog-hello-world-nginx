variable "environment" {
  description = "Environment (sharedtools, dev, staging, prod)"
  type        = string

  default = "dev"

  validation {
    condition     = contains(["sharedtools", "dev", "staging", "prod"], var.environment)
    error_message = "The environment variable must be one of [sharedtools, dev, staging, prod]."
  }
}

variable "product" {
  description = "Tag used to group resources according to application"

  default = "mrog-hello-world-nginx"

  validation {
    condition     = can(regex("[a-z\\-]+", var.product))
    error_message = "The product variable violates approved regex."
  }
}

variable "repo" {
  description = "Tag used to point to the repo using this module"

  default = "https://github.com/pbs/mrog-hello-world-nginx.git"

  validation {
    condition     = can(regex("(?:git|ssh|https?|git@[-\\w.]+):(\\/\\/)?(.*?)(\\.git)(\\/?|\\#[-\\d\\w._]+?)$", var.repo))
    error_message = "The repo variable violates approved regex."
  }
}

variable "organization" {
  description = "Organization using this module. Used to prefix tags so that they are easily identified as being from your organization"
  type        = string

  default = "pbs"

  validation {
    condition     = can(regex("[a-z\\-]+", var.organization))
    error_message = "The organization variable violates approved regex."
  }
}
