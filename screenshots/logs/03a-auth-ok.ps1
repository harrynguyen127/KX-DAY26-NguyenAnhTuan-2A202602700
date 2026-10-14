$Host.UI.RawUI.WindowTitle='03a-auth-ok'
$env:PYTHONUTF8='1'
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Set-Location 'C:\Users\tuann\MyStorage\VinUniAI\Phase2\KX-DAY26-NguyenAnhTuan-2A202602700\03-production'
Remove-Item Env:MCP_AUTH_TOKEN -ErrorAction SilentlyContinue
& '..\.venv\Scripts\python.exe' auth_client.py
Read-Host 'Demo finished - press Enter to close'
