param hostpools_HP_Facilitymanagement_name string = 'HP_Facilitymanagement'

resource hostpools_HP_Facilitymanagement_name_resource 'Microsoft.DesktopVirtualization/hostpools@2022-10-14-preview' = {
  name: hostpools_HP_Facilitymanagement_name
  location: 'eastus'
  properties: {
    publicNetworkAccess: 'Enabled'
    description: 'Created through the Azure Virtual Desktop extension'
    hostPoolType: 'Pooled'
    customRdpProperty: 'drivestoredirect:s:*;audiomode:i:0;videoplaybackmode:i:1;redirectclipboard:i:1;redirectprinters:i:1;devicestoredirect:s:*;redirectcomports:i:1;redirectsmartcards:i:1;usbdevicestoredirect:s:*;enablecredsspsupport:i:1;redirectwebauthn:i:1;use multimon:i:1;'
    maxSessionLimit: 2
    loadBalancerType: 'BreadthFirst'
    validationEnvironment: false
    preferredAppGroupType: 'Desktop'
    startVMOnConnect: false
  }
}
