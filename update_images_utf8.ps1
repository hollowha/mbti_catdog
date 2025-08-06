# Read the file content
$content = Get-Content "index.html" -Raw -Encoding UTF8

# Replace img/ with img2/ and add -removebg-preview before .png
$content = $content -replace '"img/([^"]+)\.png"', '"img2/$1-removebg-preview.png"'

# Write back with UTF8 encoding
$content | Out-File "index.html" -Encoding UTF8 -NoNewline

Write-Host "All image paths updated successfully!"
