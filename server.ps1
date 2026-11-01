$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$port = 8765
$prefix = "http://127.0.0.1:$port/"
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add($prefix)
$listener.Start()
Start-Process $prefix
Write-Host "Coil Finder rodando em $prefix" -ForegroundColor Green
Write-Host "Feche esta janela para encerrar o servidor."
$mime = @{
  '.html'='text/html; charset=utf-8'; '.js'='application/javascript; charset=utf-8'; '.css'='text/css; charset=utf-8';
  '.json'='application/json; charset=utf-8'; '.webmanifest'='application/manifest+json'; '.png'='image/png'; '.jpg'='image/jpeg'; '.jpeg'='image/jpeg';
  '.svg'='image/svg+xml'; '.ico'='image/x-icon'; '.txt'='text/plain; charset=utf-8'
}
while ($listener.IsListening) {
  try { $ctx = $listener.GetContext() } catch { break }
  $path = [Uri]::UnescapeDataString($ctx.Request.Url.AbsolutePath.TrimStart('/'))
  if ([string]::IsNullOrWhiteSpace($path)) { $path='index.html' }
  $full = Join-Path $root $path
  if ((Test-Path $full -PathType Leaf) -and ((Resolve-Path $full).Path.StartsWith((Resolve-Path $root).Path))) {
    try {
      $bytes = [System.IO.File]::ReadAllBytes($full)
      $ext = [IO.Path]::GetExtension($full).ToLower()
      if ($mime.ContainsKey($ext)) { $ctx.Response.ContentType=$mime[$ext] }
      $ctx.Response.ContentLength64=$bytes.Length
      $ctx.Response.StatusCode=200
      $ctx.Response.OutputStream.Write($bytes,0,$bytes.Length)
    } catch { $ctx.Response.StatusCode=500 }
  } else {
    $ctx.Response.StatusCode=404
  }
  $ctx.Response.OutputStream.Close()
}
$listener.Stop()
