$svg = Get-Content 'TBD Organization.svg' -Raw -Encoding UTF8
$matches = [regex]::Matches($svg, '(?s)<text[^>]*>(.*?)</text>')
foreach ($m in $matches) {
    $inner = $m.Groups[1].Value
    $clean = [regex]::Replace($inner, '<[^>]+>', '')
    $clean = [System.Net.WebUtility]::HtmlDecode($clean.Trim())
    if ($clean -ne '') { Write-Output $clean }
}
