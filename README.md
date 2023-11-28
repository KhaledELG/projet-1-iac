# Deploying an EC2 Instance with Terraform

This project aims to automate the deployment of an EC2 instance using Terraform and Ansible. The goal is to streamline the process of provisioning, managing, and destroying EC2 instances on AWS.

## Configuration

### Required Environment Variables

Ensure to set the following environment variables before running this project:

- `ANSIBLE_VAULT_PASS`: Password for Ansible secrets decryption.
- `TF_STATE_NAME`: Terraform state name for the project (e.g., "development").
- `TF_ADDRESS`: Terraform state URL for the project.
- `TF_ROOT`: Root directory of the Terraform project.
- `TF_HTTP_PASSWORD`: Password for GitLab access.
- `TF_HTTP_USERNAME`: GitLab username.
- `TFVARS_FILE`: File name for Terraform variables.
- `AMI`: Amazon Machine Image (AMI) ID for the EC2 instance.
- `INSTANCE_TYPE`: Type of EC2 instance to deploy.
- `GITLAB_USERNAME`: GitLab username for access.
- `DEPLOY_CLUSTER`: Indicates if cluster deployment should occur (`yes` or `no`).
- `RESET_CLUSTER`: Indicates if the cluster should be reset (`yes` or `no`).
- `CLEANUP_AFTER_APPLY`: Indicates whether to clean up after applying (`yes` or `no`).

## CI/CD Pipeline Stages

This project includes several stages in the CI/CD pipeline:

1. **Decrypt** (`decrypt`): Decrypting secrets using Ansible.
2. **TFVars** (`tfvars`): Configuring Terraform variables.
3. **Init** (`init`): Initializing the Terraform project.
4. **Validate** (`validate`): Validating Terraform configuration.
5. **Plan** (`plan`): Generating Terraform plan for deployment.
6. **Apply** (`apply`): Applying changes to the infrastructure (manual).
7. **Output** (`output`): Extracting Terraform output data.
8. **Destroy** (`destroy`): Destroying the infrastructure (manual).
9. **Deployment** (`deployment`): Triggering Ansible-based cluster deployment (manual).

Each stage is designed to perform specific actions in the deployment and management process of the infrastructure.

## Running the Pipeline

### Prerequisites

Ensure the required environment variables are correctly set before triggering the pipeline.

### Manual Triggering

The `Apply`, `Destroy`, and `Deployment` stages require manual intervention to prevent undesired actions on the infrastructure. Use them cautiously.
