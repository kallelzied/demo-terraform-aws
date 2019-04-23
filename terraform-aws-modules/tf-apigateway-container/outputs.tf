output "api-gateway-id" {
  value = "${aws_api_gateway_rest_api.api-gateway.id}"
}

output "api-gateway-root" {
  value = "${aws_api_gateway_rest_api.api-gateway.root_resource_id}"
}
