output "agent_pools_id" {
  description = "Map of id values across all agent_pools, keyed the same as var.agent_pools except keys with no id are omitted"
  value       = { for k, v in azuredevops_agent_pool.agent_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_pools_auto_provision" {
  description = "Map of auto_provision values across all agent_pools, keyed the same as var.agent_pools except keys with no auto_provision are omitted"
  value       = { for k, v in azuredevops_agent_pool.agent_pools : k => v.auto_provision if v.auto_provision != null }
}
output "agent_pools_auto_update" {
  description = "Map of auto_update values across all agent_pools, keyed the same as var.agent_pools except keys with no auto_update are omitted"
  value       = { for k, v in azuredevops_agent_pool.agent_pools : k => v.auto_update if v.auto_update != null }
}
output "agent_pools_name" {
  description = "Map of name values across all agent_pools, keyed the same as var.agent_pools except keys with no name are omitted"
  value       = { for k, v in azuredevops_agent_pool.agent_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "agent_pools_pool_type" {
  description = "Map of pool_type values across all agent_pools, keyed the same as var.agent_pools except keys with no pool_type are omitted"
  value       = { for k, v in azuredevops_agent_pool.agent_pools : k => v.pool_type if v.pool_type != null && length(v.pool_type) > 0 }
}

