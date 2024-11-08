#include <stdio.h>

#include "tanh.h"

int main(){

    float angles[5] = { 0.1, 0.3, 0.6, 0.5, 1};
    int pass;
    int i;
    float tan_hyperbolic;
    float refOut[5] = {0.074257, 0.314660, 0.526449, 0.472584, 0.771579};

    for ( i =0; i < 5; i++)
    {
        tan_hyperbolic = tanh_custom(angles[i]);
        fprintf(stdout, "  %f  %f  \n", angles[i], tan_hyperbolic);

        // Test the output against expected results
        if (abs(tan_hyperbolic - refOut[i]) >= 1) {
                    pass = 0; // Mark as failed
                }

    }


    if (pass)
    	{
    		fprintf(stdout, "----------Pass!------------\n");
    		return 0;
    	}
    	else
    	{
    		fprintf(stderr, "----------Fail!------------\n");
    		return 0;
    	}


}

