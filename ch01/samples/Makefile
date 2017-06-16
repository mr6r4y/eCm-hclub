all: empty_main empty_main_x86 condjmp condjmp_x86 loop1 loop1_x86 many_params many_params_x86 callee_params callee_params_x86 func_call func_call_x86 local_pointer local_pointer_x86

empty_main: empty_main.c
	gcc -o $@ $^

empty_main_x86: empty_main.c
	gcc -m32 -o $@ $^

condjmp: condjmp.c
	gcc -o $@ $^

condjmp_x86: condjmp.c
	gcc -m32 -o $@ $^

loop1: loop1.c
	gcc -o $@ $^

loop1_x86: loop1.c
	gcc -m32 -o $@ $^

many_params: many_params.c
	gcc -o $@ $^

many_params_x86: many_params.c
	gcc -m32 -o $@ $^

callee_params: callee_params.c
	gcc -o $@ $^

callee_params_x86: callee_params.c
	gcc -m32 -o $@ $^

func_call: func_call.c
	gcc -o $@ $^

func_call_x86: func_call.c
	gcc -m32 -o $@ $^

local_pointer: local_pointer.c
	gcc -o $@ $^

local_pointer_x86: local_pointer.c
	gcc -m32 -o $@ $^

clean:
	rm empty_main empty_main_x86 condjmp condjmp_x86 loop1 loop1_x86 many_params many_params_x86 callee_params callee_params_x86 func_call func_call_x86 local_pointer local_pointer_x86


.PHONY: clean all
