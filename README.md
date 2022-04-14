# ![AWS](aws-logo.png) CloudFormation Stack

[![CI](https://github.com/figurate/terraform-aws-cloudformation-stack/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-aws-cloudformation-stack/actions/workflows/main.yml)

Purpose: Deploy a CloudFormation stack (and store template revisions)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| capabilities | Required capabilities for the CloudFormation stack | `list(string)` | `[]` | no |
| iam\_role\_arn | The ARN of an IAM role assumed by CloudFormation to execute the stack | `any` | n/a | yes |
| name | The CloudFormation stack name | `any` | n/a | yes |
| notification\_arns | A list of SNS topics used to publish stack events | `list(string)` | `[]` | no |
| parameters | A map of Cloudformation template parameters | `map(any)` | `{}` | no |
| template\_body | The CloudFormation template body | `any` | n/a | yes |
| template\_bucket | An S3 bucket used to store the CloudFormation template revisions | `any` | n/a | yes |

## Outputs

No output.

