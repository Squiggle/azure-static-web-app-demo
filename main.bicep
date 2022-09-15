@description('Short application title, used when naming resources')
param appName string = 'stockman'

@description('Location of resources')
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

// /* API */
// module api './interface/api.bicep' = {
//   name: 'api'
//   params: {
//     appName: appName
//     location: location
//   }
// }

/* WEB INTERFACE */
module webInterface './interface/site.bicep' = {
  name: 'webInterface'
  params: {
    appName: appName
    location: location
    sku: 'Free'
  }
}
