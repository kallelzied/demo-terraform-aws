resource "aws_lambda_function" "lambda-function" {
  filename      = "${var.lambda-function-zip-path}"
  function_name = "${var.lambda-function-name}"
  handler       = "${var.lambda-function-entrypoint}"
  role          = "${var.lambda-function-role-arn}"
  description   = "${var.lambda-function-description}"
  memory_size   = "${var.lambda-function-memory-size}"
  runtime       = "${var.lambda-function-runtime}"
  timeout       = "${var.lambda-function-timeout}"
  publish       = "${var.lambda-function-publish}"

  vpc_config {
    subnet_ids         = ["${var.lambda-function-subnet-ids}"]
    security_group_ids = ["${var.lambda-function-security-group-ids}"]
  }

  source_code_hash = "${base64sha256(file(var.lambda-function-zip-path))}"
}
