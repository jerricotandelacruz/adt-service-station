param laManageIdentityName string = 'ADTPodTestingMI'

@description('Specifies the location for resources.')
param location string = 'southeastasia'

param storageAccountName string = 'adtpocstorageaccount'

@allowed([
  'Premium_LRS'
  'Premium_ZRS'
  'Standard_GRS'
  'Standard_GZRS'
  'Standard_LRS'
  'Standard_RAGRS'
  'Standard_RAGZRS'
  'Standard_ZRS'
])
param sku string = 'Standard_RAGRS'

@allowed([
  'BlobStorage'
  'BlockBlobStorage'
  'FileStorage'
  'Storage'
  'StorageV2'
])
param kind string = 'StorageV2'

param containerName string = 'ttmdigitaltwinscontainer'

param digitalTwinsName string = 'TtmDigitalTwins'

param project string = 'digitaltwins'

param by string = 'jerrico'

// RESOURCES
resource LAManageIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = {
  name: laManageIdentityName
  location: location
}

resource digitalTwins 'Microsoft.DigitalTwins/digitalTwinsInstances@2022-10-31' = {
  name: digitalTwinsName
  location: location
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: {
      '${LAManageIdentity.id}' : {}
    }
  }
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: toLower(storageAccountName)
  location: location
  kind: kind
  sku: {
    name: sku
  }
}

resource storageAccountBlobService 'Microsoft.Storage/storageAccounts/blobServices@2022-09-01' = {
  name: 'default'
  parent: storageAccount
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

resource storageAccountContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  name: containerName
  parent: storageAccountBlobService
}

// RESOURCE TAGS
resource LAManageIdentityTags 'Microsoft.Resources/tags@2022-09-01' = {
  name:  'default'
  scope: LAManageIdentity
  properties: {
    tags: {
      project: project
      by: 'jerrico,winalyn'
    }
  }
}

resource storageAccountTags 'Microsoft.Resources/tags@2022-09-01' = {
  name:  'default'
  scope: storageAccount
  properties: {
    tags: {
      project: project
      by: 'jerrico,winalyn'
    }
  }
}

resource digitalTwinsTags 'Microsoft.Resources/tags@2022-09-01' = {
  name:  'default'
  scope: digitalTwins
  properties: {
    tags: {
      project: project
      by: by
    }
  }
}
