module mux2_structural (output logic y, input logic a, b, s);

// Write HDL here
//Internal Wires
wire term0, term3, not_s;

//Continuous Assignment (order does not matter)
assign not_s = ~s;
assign term0 = not_s & a;
assign term3 = s & b;
assign y = term0 | term3;

endmodule


