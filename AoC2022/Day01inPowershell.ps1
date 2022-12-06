# Powershell Advent of code 2022 Day 1 
param([string] $filepath)

Get-Content $filepath | ForEach-Object -Begin { $sum = 0 } -Process { if ($_ -eq '' ) { Write-Output $sum; $sum = 0 } else {$sum = $sum + $_ } } | Sort-Object -Descending | Select-Object -First 1 


Get-Content $filepath | ForEach-Object -Begin { $sum = 0 } -Process { if ($_ -eq '' ) { Write-Output $sum; $sum = 0 } else { $sum = $sum + $_ } } | Sort-Object -Descending | Select-Object -First 3 | ForEach-Object -Begin { $sum = 0 } -Process {$sum = $sum + $_ } -End { Write-Output $sum }

