<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_role_policy"></a> [role\_policy](#module\_role\_policy) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policy_path"></a> [assume\_role\_policy\_path](#input\_assume\_role\_policy\_path) | The path to the assume role policy document | `string` | `"{}"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region to deploy resources in | `string` | `"us-east-1"` | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Common tags to apply to all resources | `map(string)` | n/a | yes |
| <a name="input_cross_account_id"></a> [cross\_account\_id](#input\_cross\_account\_id) | The AWS account ID for cross-account access | `string` | n/a | yes |
| <a name="input_custom_managed_policy_paths"></a> [custom\_managed\_policy\_paths](#input\_custom\_managed\_policy\_paths) | A list of custom managed policy ARNs to attach to the role | `list(string)` | `[]` | no |
| <a name="input_inline_policy_paths"></a> [inline\_policy\_paths](#input\_inline\_policy\_paths) | A list of paths to inline policy documents to attach to the role | `list(string)` | `[]` | no |
| <a name="input_managed_policy_arns"></a> [managed\_policy\_arns](#input\_managed\_policy\_arns) | A list of ARNs of managed policies to attach to the role | `list(string)` | `[]` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the IAM role to create | `string` | n/a | yes |
| <a name="input_role_name_prefix"></a> [role\_name\_prefix](#input\_role\_name\_prefix) | The prefix for the IAM role name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_entire_output"></a> [entire\_output](#output\_entire\_output) | Outputs from the module. |
<!-- END_TF_DOCS -->