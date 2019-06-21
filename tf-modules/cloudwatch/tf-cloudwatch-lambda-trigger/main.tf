resource "aws_cloudwatch_event_rule" "cloudwatch-event-rule" {
  name                = "${var.target_name}"
  description         = "Schedule ${var.lambda_function_name}"
  schedule_expression = "${var.schedule_expression}"
  is_enabled          = "${var.is_enable}"
}

resource "aws_cloudwatch_event_target" "cloudwatch-event-target" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch-event-rule.name}"
  target_id = "${var.target_name}"
  arn       = "${var.lambda_arn}"
}

resource "aws_lambda_permission" "lambda-permission" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${var.lambda_function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.cloudwatch-event-rule.arn}"
}
