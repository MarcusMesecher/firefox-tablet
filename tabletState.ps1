# Variables
$tabletProfile = "tablet-mode"
$defaultProfile = "default-release"
$convertibleSlateModeValue = (Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl -Name ConvertibleSlateMode | Select-Object -ExpandProperty ConvertibleSlateMode)
$command = if ($convertibleSlateModeValue -eq 0) { $tabletProfile } else { $defaultProfile }

# Command to enable or disable Firefox Extension
$commandLine = "firefox -P $command"

# Run Command
Start-Process -FilePath "cmd.exe" -ArgumentList "/c $commandLine"