$svg = Get-Content 'TBD Organization.svg' -Raw -Encoding UTF8
# Show first 3000 chars to understand structure
Write-Output $svg.Substring(0, 3000)
