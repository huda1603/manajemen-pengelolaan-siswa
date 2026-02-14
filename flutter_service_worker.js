'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "42b325038469ec907c6cee6bd1f5bc76",
".git/config": "a571e8f4e942f5539681404169bfe2b2",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "5c54716a9affc00abdb600f7adc4c218",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "c3f5d4609283f127ed16c78fc64e6ef4",
".git/logs/refs/heads/gh-pages": "c3f5d4609283f127ed16c78fc64e6ef4",
".git/logs/refs/remotes/origin/gh-pages": "b606ef38f6f6f7a527477e271ce47b01",
".git/objects/00/ac3e310f2d5807721895e068b350683cefe40d": "da9ad2549eb5567531d6dc7b2b91e8b9",
".git/objects/02/5ff06e852bd9b0c567a96653bf9cb5d1dbb18a": "2d6dc2461c5538dca1836553959bfe21",
".git/objects/02/ff717291179efc5fa102310d1f28574397d837": "443a44f0ebcf326635b26dbc10e824b8",
".git/objects/08/27c17254fd3959af211aaf91a82d3b9a804c2f": "360dc8df65dabbf4e7f858711c46cc09",
".git/objects/0b/9fcf3d6c6058acc662279d9d22099086a0c78a": "0f20d8b31472ed851f3506e98bb44282",
".git/objects/1a/8033f1a2c9f292d6ccec4e72552eba1f667ba4": "a6561d21764bb771d252ee2a26542f18",
".git/objects/35/9a30088e90b244c6de340875d2760ea02eceaa": "0e91896a69caa6a1e6b2b91b7b9de3c2",
".git/objects/3a/8cda5335b4b2a108123194b84df133bac91b23": "1636ee51263ed072c69e4e3b8d14f339",
".git/objects/3a/bf18c41c58c933308c244a875bf383856e103e": "30790d31a35e3622fd7b3849c9bf1894",
".git/objects/3e/7126b6ddb282031339d9176d5d7e934cbfaea5": "f9719c47c8a3b4b671e7e6a4b5ff77c4",
".git/objects/43/24b5aa3180f7707c8cd1f26635cc7bb7e2813d": "00234c9bb8796451292970e2dbf8a732",
".git/objects/44/ee6dfb7c10730fa0c8a983fea818083a7e9798": "1838570335130924226dfd717e0e321d",
".git/objects/4c/1c9bc0def6dfeffce4d8adaaa44286796d2dad": "30609ab711c750070a33536aad445f77",
".git/objects/51/03e757c71f2abfd2269054a790f775ec61ffa4": "d437b77e41df8fcc0c0e99f143adc093",
".git/objects/51/886b6a19fa68cc4c57435eb9c5cb95d4013641": "ce888ebc3090a01f14c32b4ee54ad635",
".git/objects/55/9f1f5c498560eeba37c474760a3c345b750b92": "dc1e02fdf1b9b8e5cb1c463950090365",
".git/objects/57/3d4201931ceddff8ff4805df231d65b4fcc63b": "a7a2a1db6dde9a3bdcb625bf8288d17a",
".git/objects/5c/c6014c80bab1cdf2406afdaf6d1a29fb9b8e5a": "75ee1b0c1dd8ffbc4978694ff55ae4bf",
".git/objects/65/8c423030d5f16eb1934f4d8cf07b78b30e86b7": "51798548e20f22a8cc944ed72801059c",
".git/objects/68/43fddc6aef172d5576ecce56160b1c73bc0f85": "2a91c358adf65703ab820ee54e7aff37",
".git/objects/6e/77d8c5ab9250bdb6b242fcac475735062150be": "6bdd93d387326da878aff9a61f1ace4a",
".git/objects/6f/7661bc79baa113f478e9a717e0c4959a3f3d27": "985be3a6935e9d31febd5205a9e04c4e",
".git/objects/7c/3463b788d022128d17b29072564326f1fd8819": "37fee507a59e935fc85169a822943ba2",
".git/objects/7e/76b330518da89af305fd637a471e000835b0aa": "3a750642ffebf9f7c4eee3aba081f3f3",
".git/objects/85/63aed2175379d2e75ec05ec0373a302730b6ad": "997f96db42b2dde7c208b10d023a5a8e",
".git/objects/86/03d0a3d2a91580f77171968c7d13e73fd1482a": "dc750bd17c929d834d260dd7dc0293e7",
".git/objects/86/df4107138c54772ee26334c2965cded95396d7": "126f85c68c550f11184894f7c8041986",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/01fe038e7fd2ebe198c80e2db7b45f6c271dad": "984c091a208d47cc23f8278466d18229",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8c/f741c410c7133bff2838831add3f0a3fb05399": "1fa8b1e13cdc81f89d01d8da0d229d24",
".git/objects/8e/21753cdb204192a414b235db41da6a8446c8b4": "1e467e19cabb5d3d38b8fe200c37479e",
".git/objects/93/2b2ba60d2b3d56d4c821438b7d12a193cbd651": "31206f7ba7b046cbae715812a7c03858",
".git/objects/93/b363f37b4951e6c5b9e1932ed169c9928b1e90": "c8d74fb3083c0dc39be8cff78a1d4dd5",
".git/objects/9a/c2a9ddd8e6fabcff244c03a4250d8a65e8b775": "464ebf14830b3a51742ed24f8d75a81d",
".git/objects/9f/1829c4821bd98751445c525b6a39dd884bdb0c": "da83bf135e93f264ba44b779bcfae4b0",
".git/objects/a0/c2d2d9b4109220d49fc5fe7e54a4355cea5ff1": "c8c3175ac1015c5d118fda4bac0244af",
".git/objects/a7/3f4b23dde68ce5a05ce4c658ccd690c7f707ec": "ee275830276a88bac752feff80ed6470",
".git/objects/ad/ced61befd6b9d30829511317b07b72e66918a1": "37e7fcca73f0b6930673b256fac467ae",
".git/objects/b6/fe9ddfb890b98430696cacc70b87d9ce59a383": "e48bb554fbb3fcb122f744ca5f1b51ad",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/3e39bd49dfaf9e225bb598cd9644f833badd9a": "666b0d595ebbcc37f0c7b61220c18864",
".git/objects/ba/703fb88b9f1053a945d0487678a1edacf08c40": "a6d71e77a581d2d5f04af9568f4fa276",
".git/objects/c1/1866bc7881a12f2614d9eb73899acda4614170": "c8c90247ac82579e4233491a593d6aba",
".git/objects/c7/be75c32d41d0be140c6cd1b0eefe228e2caaa4": "a91f3ea75e74e6dab6e08a2877211806",
".git/objects/c8/3af99da428c63c1f82efdcd11c8d5297bddb04": "144ef6d9a8ff9a753d6e3b9573d5242f",
".git/objects/cc/b542915a5ad687a538f607b3c6e9b262fa6138": "0cb76e48d8dfd526a9b7f0de1406d2bc",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d7/4295856786b9e7fd88447d7aa119f079e176cc": "3096f8d77aec31ad358699264739b15c",
".git/objects/d9/00ce0c7bc150f11d25b06c6283ea48f183732a": "348bbf94cc849e0d28ef023a4a74b014",
".git/objects/d9/5b1d3499b3b3d3989fa2a461151ba2abd92a07": "a072a09ac2efe43c8d49b7356317e52e",
".git/objects/e0/7797437d096064bd90c373800dcb0f335c14b0": "16f9b9defb16491f8c733b09b022688c",
".git/objects/e9/2f9a2c4913d67f49b651fb7149556b26b71c35": "061dac79d71f3d397b9c4e30a6fd35af",
".git/objects/ea/365a0141ba0e7c0b73898722b2366762329171": "21f99a05c5869f51d2f63eca4ee0b65a",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f3/3e0726c3581f96c51f862cf61120af36599a32": "afcaefd94c5f13d3da610e0defa27e50",
".git/objects/f6/e6c75d6f1151eeb165a90f04b4d99effa41e83": "95ea83d65d44e4c524c6d51286406ac8",
".git/objects/fd/05cfbc927a4fedcbe4d6d4b62e2c1ed8918f26": "5675c69555d005a1a244cc8ba90a402c",
".git/refs/heads/gh-pages": "b0489d12e7e57763644a05775ed2cd3e",
".git/refs/remotes/origin/gh-pages": "b0489d12e7e57763644a05775ed2cd3e",
"assets/AssetManifest.bin": "53a40c7393c36e3990d72106a575b72e",
"assets/AssetManifest.bin.json": "f5087441122be262312c29628b0fbfc6",
"assets/assets/back-to-school.png": "896f9b0bc445ab026543f90ba53e0b99",
"assets/assets/foto_sekolahan1.jpg": "0919dabe0b64d6ae7102bf6d9b3ee16c",
"assets/assets/foto_sekolahan2.jpg": "f2dfc2c08ae87fcffa35fb60337cfb6b",
"assets/assets/foto_sekolahan3.jpg": "62afc7bb17f299969699cee87794d623",
"assets/assets/foto_sekolahan4.jpg": "aa259d338c1d428245429eabb944a72c",
"assets/assets/foto_sekolahan5.jpg": "010c7d992ee0cd85c03b0c987037fa83",
"assets/assets/profile.png": "61869b3a4185798bfe4d261c86409f60",
"assets/assets/sman5.png": "c4c255d9f248d8a8f044a361c0c66d49",
"assets/assets/student_study.png": "a881128449d810e623593a210e419806",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "36483836ad58e7dbf5ee5d9642983ba9",
"assets/NOTICES": "3faf8b9cedd529f2bad6249e1bd3191c",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"flutter_bootstrap.js": "42c9cd5421ec4da183e848fa7b6c7893",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "7a3f205606b78feb90acf9d76ea3e79c",
"/": "7a3f205606b78feb90acf9d76ea3e79c",
"main.dart.js": "32e5303f241804ff1084db7ea3d8b408",
"manifest.json": "d3d7b07cc691ed03ff7873ab1622fdf5",
"version.json": "c8496c729ba33b6b1c3077953cdc1021"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
