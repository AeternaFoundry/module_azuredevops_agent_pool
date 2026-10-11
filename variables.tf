variable "agent_pools" {
  description = <<EOT
Map of agent_pools, attributes below
Required:
    - name
Optional:
    - auto_provision
    - auto_update
    - pool_type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name           = string
    auto_provision = optional(bool)
    auto_update    = optional(bool)
    pool_type      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.agent_pools : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

