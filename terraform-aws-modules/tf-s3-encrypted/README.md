# Terraform AWS S3 bucket module
Create an encrypted S3 bucket:  
 * The s3 bucket is encrypted using AWS **AES256** server side encryption
 * Objects versioning are disabled by default  
 * All put object against this bucket will be rejected unless objects are encrypted, the bucket has this policy:
```
{
    "Version": "2012-10-17",
    "Id": "PutObjPolicy",
    "Statement": [
        {
            "Sid": "DenyIncorrectEncryptionHeader",
            "Effect": "Deny",
            "Principal": "*",
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::{BUCKET_NAME}/*",
            "Condition": {
                "StringNotEquals": {
                    "s3:x-amz-server-side-encryption": "AES256"
                }
            }
        },
        {
            "Sid": "DenyUnEncryptedObjectUploads",
            "Effect": "Deny",
            "Principal": "*",
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::{BUCKET_NAME}/*",
            "Condition": {
                "Null": {
                    "s3:x-amz-server-side-encryption": "true"
                }
            }
        }
    ]
}
```
## Example:
```
module "bucket-sample" {
  source                             = "path-to-this-folder/tf-s3-encrypted"
  bucket-name                        = "demo-bucket-s3"
  is-versioning-enabled              = false
}
```
This will create an encrypted s3 bucket named demo-bucket-s3

# Terraform version
No special requirement, but as always try to use the last version

# Module outputs
his module exposes the following outputs:  
 * s3-id : The S3 bucket ID
 * s3-arn: The S3 bucket ARN



 