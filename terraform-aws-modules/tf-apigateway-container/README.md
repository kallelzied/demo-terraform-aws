# Terraform AWS API Gateway container
This module will create an apiGateway Container
Check out `variables.tf` to better understand module parameters.

## Example:
```
module "api-gateway-container" {
  source           = "path-to-this-folder/tf-apigateway-container"
  api-gateway-name = "simple-api-public" 
}
```

## Terraform version

No special requirement, but as always try to use an up to date version:)

## Module outputs
This module exposes the following outputs:  
 * api-gateway-id : The ApiGateway Container ID
 * api-gateway-root: The ApiGateway Container Root
