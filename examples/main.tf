module "dns" {
  source  = "haelekuin/dns/cloudflare"
  version = "~> 0.1.0"
  zone_id = "m30w"
  records = {
    a = {
      name    = "cats.meow.com"
      type    = "A"
      content = "1.2.3.4"
    }
    aaaa = {
      name    = "cats.meow.com"
      type    = "AAAA"
      content = "fe80::8e2d:7aff:fe3c:9a4b"
    }
    cname = {
      content = "cats.meow.com"
      name    = "meow.meow.com"
      type    = "CNAME"
      proxied = false
    }
    mx = {
      content  = "mail.meow.com"
      name     = "meow.com"
      priority = 20
      proxied  = false
      ttl      = 1
      type     = "MX"
    }
    txt = {
      content = "meowmeowmeowmeowmeowmeow"
      name    = "meow.com"
      proxied = false
      ttl     = 1
      type    = "TXT"
    }
  }
}
