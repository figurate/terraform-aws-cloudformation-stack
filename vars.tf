variable "name" {
  description = "The CloudFormation stack name"
}

variable "template_body" {
  description = "The CloudFormation template body"
}

variable "parameters" {
  description = "A map of Cloudformation template parameters"
  type        = map(any)
  default     = {}
}

variable "template_bucket" {
  description = "An S3 bucket used to store the CloudFormation template revisions"
}

variable "capabilities" {
  description = "Required capabilities for the CloudFormation stack"
  type        = list(string)
  default     = []
}

variable "iam_role_arn" {
  description = "The ARN of an IAM role assumed by CloudFormation to execute the stack"
}

variable "notification_arns" {
  description = "A list of SNS topics used to publish stack events"
  type        = list(string)
  default     = []
}
