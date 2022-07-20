module "action-groups" {
    source      = "../../modules/action-groups"

    env                                       = var.env
    name                                      = var.name
    resource_group_location                   = var.resource_group_location
    actionGroups                              = var.actionGroups
    tags = {
    Application = "Action-Groups"
    CostCentre  = "123"
    Environment = "dev"
    ManagedBy   = "nikhil"
    Owner       = "nikhil"
    Support     = "nikhil"
  }
}

module "alerts-code" {
    source      = "../../modules/alerts-code"

    env                                       = var.env
    name                                      = var.name
    resource_group_location                   = var.resource_group_location
    metricAlerts                              = var.metricAlerts

    action-group-rg-name                      = module.action-groups.action-group-rg-name
    tags = {
    Application = "Azure Monitor Alerts"
    CostCentre  = "123"
    Environment = "dev"
    ManagedBy   = "nikhil"
    Owner       = "nikhil"
    Support     = "nikhil"
  }
}