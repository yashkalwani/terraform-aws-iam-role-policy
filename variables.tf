variable "policies_dir" {
  description = "Directory containing IAM policy JSON files"
  type        = string
  default     = "policies"
}

variable "assume_role_policy_path" {
  description = "Assume role policy document for the IAM role"
  type        = string
  default     = "{}"
}

variable "list_inline_policies_paths" {
  description = "List of inline policies to attach to the IAM role"
  type        = list(string)
  default     = []
}

variable "list_aws_managed_policies_arns" {
  description = "List of AWS managed policies to attach to the IAM role"
  type        = list(string)
  default     = []
}

variable "list_custom_managed_policies_paths" {
  description = "List of custom managed policies to attach to the IAM role"
  type        = list(string)
  default     = []
}

variable "role_name_prefix" {
  description = "Prefix for the IAM role name"
  type        = string
  default     = ""
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = ""
}

variable "policy_name_prefix" {
  description = "Prefix for the IAM role policy names"
  type        = string
  default     = ""
}

variable "inline_policy_name_prefix" {
  description = "Prefix for inline policy names"
  type        = string
  default     = "inline-"
}

variable "custom_managed_policy_name_prefix" {
  description = "Prefix for custom managed policy names"
  type        = string
  default     = "custom-"
}

variable "cross_account_id"{
  description = "Cross account ID for the IAM role"
  type        = string
  default     = ""
}

variable "common_tags" {
  description = "Common tags to apply to the IAM role and policies"
  type        = map(string)
  default     = {}
  
}