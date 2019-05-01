output "lambda-function-name" {
  value = "${aws_lambda_function.lambda-function.function_name}"
}

output "lambda-function-arn" {
  value = "${aws_lambda_function.lambda-function.arn}"
}

output "lambda-function-last-modified" {
  value = "${aws_lambda_function.lambda-function.last_modified}"
}