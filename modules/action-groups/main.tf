resource "azurerm_resource_group" "action_group_alerts" {
  name     = "${var.name}-action-group-rg-${var.env}"
  location = var.resource_group_location
}

# resource "azurerm_monitor_action_group" "action-group" {
#   name                = "${var.name}-action-group-${var.env}"
#   resource_group_name = azurerm_resource_group.action_group_alerts.name
#   short_name          = "SRE"

#   email_receiver {
#     name                    = "nikhil"
#     email_address           = "nikhil.rana@agileengine.com"
#     use_common_alert_schema = true
#   }
# }


resource "azurerm_monitor_action_group" "group" {
  for_each = var.actionGroups

  name                = each.value.actionGroupName
  resource_group_name = azurerm_resource_group.action_group_alerts.name
  #resource_group_name = each.value.actionGroupRGName
  short_name          = each.value.actionGroupShortName
  enabled             = each.value.actionGroupEnabled

  dynamic "email_receiver" {
    for_each = each.value.actionGroupEmailReceiver
    content {
      name                    = email_receiver.value["name"]
      email_address           = email_receiver.value["email_address"]
      use_common_alert_schema = email_receiver.value["use_common_alert_schema"]
    }
  }

  tags = var.tags
}

