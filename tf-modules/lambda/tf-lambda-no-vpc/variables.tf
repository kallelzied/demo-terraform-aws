variable "lambda-function-zip-path" {
  description = "Lambda function zip source path"
}

variable "lambda-function-name" {
  description = "Lambda function name"
}

variable "lambda-function-entrypoint" {
  description = "The handler to execute as an entrypoint of the lambda function"
}

variable "lambda-function-role-arn" {
  description = "The role arn to associate with the lambda function"
}

variable "lambda-function-description" {
  description = "The description of the lambda function"
  default     = ""
}

variable "lambda-function-memory-size" {
  description = "The amount of memory to allocate for the lambda function"
  default     = "128"
}

variable "lambda-function-runtime" {
  description = "The runtime of the lambda function"
  default     = "python3.7"
}

variable "lambda-function-timeout" {
  description = "The lambda function timeout"
  default     = 30
}

variable "lambda-function-publish" {
  description = "Versionning changes of the lambda function"
  default     = "false"
}
