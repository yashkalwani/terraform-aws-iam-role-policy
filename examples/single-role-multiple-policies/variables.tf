variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "role_name" {
  description = "The name of the IAM role to create"
  type        = string
}

variable "role_name_prefix" {
  description = "The prefix for the IAM role name"
  type        = string
}

variable "assume_role_policy_path" {
  description = "The path to the assume role policy document"
  type        = string
  default     = "{}"
}

variable "inline_policy_paths" {
  description = "A list of paths to inline policy documents to attach to the role"
  type        = list(string)

  default = []
}
variable "managed_policy_arns" {
  description = "A list of ARNs of managed policies to attach to the role"
  type        = list(string)
  default     = []
}
variable "custom_managed_policy_paths" {
  description = "A list of custom managed policy ARNs to attach to the role"
  type        = list(string)
  default     = []
}
variable "cross_account_id" {
  description = "The AWS account ID for cross-account access"
  type        = string
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
}