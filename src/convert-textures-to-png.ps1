Add-Type -AssemblyName System.Drawing
Get-ChildItem -Filter *.bmp | ForEach-Object {
    $bmp = [System.Drawing.Image]::FromFile($_.FullName)
    $out = Join-Path $_.DirectoryName (“$($_.BaseName).png”)
    $bmp.Save($out, [System.Drawing.Imaging.ImageFormat]::Png)
    $bmp.Dispose()
}
