data "grafana_slos" "slos_lookup" {
  for_each = var.slos_lookup

}

