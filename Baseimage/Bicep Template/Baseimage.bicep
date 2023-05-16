param virtualMachines_Baseimage_name string = 'Baseimage'
param disks_Baseimage_OsDisk_1_4b0c5b42a5ae48d0879d775ac546e6d7_externalid string = '/subscriptions/20a3246c-4b3d-40f1-bf63-bc83aeb5fe4b/resourceGroups/RG_IMAGES/providers/Microsoft.Compute/disks/Baseimage_OsDisk_1_4b0c5b42a5ae48d0879d775ac546e6d7'
param networkInterfaces_baseimage760_externalid string = '/subscriptions/20a3246c-4b3d-40f1-bf63-bc83aeb5fe4b/resourceGroups/RG_Images/providers/Microsoft.Network/networkInterfaces/baseimage760'

resource virtualMachines_Baseimage_name_resource 'Microsoft.Compute/virtualMachines@2023-03-01' = {
  name: virtualMachines_Baseimage_name
  location: 'northeurope'
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_B1ls'
    }
    storageProfile: {
      imageReference: {
        publisher: 'MicrosoftWindowsDesktop'
        offer: 'Windows-10'
        sku: 'win10-21h2-pro'
        version: 'latest'
      }
      osDisk: {
        osType: 'Windows'
        name: '${virtualMachines_Baseimage_name}_OsDisk_1_4b0c5b42a5ae48d0879d775ac546e6d7'
        createOption: 'FromImage'
        caching: 'ReadWrite'
        managedDisk: {
          id: disks_Baseimage_OsDisk_1_4b0c5b42a5ae48d0879d775ac546e6d7_externalid
        }
        deleteOption: 'Delete'
      }
      dataDisks: []
    }
    osProfile: {
      computerName: virtualMachines_Baseimage_name
      adminUsername: 'auraadmin'
      windowsConfiguration: {
        provisionVMAgent: true
        enableAutomaticUpdates: true
        patchSettings: {
          patchMode: 'AutomaticByOS'
          assessmentMode: 'ImageDefault'
          enableHotpatching: false
        }
        enableVMAgentPlatformUpdates: false
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_baseimage760_externalid
          properties: {
            deleteOption: 'Delete'
          }
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
      }
    }
    licenseType: 'Windows_Client'
  }
}
