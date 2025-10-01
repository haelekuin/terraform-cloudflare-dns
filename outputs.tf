output "records" {
  description = "Contains DNS records"
  value       = cloudflare_dns_record.all
}
