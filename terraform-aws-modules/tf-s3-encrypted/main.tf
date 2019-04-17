resource "aws_s3_bucket" "s3" {
  bucket = "${var.bucket-name}"

  versioning {
    enabled = "${var.is-versioning-enabled}"
  }

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Id": "PutObjPolicy",
    "Statement": [

          {
            "Sid": "DenyIncorrectEncryptionHeader",
            "Effect": "Deny",
            "Principal": "*",
            "Action": "s3:PutObject",

              "Resource": "arn:aws:s3:::${var.bucket-name}/*",
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
            "Resource": "arn:aws:s3:::${var.bucket-name}/*",
            "Condition": {
                "Null": {

                      "s3:x-amz-server-side-encryption": "true"
                }
            }
        }
    ]

  }
  EOF

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
