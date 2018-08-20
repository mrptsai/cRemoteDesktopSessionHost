@{
# Version number of this module.
moduleVersion = '1.0.0'

# ID used to uniquely identify this module
GUID = '264a1b58-6b27-4b53-99b1-794c1a7df209'

# Author of this module
Author = 'Paul Towler and Microsoft Corporation'

# Company or vendor of this module
#CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
#Copyright = '(c) 2014 Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Module with DSC Resources for Remote Desktop Session Host'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '4.0'

# Minimum version of the common language runtime (CLR) required by this module
CLRVersion = '4.0'

# Functions to export from this module
FunctionsToExport = '*'

# Cmdlets to export from this module
CmdletsToExport = '*'

RootModule = 'cRemoteDesktopSessionHostCommon.psm1'

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('DesiredStateConfiguration', 'DSC', 'DSCResourceKit', 'DSCResource')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/PowerShell/xRemoteDesktopSessionHost/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/PowerShell/xRemoteDesktopSessionHost'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* cRDSessionCollectionConfiguration: Add support to configure UserProfileDisks on Windows Server 2016

'

    } # End of PSData hashtable

} # End of PrivateData hashtable
}




