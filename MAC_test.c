#include <stdio.h>
#include "MAC.h"

int main(){
    float a[5] = {0.5, 0.2, 0.3, 0.4, 0.5};
    float b[5] = {1, 2, 3, 2, 1};
    float c[5] = {0, 0.5, 0.3, 0.2, 0.3};
    int j;
    float tanh;
//    float refOut[5] = {0.462, 0.716, 0.833, 0.761, 0.66};
    float refOut[5] = {0.5, 0.9, 1.2, 1.0, 0.8};
    int pass;
    float epsilon = 10000;

//    a = 0.0;
//    b = 0.5;
//    c = 0.0;
    j = 5;
    pass = 1;

    for (int i=0;i<5;i++){
        tanh = MAC(a[i],b[i],c[i],j);
        printf("final tanh: %f\n", tanh);
    // Test the output against expected results
        if (abs(tanh-refOut[i])>epsilon){
            pass = 0;
        }
		
        
//        a = a + 2.0;
    }


    if (pass)
    	{
    		fprintf(stdout, "----------Pass!------------\n");
    		return 0;
    	}
    	else
    	{
    		fprintf(stderr, "----------Fail!------------\n");
    		return 1;
    	}
}
