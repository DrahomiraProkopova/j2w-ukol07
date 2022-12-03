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

    <h1>Seznam osob</h1>

    [#list posts as post]
        <table class="u-full-width">
            <thead>
            <tr>
                <th>Autor</th>
                <th>Title</th>
                <th>Perex</th>
                <th>Published</th>
            </tr>
            </thead>
            <tbody>
                <tr>

                    <td>${post.author}</td>
                    <td><a href="http://localhost:8080/detail/${post.slug}" class="page">${post.title}</a></td>
                    <td>${post.perex?no_esc}</td>
                    <td>${post.published?date?string}</td>
                </tr>
            </tbody>
        </table>
    [#else]
        <div>Blog je prázdný.</div>
    [/#list]
</div>

</body>
</html>
