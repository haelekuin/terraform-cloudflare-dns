provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

module "dns" {
  source  = "./modules/dns"
    }
  }
}
