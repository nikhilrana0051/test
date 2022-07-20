env                                 = "dev"
name                                = "SRE"
resource_group_location             = "centralus"  



#######action-group

actionGroups ={
    "team-1" = {
        actionGroupName                     = "SRE-dev1"
        actionGroupShortName                = "dev1"
        actionGroupEnabled                  = "true"
        actionGroupEmailReceiver = [
            {
                name                        = "nikhil"
                email_address               = "nikhil.rana@agileengine.com"
                use_common_alert_schema     = "true"
            }
        ]
    }

    "team-2" = {
        actionGroupName                     = "SRE-dev2"
        actionGroupShortName                = "dev2"
        actionGroupEnabled                  = "true"
        actionGroupEmailReceiver = [
            {
                name                        = "nikhil0051"
                email_address               = "nikhil.rana0055@gmail.com"
                use_common_alert_schema     = "true"
            }
        ]
    }
}

#######alerts

  metricAlerts = {
    
    "alert-1" = {
      alertName                       = "example-metricalert"
      #alertResourceGroupName          = "${var.metric-group-rg}-${var.naming_suffix}"
      alertScopes = [
        "/subscriptions/d452c369-b5c0-475f-a149-8ad7eba38d0b/resourceGroups/rg-storage-4-tf/providers/Microsoft.Storage/storageAccounts/storage4mytf"
      ]
      alertDescription                = "Action will be triggered when Transactions count is greater than 50."
      alertEnabled                    = "true"
      alertAutoMitigate               = "true"
      alertFrequency                  = "PT15M"
      alertWindowSize                 = "PT1H"
      alertSeverity                   = "2"
      alertTargetResourceType         = "Microsoft.Storage/storageAccounts"
      alertTargetResourceLoc          = "centralus"
      dynCriteriaMetricNamespace      = "Microsoft.Storage/storageAccounts"
      dynCriteriaMetricName           = "Transactions"
      dynCriteriaAggregation          = "Total"
      dynCriteriaOperator             = "GreaterThan"
      dynCriteriaAlertSensitivity     = "Medium"
      dynCriteriaDimensions = [
        {
          name     = "ApiName"
          operator = "Include"
          values   = "*"
        },
      ]
      actionGroupID = "/subscriptions/d452c369-b5c0-475f-a149-8ad7eba38d0b/resourceGroups/SRE-action-group-rg-dev/providers/Microsoft.Insights/actionGroups/SRE-dev1"
    },

  }

