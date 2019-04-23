########################### API Container and DNS
# ---------------
# API Container
# ---------------
resource "aws_api_gateway_rest_api" "api-gateway" {
  name        = "${var.api-gateway-name}"
  description = "API Container"

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_gateway_response" "api-response-default-4XX" {
  rest_api_id   = "${aws_api_gateway_rest_api.api-gateway.id}"
  response_type = "DEFAULT_4XX"

  response_templates = {
    "application/json" = "{'message':$context.error.messageString}"
  }

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'*'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'*'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'*'"
  }
}

resource "aws_api_gateway_gateway_response" "api-response-default-5XX" {
  rest_api_id   = "${aws_api_gateway_rest_api.api-gateway.id}"
  response_type = "DEFAULT_5XX"

  response_templates = {
    "application/json" = "{'message':$context.error.messageString}"
  }

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'*'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'*'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'*'"
  }
}
