<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>XSS 1</title>
</head>
<body>

<div class="page">
    <div>Hello, your query is: ${q | h} </div>
</div>

</body>
</html>