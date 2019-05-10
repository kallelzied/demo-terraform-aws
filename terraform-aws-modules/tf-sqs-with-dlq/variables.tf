variable "queue-name" {
  description = "This is the name of the queue"
}

variable "delay-seconds" {
  description = "The time in seconds that the delivery of all messages in the queue will be delayed"
  default     = "0"
}

variable "max-message-size" {
  description = "The limit of how many bytes a message can contain before Amazon SQS rejects it"
  default     = "262144"
}

variable "message-retention-seconds" {
  description = "The number of seconds Amazon SQS retains a message"
  default     = "345600"
}

variable "receive-wait-time-seconds" {
  description = "The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning"
  default     = "0"
}

variable "queue-dlq-name" {
  description = "This is the name of the dead letter queue"
}

variable "max-receive-count" {
  description = "The number of the receive count for the sqs dlq"
  default     = "345600"
}
