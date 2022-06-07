# IoTHubTest

This repostitory creates a test IoT hub and routes messages to storage. It is copied from the Microsoft repository.

If a resource groups is needed, run:
    az group create --name <resourcegroupname> --location <location>
  
Then deploy the hub with:
    az deployment group create --resource-group <resourcegroupname> --template-file createiothub.bicep
  
The name of the hub will be created as a 'unique' name.
  

  

