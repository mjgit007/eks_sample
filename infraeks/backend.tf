terraform {
  backend "s3" {
    bucket         = "mycloud-tf-backend-state"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform_state"
  }
}
