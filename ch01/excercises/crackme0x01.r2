aaa

# There is a catch here. The scanf("%d", ..) accepts a string
# that is converted to an integer and then compared to a hardcoded integer.
!echo
!echo 'The interesting part is:'
pd 0x5 @ 0x08048418
!echo

# The password is hardcoded in the 'cmp' instruction
!echo
!echo 'Hardcoded password:'
pd 0x1 @ 0x0804842b
!echo

# See hex representation
!echo
!echo  'Lets see what hex at 0x0804842b'
px 0x10 @ 0x0804842b
!echo

# Craft a hex-to-dec convert and a print command
!echo 'The password is:'
?vi `pxh @ 0x0804842b+3~[1]`
!echo