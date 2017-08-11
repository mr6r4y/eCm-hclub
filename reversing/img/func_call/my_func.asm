push ebp
mov ebp, esp
sub esp, 0x18
mov dword [local_14h], 1
mov dword [local_10h], 2
mov dword [local_ch], 3
push dword [local_ch]
push dword [local_10h]
push dword [local_14h]
push str.Locals:__d___d___d_n ; 0x8048530 ; "Locals: %d, %d, %d."
call sym.imp.printf         ; int printf(const char *format)
add esp, 0x10
push dword [arg_10h]
push dword [arg_ch]
push dword [arg_8h]
push str.Arguments:__d___d___d_n ; 0x8048544 ; "Arguments: %d, %d, %d."
call sym.imp.printf         ; int printf(const char *format)
add esp, 0x10
mov edx, dword [local_14h]
mov eax, dword [local_10h]
add edx, eax
mov eax, dword [local_ch]
add edx, eax
mov eax, dword [arg_8h]     ; [0x8:4]=0
add edx, eax
mov eax, dword [arg_ch]     ; [0xc:4]=0
add edx, eax
mov eax, dword [arg_10h]    ; [0x10:4]=0x30002
add eax, edx
leave
ret