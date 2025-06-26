variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "role_policy_map" {
  description = "Map of role names to their associated policies"
  type = map(object({
    role_name                   = string
    role_name_prefix            = string
    cross_account_id            = string
    assume_role_policy_path     = string
    inline_policy_paths         = list(string)
    custom_managed_policy_paths = list(string)
    managed_policy_arns         = list(string)
  }))
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {}
  
}