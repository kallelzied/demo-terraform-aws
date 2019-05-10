resource "aws_sqs_queue" "queue" {
  name                      = "${var.queue-name}"
  delay_seconds             = "${var.delay-seconds}"
  max_message_size          = "${var.max-message-size}"
  message_retention_seconds = "${var.message-retention-seconds}"
  receive_wait_time_seconds = "${var.receive-wait-time-seconds }"
}
