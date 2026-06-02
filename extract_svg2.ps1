$svg = Get-Content 'TBD Organization.svg' -Raw -Encoding UTF8
Write-Output "File length: $($svg.Length)"
# Try tspan
$tmatches = [regex]::Matches($svg, '<tspan[^>]*>([^<]+)<\/tspan>')
Write-Output "tspan count: $($tmatches.Count)"
foreach ($m in $tmatches) {
    $t = [System.Net.WebUtility]::HtmlDecode($m.Groups[1].Value.Trim())
    if ($t -ne '') { Write-Output $t }
}
