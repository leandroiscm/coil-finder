const CACHE='coil-finder-valenca-20261101-manuscrito-v3';
const ASSETS=['./','./index.html','./manifest.webmanifest','./etiqueta.html','./exemplo-etiqueta.jpg','./etiqueta-coil-id.jpg','./etiqueta-coil-no.jpg','./etiqueta-coil-manuscrito.jpg'];
self.addEventListener('install',e=>e.waitUntil(caches.open(CACHE).then(c=>c.addAll(ASSETS))));
self.addEventListener('activate',e=>e.waitUntil(caches.keys().then(keys=>Promise.all(keys.filter(k=>k!==CACHE).map(k=>caches.delete(k))))));
self.addEventListener('fetch',e=>{e.respondWith(caches.match(e.request).then(r=>r||fetch(e.request).then(x=>{if(e.request.method==='GET'&&new URL(e.request.url).origin===location.origin){caches.open(CACHE).then(c=>c.put(e.request,x.clone()));}return x}))) });
