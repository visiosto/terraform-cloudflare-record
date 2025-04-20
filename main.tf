data "cloudflare_zone" "current" {
  filter = {
    name = var.zone_name
  }
}

resource "cloudflare_dns_record" "this" {
  name     = var.name
  ttl      = var.ttl
  type     = var.type
  zone_id  = data.cloudflare_zone.current.id
  content  = var.type == "TXT" && !startswith(var.content, "\"") && !endswith(var.content, "\"") ? format("\"%s\"", var.content) : var.content
  priority = var.type == "MX" ? var.priority : null
  proxied  = var.proxied
}
