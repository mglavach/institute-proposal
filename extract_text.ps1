[xml]$doc = Get-Content 'tmp_docx_extract\word\document.xml' -Raw -Encoding UTF8
$ns = New-Object System.Xml.XmlNamespaceManager($doc.NameTable)
$ns.AddNamespace('w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main')
$paragraphs = $doc.SelectNodes('//w:p', $ns)
foreach($p in $paragraphs) {
    $texts = $p.SelectNodes('.//w:t', $ns)
    $line = ''
    foreach($t in $texts) { $line += $t.InnerText }
    if($line.Trim() -ne '') { Write-Output $line }
}
