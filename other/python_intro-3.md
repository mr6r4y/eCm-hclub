# Python Introduction (part 3)

# Packages

* A collection of modules
* Use a directory with `__init__.py` in it

---

# Exceptions

```python
try:
    a = int(input("Enter a positive integer: "))
    if a <= 0:
        raise ValueError("That is not a positive number!")
except ValueError as ve:
    print ve
finally:
    print "Always here :)"
```

---

# Exceptions (cont.)

```
BaseException
 +-- SystemExit, KeyboardInterrupt, GeneratorExit
 +-- Exception
      +-- StopIteration
      +-- StandardError
      |    +-- BufferError
      |    +-- ArithmeticError
 ...
      |    +-- AssertionError
      |    +-- AttributeError
      |    +-- EnvironmentError
 ...
      |    +-- EOFError
      |    +-- ImportError
      |    +-- LookupError: IndexError, KeyError
 ...
      |    +-- SystemError
      |    +-- TypeError
      |    +-- ValueError: ...
      +-- Warning
 ...
```

---

# Standard Libraries

* [`__builtins__`](https://docs.python.org/2.7/library/functions.html)
* `os`, `sys` - OS specific operations
* `argparse` - parse command line options and arguments
* `re` - regular expressions
* `struct` - parsing C structures from binary
* `ctypes` - bridge layer to C (can import/execute DLLs, etc.)
* `datetime` - date and time functions
* `csv` - parsing CSV files
* `hashlib` - md5, sha1, etc.
* `threading`, `multiprocessing` - concurent programming
* `subprocessing` - execute commands from the shell
* `json` - parse JSON
* and many others ...

---

# Python Package System

* `pip install <package>` - `pip` is the current package manager
* `easy_install` - the old one

---

# Other Libraries and Tools

* `lxml` - parse XML files
* `graphviz` - wrapper of `dot` lang for graph vizualization
* `sklearn`, `matplotlib`, `pandas`, `scipy`, etc - machine learning, math, science
* `cherrypy`, `django`, etc - web
* `requests` - HTTP client implementation
* and many others for whatever ...