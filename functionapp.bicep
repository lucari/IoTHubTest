param sites_iotapp2_name string = 'iotapp2'
param serverfarms_ASP_123240f77playgroundsandbox_8415_externalid string = '/subscriptions/964df7ca-3ba4-48b6-a695-1ed9db5723f8/resourceGroups/1-23240f77-playground-sandbox/providers/Microsoft.Web/serverfarms/ASP-123240f77playgroundsandbox-8415'

resource sites_iotapp2_name_resource 'Microsoft.Web/sites@2021-03-01' = {
  name: sites_iotapp2_name
  location: 'East US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/964df7ca-3ba4-48b6-a695-1ed9db5723f8/resourceGroups/1-23240f77-playground-sandbox/providers/microsoft.insights/components/iotapp2'
    'hidden-link: /app-insights-instrumentation-key': '98a9e8fc-8564-4fac-b412-6149528fd78c'
    'hidden-link: /app-insights-conn-string': 'InstrumentationKey=98a9e8fc-8564-4fac-b412-6149528fd78c;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/;LiveEndpoint=https://eastus.livediagnostics.monitor.azure.com/'
  }
  kind: 'functionapp'
  properties: {
    enabled: true
    hostNameSslStates: [
      {
        name: '${sites_iotapp2_name}.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Standard'
      }
      {
        name: '${sites_iotapp2_name}.scm.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Repository'
      }
    ]
    serverFarmId: serverfarms_ASP_123240f77playgroundsandbox_8415_externalid
    reserved: false
    isXenon: false
    hyperV: false
    siteConfig: {
      numberOfWorkers: 1
      acrUseManagedIdentityCreds: false
      alwaysOn: false
      http20Enabled: true
      functionAppScaleLimit: 200
      minimumElasticInstanceCount: 0
    }
    scmSiteAlsoStopped: false
    clientAffinityEnabled: false
    clientCertEnabled: false
    clientCertMode: 'Required'
    hostNamesDisabled: false
    customDomainVerificationId: '71E0697E215335964F9E08587D945527C939AB4C4126DD0C3FE0CBCD7C8A6882'
    containerSize: 1536
    dailyMemoryTimeQuota: 0
    httpsOnly: false
    redundancyMode: 'None'
    storageAccountRequired: false
    keyVaultReferenceIdentity: 'SystemAssigned'
  }
}

resource sites_iotapp2_name_ftp 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2021-03-01' = {
  parent: sites_iotapp2_name_resource
  name: 'ftp'
  location: 'East US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/964df7ca-3ba4-48b6-a695-1ed9db5723f8/resourceGroups/1-23240f77-playground-sandbox/providers/microsoft.insights/components/iotapp2'
    'hidden-link: /app-insights-instrumentation-key': '98a9e8fc-8564-4fac-b412-6149528fd78c'
    'hidden-link: /app-insights-conn-string': 'InstrumentationKey=98a9e8fc-8564-4fac-b412-6149528fd78c;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/;LiveEndpoint=https://eastus.livediagnostics.monitor.azure.com/'
  }
  properties: {
    allow: true
  }
}

resource sites_iotapp2_name_scm 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2021-03-01' = {
  parent: sites_iotapp2_name_resource
  name: 'scm'
  location: 'East US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/964df7ca-3ba4-48b6-a695-1ed9db5723f8/resourceGroups/1-23240f77-playground-sandbox/providers/microsoft.insights/components/iotapp2'
    'hidden-link: /app-insights-instrumentation-key': '98a9e8fc-8564-4fac-b412-6149528fd78c'
    'hidden-link: /app-insights-conn-string': 'InstrumentationKey=98a9e8fc-8564-4fac-b412-6149528fd78c;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/;LiveEndpoint=https://eastus.livediagnostics.monitor.azure.com/'
  }
  properties: {
    allow: true
  }
}

resource sites_iotapp2_name_web 'Microsoft.Web/sites/config@2021-03-01' = {
  parent: sites_iotapp2_name_resource
  name: 'web'
  location: 'East US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/964df7ca-3ba4-48b6-a695-1ed9db5723f8/resourceGroups/1-23240f77-playground-sandbox/providers/microsoft.insights/components/iotapp2'
    'hidden-link: /app-insights-instrumentation-key': '98a9e8fc-8564-4fac-b412-6149528fd78c'
    'hidden-link: /app-insights-conn-string': 'InstrumentationKey=98a9e8fc-8564-4fac-b412-6149528fd78c;IngestionEndpoint=https://eastus-0.in.applicationinsights.azure.com/;LiveEndpoint=https://eastus.livediagnostics.monitor.azure.com/'
  }
  properties: {
    numberOfWorkers: 1
    defaultDocuments: [
      'Default.htm'
      'Default.html'
      'Default.asp'
      'index.htm'
      'index.html'
      'iisstart.htm'
      'default.aspx'
      'index.php'
    ]
    netFrameworkVersion: 'v4.0'
    requestTracingEnabled: false
    remoteDebuggingEnabled: false
    httpLoggingEnabled: false
    acrUseManagedIdentityCreds: false
    logsDirectorySizeLimit: 35
    detailedErrorLoggingEnabled: false
    publishingUsername: '$iotapp2'
    scmType: 'None'
    use32BitWorkerProcess: true
    webSocketsEnabled: false
    alwaysOn: false
    managedPipelineMode: 'Integrated'
    virtualApplications: [
      {
        virtualPath: '/'
        physicalPath: 'site\\wwwroot'
        preloadEnabled: false
      }
    ]
    loadBalancing: 'LeastRequests'
    experiments: {
      rampUpRules: []
    }
    autoHealEnabled: false
    vnetRouteAllEnabled: false
    vnetPrivatePortsCount: 0
    localMySqlEnabled: false
    ipSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 1
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 1
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictionsUseMain: false
    http20Enabled: true
    minTlsVersion: '1.2'
    scmMinTlsVersion: '1.2'
    ftpsState: 'AllAllowed'
    preWarmedInstanceCount: 0
    functionAppScaleLimit: 200
    functionsRuntimeScaleMonitoringEnabled: false
    minimumElasticInstanceCount: 0
    azureStorageAccounts: {}
  }
}

resource sites_iotapp2_name_myFunc 'Microsoft.Web/sites/functions@2021-03-01' = {
  parent: sites_iotapp2_name_resource
  name: 'myFunc'
  location: 'East US'
  properties: {
    script_root_path_href: 'https://iotapp2.azurewebsites.net/admin/vfs/site/wwwroot/myFunc/'
    script_href: 'https://iotapp2.azurewebsites.net/admin/vfs/site/wwwroot/myFunc/run.csx'
    config_href: 'https://iotapp2.azurewebsites.net/admin/vfs/site/wwwroot/myFunc/function.json'
    test_data_href: 'https://iotapp2.azurewebsites.net/admin/vfs/data/Functions/sampledata/myFunc.dat'
    href: 'https://iotapp2.azurewebsites.net/admin/functions/myFunc'
    config: {}
    test_data: 'Test Message'
    language: 'CSharp'
    isDisabled: false
  }
}

resource sites_iotapp2_name_sites_iotapp2_name_azurewebsites_net 'Microsoft.Web/sites/hostNameBindings@2021-03-01' = {
  parent: sites_iotapp2_name_resource
  name: '${sites_iotapp2_name}.azurewebsites.net'
  location: 'East US'
  properties: {
    siteName: 'iotapp2'
    hostNameType: 'Verified'
  }
}
