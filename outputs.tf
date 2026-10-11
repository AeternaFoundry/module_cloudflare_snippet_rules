output "snippet_rules_id" {
  description = "Map of id values across all snippet_rules, keyed the same as var.snippet_rules except keys with no id are omitted"
  value       = { for k, v in cloudflare_snippet_rules.snippet_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "snippet_rules_rules" {
  description = "Map of rules values across all snippet_rules, keyed the same as var.snippet_rules except keys with no rules are omitted"
  value       = { for k, v in cloudflare_snippet_rules.snippet_rules : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "snippet_rules_zone_id" {
  description = "Map of zone_id values across all snippet_rules, keyed the same as var.snippet_rules except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_snippet_rules.snippet_rules : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

