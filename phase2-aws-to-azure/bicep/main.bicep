param location string = 'East US'
param rgName string = 'migration-rg'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
}

module vnet 'vnet.bicep' = {
  name: 'vnetModule'
  params: {
    location: location
    rgName: rgName
  }
}

module vmWeb 'vm-web.bicep' = {
  name: 'webVM'
  params: {
    location: location
    rgName: rgName
  }
}
