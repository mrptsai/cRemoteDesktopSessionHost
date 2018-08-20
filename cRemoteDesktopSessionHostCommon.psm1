function Test-cRemoteDesktopSessionHostOsRequirement
{
    return (Get-cRemoteDesktopSessionHostOsVersion) -ge (new-object 'Version' 6,2,9200,0)
}

function Get-cRemoteDesktopSessionHostOsVersion
{
    return [Environment]::OSVersion.Version 
}

Export-ModuleMember -Function @(
        'Get-cRemoteDesktopSessionHostOsVersion'
        'Test-cRemoteDesktopSessionHostOsRequirement'
)
