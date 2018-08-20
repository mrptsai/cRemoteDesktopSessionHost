# cRemoteDesktopSessionHost

The **cRemoteDesktopSessionHost** module is a custom version of xRemoteDesktopSessionHost to allow DSC configuration run correctly using Azure Automation DSC.

## Resources

* **cRDSessionDeployment** creates and configures a deployment in RDSH.
* **cRDSessionCollection** creates an RDSH collection.
* **cRDSessionCollectionConfiguration** configures an RDSH collection.
* **cRDRemoteApp** publishes applications for your RDSH collection.
* **cRDServer** adds RD Server features to your RDSH deployment.
* **cRDGatewayConfiguration** creates and configures RD Gateway.
* **cRDLicenseConfiguration** creates and configures RD Licensing server.

### cRDSessionDeployment

* **SessionHost**: Specifies the FQDN of a servers to host the RD Session Host role service.
* **ConnectionBroker**: The FQDN of a server to host the RD Connection Broker role service.
* **WebAccessServer**: The FQDN of a server to host the RD Web Access role service.

### cRDSessionCollection

* **CollectionName**: Specifies a name for the session collection
* **SessionHost**: Specifies a RD Session Host server to include in the session collection.
* **CollectionDescription**: A description for the collection.
* **ConnectionBroker**: The Remote Desktop Connection Broker (RD Connection Broker) server for a Remote Desktop deployment.

### cRDSessionCollectionConfiguration

* **CollectionName**: Specifies the name for the session collection.
* **ActiveSessionLimitMin**: Specifies the maximum time, in minutes, an active session runs.  After this period, the RD Session Host server ends the session.
* **AuthenticateUsingNLA**: Indicates whether to use Network Level Authentication (NLA).  If this value is $True, Remote Desktop uses NLA to authenticate a user before the user sees a logon screen.
* **AutomaticReconnectionEnabled**: Indicates whether the Remote Desktop client attempts to reconnect after a connection interruption.
* **BrokenConnectionAction**: Specifies an action for an RD Session Host server to take after a connection interruption.
* **ClientDeviceRedirectionOptions**: Specifies a type of client device to be redirected to an RD Session Host server in this session collection.
* **ClientPrinterAsDefault**: Indicates whether to use the client printer or server printer as the default printer.  If this value is $True, use the client printer as default.  If this value is $False, use the server as default.
* **ClientPrinterRedirected**: Indicates whether to use client printer redirection, which routes print jobs from the Remote Desktop session to a printer attached to the client computer.
* **CollectionDescription**: Specifies a description of the session collection.
* **ConnectionBroker**: Specifies the Remote Desktop Connection Broker (RD Connection Broker) server for a Remote Desktop deployment.
* **CustomRdpProperty**: Specifies Remote Desktop Protocol (RDP) settings to include in the .rdp files for all Windows Server 2012 RemoteApp programs and remote desktops published in this collection.
* **DisconnectedSessionLimitMin**: Specifies a length of time, in minutes.  After client disconnection from a session for this period, the RD Session Host ends the session.
* **EncryptionLevel**: Specifies the level of data encryption used for a Remote Desktop session.
* **IdleSessionLimitMin**: Specifies the length of time, in minutes, to wait before an RD Session Host logs off or disconnects an idle session.
* **MaxRedirectedMonitors**: Specifies the maximum number of client monitors that an RD Session Host server can redirect to a remote session.  The maximum value for this parameter is 16.
* **RDEasyPrintDriverEnabled**: Specifies whether to enable the Remote Desktop Easy Print driver.
* **SecurityLayer**: Specifies which security protocol to use.
* **TemporaryFoldersDeletedOnExit**: Whether to delete temporary folders from the RD Session Host server for a disconnected session.
* **UserGroup**: Specifies a domain group authorized to connect to the RD Session Host servers in a session collection.
* **DiskPath**: Specifies the target path to store the User Profile Disks
* **EnableUserProfileDisk**: Specifies if this collection uses UserProfileDisks
* **ExcludeFilePath**: Specifies a list of strings for files to exclude from the user profile disk
* **ExcludeFolderPath**: Specifies a list of strings for folders to exclude from the user profile disk
* **IncludeFilePath**: Specifies a list of strings for files to include in the user profile disk
* **IncludeFolderPath**: Specifies a list of strings for folders to include in the user profile disk
* **MaxUserProfileDiskSizeGB**: Specifies the maximum size in GB for a User Profile Disk

### cRDRemoteApp

* **Alias**: Specifies an alias for the RemoteApp program.
* **CollectionName**: Specifies the name of the personal virtual desktop collection or session collection.  The cmdlet publishes the RemoteApp program to this collection.
* **DisplayName**: Specifies a name to display to users for the RemoteApp program.
* **FilePath**: Specifies a path for the executable file for the application.  Note: Do not include any environment variables.
* **FileVirtualPath**: Specifies a path for the application executable file.  This path resolves to the same location as the value of the FilePath parameter, but it can include environment variables.
* **FolderName**: Specifies the name of the folder that the RemoteApp program appears in on the Remote Desktop Web Access (RD Web Access) webpage and in the Start menu for subscribed RemoteApp and Desktop Connections.
* **CommandLineSetting**: Specifies whether the RemoteApp program accepts command-line arguments from the client at connection time.
* **RequiredCommandLine**: Specifies a string that contains command-line arguments that the client can use at connection time with the RemoteApp program.
* **IconIndex**: Specifies the index within the icon file (specified by the IconPath parameter) where the RemoteApp program's icon can be found.
* **IconPath**: Specifies the path to a file containing the icon to display for the RemoteApp program identified by the Alias parameter.
* **UserGroups**: Specifies a domain group that can view the RemoteApp in RD Web Access, and in RemoteApp and Desktop Connections.  To allow all users to see a RemoteApp program, provide a value of Null.
* **ShowInWebAccess**: Specifies whether to show the RemoteApp program in the RD Web Access server, and in RemoteApp and Desktop Connections that the user subscribes to.

### cRDServer

* **ConnectionBroker**: Specifies the Remote Desktop Connection Broker (RD Connection Broker) server for a Remote Desktop deployment.
* **Server**: The FQDN of a server to configure a role on.
* **Role**: The name of the Windows RDS feature to add to the server.
* **GatewayExternalFqdn**: The external FQDN for the RD Gateway server. Only needed for the RDS-Gateway feature.

### cRDGatewayConfiguration

* **ConnectionBroker**: Specifies the Remote Desktop Connection Broker (RD Connection Broker) server for a Remote Desktop deployment.
* **GatewayServer**: The server to configure as an RD Gateway.
* **ExternalFqdn**: The external FQDN for the RD Gateway server. Only needed for the RDS-Gateway feature.
* **GatewayMode**: Set to DoNotUse, Automatic, or Custom
* **LogonMethod**: When GatewayMode is custom, sets the logon method for the Gateway.
* **UseCachedCredentials** When GatewayMode is custom, configures the use of cached credentials.
* **BypassLocal**: When GatewayMode is custom, configues bypassing for local network addresses.

### cRDLicenseConfiguration

* **ConnectionBroker**: Specifies the Remote Desktop Connection Broker (RD Connection Broker) server for a Remote Desktop deployment.
* **LicenseServers**: An array of servers to use for RD licensing
* **LicenseMode**: The RD licensing mode to use. PerUser, PerDevice, or NotConfigured.

## Versions

=======

### 1.0.0

* Initial
