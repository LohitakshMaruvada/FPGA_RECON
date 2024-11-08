#include "tanh.h"
#include <stdio.h>

float tanh_custom(float angle){
    float tanh_in[13] = {0.549, 0.255, 0.125, 0.062, 0.031, 0.015, 0.0078, 0.0039, 0.0019, 0.00097, 0.00048, 0.00024};
    float cosh, sinh, tan_hyperbolic;
    float x = 1.2705;
    float y = 0;
    float z = angle;
    float xold;

    float pow = 0.5;
    float d;
    for (int i = 0; i < 5; i++)
    {
        if (z > 0)
        {
            d = 1.0;
        }
        else
        {
            d = -1.0;
        }
        xold = x;
        x = x + d * y * pow;
        y = y + d * xold * pow;
        z = z - d * tanh_in[i];

        pow = pow / 2;
    }
    cosh = x;
    sinh = y;
    tan_hyperbolic = y / x;


    
    return tan_hyperbolic;
}


// int main(){
//     float angle = 0;
//     printf("%f", tanh_custom(angle));
// }