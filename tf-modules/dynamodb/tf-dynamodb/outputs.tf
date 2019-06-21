output "dynamodb-table-name" {
  value = "${aws_dynamodb_table.dynamodb-table.name}"
}

output "dynamodb-table-arn" {
  value = "${aws_dynamodb_table.dynamodb-table.arn}"
}

output "dynamodb-stream-arn" {
  value = "${aws_dynamodb_table.dynamodb-table.stream_arn}"
}