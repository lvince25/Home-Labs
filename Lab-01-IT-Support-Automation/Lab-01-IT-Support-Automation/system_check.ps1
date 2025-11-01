# PowerShell script to perform basic system checks

# System Check Automation Script
# Author: Linda Vincent Ntumba
# Description: Collects basic system information for IT Support purposes.

Write-Host "System Health Check Report" -ForegroundColor Cyan
Write-Host "----------------------------------"

# Computer Info
$computerName = $env:COMPUTERNAME
Write-Host "Computer Name: $computerName"

# CPU Usage
$cpu = Get-WmiObject win32_processor | Measure-Object -Property LoadPercentage -Average | Select -ExpandProperty Average
Write-Host "CPU Load: $cpu%"

# Memory Usage
$mem = Get-WmiObject win32_operatingsystem
$total = [math]::round($mem.TotalVisibleMemorySize / 1MB, 2)
$free = [math]::round($mem.FreePhysicalMemory / 1MB, 2)
$used = [math]::round($total - $free, 2)
Write-Host "Memory Used: $used GB / $total GB"

# Disk Space
Get-WmiObject Win32_LogicalDisk -Filter "DriveType=3" | ForEach-Object {
    $drive = $_.DeviceID
    $size = [math]::round($_.Size / 1GB, 2)
    $free = [math]::round($_.FreeSpace / 1GB, 2)
    Write-Host "$drive - Free Space: $free GB / $size GB"
}
