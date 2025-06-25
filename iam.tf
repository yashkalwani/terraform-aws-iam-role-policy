resource "aws_iam_role" "this" {
  name               = substr(local.role_name, 0, 64)
  assume_role_policy = local.assume_role_policy_doc
}

resource "aws_iam_role_policy" "inline" {
  for_each = local.inline_policies_doc

  name       = substr(each.key, 0, 64)
  role       = aws_iam_role.this.name
  policy     = each.value
  depends_on = [aws_iam_role.this]
}

resource "aws_iam_role_policy_attachment" "aws_managed" {
  for_each = toset(local.aws_managed_policies_arns)

  role       = aws_iam_role.this.name
  policy_arn = each.value
  depends_on = [aws_iam_role.this]
}

resource "aws_iam_policy" "custom" {
  for_each = local.customer_managed_policies_doc

  name       = substr(each.key, 0, 64)
  policy     = each.value
  depends_on = [aws_iam_role.this]
}

resource "aws_iam_role_policy_attachment" "custom" {
  for_each = aws_iam_policy.custom

  role       = aws_iam_role.this.name
  policy_arn = each.value.arn
  depends_on = [aws_iam_role.this, aws_iam_policy.custom]
}
