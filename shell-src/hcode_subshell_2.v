`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2017 10:09:29 AM
// Design Name: 
// Module Name: subshell
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hcode_subshell_2( //pragma_ip_subshell_name
        user_clk_100,
        user_clk_150,
        user_clk_200,
        user_clk_250,
	user_clk_out,
        ip_rst_n,
        in_r_dout,
        in_r_empty_n,
        in_r_read,
        out_r_din,
        out_r_full,
        out_r_write
);

    input   user_clk_100;
    input   user_clk_150;
    input   user_clk_200;
    input   user_clk_250;
    output [1:0] user_clk_out;
    input   ip_rst_n;
    input  [127:0] in_r_dout;
    input   in_r_empty_n;
    output   in_r_read;
    output  [127:0] out_r_din;
    input   out_r_full;
    output   out_r_write;
    
    wire    user_clk_100;
    wire    user_clk_150;
    wire    user_clk_200;
    wire    user_clk_250;
    
    wire   ip_clk_2;
    wire   ip_rst_n_2;
    wire  [127:0] in_r_dout_2;
    wire   in_r_empty_n_2;
    wire   in_r_read_2;
    wire  [127:0] out_r_din_2;
    wire   out_r_full_2;
    wire   out_r_write_2;
    
    assign ip_rst_n_2 = ip_rst_n;
    assign in_r_dout_2 = in_r_dout;
    assign in_r_empty_n_2 = in_r_empty_n;
    assign in_r_read = in_r_read_2;
    assign out_r_din = out_r_din_2;
    assign out_r_full_2 = out_r_full;
    assign out_r_write = out_r_write_2;
    
    assign ip_clk_2 = user_clk_100;//pragma_ip_clk_2
    assign user_clk_out = 2'b00;//pragma_ip_clk_2_out
      
    ip_loopback_2 ip_loopback_2_0 (.ap_clk(ip_clk_2), .ap_rst(~ip_rst_n_2), .in_V_V_dout(in_r_dout_2), .in_V_V_empty_n(in_r_empty_n_2), .in_V_V_read(in_r_read_2), .out_V_V_din(out_r_din_2), .out_V_V_full_n(!out_r_full_2), .out_V_V_write(out_r_write_2)); //pragma_ip_wrapper_2
endmodule
