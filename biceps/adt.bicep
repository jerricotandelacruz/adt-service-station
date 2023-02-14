@description('Specifies the location for resources.')
param location string = 'southeastasia'

param roleDefinitionID string = 'bcd981a7-7f74-457b-83e1-cceb9e632ffe'

param principalId string

var roleAssignmentName= guid(principalId, roleDefinitionID, resourceGroup().id)

resource roleAssignment 'Microsoft.Authorization/roleAssignments@2021-04-01-preview' = {
  name: roleAssignmentName
  properties: {
    roleDefinitionId: resourceId('Microsoft.Authorization/roleDefinitions', roleDefinitionID)
    principalId: principalId
  }
}

resource AzureDigitalStation 'Microsoft.DigitalTwins/digitalTwinsInstances@2022-10-31' = {
  name: 'JerricoServiceStationAdt'
  location: location
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: roleAssignment
  }
}
