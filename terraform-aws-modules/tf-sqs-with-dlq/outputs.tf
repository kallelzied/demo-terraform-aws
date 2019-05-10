output "queue-id" {
  value = "${aws_sqs_queue.queue.id}"
}

output "queue-arn" {
  value = "${aws_sqs_queue.queue.arn}"
}

output "dlq-id" {
  value = "${aws_sqs_queue.queue-dlq.id}"
}

output "dlq-arn" {
  value = "${aws_sqs_queue.queue-dlq.arn}"
}
