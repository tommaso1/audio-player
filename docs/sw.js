var CACHE_NAME = 'cache-v4';
var urlsToCache = [
  '/audio-player/',
  '/audio-player/main.css',
  '/audio-player/main.js',
  '/audio-player/audio.mp3',
];

self.addEventListener('install', function(event) {
  // Perform install steps
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(function(cache) {
        return cache.addAll(urlsToCache);
      })
  );
});

self.addEventListener('fetch', function(event) {
  event.respondWith(
    caches.match(event.request)
      .then(function(response) {
        // Cache hit - return response
        if (response) {
            return response;
        }

        return fetch(event.request).then(
          function(response) {
          // Check if we received a valid response
          if(!response || response.status !== 200 || response.type !== 'basic') {
              return response;
          }

          var responseToCache = response.clone();

          caches.open(CACHE_NAME)
              .then(function(cache) {
              cache.put(event.request, responseToCache);
              });

          return response;
          }
        );
      })
    );
  });
  
