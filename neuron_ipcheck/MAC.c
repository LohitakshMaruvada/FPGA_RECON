#include "MAC.h"
#include <stdio.h>
// #include <ap_fixed.h>

// typedef ap_fixed<32, 16> fixed_float;

float MAC(float a, float b, float c, int j)
{

    // #pragma HLS INTERFACE ap_ctrl_hs port=return
    // #pragma HLS INTERFACE ap_none port=input_N

    float tanh_in[13] = {0.549, 0.255, 0.125, 0.062, 0.031, 0.015, 0.0078, 0.0039, 0.0019, 0.00097, 0.00048, 0.00024};
    float x = a;
    float y = c;
    float z = b;
    float xold = x;
    float cosh;
    float sinh;
    float tanh = 7;
    int d;
    int select = 0;
    float pow = 1;
    float mac;
    select = 0;
    for (int i = 0; i < j; i++)
    {
        if (z > 0)
        {
            d = 1;
        }
        else
        {
            d = -1;
        }

        y = y + d * x * pow;
        z = z - d * pow;

        pow = pow / 2;
    }

    mac = y;
//    printf("mac: %f\n", mac);
    select = 1;

//    return mac;

    if (select)
    {
        x = 1.2705;
        y = 0;
        z = mac;

        pow = 0.5;
        for (int i = 0; i < j; i++)
        {
            if (z > 0)
            {
                d = 1;
            }
            else
            {
                d = -1;
            }
            xold = x;
            x = x + d * y * pow;
            y = y + d * xold * pow;
            z = z - d * tanh_in[i];

            pow = pow / 2;
        }
        cosh = x;
        sinh = y;
        tanh = y / x;


    }
    return tanh;
}

// int main()
// {
//     float result[2] = {0.0, 0.0};
//     MAC(0.5, 1.0, 1.0, 12, result);
//     printf("mac: %f, tanh: %f\n", result[0], result[1]);
// }
