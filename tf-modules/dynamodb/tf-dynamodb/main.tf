resource "aws_dynamodb_table" "dynamodb-table" {
  name      = "${var.table_name}"
  hash_key  = "${var.hash_key}"
  range_key = "${var.range_key}"

  read_capacity  = "${var.read_capacity}"
  write_capacity = "${var.write_capacity}"
  stream_enabled = false

  attribute {
    name = "${var.hash_key}"
    type = "${var.hash_key_type}"
  }

  attribute {
    name = "${var.range_key}"
    type = "${var.range_key_type}"
  }
}
