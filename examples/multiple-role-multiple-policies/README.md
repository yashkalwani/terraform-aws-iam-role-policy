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
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region to deploy resources in | `string` | `"us-east-1"` | no |
| <a name="input_role_policy_map"></a> [role\_policy\_map](#input\_role\_policy\_map) | Map of role names to their associated policies | <pre>map(object({<br/>    role_name                   = string<br/>    role_name_prefix            = string<br/>    cross_account_id            = string<br/>    assume_role_policy_path     = string<br/>    inline_policy_paths         = list(string)<br/>    custom_managed_policy_paths = list(string)<br/>    managed_policy_arns         = list(string)<br/>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_entire_output"></a> [entire\_output](#output\_entire\_output) | Outputs from the module. |
<!-- END_TF_DOCS -->