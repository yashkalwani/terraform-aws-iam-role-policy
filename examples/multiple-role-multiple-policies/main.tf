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
  source    = "../../"
  for_each  = var.role_policy_map
  role_name = each.key

  cross_account_id                   = each.value.cross_account_id
  role_name_prefix                   = each.value.role_name_prefix
  assume_role_policy_path            = each.value.assume_role_policy_path
  list_inline_policies_paths         = each.value.inline_policy_paths
  list_custom_managed_policies_paths = each.value.custom_managed_policy_paths
  list_aws_managed_policies_arns     = each.value.managed_policy_arns
  common_tags                        = var.common_tags
}
