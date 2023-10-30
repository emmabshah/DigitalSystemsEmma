module uop_nxor_tb;
reg aa; reg bb; reg yy;
uop_nxor u1 (yy, aa, bb);
initial
begin
aa = 1'b0;
bb = 1'b0;
#50ns;
aa = 1'b0; 
bb = 1'b1;
#50ns;
aa = 1'b1; 
bb = 1'b0;
#50ns;
aa = 1'b1; 
bb = 1'b1;
#50ns;
$display("DONE");
end

endmodule

module uop_nxor_tb2; 
reg aa; reg bb; reg yy; reg [1:0] mt; 
uop_nxor u1 (yy,aa,bb);
initial begin 
 assign {aa,bb} = mt; //Any change to mt will have an immediate effect on aa and bb 
 mt = 0; 
 #50ps assert (yy==1) $display("Passed %b", mt); else $error("Failed for %b", mt); 
 mt = 1;
 #50ps assert (yy==0) $display("Passed %b", mt); else $error("Failed for %b", mt);
 mt = 2; 
 #50ps assert (yy==0) $display("Passed %b", mt); else $error("Failed for %b", mt); 
 mt = 3;
 #50ps assert (yy==1) $display("Passed %b", mt); else $error("Failed for %b", mt); 
 #50ps; 
end endmodule