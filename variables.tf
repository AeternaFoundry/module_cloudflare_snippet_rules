variable "snippet_rules" {
  description = <<EOT
Map of snippet_rules, attributes below
Required:
    - rules
    - zone_id
EOT

  type = map(object({
    rules = list(object({
      description  = optional(string)
      enabled      = optional(bool)
      expression   = string
      snippet_name = string
    }))
    zone_id = string
  }))
}

