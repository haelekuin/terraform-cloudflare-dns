variable "zone_id" {
  description = "Cloudflare zone ID"
  type        = string
}

variable "tags" {
  description = "Default tags"
  type        = list(string)
  default     = []
}

variable "records" {
  description = "DNS records"
  type = map(object({
    zone_id  = optional(string)
    name     = string
    type     = string
    content  = optional(string)
    ttl      = optional(number)
    value    = optional(string)
    proxied  = optional(bool)
    priority = optional(number)
    comment  = optional(string)
    tags     = optional(list(string))
  }))
}

