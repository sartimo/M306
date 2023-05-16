param applicationgroups_HP_Facilitymanagement_DAG_name string = 'HP_Facilitymanagement-DAG'
param hostpools_HP_Facilitymanagement_externalid string = '/subscriptions/20a3246c-4b3d-40f1-bf63-bc83aeb5fe4b/resourceGroups/RG_Facilitymanagement/providers/Microsoft.DesktopVirtualization/hostpools/HP_Facilitymanagement'

resource applicationgroups_HP_Facilitymanagement_DAG_name_resource 'Microsoft.DesktopVirtualization/applicationgroups@2022-10-14-preview' = {
  name: applicationgroups_HP_Facilitymanagement_DAG_name
  location: 'eastus'
  tags: {
    'cm-resource-parent': '/subscriptions/20a3246c-4b3d-40f1-bf63-bc83aeb5fe4b/resourceGroups/RG_Facilitymanagement/providers/Microsoft.DesktopVirtualization/HP_Facilitymanagement'
  }
  kind: 'Desktop'
  properties: {
    hostPoolArmPath: hostpools_HP_Facilitymanagement_externalid
    description: 'Desktop Application Group created through the Hostpool Wizard'
    friendlyName: 'Default Desktop'
    applicationGroupType: 'Desktop'
  }
}
