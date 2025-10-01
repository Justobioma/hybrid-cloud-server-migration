param location string
param rgName string

resource vm 'Microsoft.Compute/virtualMachines@2022-08-01' = {
  name: 'azure-web-01'
  location: location
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_B2s'
    }
    osProfile: {
      computerName: 'azure-web-01'
      adminUsername: 'azureuser'
      adminPassword: 'P@ssword123!' // Use Key Vault in production
    }
    storageProfile: {
      imageReference: {
        publisher: 'Canonical'
        offer: 'UbuntuServer'
        sku: '18.04-LTS'
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: '/subscriptions/<sub-id>/resourceGroups/${rgName}/providers/Microsoft.Network/networkInterfaces/web-nic'
        }
      ]
    }
  }
}
