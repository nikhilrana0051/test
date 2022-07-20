# output "action-group-id" {
#   description     = "action group id to be used in alerts"
#   value           = azurerm_monitor_action_group.action-group.id
# }

output "action-group-rg-name" {
  description     = "action group name to be used in alerts"
  value           = azurerm_resource_group.action_group_alerts.name
}