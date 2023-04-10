output "server_id" {
  description = "The ID of the AWS Transfer Family server"
  value       = aws_transfer_server.client_sftp.id
}