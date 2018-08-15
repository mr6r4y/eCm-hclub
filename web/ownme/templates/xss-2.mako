<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />

  <title>XSS 2: MyLog</title>

  <link rel="icon" href="/favicon.ico" />
  <link rel="stylesheet" href="/css/github.css" />
  <link rel="stylesheet" href="/css/site.css" />
  <link rel="stylesheet" href="/css/frameworks.css" />
  <link rel="stylesheet" href="/css/octicons.css" />
  <style>
    /* Page tweaks */
    .preview-page {
      margin-top: 64px;
    }
    /* User-content tweaks */
    .timeline-comment-wrapper > .timeline-comment:after,
    .timeline-comment-wrapper > .timeline-comment:before {
      content: none;
    }
    /* User-content overrides */
    .discussion-timeline.wide {
      width: 920px;
    }
  </style>
</head>
<body>

<div class="page">
    <div id="preview-page" class="preview-page" data-autorefresh-url="/__/grip/refresh/">
      <div role="main" class="main-content">
        <div class="container new-discussion-timeline experiment-repo-nav">
          <div class="repository-content">
            <div id="readme" class="readme boxed-group clearfix announce instapaper_body md">
            <h3><span class="octicon octicon-book"></span>
                XSS 2: MyLog
            </h3>
              <article class="markdown-body entry-content" itemprop="text" id="grip-content">

                <h2>Pop an alert(1)?</h2>


<div>Hello, your query is in the <code>console.log</code> !</div>
<script>
    var a = '${q}';
    console.log(a);
</script>


                <h3>References:</h3>
                <ul>
                    <li><a href="/xss2?q=MaQuery">Me</a></li>
                    <li><a href="/index">Top</a></li>
                </ul>

              </article>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
</body>
</html>