# Python Excercise

## Intro

What we did in short is:

* install `selenium` Python package
* install Chrome browser
* download and install `chromedriver`
* short demo of the Excerice-1 idea

## Excersice-1

### Task

Write a script that detects some DOM based XSS vulnerabilities
on web applications. 

### Demo

After setting selenium I showed a short Python snippet:

```python
import selenium.webdriver as wdr

a = wdr.Chrome()

# Visit our vulnerable application
a.get("http://ownme.qa.ecm:8000/xss3#/imgs/smile.png")

# Get a baseline for the browser's log
base_log = a.get_log("browser")

# Try break the page by putting special characters
a.get("http://ownme.qa.ecm:8000/xss3#'\"<>")
# Needed when you work with #hash part of URI
# The browser does not refresh the page on #hash change
a.refresh()
# Get log after altering the #hash
break_log = a.get_log("browser")

base_log

1: []

# As we see there are differences. Some errors appear after alternation.
break_log

2: [{u'level': u'SEVERE',
  u'message': u'http://ownme.qa.ecm:8000/imgs/smile.p - Failed to load resource: the server responded with a status of 404 (Not Found)',
  u'source': u'network',
  u'timestamp': 1505742371367},
 {u'level': u'SEVERE',
  u'message': u"javascript 0:309 Uncaught DOMException: Failed to execute 'removeChild' on 'Node': The node to be removed is not a child of this node.",
  u'source': u'javascript',
  u'timestamp': 1505742373581}]


```

This snippet points out a simple algorithm to follow for the task:

1. Get baseline for the web page
1. Get browser's log
1. Manipulate the `#hash` part of the URL and refresh
1. Get browser's log
1. Compare current and baseline browser log and detect anomalies
