# Here our job is very easy.
# We have a hardcoded string 

aaa

!echo
!echo 'The more important part of the code:'
pd 0xa @ 0x08048448
!echo

!echo
!echo 'Hardcoded password as string:'
pd 0x1 @ 0x0804845e
!echo

!echo
!echo 'The password is:'
ps @ str.250382
!echo