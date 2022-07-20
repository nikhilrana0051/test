#################---------------COMMON----##################
variable "env" {
  description   = "enviroment name for deployment."
}

variable "name" {
  description   = "Common name for all the AkS resources, this will behave as suffix."
} 

variable "resource_group_location"{
  description   = "location name for all resources."
}

#----------------------------

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


  
########output-action-groups

# variable "action-group-id" {
#   type = string
# }

variable "action-group-rg-name" {
  type = string
}