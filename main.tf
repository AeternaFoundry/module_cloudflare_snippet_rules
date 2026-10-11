resource "cloudflare_snippet_rules" "snippet_rules" {
  for_each = var.snippet_rules

  rules   = each.value.rules
  zone_id = each.value.zone_id
}

