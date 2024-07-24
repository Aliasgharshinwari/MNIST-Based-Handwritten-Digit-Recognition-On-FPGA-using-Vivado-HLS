////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: neural_network_ap_fcmp_1_no_dsp.v
// /___/   /\     Timestamp: Fri Jun 21 10:55:42 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/VivadoProjects/MNIST_BasedHandwrittenDigitRecognition/solution1/impl/verilog/tmp/_cg/neural_network_ap_fcmp_1_no_dsp.ngc D:/VivadoProjects/MNIST_BasedHandwrittenDigitRecognition/solution1/impl/verilog/tmp/_cg/neural_network_ap_fcmp_1_no_dsp.v 
// Device	: 6slx9csg324-2
// Input file	: D:/VivadoProjects/MNIST_BasedHandwrittenDigitRecognition/solution1/impl/verilog/tmp/_cg/neural_network_ap_fcmp_1_no_dsp.ngc
// Output file	: D:/VivadoProjects/MNIST_BasedHandwrittenDigitRecognition/solution1/impl/verilog/tmp/_cg/neural_network_ap_fcmp_1_no_dsp.v
// # of Modules	: 1
// Design Name	: neural_network_ap_fcmp_1_no_dsp
// Xilinx        : d:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module neural_network_ap_fcmp_1_no_dsp (
  aclk, aclken, s_axis_a_tvalid, s_axis_b_tvalid, s_axis_operation_tvalid, m_axis_result_tvalid, s_axis_a_tdata, s_axis_b_tdata, 
s_axis_operation_tdata, m_axis_result_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aclk;
  input aclken;
  input s_axis_a_tvalid;
  input s_axis_b_tvalid;
  input s_axis_operation_tvalid;
  output m_axis_result_tvalid;
  input [31 : 0] s_axis_a_tdata;
  input [31 : 0] s_axis_b_tdata;
  input [7 : 0] s_axis_operation_tdata;
  output [7 : 0] m_axis_result_tdata;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000ad ;
  wire \blk00000001/sig000000ac ;
  wire \blk00000001/sig000000ab ;
  wire \blk00000001/sig000000aa ;
  wire \blk00000001/sig000000a9 ;
  wire \blk00000001/sig000000a8 ;
  wire \blk00000001/sig000000a7 ;
  wire \blk00000001/sig000000a6 ;
  wire \blk00000001/sig000000a5 ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig000000a3 ;
  wire \blk00000001/sig000000a2 ;
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig0000009b ;
  wire \blk00000001/sig0000009a ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000096 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000093 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire [1 : 1] NlwRenamedSig_OI_m_axis_result_tdata;
  assign
    m_axis_result_tdata[7] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[6] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[5] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[4] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[3] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[2] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[1] = NlwRenamedSig_OI_m_axis_result_tdata[1];
  LUT6 #(
    .INIT ( 64'h11FF10FF11101010 ))
  \blk00000001/blk0000006f  (
    .I0(\blk00000001/sig0000004e ),
    .I1(\blk00000001/sig00000050 ),
    .I2(\blk00000001/sig000000b4 ),
    .I3(s_axis_operation_tdata[4]),
    .I4(\blk00000001/sig000000b6 ),
    .I5(\blk00000001/sig000000b5 ),
    .O(\blk00000001/sig0000004b )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAAA2A ))
  \blk00000001/blk0000006e  (
    .I0(\blk00000001/sig00000056 ),
    .I1(s_axis_operation_tdata[3]),
    .I2(\blk00000001/sig0000004d ),
    .I3(\blk00000001/sig0000004c ),
    .I4(s_axis_operation_tdata[5]),
    .I5(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig000000b6 )
  );
  LUT6 #(
    .INIT ( 64'h9999999990909098 ))
  \blk00000001/blk0000006d  (
    .I0(s_axis_operation_tdata[3]),
    .I1(s_axis_operation_tdata[5]),
    .I2(\blk00000001/sig00000050 ),
    .I3(\blk00000001/sig00000052 ),
    .I4(\blk00000001/sig00000056 ),
    .I5(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig000000b5 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000082418 ))
  \blk00000001/blk0000006c  (
    .I0(\blk00000001/sig0000004d ),
    .I1(s_axis_operation_tdata[5]),
    .I2(s_axis_operation_tdata[3]),
    .I3(\blk00000001/sig0000004c ),
    .I4(\blk00000001/sig00000056 ),
    .I5(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig000000b4 )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk0000006b  (
    .I0(s_axis_b_tdata[1]),
    .I1(s_axis_a_tdata[1]),
    .I2(s_axis_a_tdata[0]),
    .I3(s_axis_b_tdata[0]),
    .O(\blk00000001/sig000000a3 )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk0000006a  (
    .I0(s_axis_b_tdata[3]),
    .I1(s_axis_a_tdata[3]),
    .I2(s_axis_a_tdata[2]),
    .I3(s_axis_b_tdata[2]),
    .O(\blk00000001/sig000000a1 )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk00000069  (
    .I0(s_axis_b_tdata[5]),
    .I1(s_axis_a_tdata[5]),
    .I2(s_axis_a_tdata[4]),
    .I3(s_axis_b_tdata[4]),
    .O(\blk00000001/sig0000009f )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk00000068  (
    .I0(s_axis_b_tdata[7]),
    .I1(s_axis_a_tdata[7]),
    .I2(s_axis_a_tdata[6]),
    .I3(s_axis_b_tdata[6]),
    .O(\blk00000001/sig0000009d )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk00000067  (
    .I0(s_axis_b_tdata[9]),
    .I1(s_axis_a_tdata[9]),
    .I2(s_axis_a_tdata[8]),
    .I3(s_axis_b_tdata[8]),
    .O(\blk00000001/sig0000009b )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk00000066  (
    .I0(s_axis_b_tdata[11]),
    .I1(s_axis_a_tdata[11]),
    .I2(s_axis_a_tdata[10]),
    .I3(s_axis_b_tdata[10]),
    .O(\blk00000001/sig00000099 )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk00000065  (
    .I0(s_axis_b_tdata[13]),
    .I1(s_axis_a_tdata[13]),
    .I2(s_axis_a_tdata[12]),
    .I3(s_axis_b_tdata[12]),
    .O(\blk00000001/sig00000097 )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk00000064  (
    .I0(s_axis_b_tdata[15]),
    .I1(s_axis_a_tdata[15]),
    .I2(s_axis_a_tdata[14]),
    .I3(s_axis_b_tdata[14]),
    .O(\blk00000001/sig00000095 )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk00000063  (
    .I0(s_axis_b_tdata[17]),
    .I1(s_axis_a_tdata[17]),
    .I2(s_axis_a_tdata[16]),
    .I3(s_axis_b_tdata[16]),
    .O(\blk00000001/sig00000093 )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk00000062  (
    .I0(s_axis_b_tdata[19]),
    .I1(s_axis_a_tdata[19]),
    .I2(s_axis_a_tdata[18]),
    .I3(s_axis_b_tdata[18]),
    .O(\blk00000001/sig00000091 )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk00000061  (
    .I0(s_axis_b_tdata[21]),
    .I1(s_axis_a_tdata[21]),
    .I2(s_axis_a_tdata[20]),
    .I3(s_axis_b_tdata[20]),
    .O(\blk00000001/sig0000008f )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk00000060  (
    .I0(s_axis_b_tdata[23]),
    .I1(s_axis_a_tdata[23]),
    .I2(s_axis_a_tdata[22]),
    .I3(s_axis_b_tdata[22]),
    .O(\blk00000001/sig0000008d )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk0000005f  (
    .I0(s_axis_b_tdata[25]),
    .I1(s_axis_a_tdata[25]),
    .I2(s_axis_a_tdata[24]),
    .I3(s_axis_b_tdata[24]),
    .O(\blk00000001/sig0000008b )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk0000005e  (
    .I0(s_axis_b_tdata[27]),
    .I1(s_axis_a_tdata[27]),
    .I2(s_axis_a_tdata[26]),
    .I3(s_axis_b_tdata[26]),
    .O(\blk00000001/sig00000089 )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk0000005d  (
    .I0(s_axis_b_tdata[29]),
    .I1(s_axis_a_tdata[29]),
    .I2(s_axis_a_tdata[28]),
    .I3(s_axis_b_tdata[28]),
    .O(\blk00000001/sig00000087 )
  );
  LUT4 #(
    .INIT ( 16'h44D4 ))
  \blk00000001/blk0000005c  (
    .I0(s_axis_a_tdata[31]),
    .I1(s_axis_b_tdata[31]),
    .I2(s_axis_a_tdata[30]),
    .I3(s_axis_b_tdata[30]),
    .O(\blk00000001/sig00000085 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk0000005b  (
    .I0(s_axis_a_tdata[1]),
    .I1(s_axis_b_tdata[1]),
    .I2(s_axis_a_tdata[0]),
    .I3(s_axis_b_tdata[0]),
    .O(\blk00000001/sig000000a4 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk0000005a  (
    .I0(s_axis_a_tdata[21]),
    .I1(s_axis_b_tdata[21]),
    .I2(s_axis_a_tdata[20]),
    .I3(s_axis_b_tdata[20]),
    .O(\blk00000001/sig00000090 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk00000059  (
    .I0(s_axis_a_tdata[23]),
    .I1(s_axis_b_tdata[23]),
    .I2(s_axis_a_tdata[22]),
    .I3(s_axis_b_tdata[22]),
    .O(\blk00000001/sig0000008e )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk00000058  (
    .I0(s_axis_a_tdata[25]),
    .I1(s_axis_b_tdata[25]),
    .I2(s_axis_a_tdata[24]),
    .I3(s_axis_b_tdata[24]),
    .O(\blk00000001/sig0000008c )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk00000057  (
    .I0(s_axis_a_tdata[27]),
    .I1(s_axis_b_tdata[27]),
    .I2(s_axis_a_tdata[26]),
    .I3(s_axis_b_tdata[26]),
    .O(\blk00000001/sig0000008a )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk00000056  (
    .I0(s_axis_a_tdata[29]),
    .I1(s_axis_b_tdata[29]),
    .I2(s_axis_a_tdata[28]),
    .I3(s_axis_b_tdata[28]),
    .O(\blk00000001/sig00000088 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk00000055  (
    .I0(s_axis_a_tdata[31]),
    .I1(s_axis_b_tdata[31]),
    .I2(s_axis_a_tdata[30]),
    .I3(s_axis_b_tdata[30]),
    .O(\blk00000001/sig00000086 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk00000054  (
    .I0(s_axis_a_tdata[3]),
    .I1(s_axis_b_tdata[3]),
    .I2(s_axis_a_tdata[2]),
    .I3(s_axis_b_tdata[2]),
    .O(\blk00000001/sig000000a2 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk00000053  (
    .I0(s_axis_a_tdata[5]),
    .I1(s_axis_b_tdata[5]),
    .I2(s_axis_a_tdata[4]),
    .I3(s_axis_b_tdata[4]),
    .O(\blk00000001/sig000000a0 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk00000052  (
    .I0(s_axis_a_tdata[7]),
    .I1(s_axis_b_tdata[7]),
    .I2(s_axis_a_tdata[6]),
    .I3(s_axis_b_tdata[6]),
    .O(\blk00000001/sig0000009e )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk00000051  (
    .I0(s_axis_a_tdata[9]),
    .I1(s_axis_b_tdata[9]),
    .I2(s_axis_a_tdata[8]),
    .I3(s_axis_b_tdata[8]),
    .O(\blk00000001/sig0000009c )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk00000050  (
    .I0(s_axis_a_tdata[11]),
    .I1(s_axis_b_tdata[11]),
    .I2(s_axis_a_tdata[10]),
    .I3(s_axis_b_tdata[10]),
    .O(\blk00000001/sig0000009a )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk0000004f  (
    .I0(s_axis_a_tdata[13]),
    .I1(s_axis_b_tdata[13]),
    .I2(s_axis_a_tdata[12]),
    .I3(s_axis_b_tdata[12]),
    .O(\blk00000001/sig00000098 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk0000004e  (
    .I0(s_axis_a_tdata[15]),
    .I1(s_axis_b_tdata[15]),
    .I2(s_axis_a_tdata[14]),
    .I3(s_axis_b_tdata[14]),
    .O(\blk00000001/sig00000096 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk0000004d  (
    .I0(s_axis_a_tdata[17]),
    .I1(s_axis_b_tdata[17]),
    .I2(s_axis_a_tdata[16]),
    .I3(s_axis_b_tdata[16]),
    .O(\blk00000001/sig00000094 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk0000004c  (
    .I0(s_axis_a_tdata[19]),
    .I1(s_axis_b_tdata[19]),
    .I2(s_axis_a_tdata[18]),
    .I3(s_axis_b_tdata[18]),
    .O(\blk00000001/sig00000092 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk0000004b  (
    .I0(s_axis_a_tdata[29]),
    .I1(s_axis_a_tdata[30]),
    .O(\blk00000001/sig00000082 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000001/blk0000004a  (
    .I0(s_axis_a_tdata[23]),
    .I1(s_axis_a_tdata[24]),
    .I2(s_axis_a_tdata[25]),
    .I3(s_axis_a_tdata[26]),
    .I4(s_axis_a_tdata[27]),
    .I5(s_axis_a_tdata[28]),
    .O(\blk00000001/sig00000081 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk00000049  (
    .I0(s_axis_b_tdata[29]),
    .I1(s_axis_b_tdata[30]),
    .O(\blk00000001/sig00000080 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \blk00000001/blk00000048  (
    .I0(s_axis_b_tdata[23]),
    .I1(s_axis_b_tdata[24]),
    .I2(s_axis_b_tdata[25]),
    .I3(s_axis_b_tdata[26]),
    .I4(s_axis_b_tdata[27]),
    .I5(s_axis_b_tdata[28]),
    .O(\blk00000001/sig0000007f )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \blk00000001/blk00000047  (
    .I0(s_axis_a_tdata[18]),
    .I1(s_axis_a_tdata[19]),
    .I2(s_axis_a_tdata[20]),
    .I3(s_axis_a_tdata[21]),
    .I4(s_axis_a_tdata[22]),
    .O(\blk00000001/sig00000078 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000001/blk00000046  (
    .I0(s_axis_a_tdata[0]),
    .I1(s_axis_a_tdata[1]),
    .I2(s_axis_a_tdata[2]),
    .I3(s_axis_a_tdata[3]),
    .I4(s_axis_a_tdata[4]),
    .I5(s_axis_a_tdata[5]),
    .O(\blk00000001/sig00000077 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000001/blk00000045  (
    .I0(s_axis_a_tdata[6]),
    .I1(s_axis_a_tdata[7]),
    .I2(s_axis_a_tdata[8]),
    .I3(s_axis_a_tdata[9]),
    .I4(s_axis_a_tdata[10]),
    .I5(s_axis_a_tdata[11]),
    .O(\blk00000001/sig00000076 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000001/blk00000044  (
    .I0(s_axis_a_tdata[12]),
    .I1(s_axis_a_tdata[13]),
    .I2(s_axis_a_tdata[14]),
    .I3(s_axis_a_tdata[15]),
    .I4(s_axis_a_tdata[16]),
    .I5(s_axis_a_tdata[17]),
    .O(\blk00000001/sig00000075 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \blk00000001/blk00000043  (
    .I0(s_axis_b_tdata[18]),
    .I1(s_axis_b_tdata[19]),
    .I2(s_axis_b_tdata[20]),
    .I3(s_axis_b_tdata[21]),
    .I4(s_axis_b_tdata[22]),
    .O(\blk00000001/sig00000074 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000001/blk00000042  (
    .I0(s_axis_b_tdata[0]),
    .I1(s_axis_b_tdata[1]),
    .I2(s_axis_b_tdata[2]),
    .I3(s_axis_b_tdata[3]),
    .I4(s_axis_b_tdata[4]),
    .I5(s_axis_b_tdata[5]),
    .O(\blk00000001/sig00000073 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000001/blk00000041  (
    .I0(s_axis_b_tdata[6]),
    .I1(s_axis_b_tdata[7]),
    .I2(s_axis_b_tdata[8]),
    .I3(s_axis_b_tdata[9]),
    .I4(s_axis_b_tdata[10]),
    .I5(s_axis_b_tdata[11]),
    .O(\blk00000001/sig00000072 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000001/blk00000040  (
    .I0(s_axis_b_tdata[12]),
    .I1(s_axis_b_tdata[13]),
    .I2(s_axis_b_tdata[14]),
    .I3(s_axis_b_tdata[15]),
    .I4(s_axis_b_tdata[16]),
    .I5(s_axis_b_tdata[17]),
    .O(\blk00000001/sig00000071 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \blk00000001/blk0000003f  (
    .I0(s_axis_a_tdata[27]),
    .I1(s_axis_a_tdata[28]),
    .I2(s_axis_a_tdata[29]),
    .I3(s_axis_a_tdata[30]),
    .O(\blk00000001/sig0000006e )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000001/blk0000003e  (
    .I0(s_axis_b_tdata[23]),
    .I1(s_axis_b_tdata[24]),
    .I2(s_axis_b_tdata[25]),
    .I3(s_axis_b_tdata[26]),
    .I4(s_axis_b_tdata[27]),
    .I5(s_axis_b_tdata[28]),
    .O(\blk00000001/sig0000006d )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \blk00000001/blk0000003d  (
    .I0(s_axis_b_tdata[29]),
    .I1(s_axis_b_tdata[30]),
    .I2(s_axis_a_tdata[23]),
    .I3(s_axis_a_tdata[24]),
    .I4(s_axis_a_tdata[25]),
    .I5(s_axis_a_tdata[26]),
    .O(\blk00000001/sig0000006c )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \blk00000001/blk0000003c  (
    .I0(s_axis_a_tdata[0]),
    .I1(s_axis_b_tdata[0]),
    .I2(s_axis_a_tdata[2]),
    .I3(s_axis_b_tdata[2]),
    .I4(s_axis_a_tdata[1]),
    .I5(s_axis_b_tdata[1]),
    .O(\blk00000001/sig00000061 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \blk00000001/blk0000003b  (
    .I0(s_axis_a_tdata[31]),
    .I1(s_axis_b_tdata[31]),
    .I2(s_axis_a_tdata[30]),
    .I3(s_axis_b_tdata[30]),
    .O(\blk00000001/sig00000057 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \blk00000001/blk0000003a  (
    .I0(s_axis_a_tdata[3]),
    .I1(s_axis_b_tdata[3]),
    .I2(s_axis_a_tdata[5]),
    .I3(s_axis_b_tdata[5]),
    .I4(s_axis_a_tdata[4]),
    .I5(s_axis_b_tdata[4]),
    .O(\blk00000001/sig00000060 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \blk00000001/blk00000039  (
    .I0(s_axis_a_tdata[6]),
    .I1(s_axis_b_tdata[6]),
    .I2(s_axis_a_tdata[8]),
    .I3(s_axis_b_tdata[8]),
    .I4(s_axis_a_tdata[7]),
    .I5(s_axis_b_tdata[7]),
    .O(\blk00000001/sig0000005f )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \blk00000001/blk00000038  (
    .I0(s_axis_a_tdata[10]),
    .I1(s_axis_b_tdata[10]),
    .I2(s_axis_a_tdata[9]),
    .I3(s_axis_b_tdata[9]),
    .I4(s_axis_a_tdata[11]),
    .I5(s_axis_b_tdata[11]),
    .O(\blk00000001/sig0000005e )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \blk00000001/blk00000037  (
    .I0(s_axis_a_tdata[12]),
    .I1(s_axis_b_tdata[12]),
    .I2(s_axis_a_tdata[14]),
    .I3(s_axis_b_tdata[14]),
    .I4(s_axis_a_tdata[13]),
    .I5(s_axis_b_tdata[13]),
    .O(\blk00000001/sig0000005d )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \blk00000001/blk00000036  (
    .I0(s_axis_a_tdata[15]),
    .I1(s_axis_b_tdata[15]),
    .I2(s_axis_a_tdata[17]),
    .I3(s_axis_b_tdata[17]),
    .I4(s_axis_a_tdata[16]),
    .I5(s_axis_b_tdata[16]),
    .O(\blk00000001/sig0000005c )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \blk00000001/blk00000035  (
    .I0(s_axis_a_tdata[18]),
    .I1(s_axis_b_tdata[18]),
    .I2(s_axis_a_tdata[20]),
    .I3(s_axis_b_tdata[20]),
    .I4(s_axis_a_tdata[19]),
    .I5(s_axis_b_tdata[19]),
    .O(\blk00000001/sig0000005b )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \blk00000001/blk00000034  (
    .I0(s_axis_a_tdata[21]),
    .I1(s_axis_b_tdata[21]),
    .I2(s_axis_a_tdata[23]),
    .I3(s_axis_b_tdata[23]),
    .I4(s_axis_a_tdata[22]),
    .I5(s_axis_b_tdata[22]),
    .O(\blk00000001/sig0000005a )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \blk00000001/blk00000033  (
    .I0(s_axis_a_tdata[24]),
    .I1(s_axis_b_tdata[24]),
    .I2(s_axis_a_tdata[26]),
    .I3(s_axis_b_tdata[26]),
    .I4(s_axis_a_tdata[25]),
    .I5(s_axis_b_tdata[25]),
    .O(\blk00000001/sig00000059 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \blk00000001/blk00000032  (
    .I0(s_axis_a_tdata[27]),
    .I1(s_axis_b_tdata[27]),
    .I2(s_axis_a_tdata[29]),
    .I3(s_axis_b_tdata[29]),
    .I4(s_axis_a_tdata[28]),
    .I5(s_axis_b_tdata[28]),
    .O(\blk00000001/sig00000058 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk00000031  (
    .I0(s_axis_a_tdata[31]),
    .I1(s_axis_b_tdata[31]),
    .O(\blk00000001/sig0000004c )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \blk00000001/blk00000030  (
    .I0(s_axis_a_tvalid),
    .I1(s_axis_b_tvalid),
    .I2(s_axis_operation_tvalid),
    .O(\blk00000001/sig00000048 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002f  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000048 ),
    .Q(m_axis_result_tvalid)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000004b ),
    .Q(m_axis_result_tdata[0])
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .DI(\blk00000001/sig000000a3 ),
    .S(\blk00000001/sig000000a4 ),
    .O(\blk00000001/sig000000b3 )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig000000b3 ),
    .DI(\blk00000001/sig000000a1 ),
    .S(\blk00000001/sig000000a2 ),
    .O(\blk00000001/sig000000b2 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig000000b2 ),
    .DI(\blk00000001/sig0000009f ),
    .S(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig000000b1 )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig000000b1 ),
    .DI(\blk00000001/sig0000009d ),
    .S(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig000000b0 )
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig000000b0 ),
    .DI(\blk00000001/sig0000009b ),
    .S(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig000000af )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig000000af ),
    .DI(\blk00000001/sig00000099 ),
    .S(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig000000ae )
  );
  MUXCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig000000ae ),
    .DI(\blk00000001/sig00000097 ),
    .S(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig000000ad )
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig000000ad ),
    .DI(\blk00000001/sig00000095 ),
    .S(\blk00000001/sig00000096 ),
    .O(\blk00000001/sig000000ac )
  );
  MUXCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig000000ac ),
    .DI(\blk00000001/sig00000093 ),
    .S(\blk00000001/sig00000094 ),
    .O(\blk00000001/sig000000ab )
  );
  MUXCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig000000ab ),
    .DI(\blk00000001/sig00000091 ),
    .S(\blk00000001/sig00000092 ),
    .O(\blk00000001/sig000000aa )
  );
  MUXCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig000000aa ),
    .DI(\blk00000001/sig0000008f ),
    .S(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig000000a9 )
  );
  MUXCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig000000a9 ),
    .DI(\blk00000001/sig0000008d ),
    .S(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig000000a8 )
  );
  MUXCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig000000a8 ),
    .DI(\blk00000001/sig0000008b ),
    .S(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig000000a7 )
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig000000a7 ),
    .DI(\blk00000001/sig00000089 ),
    .S(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig000000a6 )
  );
  MUXCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig000000a6 ),
    .DI(\blk00000001/sig00000087 ),
    .S(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig000000a5 )
  );
  MUXCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig000000a5 ),
    .DI(\blk00000001/sig00000085 ),
    .S(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig0000004d )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig0000004f ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig00000084 )
  );
  MUXCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig00000084 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig0000004e )
  );
  MUXCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig00000051 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig00000083 )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000083 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig00000050 )
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .DI(\blk00000001/sig00000049 ),
    .S(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig0000007e )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig0000007e ),
    .DI(\blk00000001/sig00000049 ),
    .S(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig0000007d )
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig0000007d ),
    .DI(\blk00000001/sig00000049 ),
    .S(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig0000007c )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig0000007c ),
    .DI(\blk00000001/sig00000049 ),
    .S(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig0000004f )
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .DI(\blk00000001/sig00000049 ),
    .S(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000007b )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000007b ),
    .DI(\blk00000001/sig00000049 ),
    .S(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig0000007a )
  );
  MUXCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig0000007a ),
    .DI(\blk00000001/sig00000049 ),
    .S(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig00000079 )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000079 ),
    .DI(\blk00000001/sig00000049 ),
    .S(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000049 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig00000070 )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000070 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig0000006f )
  );
  MUXCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig0000006f ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig00000052 )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000049 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig00000061 ),
    .O(\blk00000001/sig0000006b )
  );
  MUXCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig0000006b ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig00000060 ),
    .O(\blk00000001/sig0000006a )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig0000006a ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig0000005f ),
    .O(\blk00000001/sig00000069 )
  );
  MUXCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000069 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig0000005e ),
    .O(\blk00000001/sig00000068 )
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000068 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig00000067 )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000067 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig0000005c ),
    .O(\blk00000001/sig00000066 )
  );
  MUXCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000066 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000065 )
  );
  MUXCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000065 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000064 )
  );
  MUXCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000064 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000063 )
  );
  MUXCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000063 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000062 )
  );
  MUXCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000062 ),
    .DI(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000056 )
  );
  GND   \blk00000001/blk00000003  (
    .G(NlwRenamedSig_OI_m_axis_result_tdata[1])
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig00000049 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
