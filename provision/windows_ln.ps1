# use mklink + Developer mode on Windows10 can avoid admin elevate issue.
# windows
Get-ChildItem -LiteralPath ../windows | %{cmd.exe /c mklink "$env:UserProfile\$($_.name)" $_.FullName}

# global
Get-ChildItem -LiteralPath ../.gitignore_global | %{cmd.exe /c mklink "$env:UserProfile\$($_.name)" $_.FullName}