# Reopen in debug mode
ood

# Make analysis
aaa

# Break at beginning of function
db sym.my_func

pdf @ sym.my_func

# Continue ..
dc

!echo
!echo 'Stack:'
px @ `dr?esp` & 0xFFFFFFF0 - 0x40
!echo
!echo 'EIP:'
dr?eip
!echo 'ESP:'
dr?esp
!echo 'EBP:'
dr?ebp
!echo

# Execute the function prologue and stack reserving for local variables
pd 0x3 @ `dr?eip`
ds
ds
ds

# Print stack and function
!echo
!echo 'Stack:'
px @ `dr?esp` & 0xFFFFFFF0 - 0x20
!echo
!echo 'EIP:'
dr?eip
!echo 'ESP:'
dr?esp
!echo 'EBP:'
dr?ebp
!echo
