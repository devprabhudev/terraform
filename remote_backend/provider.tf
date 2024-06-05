terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }
  backend "s3" {
    bucket = "remotetfbucket "
    region = "eu-north-1"
    dynamodb_table = "remote_backend_table"
    key = "dev/dev-terraform.tfstate"
    
  }
}
#backend is s3 bucket,
#bucket is bucket's name, 
#region is where the bucket is located,
#dynamod_table is the name of dynamodb table used. 
#key is the s3 bucket, folder name + file name where the tfstate will be written. 
