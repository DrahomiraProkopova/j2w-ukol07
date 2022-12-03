[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="seznam">

    <h1>${post.title}</h1>

    <b>${post.perex?no_esc}</b>
    <p>${post.body?no_esc}</p>

    <button onclick="location.href = '/'" type="submit">Zpět</button>
</div>

</body>
</html>
