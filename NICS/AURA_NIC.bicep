param virtualNetworks_AURA_NIC_name string = 'AURA_NIC'

resource virtualNetworks_AURA_NIC_name_resource 'Microsoft.Network/virtualNetworks@2022-11-01' = {
  name: virtualNetworks_AURA_NIC_name
  location: 'switzerlandnorth'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'default'
        id: virtualNetworks_AURA_NIC_name_default.id
        properties: {
          addressPrefix: '10.0.0.0/24'
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
    ]
    virtualNetworkPeerings: []
    enableDdosProtection: false
  }
}

resource virtualNetworks_AURA_NIC_name_default 'Microsoft.Network/virtualNetworks/subnets@2022-11-01' = {
  name: '${virtualNetworks_AURA_NIC_name}/default'
  properties: {
    addressPrefix: '10.0.0.0/24'
    delegations: []
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
  dependsOn: [
    virtualNetworks_AURA_NIC_name_resource
  ]
}
