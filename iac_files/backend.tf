terraform{
    backend "s3" {
        bucket = "group3-terraform-state-bucket"
        key = "chatbot/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "terraform-locks"
        encrypt        = true
    }
}
