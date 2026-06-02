$svg = Get-Content 'TBD Organization.svg' -Raw -Encoding UTF8
# Check for image elements or base64
$hasImg = $svg.Contains('<image')
$hasText = $svg.Contains('<text')
$hasTspan = $svg.Contains('<tspan')
Write-Output "Has <image>: $hasImg"
Write-Output "Has <text>: $hasText"
Write-Output "Has <tspan>: $hasTspan"
# Check how many <g> elements
$gCount = ([regex]::Matches($svg, '<g')).Count
Write-Output "G elements: $gCount"
# Sample around 100000 chars in
Write-Output "--- sample at 100k ---"
Write-Output $svg.Substring(100000, 2000)
