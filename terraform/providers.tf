# Configure the provider: Linode
terraform {
    required_providers {
        linode = {
            source = "linode/linode"
            version = "1.27.1"
        }
    }
}

# Provider configuration
provider "linode" {

    # Use the declared variable from "variables.tf"
    token = var.LINODE_API_TOKEN 
}