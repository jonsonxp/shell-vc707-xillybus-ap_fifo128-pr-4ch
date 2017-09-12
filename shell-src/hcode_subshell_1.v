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


module hcode_subshell_1( //pragma_ip_subshell_name
        user_clk_100,
        user_clk_150,
        user_clk_200,
        user_clk_250,
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
    
    wire   ip_clk_1;
    wire   ip_rst_n_1;
    wire  [127:0] in_r_dout_1;
    wire   in_r_empty_n_1;
    wire   in_r_read_1;
    wire  [127:0] out_r_din_1;
    wire   out_r_full_1;
    wire   out_r_write_1;
    
    assign ip_rst_n_1 = ip_rst_n;
    assign in_r_dout_1 = in_r_dout;
    assign in_r_empty_n_1 = in_r_empty_n;
    assign in_r_read = in_r_read_1;
    assign out_r_din = out_r_din_1;
    assign out_r_full_1 = out_r_full;
    assign out_r_write = out_r_write_1;
    
    assign ip_clk_1 = user_clk_250;//pragma_ip_clk_1
      
    ip_loopback_1 ip_loopback_0 (.ap_clk(ip_clk_1), .ap_rst(~ip_rst_n_1), .in_V_V_dout(in_r_dout_1), .in_V_V_empty_n(in_r_empty_n_1), .in_V_V_read(in_r_read_1), .out_V_V_din(out_r_din_1), .out_V_V_full_n(!out_r_full_1), .out_V_V_write(out_r_write_1)); //pragma_ip_wrapper_1
endmodule
