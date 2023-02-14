@description('Specifies the location for resources.')
param location string = 'southeastasia'

param roleDefinitionID string = 'bcd981a7-7f74-457b-83e1-cceb9e632ffe'

param principalId string

var roleAssignmentName= guid(principalId, roleDefinitionID, resourceGroup().id)

resource ServiceStationAdt 'Microsoft.DigitalTwins/digitalTwinsInstances@2022-10-31' = {
  name: 'JerricoServiceStationAdt'
  location: location
}

resource roleAssignment 'Microsoft.Authorization/roleAssignments@2021-04-01-preview' = {
  name: roleAssignmentName
  scope: ServiceStationAdt
  properties: {
    roleDefinitionId: resourceId('Microsoft.Authorization/roleDefinitions', roleDefinitionID)
    principalId: principalId
  }
}
