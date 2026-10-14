$Host.UI.RawUI.WindowTitle='03c-versioning'
$env:PYTHONUTF8='1'
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Set-Location 'C:\Users\tuann\MyStorage\VinUniAI\Phase2\KX-DAY26-NguyenAnhTuan-2A202602700\03-production'
& '..\.venv\Scripts\python.exe' versioned_client.py
Read-Host 'Demo finished - press Enter to close'
