variable "name_prefix" {
  description = "Specifies the name prefix for the resources"
  type        = string
}

variable "common_fate_aws_account_id" {
  description = "The ID or the account where Common Fate is deployed"
  type        = string
}

variable "assume_role_external_id" {
  type        = string
  nullable    = true
  description = "External ID to use when assuming cross-account AWS roles."
  default     = null
}

variable "aws_region" {
  description = "The AWS Region where the ecs cluster is deployed."
  type        = string
}

variable "aws_account_id" {
  description = "The AWS Account where the ecs cluster is deployed."
  type        = string
}
variable "ecs_cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
}
