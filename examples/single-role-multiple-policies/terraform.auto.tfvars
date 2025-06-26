aws_region = "us-east-1"
common_tags = {
  "CreatedBy" = "Terraform"
}

role_name = "sample-role"
role_name_prefix = "example-"

cross_account_id = "1234567890123"
assume_role_policy_path = "trust-policy.json"
inline_policy_paths = ["inline-policy.json"]
managed_policy_arns = ["arn:aws:iam::aws:policy/AIOpsConsoleAdminPolicy"]
custom_managed_policy_paths = [ "custom-managed-policy.json" ]