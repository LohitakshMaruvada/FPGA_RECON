#include <stdio.h>
#include "div.h"

int main(){

	int a,b;
	float ans;

	a = 10;
	b = 1600;
	ans = div(a,b);

	printf("ans = %f",ans);

	return 0;
}
