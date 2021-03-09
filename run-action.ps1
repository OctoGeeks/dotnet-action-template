if($IsWindows -eq $True)
{
    $filePath = Join-Path $PSScriptRoot "/dist/win-x64/dotnet-xplat-action.exe"
    chmod +x $filePath
    Write-Output "Running $filePath..."
    & $filePath
}

if($IsLinux -eq $True)
{
    $filePath = Join-Path $PSScriptRoot "/dist/linux-x64/dotnet-xplat-action"
    chmod +x $filePath
    Write-Output "Running $filePath..."
    & $filePath
}

if($IsMacOS -eq $True)
{
    $filePath = Join-Path $PSScriptRoot "/dist/osx-x64/dotnet-xplat-action"
    chmod +x $filePath
    Write-Output "Running $filePath..."
    & $filePath
}