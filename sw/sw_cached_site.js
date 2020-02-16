const cacheName = 'v4';

// Call Install Event
self.addEventListener('install', e => {
  console.log('Service Worker: Installed', e);
});

// Call Activate Event
self.addEventListener('activate', e => {
  console.log('Service Worker: Activated', e);
  // Remove unwanted caches
  e.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
        cacheNames.map(cache => {
          if (cache !== cacheName) {
            console.log('Service Worker: Clearing Old Cache');
            return caches.delete(cache);
          }
        })
      );
    })
  );
});

// Call Fetch Event
self.addEventListener('fetch', e => {
  console.log('Service Worker: Fetching: ', e);
  e.respondWith(
    fetch(e.request)
      .then(res => {
        // Make copy/clone of response
        const resClone = res.clone();
        console.log("The clone: ", resclone)
        // Open cahce
        caches.open(cacheName).then(cache => {
          // Add response to cache
          console.log("Put Cache:", cache);
          cache.put(e.request, resClone);
        });
        return res;
      })
      .catch(err => caches.match(e.request).then(res => res))
  );
});
