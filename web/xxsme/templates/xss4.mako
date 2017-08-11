<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>XSS 1</title>
</head>
<body>

<div class="page">
    <div>Hello ! </div>
    <script>
        var a = window.location.hash.replace('#', '');
        document.write("<img src=" + decodeURI(a) + " />");
    </script>
</div>

</body>
</html>