@description('Specifies the location for resources.')
param location string = 'southeastasia'

resource ttmDigitalTwins 'Microsoft.DigitalTwins/digitalTwinsInstances@2022-10-31' = {
  name: 'TtmDigitalTwins'
  location: location
}

param storageAccountName string = 'TtmStorageAccount'
resource ttmStorageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: toLower(storageAccountName)
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_RAGRS'
  }
}

resource ttmStorageAccountBlobService 'Microsoft.Storage/storageAccounts/blobServices@2022-09-01' = {
  name: 'default'
  parent: ttmStorageAccount
  properties: {
    cors: {
      corsRules: [
        {
          allowedHeaders: [
            'Authorization,x-ms-version,x-ms-blob-type'
          ]
          allowedMethods: [
            'GET', 'POST', 'OPTIONS', 'PUT'
          ]
          allowedOrigins: [
            'https://explorer.digitaltwins.azure.net'
          ]
          exposedHeaders: []
          maxAgeInSeconds: 0
        }
      ]
    }
  }
}

resource ttmStorageAccountContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  name: 'default'
  parent: ttmStorageAccountBlobService
}

// ROLE ASSIGNMENTS
param principalId string

param azureDigitalTwinsDataOwnerRoleDefinitionId string = 'bcd981a7-7f74-457b-83e1-cceb9e632ffe'

resource ttmRoleAssignmentDigitalTwins 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(principalId, azureDigitalTwinsDataOwnerRoleDefinitionId, resourceGroup().id)
  scope: ttmDigitalTwins
  properties: {
    roleDefinitionId: resourceId('Microsoft.Authorization/roleDefinitions', azureDigitalTwinsDataOwnerRoleDefinitionId)
    principalId: principalId
  }
}

param storageBlobDataOwnerRoleDefinitionId string = 'b7e6dc6d-f1e8-4753-8033-0f276bb0955b'

resource ttmRoleAssignmentStorageAccount 'Microsoft.Authorization/roleAssignments@2020-10-01-preview' = {
  name: guid(principalId, storageBlobDataOwnerRoleDefinitionId, resourceGroup().id)
  properties: {
    roleDefinitionId: resourceId('Microsoft.Authorization/roleDefinitions', storageBlobDataOwnerRoleDefinitionId)
    principalId: principalId
  }
}
