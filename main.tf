/**
 * # ![AWS](aws-logo.png) CloudFormation Stack
 *
 * Purpose: Deploy a CloudFormation stack (and store template revisions)
 */
data "aws_s3_bucket" "template_bucket" {
  bucket = var.template_bucket
}

resource "aws_s3_bucket_object" "template" {
  bucket  = data.aws_s3_bucket.template_bucket.id
  key     = "${var.name}/template.yml"
  content = var.template_body
}

resource "aws_cloudformation_stack" "stack" {
  name              = var.name
  parameters        = var.parameters
  template_url      = "https://${data.aws_s3_bucket.template_bucket.bucket_domain_name}/${aws_s3_bucket_object.template.key}"
  capabilities      = var.capabilities
  iam_role_arn      = var.iam_role_arn
  notification_arns = var.notification_arns
  depends_on        = [aws_s3_bucket_object.template]
}
