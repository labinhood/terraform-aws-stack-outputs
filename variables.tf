variable "cfn_stack_name" {
  description = "The name of the Cloudformation Stack to create."
  type        = string
}

variable "outputs" {
  description = "A map of keys and values that should be Outputs of the Cloudformation Stack."
  type        = map(string)
}

variable "export_names_prefix" {
  description = "The string prefix to add to all CloudFormation Export names (defaults to the CloudFormation stack name)"
  type        = string
  default     = ""
}
