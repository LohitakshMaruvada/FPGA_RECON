module BitShift(
    input sel,
    input[15:0] unshifted,
    output reg [31:0] shifted
    );
    
    reg [15:0]temp;
    
    always @(*) begin
        //if sel is 0, tanh function
        //if sel is 1, sigmoid function
        
        shifted[31:16] = 0;
        shifted[15:0] = unshifted[15:0];

        if (sel == 0) begin
            //if sinh is negative
            if(unshifted[15]==1) begin
                //temp is the magnitude of the negative value of sinh
                temp = ~unshifted;
                temp = temp + 1;
                
                shifted[31:16] = 0;
                shifted[15:0] = temp;
                
                //converting shifted to negative value i.e. taking 2s complement
                shifted = ~shifted;
                shifted = shifted + 1;
            end
        end
    end
       
endmodule
