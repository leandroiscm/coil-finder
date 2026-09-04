const CACHE='coil-finder-v1';
const ASSETS=['./','./index.html','./coils.json','./manifest.webmanifest'];
self.addEventListener('install',e=>e.waitUntil(caches.open(CACHE).then(c=>c.addAll(ASSETS))));
self.addEventListener('fetch',e=>{e.respondWith(caches.match(e.request).then(r=>r||fetch(e.request).then(x=>{if(e.request.method==='GET'&&new URL(e.request.url).origin===location.origin){const c=caches.open(CACHE);c.then(cc=>cc.put(e.request,x.clone()));}return x}))) });
