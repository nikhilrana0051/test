# module "action-groups" {
#     source      = "../../modules/action-groups"

#     env                                       = var.env
#     name                                      = var.name
#     resource_group_location                   = var.resource_group_location    
# }

# module "alerts-code" {
#     source          = "../../modules/alerts-code"

#     env                                       = var.env
#     name                                      = var.name
#     resource_group_location                   = var.resource_group_location
#     scopes                                    = var.scopes
#     metric_namespace                          = var.metric_namespace
#     metric_name                               = var.metric_name

#     action-group-id                           = module.action-groups.action-group-id
#     action-group-rg-name                      = module.action-groups.action-group-rg-name
# }