aaa

# There is a catch here. The scanf("%d", ..) accepts a string
# that is converted to an integer and then compared to a hardcoded integer.
?e
?e 'The interesting part is:'
pd 0x5 @ 0x08048418
?e

# The password is hardcoded in the 'cmp' instruction
?e
?e 'Hardcoded password:'
pd 0x1 @ 0x0804842b
?e

# See hex representation
?e
?e  'Lets see what hex at 0x0804842b'
px 0x10 @ 0x0804842b
?e

# Craft a hex-to-dec convert and a print command
?e 'The password is:'
?vi `pxh @ 0x0804842b+3~[1]`
?e