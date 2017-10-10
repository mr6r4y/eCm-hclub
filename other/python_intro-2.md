# Python Introduction (part 2)

---

# Objects

In python everything is an object:

```python
"aa".title()
# 'Aa'

(0xff).bit_length()
# 8

(lambda a: None).func_name
# '<lambda>'

# etc/
```

---

# .. by the way

```python
anon_func = lambda arg1: arg1 + 5
anon_func(2)

# 7
```

---

# Classes

```python
class B(object):
    # The constructor
    def __init__(self, arg1):
        self.prop1 = arg1

# Class A inherits B
class A(B):
    def __init__(self, arg1_1):
        # Call parent constructor
        super(A, self).__init__(arg1_1)

a = A(5)   # Class instantiation

a.prop1

# 5
```

---

# A lot of Magic

All of these:

`object.__new__`,`object.__init__`,`object.__del__`,`object.__repr__`,`object.__str__`,`object.__lt__`,`object.__le__`,`object.__eq__`,`object.__ne__`,`object.__gt__`,`object.__ge__`, ... , `object.__int__`,`object.__long__`,`object.__float__`,`object.__oct__`,`object.__hex__`,`object.__index__`,`object.__coerce__`,`object.__enter__`,`object.__exit__`

have special meaning. For more info see the [Data Model](https://docs.python.org/2/reference/datamodel.html)

---

# Descriptors

```python
class RevealAccess(object):
    
    # ...
    
    def __get__(self, obj, objtype):
        print 'Retrieving', self.name
        return self.val

    def __set__(self, obj, val):
        print 'Updating', self.name
        self.val = val

class MyClass(object):
    x = RevealAccess(10, 'var "x"')
    y = 5

m = MyClass()
m.x

# 'Retrieving var "x"''
# 10

```

---

# .. or `property()`

```python
class Parrot(object):
    def __init__(self):
        self._voltage = 100000

    @property
    def voltage(self):
        return self._voltage

a = Parrot()
a.voltage

# 100000
```

---

# Decorators

```python
def my_decorator(some_function):

    def wrapper():
        print "Before"
        some_function()
        print "After"

    return wrapper

@my_decorator
def just_some_function():
    print("Wheee!")

just_some_function()

# Before
# Wheee!
# After

```

---

# Tools and References

* [Python's Data Model](https://docs.python.org/2/reference/datamodel.html)
* [Intermediate Python](http://intermediatepythonista.com/intermediate-pythonista-table-of-contents)
