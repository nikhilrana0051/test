variable "env" {
  description   = "enviroment name for deployment."
}

variable "name" {
  description   = "Common name for all the alerts resources, this will behave as suffix."
} 

variable "resource_group_location"{
  description   = "location name for all resources."
}

###########

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