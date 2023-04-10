terraform {
  backend "s3" {
    bucket         = "cctv-backup-tfstate"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }
}