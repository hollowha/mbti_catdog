# PowerShell script to update image paths from img/ to img2/ with removebg-preview suffix

$file = "index.html"
$content = Get-Content $file -Raw

# Replace all image paths
$content = $content -replace 'img/([^"]+)\.png"', 'img2/$1-removebg-preview.png"'

# Write back to file
$content | Set-Content $file -NoNewline

Write-Host "Image paths updated successfully!"
