Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Format-Table -AutoSize | Out-File c:\Users\s3\desktop\last_24.txt
Get-EventLog -LogName System -EntryType Error | Format-Table -AutoSize | Out-File c:\Users\s3\desktop\errors.txt
Get-EventLog -LogName System -InstanceID 16 | Format-Table -AutoSize | Write-Output
Get-EventLog -LogName System -Newest 20 | Format-Table -AutoSize | Write-Output
Get-EventLog -LogName System -Newest 500 | Format-Table -AutoSize | Write-Output
