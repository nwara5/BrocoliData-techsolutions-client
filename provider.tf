provider "aws" {
  region = var.aws_region
  profile = var.profile
  dynamic "assume_role" {
    for_each = var.assume_role_arn != "" ? [1] : []
    content {
      role_arn     = var.assume_role_arn
      session_name = var.session_name
    }
}
}