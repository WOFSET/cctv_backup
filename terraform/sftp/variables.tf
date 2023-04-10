variable "identity_provider_type" {
  description = "The type of identity provider to use with the server (e.g., SERVICE_MANAGED, API_GATEWAY)"
  type        = string
}

variable "endpoint_type" {
  description = "The type of endpoint to use with the server (e.g., VPC, PUBLIC)"
  type        = string
}

variable "protocols" {
  description = "The protocol to use with the server (e.g., SFTP, FTPS, FTP)"
  type        = string
}

variable "environment" {
  description = "The environment this server is for"
  type        = string
}

variable "project_name" {
  description = "The name of the project this server is for"
  type        = string
}
