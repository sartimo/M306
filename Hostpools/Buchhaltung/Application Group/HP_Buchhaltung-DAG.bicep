param applicationgroups_HP_Buchhaltung_DAG_name string = 'HP_Buchhaltung-DAG'
param hostpools_HP_Buchhaltung_externalid string = '/subscriptions/20a3246c-4b3d-40f1-bf63-bc83aeb5fe4b/resourceGroups/RG_Buchhaltung/providers/Microsoft.DesktopVirtualization/hostpools/HP_Buchhaltung'

resource applicationgroups_HP_Buchhaltung_DAG_name_resource 'Microsoft.DesktopVirtualization/applicationgroups@2022-10-14-preview' = {
  name: applicationgroups_HP_Buchhaltung_DAG_name
  location: 'northeurope'
  tags: {
    'cm-resource-parent': '/subscriptions/20a3246c-4b3d-40f1-bf63-bc83aeb5fe4b/resourceGroups/RG_Buchhaltung/providers/Microsoft.DesktopVirtualization/HP_Buchhaltung'
  }
  kind: 'Desktop'
  properties: {
    hostPoolArmPath: hostpools_HP_Buchhaltung_externalid
    description: 'Desktop Application Group created through the Hostpool Wizard'
    friendlyName: 'Default Desktop'
    applicationGroupType: 'Desktop'
  }
}
