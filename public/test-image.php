<!DOCTYPE html>
<html>
<head>
    <title>Image Test</title>
    <style>
        body { font-family: Arial; padding: 20px; }
        .test { margin: 20px 0; padding: 10px; border: 1px solid #ccc; }
        img { max-width: 200px; border: 1px solid #ddd; }
    </style>
</head>
<body>
    <h1>Image Access Test</h1>
    
    <div class="test">
        <h3>Test 1: Direct Path</h3>
        <img src="/storage/news/6a70ad3463aec_1785769268.webp" alt="News Image 1">
        <p>URL: /storage/news/6a70ad3463aec_1785769268.webp</p>
    </div>
    
    <div class="test">
        <h3>Test 2: Old Path</h3>
        <img src="/storage/news-thumbnails/01KYVJN3NCRRD3RXFG2NJK037Y.jpg" alt="News Image 2">
        <p>URL: /storage/news-thumbnails/01KYVJN3NCRRD3RXFG2NJK037Y.jpg</p>
    </div>
    
    <div class="test">
        <h3>Test 3: Another News Image</h3>
        <img src="/storage/news/6a6c6392a0b9f_1785488274.webp" alt="News Image 3">
        <p>URL: /storage/news/6a6c6392a0b9f_1785488274.webp</p>
    </div>
    
    <hr>
    
    <h2>Diagnostic Info</h2>
    <ul>
        <li>Document Root: <?= $_SERVER['DOCUMENT_ROOT'] ?></li>
        <li>Storage Link Exists: <?= is_link($_SERVER['DOCUMENT_ROOT'] . '/storage') ? 'YES' : 'NO' ?></li>
        <li>Storage Link Target: <?= is_link($_SERVER['DOCUMENT_ROOT'] . '/storage') ? readlink($_SERVER['DOCUMENT_ROOT'] . '/storage') : 'N/A' ?></li>
    </ul>
</body>
</html>
