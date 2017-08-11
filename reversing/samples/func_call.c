#include <stdio.h>

int my_func(int arg1, int arg2, int arg3)
{
	int loc1 = 1;
	int loc2 = 2;
	int loc3 = 3;

	printf("Locals: %d, %d, %d\n", loc1, loc2, loc3);
	printf("Arguments: %d, %d, %d\n", arg1, arg2, arg3);

	return loc1 + loc2 + loc3 + arg1 + arg2 + arg3;
};

int main()
{
	int sum;
	sum = my_func(4, 5, 6);
};
