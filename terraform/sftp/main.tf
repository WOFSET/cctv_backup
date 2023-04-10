resource "aws_transfer_server" "client_sftp" {
  identity_provider_type = var.identity_provider_type
  endpoint_type          = var.endpoint_type
  protocols               = ["SFTP"]

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}