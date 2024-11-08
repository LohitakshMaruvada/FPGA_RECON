#include <stdio.h>

#include "tanh_sigmoid.h"

int main(){

    float angles[5] = { 0.1, 0.3, 0.6, 0.5, 1};
    int pass;
    int i;
    int sel = 1;
    float neuron_output;
    float refOut[5] = {0.074257, 0.314660, 0.526449, 0.472584, 0.771579};

    for ( i =0; i < 5; i++)
    {
        neuron_output = neuron(angles[i], sel);
        fprintf(stdout, "  %f  %f  \n", angles[i], neuron_output);

        // Test the output against expected results
        if (abs(neuron_output - refOut[i]) >= 1) {
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

