# Python Introduction

---
# Why Python

```python
import this
```

```
The Zen of Python, by Tim Peters

Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated.
Flat is better than nested.
Sparse is better than dense.
Readability counts.
Special cases aren't special enough to break the rules.
Although practicality beats purity.
Errors should never pass silently.
Unless explicitly silenced.
...
```

---

# Why Python ...

* Embeded in almost every security / RE instrumentation
* Readable
* Learnable
* General

---

# Peculiarities

### `pass` and the infamous identation:
```python
def empty_fun():
    pass
```

### The `for` not so for:
```python

for i in range(10):
    print i
```

### The `main()` idiom:
```python
def main():
    pass

if __name__ == "__main__":
    main()
```

#### ... and others

---

# The versions

## 2.7 to 3.* is like HTML to XHTML

Example:
```python
# 2.7
print "Hello, world!"

# 3.*
print("Hello, world!")
# ..and others
```

<span style="color: red">NOTE:</span> We still stick to 2.7 cause tools are using it.

---

# Types
```python
# Nothing object
None

# ints and floats
2, 4884739, 212.123

# bool
True, False

# str and unicode
"Hi", u"Здрасти"

# Sequences
[1,2,3] # list is mutable
(1,2,3) # tupple is immutable

# Maps
{"key": "value"} # dict

# Sets
set([1,2,3]) # set initialization
```

---

# Conditions
```python
a = 5
b = 8

if(a > b):
    print "a > b"

if a > b:
    print "a > b"
else:
    print "a <= b"
```

---

# Loops
```python
for i in [1,2,3]:
    if i % 2:
        continue
    print i
```
```python
while True:
    time.sleep(1)
    if a:
        break
```

---

# Functions
```python
def my_func(a1,a2, a3=1, a4=2):
    if a1 and a2:
        print a3 + a4

my_func(1, 0)
my_func(1, 0, 2)
my_func(1, 0, a4=5)
```

---

# Generators
```python
def my_gen():
    yield 1
    yield 2
    yield 3

for i in my_gen():
   print i
```

---

# Comprehensions
```python
# List comprehensions
["%x" % i for i in range(16)]

# Generator comprehensions
("%x" % i for i in range(16))

# Dict comprehensions (2.7 >= )
mcase = {'a':10, 'b': 34, 'A': 7, 'Z':3}
{ k : v+4 for k,v in mcase.items() }

```

---

# Modules
```python
import os, sys
import requests
from time import sleep
from re import *
import lxml.tree as ET
```

---

# To Be Continue..

* Object Model
* Classes
* Packages (collections of modules)
* Exception Handling
* Standard Library
* Other Libraries, Tools and References

---

# Tools and References

* [Basic Tutorial](https://docs.python.org/2.7/tutorial/)
* [DreamPie](http://www.dreampie.org/)
* [IPython](https://ipython.org/)

---
