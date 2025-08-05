Creates DNS records.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 5 |

## Resources

| Name | Type |
|------|------|
| [cloudflare_dns_record.all](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/dns_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_records"></a> [records](#input\_records) | DNS records | <pre>map(object({<br/>    zone_id  = optional(string)<br/>    name     = string<br/>    type     = string<br/>    content  = optional(string)<br/>    ttl      = optional(number)<br/>    value    = optional(string)<br/>    proxied  = optional(bool)<br/>    priority = optional(number)<br/>    comment  = optional(string)<br/>    tags     = optional(list(string))<br/>  }))</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags | `list(string)` | `[]` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Cloudflare zone ID | `string` | n/a | yes |

## Outputs

No outputs.


## Example

```hcl
module 'dns' {
    source = ./modules/dns
    zone_id = "peepaapoo"
    records = {
        meow = {
            name = "meow.cats.com" // You can omit the domain, but Terraform will detect a change on every run
            type = "A"
            content = "10.10.10.10"
          }
      }
  }
```
