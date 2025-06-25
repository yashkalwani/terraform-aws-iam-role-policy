aws_region = "us-east-1"

role_policy_map = {
  "multiple-sample-role" = {
    role_name                   = "multiple-sample-role"
    cross_account_id            = "123456789012"
    role_name_prefix            = "example-"
    assume_role_policy_path     = "trust-policy.json"
    inline_policy_paths         = ["inline-policy.json"]
    custom_managed_policy_paths = ["custom-multi-managed-policy.json", "custom-multi-managed-eks-policy.json"]
    managed_policy_arns         = ["arn:aws:iam::aws:policy/AIOpsConsoleAdminPolicy", "arn:aws:iam::aws:policy/AWSAccountActivityAccess"]
  }
}
