# Terraform AWS Lambda without vpc and env variables
Terraform lambda local source files without environment variables and VPC module 

## Default and required attribute
### Required Attributes
1. lambda-function-zip-path: the path of the lambda zip example: ```/home/usr/lambda-example.zip```
1. lambda-function-name: the name of the lamba function example: ```terraform-lambda-sample```
1. lambda-function-entrypoint: the entry point of the lambda function(path to the handler) example: ```example.handler``` 
1. lambda-function-role-arn: the arn for the role of this lambda example: ```arn:aws:iam::xxxxxxxxxx:role/service-role/lambda-terraform-example-role```

### Default Attributes
1. lambda-function-description: is set by default to an empty string ""
1. lambda-function-memory-size: is set by default to 128
1. lambda-function-runtime: is set by default to python3.7 (you can chose one value of this list ["python2.7", "python3.6", "python3.7", "nodejs6.10", "nodejs8.10", "ruby2.5", "java8", "go1.x", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1"])
1. lambda-function-timeout: is set by default to 30 seconds 
1. lambda-function-publish: is set by default to "false"


## Example:
```
module "lambda-without-vpc" {
  source                            = "path-to-this-folder/tf-lambda-no-vpc"
  lambda-function-zip-src-path      = "/home/usr/lambda-example.zip"
  lambda-function-name              = "terraform-lambda-sample"
  lambda-function-entrypoint        = "example.handler"
  lambda-function-role-arn          = "arn:aws:iam::xxxxxxxxxx:role/service-role/lambda-terraform-example-role"
  lambda-function-description       = "An AWS lambda function"
  lambda-function-runtime           = "python3.7"
  lambda-function-timeout           = "180"
}
```
This will create an aws lambda 

# Terraform version
No special requirement, but as always try to use the last version

# Module outputs
This module exposes the following outputs:  
 * lambda-function-name : The Lambda name example: terraform-lambda-sample
 * lambda-function-arn: The Lambda ARN
 * lambda-function-last-modified : The date of the last modification were done on this lambda



 