if (!(Get-PackageProvider -Name NuGet -ErrorAction SilentlyContinue -ListAvailable)) 

{

    Write-Verbose 'Installing nuget Package Provider'

    Install-PackageProvider -Name nuget -Force

}




# Install the Azure Resource Manager modules from the PowerShell Gallery
Install-Module AzureRM -AllowClobber -Force -SkipPublisherCheck