terraform{
    backend "s3" {
        bucket = "gp3-terraform-state-bucket-1"
        key = "prod/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "gp3-terraform-locks"
        encrypt        = true
    }
}
