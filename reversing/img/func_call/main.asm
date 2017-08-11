lea ecx, [local_4h]
and esp, 0xfffffff0
push dword [ecx - 4]
push ebp
mov ebp, esp
push ecx
sub esp, 0x14
sub esp, 4
push 6
push 5
push 4
call sym.my_func
add esp, 0x10
mov dword [local_ch], eax
mov eax, 0
mov ecx, dword [local_4h_2]
leave
lea esp, [ecx - 4]
ret