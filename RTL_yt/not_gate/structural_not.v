module structural_not(a, y);
    input a;
    output y;

    not(y, a); //not block is structural which is present in verilog


endmodule