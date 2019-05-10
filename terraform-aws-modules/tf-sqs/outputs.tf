output "queue-id" {
  value = "${aws_sqs_queue.queue.id}"
}

output "queue-arn" {
  value = "${aws_sqs_queue.queue.arn}"
}
