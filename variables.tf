variable "cloudflare_api_token" {
  type        = string
  description = "API token for managing Cloudflare"
}

variable "zone_id" {
  type = string
}

variable "tags" {
  type    = list(string)
  default = []
}
