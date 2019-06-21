variable "table_name" {
}

variable "hash_key" {
}

variable "range_key" {
}

variable "read_capacity" {
  default = "5"
}

variable "write_capacity" {
  default = "5"
}

variable "hash_key_type" {
  default = "S"
}

variable "range_key_type" {
  default = "S"
}