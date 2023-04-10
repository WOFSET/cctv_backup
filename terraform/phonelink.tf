module "phonelink_s3_bucket" {
  source = "./s3"

  bucket_name    = "phonelink-cctv-testbucket"
  environment    = "production" #test deployment to the prod account
  project_name   = "testing"
}

module "phonelink_transfer_server" {
  source = "./sftp"

  identity_provider_type = "SERVICE_MANAGED" #if the tests are successful, we should change to AWS domain to allow us to manage client logins
  endpoint_type          = "PUBLIC"
  protocols               = "SFTP"
  environment            = "production"
  project_name           = "my-project"
}