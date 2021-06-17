# Terraform - Azure IaaS
Terraform provisioner resources in cloud providers. In this project I have used the provider of [Microsoft Azure](https://portal.azure.com/)
I'm using the virtual machine feature using the Ubuntu Bionic OS exposing MySQL on port 3306

# Setup
First of all you need two tools to run this project:

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

If you're using Windows, we recommend you to download [Git bash](https://git-scm.com/downloads) and execute all commands under this shell.

# Usage
- Clone this repository
- Run `az login`
- Run `terraform init`
- Run `terraform plan`
- Run `terraform apply`