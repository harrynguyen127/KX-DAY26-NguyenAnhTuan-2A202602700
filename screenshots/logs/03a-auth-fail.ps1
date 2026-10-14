$Host.UI.RawUI.WindowTitle='03a-auth-fail'
$env:PYTHONUTF8='1'
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Set-Location 'C:\Users\tuann\MyStorage\VinUniAI\Phase2\KX-DAY26-NguyenAnhTuan-2A202602700\03-production'
$env:MCP_AUTH_TOKEN='wrong-token'
& '..\.venv\Scripts\python.exe' auth_client.py
Write-Host 'Expected rejection: wrong-token; see HTTP status in server log.'
Read-Host 'Demo finished - press Enter to close'
