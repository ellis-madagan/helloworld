Write-Output "Starting build..."
Write-Output "Starting dotnet CLI tool."
Set-Location -Path C:\Users\emadagan\Desktop\helloworld
dotnet.exe build --output /build_output
Write-Output "Running built program..."
dotnet.exe /build_output/helloworld.dll
