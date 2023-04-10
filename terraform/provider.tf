provider "aws" {
  region                   = "eu-west-1"
  profile                  = "cctvbackup"
  shared_credentials_files = ["~/.aws/credentials"]
}