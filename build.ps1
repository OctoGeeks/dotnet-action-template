dotnet publish src/dotnet-sample-action.sln -c Release -o dist/win-x64/ -r win-x64 -p:PublishSingleFile=true -p:PublishTrimmed=true --self-contained true /p:DebugType=None /p:IncludeNativeLibrariesForSelfExtract=true

if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}

dotnet publish src/dotnet-sample-action.sln -c Release -o dist/linux-x64/ -r linux-x64 -p:PublishSingleFile=true -p:PublishTrimmed=true --self-contained true /p:DebugType=None /p:IncludeNativeLibrariesForSelfExtract=true

if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}

dotnet publish src/dotnet-sample-action.sln -c Release -o dist/osx-x64/ -r osx-x64 -p:PublishSingleFile=true -p:PublishTrimmed=true --self-contained true /p:DebugType=None /p:IncludeNativeLibrariesForSelfExtract=true

if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}