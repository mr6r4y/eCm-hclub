# Here our job is very easy.
# We have a hardcoded string 

aaa

?e
?e 'The more important part of the code:'
pd 0xa @ 0x08048448
?e

?e
?e 'Hardcoded password as string:'
pd 0x1 @ 0x0804845e
?e

?e
?e 'The password is:'
ps @ str.250382
?e