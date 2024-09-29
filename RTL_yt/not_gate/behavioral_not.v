module behavioral_not(a, y);
    input a;
    output reg y;

    always @(a)
    y = ~a;
endmodule