# IoTHubTest

This repostitory creates a test IoT hub and routes messages to storage. It is copied from the Microsoft repository.

If a resource groups is needed, run:
    az group create --name <resourcegroupname> --location <location>
  
Then deploy the hub with:
    az deployment group create --resource-group RESOURCE-GROUP --template-file createiothub.bicep
  
The name of the hub will be created as a 'unique' name.
    
Need to create a Function App to grab the data and store it into a Azure table:
    az functionapp create --resource-group iot-hub-test-rg --consumption-plan-location UKSouth --runtime dotnet --functions-version 3 --name lucariapp20220607 --storage-account lucarisclu7vbzxhfmg
It doesn't seem to work when creating the App in the portal. Lots of errors to do with MetaData. Seems fine with the command line. Must add it to the bicep file
    
Notes from 'https://codez.deedx.cz/posts/from-iot-hub-to-powerbi/' to use an App rather than Azure Stream. Need also to create a route to the default stream. If we are doing this, then we don't need the Blob storage !!!
  
* [createiothub.bicep](createiothub.bicep) - Bicep file to create the IoT Hub, Routes, Endpoints and Storage.

* [iotstreamapp.csx](iotstreamapp.csx) - .Net Function App that takes the feed from the IoT hub and stores it in Table storage for consumption by Power BI
    


