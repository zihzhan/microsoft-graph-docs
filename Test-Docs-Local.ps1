Param(
    [switch]$cleanUp,
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [ValidateSet('v1.0', 'beta', 'all')]
    [string]$docsVersion,
    [switch]$log
)


Function Invoke-ApiDoctor([bool]$cleanUp,
    [string]$apiDoctorVersion,
    [string]$apiDoctorBranch,
    [string]$repoPath,
    [string]$apiDoctorPath,
    [switch]$log,
    [string]$docSubPath) {

    $downloadedApiDoctor = $false
    $downloadedNuGet = $false
    Write-Host "Repository location: ", $repoPath

    # Check if ApiDoctor version has been set
    if ([string]::IsNullOrWhiteSpace($apiDoctorVersion)) {
        Write-Host "API Doctor version has not been set. Aborting..."
        exit 1
    }

    # Check if ApiDoctor subpath has been set
    if ([string]::IsNullOrWhiteSpace($docSubPath)) {
        Write-Host "API Doctor subpath has not been set. Aborting..."
        exit 1
    }
    # Get NuGet
    $nugetPath = $null
    if (Get-Command "nuget.exe" -ErrorAction SilentlyContinue) {
        # Use the existing nuget.exe from the path
        $nugetPath = (Get-Command "nuget.exe").Source
    }
    else {
        # Download nuget.exe from the nuget server if required
        $nugetPath = Join-Path $repoPath -ChildPath "nuget.exe"
        $nugetExists = Test-Path $nugetPath
        if ($nugetExists -eq $false) {
            Write-Host "nuget.exe not found. Downloading from dist.nuget.org"
            Invoke-WebRequest -Uri "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe" -OutFile $nugetPath
        }
        $downloadedNuGet = $true
    }
    # Check for ApiDoctor in path
    $apidoc = $null
    if (Get-Command "apidoc.exe" -ErrorAction SilentlyContinue) {
        $apidoc = (Get-Command "apidoc.exe").Source
    }
    else {
        $apidocPath = Join-Path $repoPath -ChildPath "apidoctor"
        #check for a previous version of ApiDoctor
        $prexistingPackageFolder = Get-ChildItem -ErrorAction SilentlyContinue -LiteralPath $apidocPath -Directory | Where-Object { $_.name -match "ApiDoctor" } 
        $prexistingApiDoctor = [System.IO.Path]::Combine($apidocPath, $prexistingPackageFolder.Name, "tools\apidoc.exe")
        $apiDoctorExists = Test-Path $prexistingApiDoctor
        if ($apiDoctorExists -eq $false) {
            New-Item -ItemType Directory -Force -Path $apidocPath

            # Download ApiDoctor from GitHub	
            Write-Host "Cloning API Doctor repository from GitHub"
            Write-Host "`tRemote URL: $apiDoctorVersion"
            Write-Host "`tBranch: $apiDoctorBranch"
            & git clone -b $apiDoctorBranch $apiDoctorVersion --recurse-submodules "$apidocPath\SourceCode" 2>&1 | Write-Host
            $downloadedApiDoctor = $true
		
            $nugetParams = "restore", "$apidocPath\SourceCode"
            & $nugetPath $nugetParams
			
            # Build ApiDoctor
            Install-Module -Name Invoke-MsBuild -Scope CurrentUser -Force 
            Write-Host "`r`nBuilding API Doctor..."
            Invoke-MsBuild -Path "$apidocPath\SourceCode\ApiDoctor.sln" -MsBuildParameters "/t:Rebuild /p:Configuration=Release /p:OutputPath=$apidocPath\ApiDoctor\tools"

            # Delete existing ApiDoctor source code     
            Remove-Item $apidocPath\SourceCode -Force  -Recurse -ErrorAction SilentlyContinue
        }
        #apiDoctor exists from a previous run
        # Get the path to the ApiDoctor exe
        $pkgfolder = Get-ChildItem -LiteralPath $apidocPath -Directory | Where-Object { $_.name -match "ApiDoctor" }
        $apidoc = [System.IO.Path]::Combine($apidocPath, $pkgfolder.Name, "tools\apidoc.exe")
        $downloadedApiDoctor = $true
    }   

    $lastResultCode = 0

    # Run validation at the root of the repository

    $fullPath = Join-Path $repoPath -ChildPath $docSubPath
    $params = "check-all", "--path", $fullPath, "--ignore-warnings"

    if ($log -eq $true) {
        $params = $params += "--log", "ApiDoctor.log"
    }
    & $apidoc $params

    if ($LastExitCode -ne 0) { 
        $lastResultCode = $LastExitCode
    }

    # Clean up the stuff we downloaded
    if ($cleanUp -eq $true) {
        if ($downloadedApiDoctor -eq $true) {
            Remove-Item $apidocPath -Recurse -Force
        }
        if ($downloadedNuGet -eq $true) {
            Remove-Item $nugetPath 
        }   
    }

    if ($lastResultCode -ne 0) {
        Write-Host "Errors were detected. This build failed."
        exit $lastResultCode
    }
}


$apiDoctorVersion = "https://github.com/OneDrive/apidoctor.git"
$apiDoctorBranch = "master"
$repoPath = (Get-Location).Path
$docSubPath = "/api-reference/"
$v1Docs = $docSubPath + "v1.0"
$betaDocs = $docSubPath + "beta"
$docSubPath += $docsVersion

if($docsVersion.Equals("all") -eq $true){
    Invoke-ApiDoctor -docSubPath $v1Docs -cleanUp $cleanUp.IsPresent -apiDoctorVersion $apiDoctorVersion -apiDoctorBranch $apiDoctorBranch -repoPath $repoPath  -log $log
    Invoke-ApiDoctor -docSubPath $betaDocs -cleanUp $cleanUp.IsPresent -apiDoctorVersion $apiDoctorVersion -apiDoctorBranch $apiDoctorBranch -repoPath $repoPath  -log $log
}
else{
    Invoke-ApiDoctor -docSubPath $docSubPath -cleanUp $cleanUp.IsPresent -apiDoctorVersion $apiDoctorVersion -apiDoctorBranch $apiDoctorBranch -repoPath $repoPath  -log $log
}