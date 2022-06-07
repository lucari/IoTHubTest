#r "Microsoft.WindowsAzure.Storage"

using System;
using Microsoft.WindowsAzure.Storage.Table;

public static void Run(DataPoint myIoTHubMessage, out DataPoint outputTable, TraceWriter log)
{
    log.Info($"C# IoT Hub trigger function processed a message: {myIoTHubMessage}");

    myIoTHubMessage.PartitionKey = DateTime.Now.Year.ToString();
    myIoTHubMessage.RowKey = DateTime.Now.ToString("yyyy-MM-ddTH:mm:ss");

    outputTable = myIoTHubMessage;
}

public class DataPoint : TableEntity
{
    public string DeviceId { get; set; }
    public double Temperature { get; set; }
    public double Humidity { get; set; }
}
