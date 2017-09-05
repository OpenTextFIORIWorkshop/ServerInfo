# Build and Publish to Folder
$msbuild = "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe"
$options = "/p:DeployOnBuild=true /p:PublishProfile='FolderProfile' /p:VisualStudioVersion=14.0 /p:AspnetMergePath='C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6 Tools'"
$apiproj = "ServerInfo.sln"

$build = $msbuild + " $apiproj " + $options
Invoke-Expression $build

# Docker Build
$tag = "server-info"
$siteroot = ".\ServerInfo\bin\Release\PublishOutput"
$siteroot
$dockerbuild = "docker build -t " + $tag + " --build-arg site_root=" + $siteroot + " ."
Invoke-Expression $dockerbuild