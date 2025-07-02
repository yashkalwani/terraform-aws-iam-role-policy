terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.0"
}

provider "aws" {
  region = var.aws_region
}

module "role_policy" {
  source                             = "yashkalwani/iam-role-policy/aws"
  cross_account_id                   = var.cross_account_id
  role_name                          = var.role_name
  role_name_prefix                   = var.role_name_prefix
  assume_role_policy_path            = var.assume_role_policy_path
  list_inline_policies_paths         = var.inline_policy_paths
  list_custom_managed_policies_paths = var.custom_managed_policy_paths
  list_aws_managed_policies_arns     = var.managed_policy_arns
  common_tags                        = var.common_tags
}
