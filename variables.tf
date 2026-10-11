variable "slos_lookup" {
  description = <<EOT
Map of slos_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

