output "agent_pools_id" {
  description = "Map of id values across all agent_pools, keyed the same as var.agent_pools"
  value       = { for k, v in azuredevops_agent_pool.agent_pools : k => v.id }
}
output "agent_pools_auto_provision" {
  description = "Map of auto_provision values across all agent_pools, keyed the same as var.agent_pools"
  value       = { for k, v in azuredevops_agent_pool.agent_pools : k => v.auto_provision }
}
output "agent_pools_auto_update" {
  description = "Map of auto_update values across all agent_pools, keyed the same as var.agent_pools"
  value       = { for k, v in azuredevops_agent_pool.agent_pools : k => v.auto_update }
}
output "agent_pools_name" {
  description = "Map of name values across all agent_pools, keyed the same as var.agent_pools"
  value       = { for k, v in azuredevops_agent_pool.agent_pools : k => v.name }
}
output "agent_pools_pool_type" {
  description = "Map of pool_type values across all agent_pools, keyed the same as var.agent_pools"
  value       = { for k, v in azuredevops_agent_pool.agent_pools : k => v.pool_type }
}

