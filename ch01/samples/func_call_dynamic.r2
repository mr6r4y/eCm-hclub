# Reopen in debug mode
ood

# Make analysis
aaa

# Break at beginning of function
db sym.my_func

pdf @ sym.my_func

# Continue ..
dc

?e
?e 'Stack:'
px @ `dr?esp` & 0xFFFFFFF0 - 0x40
?e
?e 'EIP:'
dr?eip
?e 'ESP:'
dr?esp
?e 'EBP:'
dr?ebp
?e

# Execute the function prologue and stack reserving for local variables
pd 0x3 @ `dr?eip`
ds
ds
ds

# Print stack and function
?e
?e 'Stack:'
px @ `dr?esp` & 0xFFFFFFF0 - 0x20
?e
?e 'EIP:'
dr?eip
?e 'ESP:'
dr?esp
?e 'EBP:'
dr?ebp
?e
