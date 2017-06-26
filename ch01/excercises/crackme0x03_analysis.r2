s main

afvn local_4h my_passwd
afvn local_4h_2 my_passwd_ptr
afvn local_8h tmp__calculated_passwd
afvn local_ch calculated_passwd

CCu sym.test.arg1 @ main + 0x6a
CCu sym.test.arg0 @ main + 0x71

s sym.test

afvn arg_8h int1
afvn arg_ch int2

s sym.shift

afvn arg_8h encoded_str
afvn local_7ch counter
afvn local_78h decoded_str

CCu char shift algo @ sym.shift + 0x31
CCu increment counter @ sym.shift + 0x35

s main
