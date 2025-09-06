terraform {
  required_providers {
    tailscale = {
      source = "tailscale/tailscale"
      version = "0.21.1"
    }
  }
}

locals {
      json_data = file("./Oauth_Terraform.json")
      client = jsondecode(local.json_data)
}

provider "tailscale" {
  oauth_client_id     = local.client.client[0].id 
  oauth_client_secret = local.client.client[0].secret
  tailnet             = "-"
}

resource "tailscale_tailnet_key" "my_auth_key" {
  reusable    = true
  ephemeral   = true
  preauthorized = true
  expiry      = 3600
  description = "Managed by Terraform using the CICD OAuth client"
  tags        = ["tag:automation"]
}
