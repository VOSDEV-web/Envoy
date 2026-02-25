# Source variables
$RepoOwner = "VOSDEV-web" # Fill in Github username
$RepoName = "Envoy" # Fill in Repo name
$PAT = "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" # Fill in Github PAT
$FilePath = "Config.JSON" # Do not change!
$DestinationFolder = "C:\Programdata\Envoy\" # Do not change!
$Url = "https://api.github.com/repos/$RepoOwner/$RepoName/contents/$FilePath" # Do not change!

# Authorization with PAT
$Headers = @{
    Authorization = "token $PAT"
    Accept        = "application/vnd.github.v3.raw"
}

# Download
Invoke-RestMethod -Uri $Url -Headers $Headers -OutFile "$DestinationFolder\$($FilePath.Split('/')[-1])"
Write-Host "File downloaded to $DestinationFolder"