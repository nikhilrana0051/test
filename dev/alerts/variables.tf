variable "env" {
  description   = "enviroment name for deployment."
}

variable "name" {
  description   = "Common name for all the alerts resources, this will behave as suffix."
} 

variable "resource_group_location"{
  description   = "location name for all resources."
}
###
########### action group

variable "actionGroups" {
  type = map(object({
    actionGroupName          = string
    actionGroupShortName     = string
    #actionGroupRGName        = string
    actionGroupEnabled       = string
    actionGroupEmailReceiver = list(map(string))
  }))
}

variable "tags" {
  type = map
  default = {
    Application = "tbc"
    CostCentre  = "tbc"
    Environment = "tbc"
    ManagedBy   = "tbc"
    Owner       = "tbc"
    Support     = "tbc"
  }
}
#####alerts variables
variable "metricAlerts" {
  type = map(object({
    alertName                   = string
    #alertResourceGroupName      = string
    alertScopes                 = list(string)
    alertDescription            = string
    alertEnabled                = bool
    alertAutoMitigate           = bool
    alertFrequency              = string
    alertWindowSize             = string
    alertSeverity               = number
    alertTargetResourceType     = string
    alertTargetResourceLoc      = string
    dynCriteriaMetricNamespace  = string
    dynCriteriaMetricName       = string
    dynCriteriaAggregation      = string
    dynCriteriaOperator         = string
    dynCriteriaAlertSensitivity = string
    dynCriteriaDimensions       = list(map(string))
    actionGroupID               = string
  }))
  default = {}
}

########output-action-groups

# variable "action-group-id" {
#   type = string
# }

variable "action-group-rg-name" {
  type = string
}