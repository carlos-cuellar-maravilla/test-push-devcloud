terraform {
  required_version = "= 1.0.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.47.0"
    }
  }
}


# ---------------------------------------------------------------------------------------------------------------------
# CREATE CLOUDWATCH EVENT TARGET AND RULE
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_cloudwatch_log_group" "main" {
  name        = "cloudwatch/test"
  description = "This is a log group_modifised"
  retention     = ""
  tags = var.tags
}