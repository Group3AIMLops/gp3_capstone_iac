terraform{
    backend "s3" {
        bucket = "bsuite-terraform-state-bucket"
        key = "prod/terraform.tfstate"
        region = "ap-southeast-1"
        dynamodb_table = "bsuite-terraform-locks"
        encrypt        = true
    }
}
