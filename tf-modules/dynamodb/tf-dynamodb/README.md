# Terraform AWS DynamoDB Table
Create a DynamoDB:  

## Example:
```
module "dynamodb" {
  table_name           = "path-to-this-folder/tf-dynamodb"
  hash_key             = "kind"
  range_key            = "id"

}
```

This will create a dynamodb table

# Terraform version
No special requirement, but as always try to use the last version

# Module outputs  
dynamodb-table-name: table-name
dynamodb-table-arn: table-arn
dynamodb-table-streamarn: the stream arn of this dynamodb table 