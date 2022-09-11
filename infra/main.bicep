@description('Specifies the location for resources.')
param location string = resourceGroup().location

/*
Serverless web application comprises of
- SPA
  - static HTML/JS/CSS in blob storage
  - hosted as a static web app
- API
  - API Management service coordinating
  - Azure Functions handlers per route/action
  - Functions supported by blob storage
- Persistence
  - CosmosDB persistence
*/

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'jgpteststorage'
  kind: 'StorageV2'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}

resource hostingPlan 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: 'func-jgphamilton-dev-001'
  location: location
  sku: {
    name: 'Y1'
    tier: 'Dynamic'
  }
  properties: {}
}
