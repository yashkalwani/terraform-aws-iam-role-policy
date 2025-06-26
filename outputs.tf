# This file defines the outputs for the IAM role and policies created by the module.

output "module_output" {
  description = "Outputs from the module."
  value       = {
    role_arn                     = aws_iam_role.this.arn
    role_name                    = aws_iam_role.this.name
    inline_policy_names          = [for p in aws_iam_role_policy.inline : p.name]
    customer_managed_policy_arns = [for p in aws_iam_policy.custom : p.arn]
    common_tags                  = local.tags
  }
}