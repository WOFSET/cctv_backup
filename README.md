# Automated cctv sftp deployment

This repository contains Terraform code to deploy infrastructure to AWS for an SFTP server with an S3 bucket for storage. It uses Terraform modules to create new customers and an SFTP server along with an S3 bucket for storage.

## What all of this means?
I've built this in a way that scales. In the future, when signing up new clients to the cloud backup solution - we can get them setup with a new sftp envionment in <5min. 

It's low effort and low maintenance to use this, once we've completed some testing there's a few tweaks I need to make but this will do the job for now.

## Prerequisites

Before deploying this infrastructure, you should have the following:
- Access to the cctv_backup AWS account
- Terraform installed on your local machine
- AWS CLI installed on your local machine

## How to Deploy

(you can ignore the below for now - this is just some futureproofing, I'm happy to run this myself whilst testing)

To deploy this infrastructure, follow the steps below:

1. Clone the repository to your local machine.
``````
git clone https://github.com/WOFSET/cctv_backup.git
``````
2. Navigate to the repository directory.
``````
cd <path to cloned repository>
``````
3. Initialize Terraform and install required providers.
````
terraform init
````
4. Configure your AWS credentials.
````
aws configure
````
5. Create a `terraform.tfvars` file with the following variables:
``````
region = "us-east-1"
sftp_users = [
    {
        username = "user1"
        password = "password1"
    },
    {
        username = "user2"
        password = "password2"
    }
]
``````
6. Create an execution plan.
````
terraform plan
````
7. Apply the execution plan to create the infrastructure.
``````
terraform apply
``````
Once deployed, you should see the below outputs, where `sftp public ip` is the address to input into the cctv software
``````

## Outputs

The Terraform deployment will output the following resources:
- `sftp_server_public_ip`: The public IP address of the SFTP server.
- `s3_bucket_name`: The name of the S3 bucket used for storage.
``````

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.