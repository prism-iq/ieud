# φ Windows installer
# Run: iwr -useb https://raw.githubusercontent.com/prism-iq/ieud/main/install.ps1 | iex

$ErrorActionPreference = "Stop"
Write-Host "φ" -ForegroundColor Green

$dest = "$env:USERPROFILE\.phi"
New-Item -ItemType Directory -Force -Path $dest | Out-Null

# Download scripts
$base = "https://raw.githubusercontent.com/prism-iq/ieud/main/bin"
$scripts = @("pantheon", "shiva", "vishnu", "kali", "agni", "buddha", "ganesha", "yama", "tara", "inti", "viracocha")

foreach ($s in $scripts) {
    Invoke-WebRequest -Uri "$base/$s" -OutFile "$dest\$s.ps1" -UseBasicParsing
}

# Add to PATH
$path = [Environment]::GetEnvironmentVariable("PATH", "User")
if ($path -notlike "*$dest*") {
    [Environment]::SetEnvironmentVariable("PATH", "$path;$dest", "User")
}

# Create aliases
@"
function ζ { & `$env:USERPROFILE\.phi\pantheon.ps1 @args }
function ω { & `$env:USERPROFILE\.phi\pantheon.ps1 @args }
Set-Alias -Name phi -Value ζ
"@ | Out-File "$PROFILE" -Append -Encoding UTF8

Write-Host "ζ" -ForegroundColor Green
