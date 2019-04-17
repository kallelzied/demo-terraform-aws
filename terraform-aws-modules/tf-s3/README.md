# Terraform AWS S3 bucket module
Create an S3 bucket:  
 * Objects versioning are disabled by default  
 * The s3 bucket is not encrypted 

## Example:
```
module "bucket-sample" {
  source                             = "path-to-this-folder/tf-s3"
  bucket-name                        = "demo-bucket-s3"
  is-versioning-enabled              = false
}
```
This will create an s3 bucket named demo-bucket-s3

# Terraform version
No special requirement, but as always try to use the last version

# Module outputs
his module exposes the following outputs:  
 * s3-id : The S3 bucket ID
 * s3-arn: The S3 bucket ARN



 