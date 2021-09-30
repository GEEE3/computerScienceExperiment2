`timescale 1ns / 1ps

/*
Company: Sogang University
Engineer: G_EEE3
Create Date: 2021/09/30 15:42:38
Module Name: four_input_aoi_gate
*/

module four_input_aoi_gate_tb;

reg aa, bb, cc, dd;
wire x, y, z;

four_input_aoi_gate u_four_input_aoi_gate (
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .x(x),
    .y(y),
    .z(z)
);

initial aa = 0'b0;
initial bb = 0'b0;
initial cc = 0'b0;
initial dd = 0'b0;

always aa = #50 ~aa;
always bb = #100 ~bb;
always cc = #200 ~cc;
always dd = #400 ~dd;

initial begin
#1000
$finish;
end

endmodule