locals {
  # Local variables for the module
  current_account_id = data.aws_caller_identity.current.account_id
  current_region     = data.aws_region.current.name
  current_region_short = lower(join("", [
    substr(split("-", local.current_region)[0], 0, 1),
    substr(split("-", local.current_region)[1], 0, 1),
    split("-", local.current_region)[2]
  ]))

  policies_dir = var.policies_dir

  policy_name_prefix                = var.policy_name_prefix
  inline_policy_name_prefix         = local.policy_name_prefix != "" ? local.policy_name_prefix : var.inline_policy_name_prefix
  custom_managed_policy_name_prefix = local.policy_name_prefix != "" ? local.policy_name_prefix : var.custom_managed_policy_name_prefix

  role_name_prefix = var.role_name_prefix

  role_name = (var.role_name != "" && local.role_name_prefix) ? (
    "${var.role_name_prefix}-${var.role_name}") : (
    local.role_name_prefix != "" && var.role_name == "" ? (
      "${local.role_name_prefix}-${local.current_region_short}-role") : (
      local.role_name_prefix == "" && var.role_name != "" ? (
        var.role_name) : (
      "${local.current_region_short}-role")
    )
  )

  assume_role_policy_doc = var.assume_role_policy_path != "{}" ? ("${path.cwd}/${local.policies_dir}/${var.assume_role_policy_path}") : var.assume_role_policy_path

  inline_policies_doc = {
    for policy_path in var.list_inline_policies_paths :
    "inline-${basename(policy_path, ".yaml", "")}" => replace(
      replace(
        file("${path.cwd}/${local.policies_dir}/${policy_path}"),
        "CURRENT_ACCOUNT_ID",
        "${local.current_account_id}"
      ),
      "CURRENT_REGION",
      "${local.current_region}"
    )
  }

  customer_managed_policies_doc = {
    for policy_path in var.list_inline_policies_paths :
    "custom-${basename(policy_path, ".yaml", "")}" => replace(
      replace(
        file("${path.cwd}/${local.policies_dir}/${policy_path}"),
        "CURRENT_ACCOUNT_ID",
        "${local.current_account_id}"
      ),
      "CURRENT_REGION",
      "${local.current_region}"
    )
  }

  aws_managed_policies_arns = var.list_aws_managed_policies_arns
}
