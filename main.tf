resource "azuredevops_agent_pool" "agent_pools" {
  for_each = var.agent_pools

  name           = each.value.name
  auto_provision = each.value.auto_provision
  auto_update    = each.value.auto_update
  pool_type      = each.value.pool_type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

