# tf-aws-iam-role-policy
Terrafrom Module for AWS IAM Role and it's various policies to be attached. It is a a simplified apprach to managing IAM Roles and Policies attachment easily.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.inline](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.aws_managed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.custom](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policy_path"></a> [assume\_role\_policy\_path](#input\_assume\_role\_policy\_path) | Assume role policy document for the IAM role | `string` | `"{}"` | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Common tags to apply to the IAM role and policies | `map(string)` | `{}` | no |
| <a name="input_cross_account_id"></a> [cross\_account\_id](#input\_cross\_account\_id) | Cross account ID for the IAM role | `string` | `""` | no |
| <a name="input_custom_managed_policy_name_prefix"></a> [custom\_managed\_policy\_name\_prefix](#input\_custom\_managed\_policy\_name\_prefix) | Prefix for custom managed policy names | `string` | `"custom-"` | no |
| <a name="input_inline_policy_name_prefix"></a> [inline\_policy\_name\_prefix](#input\_inline\_policy\_name\_prefix) | Prefix for inline policy names | `string` | `"inline-"` | no |
| <a name="input_list_aws_managed_policies_arns"></a> [list\_aws\_managed\_policies\_arns](#input\_list\_aws\_managed\_policies\_arns) | List of AWS managed policies to attach to the IAM role | `list(string)` | `[]` | no |
| <a name="input_list_custom_managed_policies_paths"></a> [list\_custom\_managed\_policies\_paths](#input\_list\_custom\_managed\_policies\_paths) | List of custom managed policies to attach to the IAM role | `list(string)` | `[]` | no |
| <a name="input_list_inline_policies_paths"></a> [list\_inline\_policies\_paths](#input\_list\_inline\_policies\_paths) | List of inline policies to attach to the IAM role | `list(string)` | `[]` | no |
| <a name="input_policies_dir"></a> [policies\_dir](#input\_policies\_dir) | Directory containing IAM policy JSON files | `string` | `"policies"` | no |
| <a name="input_policy_name_prefix"></a> [policy\_name\_prefix](#input\_policy\_name\_prefix) | Prefix for the IAM role policy names | `string` | `""` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Name of the IAM role | `string` | `""` | no |
| <a name="input_role_name_prefix"></a> [role\_name\_prefix](#input\_role\_name\_prefix) | Prefix for the IAM role name | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_module_output"></a> [module\_output](#output\_module\_output) | Outputs from the module. |
<!-- END_TF_DOCS -->