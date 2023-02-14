@description('Specifies the location for resources.')
param location string = 'southeastasia'

resource AzureDigitalStation 'Microsoft.DigitalTwins/digitalTwinsInstances@2022-10-31' = {
  name: 'JerricoServiceStationAdt'
  location: location
  identity: {
    type: 'SystemAssigned'
  }
}
