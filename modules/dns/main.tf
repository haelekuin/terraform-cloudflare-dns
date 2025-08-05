resource "cloudflare_dns_record" "all" {
  for_each = {
    for k, v in try(var.records, {}) : k => {
      zone_id  = coalesce(v.zone_id, var.zone_id)
      name     = v.name
      type     = v.type
      content  = v.content
      ttl      = coalesce(v.ttl, 3600)
      proxied  = try(v.proxied, false)
      priority = try(v.priority, null)
      comment  = try(v.comment, null)
      timeouts = try(v.timeouts, null)
      data     = try(v.data, null)

      tags = concat(
        coalesce(v.tags, []),
        coalesce(var.tags, [])
      )
    }
  }

  zone_id  = each.value.zone_id
  name     = each.value.name
  content  = each.value.content
  type     = each.value.type
  ttl      = each.value.ttl
  proxied  = each.value.proxied
  priority = each.value.priority
  comment  = each.value.comment

  tags = each.value.tags
}
