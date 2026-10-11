output "slos_lookup_id" {
  description = "Map of id values across all slos_lookup, keyed the same as var.slos_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_slos.slos_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "slos_lookup_slos" {
  description = "Map of slos values across all slos_lookup, keyed the same as var.slos_lookup except keys with no slos are omitted"
  value       = { for k, v in data.grafana_slos.slos_lookup : k => v.slos if v.slos != null && length(v.slos) > 0 }
}

