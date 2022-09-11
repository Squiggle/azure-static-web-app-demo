param appName string = 'stockman'

param location string = resourceGroup().location

@allowed([ 'Free', 'Standard' ])
param sku string = 'Standard'

resource storageAccount 'Microsoft.Web/staticsites@2022-03-01' = {
  name: 'st-${appName}-${location}-001'
  kind: 'StorageV2'
  location: location
  sku: {
    name: sku
    size: sku
  }
}
