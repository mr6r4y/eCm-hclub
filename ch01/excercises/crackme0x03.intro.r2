aaa

!echo 'The main():'
pdf @ main
!echo

!echo 'The test():'
pdf @ sym.test
!echo

!echo
!echo 'See those encoded strings?:'
pd 0x1 @  sym.test + 0xe
ps @ str.Lqydolg_Sdvvzrug_
!echo
pd 0x1 @ sym.test + 0x1c
ps @ str.Sdvvzrug_RN______ 
!echo
!echo

!echo 'Crack this one:'
pdf @ sym.shift
!echo
