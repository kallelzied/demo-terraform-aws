# Terraform AWS CloudWatch lambda trigger module
Create a CloudWatch lambda trigger:  
 * The target has to be a lambda

## Example:
```
module "cloudwatch-trigger" {
  source                    = "path-to-this-folder/tf-cloudwatch-lambda-trigger"
  lambda_function_name      = "sample-lambda"
  lambda_arn                = "arn:aws:lambda::xxxxxxxxxx:function:sample-lambda"
  target_name               = "invoke-function-sample-lambda"
  schedule_expression       = "rate(10 minutes)"
  is_enable                 = "true"
}
```

This will create a cloudwatch trigger that will invoke sample-lambda every 10 minutes

# Terraform version
No special requirement, but as always try to use the last version

# Module outputs
No outputs