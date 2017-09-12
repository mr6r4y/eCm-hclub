<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>XSS 2</title>
</head>
<body>

<div class="page">
    <div>Hello ! </div>
    <form action="/xss2/" method="GET">
        <input value=${q | h} name=q type=text />
    </form>
</div>

</body>
</html>