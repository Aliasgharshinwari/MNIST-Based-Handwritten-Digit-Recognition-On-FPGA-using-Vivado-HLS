////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: neural_network_ap_sitofp_3_no_dsp.v
// /___/   /\     Timestamp: Fri Jun 21 11:02:02 2024
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/VivadoProjects/MNIST_BasedHandwrittenDigitRecognition/solution1/impl/verilog/tmp/_cg/neural_network_ap_sitofp_3_no_dsp.ngc D:/VivadoProjects/MNIST_BasedHandwrittenDigitRecognition/solution1/impl/verilog/tmp/_cg/neural_network_ap_sitofp_3_no_dsp.v 
// Device	: 6slx9csg324-2
// Input file	: D:/VivadoProjects/MNIST_BasedHandwrittenDigitRecognition/solution1/impl/verilog/tmp/_cg/neural_network_ap_sitofp_3_no_dsp.ngc
// Output file	: D:/VivadoProjects/MNIST_BasedHandwrittenDigitRecognition/solution1/impl/verilog/tmp/_cg/neural_network_ap_sitofp_3_no_dsp.v
// # of Modules	: 1
// Design Name	: neural_network_ap_sitofp_3_no_dsp
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

module neural_network_ap_sitofp_3_no_dsp (
  aclk, aclken, s_axis_a_tvalid, m_axis_result_tvalid, s_axis_a_tdata, m_axis_result_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aclk;
  input aclken;
  input s_axis_a_tvalid;
  output m_axis_result_tvalid;
  input [31 : 0] s_axis_a_tdata;
  output [31 : 0] m_axis_result_tdata;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000001d3 ;
  wire \blk00000001/sig000001d2 ;
  wire \blk00000001/sig000001d1 ;
  wire \blk00000001/sig000001d0 ;
  wire \blk00000001/sig000001cf ;
  wire \blk00000001/sig000001ce ;
  wire \blk00000001/sig000001cd ;
  wire \blk00000001/sig000001cc ;
  wire \blk00000001/sig000001cb ;
  wire \blk00000001/sig000001ca ;
  wire \blk00000001/sig000001c9 ;
  wire \blk00000001/sig000001c8 ;
  wire \blk00000001/sig000001c7 ;
  wire \blk00000001/sig000001c6 ;
  wire \blk00000001/sig000001c5 ;
  wire \blk00000001/sig000001c4 ;
  wire \blk00000001/sig000001c3 ;
  wire \blk00000001/sig000001c2 ;
  wire \blk00000001/sig000001c1 ;
  wire \blk00000001/sig000001c0 ;
  wire \blk00000001/sig000001bf ;
  wire \blk00000001/sig000001be ;
  wire \blk00000001/sig000001bd ;
  wire \blk00000001/sig000001bc ;
  wire \blk00000001/sig000001bb ;
  wire \blk00000001/sig000001ba ;
  wire \blk00000001/sig000001b9 ;
  wire \blk00000001/sig000001b8 ;
  wire \blk00000001/sig000001b7 ;
  wire \blk00000001/sig000001b6 ;
  wire \blk00000001/sig000001b5 ;
  wire \blk00000001/sig000001b4 ;
  wire \blk00000001/sig000001b3 ;
  wire \blk00000001/sig000001b2 ;
  wire \blk00000001/sig000001b1 ;
  wire \blk00000001/sig000001b0 ;
  wire \blk00000001/sig000001af ;
  wire \blk00000001/sig000001ae ;
  wire \blk00000001/sig000001ad ;
  wire \blk00000001/sig000001ac ;
  wire \blk00000001/sig000001ab ;
  wire \blk00000001/sig000001aa ;
  wire \blk00000001/sig000001a9 ;
  wire \blk00000001/sig000001a8 ;
  wire \blk00000001/sig000001a7 ;
  wire \blk00000001/sig000001a6 ;
  wire \blk00000001/sig000001a5 ;
  wire \blk00000001/sig000001a4 ;
  wire \blk00000001/sig000001a3 ;
  wire \blk00000001/sig000001a2 ;
  wire \blk00000001/sig000001a1 ;
  wire \blk00000001/sig000001a0 ;
  wire \blk00000001/sig0000019f ;
  wire \blk00000001/sig0000019e ;
  wire \blk00000001/sig0000019d ;
  wire \blk00000001/sig0000019c ;
  wire \blk00000001/sig0000019b ;
  wire \blk00000001/sig0000019a ;
  wire \blk00000001/sig00000199 ;
  wire \blk00000001/sig00000198 ;
  wire \blk00000001/sig00000197 ;
  wire \blk00000001/sig00000196 ;
  wire \blk00000001/sig00000195 ;
  wire \blk00000001/sig00000194 ;
  wire \blk00000001/sig00000193 ;
  wire \blk00000001/sig00000192 ;
  wire \blk00000001/sig00000191 ;
  wire \blk00000001/sig00000190 ;
  wire \blk00000001/sig0000018f ;
  wire \blk00000001/sig0000018e ;
  wire \blk00000001/sig0000018d ;
  wire \blk00000001/sig0000018c ;
  wire \blk00000001/sig0000018b ;
  wire \blk00000001/sig0000018a ;
  wire \blk00000001/sig00000189 ;
  wire \blk00000001/sig00000188 ;
  wire \blk00000001/sig00000187 ;
  wire \blk00000001/sig00000186 ;
  wire \blk00000001/sig00000185 ;
  wire \blk00000001/sig00000184 ;
  wire \blk00000001/sig00000183 ;
  wire \blk00000001/sig00000182 ;
  wire \blk00000001/sig00000181 ;
  wire \blk00000001/sig00000180 ;
  wire \blk00000001/sig0000017f ;
  wire \blk00000001/sig0000017e ;
  wire \blk00000001/sig0000017d ;
  wire \blk00000001/sig0000017c ;
  wire \blk00000001/sig0000017b ;
  wire \blk00000001/sig0000017a ;
  wire \blk00000001/sig00000179 ;
  wire \blk00000001/sig00000178 ;
  wire \blk00000001/sig00000177 ;
  wire \blk00000001/sig00000176 ;
  wire \blk00000001/sig00000175 ;
  wire \blk00000001/sig00000174 ;
  wire \blk00000001/sig00000173 ;
  wire \blk00000001/sig00000172 ;
  wire \blk00000001/sig00000171 ;
  wire \blk00000001/sig00000170 ;
  wire \blk00000001/sig0000016f ;
  wire \blk00000001/sig0000016e ;
  wire \blk00000001/sig0000016d ;
  wire \blk00000001/sig0000016c ;
  wire \blk00000001/sig0000016b ;
  wire \blk00000001/sig0000016a ;
  wire \blk00000001/sig00000169 ;
  wire \blk00000001/sig00000168 ;
  wire \blk00000001/sig00000167 ;
  wire \blk00000001/sig00000166 ;
  wire \blk00000001/sig00000165 ;
  wire \blk00000001/sig00000164 ;
  wire \blk00000001/sig00000163 ;
  wire \blk00000001/sig00000162 ;
  wire \blk00000001/sig00000161 ;
  wire \blk00000001/sig00000160 ;
  wire \blk00000001/sig0000015f ;
  wire \blk00000001/sig0000015e ;
  wire \blk00000001/sig0000015d ;
  wire \blk00000001/sig0000015c ;
  wire \blk00000001/sig0000015b ;
  wire \blk00000001/sig0000015a ;
  wire \blk00000001/sig00000159 ;
  wire \blk00000001/sig00000158 ;
  wire \blk00000001/sig00000157 ;
  wire \blk00000001/sig00000156 ;
  wire \blk00000001/sig00000155 ;
  wire \blk00000001/sig00000154 ;
  wire \blk00000001/sig00000153 ;
  wire \blk00000001/sig00000152 ;
  wire \blk00000001/sig00000151 ;
  wire \blk00000001/sig00000150 ;
  wire \blk00000001/sig0000014f ;
  wire \blk00000001/sig0000014e ;
  wire \blk00000001/sig0000014d ;
  wire \blk00000001/sig0000014c ;
  wire \blk00000001/sig0000014b ;
  wire \blk00000001/sig0000014a ;
  wire \blk00000001/sig00000149 ;
  wire \blk00000001/sig00000148 ;
  wire \blk00000001/sig00000147 ;
  wire \blk00000001/sig00000146 ;
  wire \blk00000001/sig00000145 ;
  wire \blk00000001/sig00000144 ;
  wire \blk00000001/sig00000143 ;
  wire \blk00000001/sig00000142 ;
  wire \blk00000001/sig00000141 ;
  wire \blk00000001/sig00000140 ;
  wire \blk00000001/sig0000013f ;
  wire \blk00000001/sig0000013e ;
  wire \blk00000001/sig0000013d ;
  wire \blk00000001/sig0000013c ;
  wire \blk00000001/sig0000013b ;
  wire \blk00000001/sig0000013a ;
  wire \blk00000001/sig00000139 ;
  wire \blk00000001/sig00000138 ;
  wire \blk00000001/sig00000137 ;
  wire \blk00000001/sig00000136 ;
  wire \blk00000001/sig00000135 ;
  wire \blk00000001/sig00000134 ;
  wire \blk00000001/sig00000133 ;
  wire \blk00000001/sig00000132 ;
  wire \blk00000001/sig00000131 ;
  wire \blk00000001/sig00000130 ;
  wire \blk00000001/sig0000012f ;
  wire \blk00000001/sig0000012e ;
  wire \blk00000001/sig0000012d ;
  wire \blk00000001/sig0000012c ;
  wire \blk00000001/sig0000012b ;
  wire \blk00000001/sig0000012a ;
  wire \blk00000001/sig00000129 ;
  wire \blk00000001/sig00000128 ;
  wire \blk00000001/sig00000127 ;
  wire \blk00000001/sig00000126 ;
  wire \blk00000001/sig00000125 ;
  wire \blk00000001/sig00000124 ;
  wire \blk00000001/sig00000123 ;
  wire \blk00000001/sig00000122 ;
  wire \blk00000001/sig00000121 ;
  wire \blk00000001/sig00000120 ;
  wire \blk00000001/sig0000011f ;
  wire \blk00000001/sig0000011e ;
  wire \blk00000001/sig0000011d ;
  wire \blk00000001/sig0000011c ;
  wire \blk00000001/sig0000011b ;
  wire \blk00000001/sig0000011a ;
  wire \blk00000001/sig00000119 ;
  wire \blk00000001/sig00000118 ;
  wire \blk00000001/sig00000117 ;
  wire \blk00000001/sig00000116 ;
  wire \blk00000001/sig00000115 ;
  wire \blk00000001/sig00000114 ;
  wire \blk00000001/sig00000113 ;
  wire \blk00000001/sig00000112 ;
  wire \blk00000001/sig00000111 ;
  wire \blk00000001/sig00000110 ;
  wire \blk00000001/sig0000010f ;
  wire \blk00000001/sig0000010e ;
  wire \blk00000001/sig0000010d ;
  wire \blk00000001/sig0000010c ;
  wire \blk00000001/sig0000010b ;
  wire \blk00000001/sig0000010a ;
  wire \blk00000001/sig00000109 ;
  wire \blk00000001/sig00000108 ;
  wire \blk00000001/sig00000107 ;
  wire \blk00000001/sig00000106 ;
  wire \blk00000001/sig00000105 ;
  wire \blk00000001/sig00000104 ;
  wire \blk00000001/sig00000103 ;
  wire \blk00000001/sig00000102 ;
  wire \blk00000001/sig00000101 ;
  wire \blk00000001/sig00000100 ;
  wire \blk00000001/sig000000ff ;
  wire \blk00000001/sig000000fe ;
  wire \blk00000001/sig000000fd ;
  wire \blk00000001/sig000000fc ;
  wire \blk00000001/sig000000fb ;
  wire \blk00000001/sig000000fa ;
  wire \blk00000001/sig000000f9 ;
  wire \blk00000001/sig000000f8 ;
  wire \blk00000001/sig000000f7 ;
  wire \blk00000001/sig000000f6 ;
  wire \blk00000001/sig000000f5 ;
  wire \blk00000001/sig000000f4 ;
  wire \blk00000001/sig000000f3 ;
  wire \blk00000001/sig000000f2 ;
  wire \blk00000001/sig000000f1 ;
  wire \blk00000001/sig000000f0 ;
  wire \blk00000001/sig000000ef ;
  wire \blk00000001/sig000000ee ;
  wire \blk00000001/sig000000ed ;
  wire \blk00000001/sig000000ec ;
  wire \blk00000001/sig000000eb ;
  wire \blk00000001/sig000000ea ;
  wire \blk00000001/sig000000e9 ;
  wire \blk00000001/sig000000e8 ;
  wire \blk00000001/sig000000e7 ;
  wire \blk00000001/sig000000e6 ;
  wire \blk00000001/sig000000e5 ;
  wire \blk00000001/sig000000e4 ;
  wire \blk00000001/sig000000e3 ;
  wire \blk00000001/sig000000e2 ;
  wire \blk00000001/sig000000e1 ;
  wire \blk00000001/sig000000e0 ;
  wire \blk00000001/sig000000df ;
  wire \blk00000001/sig000000de ;
  wire \blk00000001/sig000000dd ;
  wire \blk00000001/sig000000dc ;
  wire \blk00000001/sig000000db ;
  wire \blk00000001/sig000000da ;
  wire \blk00000001/sig000000d9 ;
  wire \blk00000001/sig000000d8 ;
  wire \blk00000001/sig000000d7 ;
  wire \blk00000001/sig000000d6 ;
  wire \blk00000001/sig000000d5 ;
  wire \blk00000001/sig000000d4 ;
  wire \blk00000001/sig000000d3 ;
  wire \blk00000001/sig000000d2 ;
  wire \blk00000001/sig000000d1 ;
  wire \blk00000001/sig000000d0 ;
  wire \blk00000001/sig000000cf ;
  wire \blk00000001/sig000000ce ;
  wire \blk00000001/sig000000cd ;
  wire \blk00000001/sig000000cc ;
  wire \blk00000001/sig000000cb ;
  wire \blk00000001/sig000000ca ;
  wire \blk00000001/sig000000c9 ;
  wire \blk00000001/sig000000c8 ;
  wire \blk00000001/sig000000c7 ;
  wire \blk00000001/sig000000c6 ;
  wire \blk00000001/sig000000c5 ;
  wire \blk00000001/sig000000c4 ;
  wire \blk00000001/sig000000c3 ;
  wire \blk00000001/sig000000c2 ;
  wire \blk00000001/sig000000c1 ;
  wire \blk00000001/sig000000c0 ;
  wire \blk00000001/sig000000bf ;
  wire \blk00000001/sig000000be ;
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
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
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \NLW_blk00000001/blk000001b0_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk000001ae_Q15_UNCONNECTED ;
  wire [28 : 28] NlwRenamedSignal_m_axis_result_tdata;
  wire [22 : 0] NlwRenamedSig_OI_m_axis_result_tdata;
  assign
    m_axis_result_tdata[29] = NlwRenamedSignal_m_axis_result_tdata[28],
    m_axis_result_tdata[28] = NlwRenamedSignal_m_axis_result_tdata[28],
    m_axis_result_tdata[22] = NlwRenamedSig_OI_m_axis_result_tdata[22],
    m_axis_result_tdata[21] = NlwRenamedSig_OI_m_axis_result_tdata[21],
    m_axis_result_tdata[20] = NlwRenamedSig_OI_m_axis_result_tdata[20],
    m_axis_result_tdata[19] = NlwRenamedSig_OI_m_axis_result_tdata[19],
    m_axis_result_tdata[18] = NlwRenamedSig_OI_m_axis_result_tdata[18],
    m_axis_result_tdata[17] = NlwRenamedSig_OI_m_axis_result_tdata[17],
    m_axis_result_tdata[16] = NlwRenamedSig_OI_m_axis_result_tdata[16],
    m_axis_result_tdata[15] = NlwRenamedSig_OI_m_axis_result_tdata[15],
    m_axis_result_tdata[14] = NlwRenamedSig_OI_m_axis_result_tdata[14],
    m_axis_result_tdata[13] = NlwRenamedSig_OI_m_axis_result_tdata[13],
    m_axis_result_tdata[12] = NlwRenamedSig_OI_m_axis_result_tdata[12],
    m_axis_result_tdata[11] = NlwRenamedSig_OI_m_axis_result_tdata[11],
    m_axis_result_tdata[10] = NlwRenamedSig_OI_m_axis_result_tdata[10],
    m_axis_result_tdata[9] = NlwRenamedSig_OI_m_axis_result_tdata[9],
    m_axis_result_tdata[8] = NlwRenamedSig_OI_m_axis_result_tdata[8],
    m_axis_result_tdata[7] = NlwRenamedSig_OI_m_axis_result_tdata[7],
    m_axis_result_tdata[6] = NlwRenamedSig_OI_m_axis_result_tdata[6],
    m_axis_result_tdata[5] = NlwRenamedSig_OI_m_axis_result_tdata[5],
    m_axis_result_tdata[4] = NlwRenamedSig_OI_m_axis_result_tdata[4],
    m_axis_result_tdata[3] = NlwRenamedSig_OI_m_axis_result_tdata[3],
    m_axis_result_tdata[2] = NlwRenamedSig_OI_m_axis_result_tdata[2],
    m_axis_result_tdata[1] = NlwRenamedSig_OI_m_axis_result_tdata[1],
    m_axis_result_tdata[0] = NlwRenamedSig_OI_m_axis_result_tdata[0];
  FDE   \blk00000001/blk000001b1  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000001d3 ),
    .Q(m_axis_result_tdata[31])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000001b0  (
    .A0(\blk00000001/sig00000143 ),
    .A1(\blk00000001/sig00000177 ),
    .A2(\blk00000001/sig00000177 ),
    .A3(\blk00000001/sig00000177 ),
    .CE(aclken),
    .CLK(aclk),
    .D(s_axis_a_tdata[31]),
    .Q(\blk00000001/sig000001d3 ),
    .Q15(\NLW_blk00000001/blk000001b0_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000001af  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000001d2 ),
    .Q(m_axis_result_tvalid)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000001ae  (
    .A0(\blk00000001/sig00000177 ),
    .A1(\blk00000001/sig00000177 ),
    .A2(\blk00000001/sig00000177 ),
    .A3(\blk00000001/sig00000177 ),
    .CE(aclken),
    .CLK(aclk),
    .D(\blk00000001/sig000001b5 ),
    .Q(\blk00000001/sig000001d2 ),
    .Q15(\NLW_blk00000001/blk000001ae_Q15_UNCONNECTED )
  );
  LUT5 #(
    .INIT ( 32'hFD20F870 ))
  \blk00000001/blk000001ad  (
    .I0(\blk00000001/sig000000fb ),
    .I1(\blk00000001/sig000000f5 ),
    .I2(\blk00000001/sig000001b8 ),
    .I3(\blk00000001/sig000001b6 ),
    .I4(\blk00000001/sig000000f8 ),
    .O(\blk00000001/sig000001d1 )
  );
  LUT6 #(
    .INIT ( 64'h2F0D2F0D7F5D2A08 ))
  \blk00000001/blk000001ac  (
    .I0(\blk00000001/sig00000102 ),
    .I1(\blk00000001/sig000000fd ),
    .I2(\blk00000001/sig000001c6 ),
    .I3(\blk00000001/sig000000fc ),
    .I4(\blk00000001/sig000000ff ),
    .I5(\blk00000001/sig00000100 ),
    .O(\blk00000001/sig000001d0 )
  );
  MUXF7   \blk00000001/blk000001ab  (
    .I0(\blk00000001/sig000001d0 ),
    .I1(\blk00000001/sig000001d1 ),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig000001cd )
  );
  LUT5 #(
    .INIT ( 32'hFD20F870 ))
  \blk00000001/blk000001aa  (
    .I0(\blk00000001/sig000000fb ),
    .I1(\blk00000001/sig000000f5 ),
    .I2(\blk00000001/sig000001b8 ),
    .I3(\blk00000001/sig000001b6 ),
    .I4(\blk00000001/sig000000f8 ),
    .O(\blk00000001/sig000001cf )
  );
  LUT6 #(
    .INIT ( 64'h2F0D2F0D7F5D2A08 ))
  \blk00000001/blk000001a9  (
    .I0(\blk00000001/sig00000102 ),
    .I1(\blk00000001/sig000000fd ),
    .I2(\blk00000001/sig000001c6 ),
    .I3(\blk00000001/sig000000fc ),
    .I4(\blk00000001/sig000000ff ),
    .I5(\blk00000001/sig00000100 ),
    .O(\blk00000001/sig000001ce )
  );
  MUXF7   \blk00000001/blk000001a8  (
    .I0(\blk00000001/sig000001ce ),
    .I1(\blk00000001/sig000001cf ),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000055 )
  );
  LUT5 #(
    .INIT ( 32'hFFCA00CA ))
  \blk00000001/blk000001a7  (
    .I0(\blk00000001/sig00000100 ),
    .I1(\blk00000001/sig000000fd ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .I4(\blk00000001/sig000001b7 ),
    .O(\blk00000001/sig000001cc )
  );
  LUT5 #(
    .INIT ( 32'h14111111 ))
  \blk00000001/blk000001a6  (
    .I0(\blk00000001/sig0000009e ),
    .I1(\blk00000001/sig00000052 ),
    .I2(\blk00000001/sig000000f3 ),
    .I3(\blk00000001/sig0000015b ),
    .I4(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig00000099 )
  );
  LUT6 #(
    .INIT ( 64'h4441444444444444 ))
  \blk00000001/blk000001a5  (
    .I0(\blk00000001/sig0000009e ),
    .I1(\blk00000001/sig000000a2 ),
    .I2(\blk00000001/sig0000015b ),
    .I3(\blk00000001/sig000000f3 ),
    .I4(\blk00000001/sig00000051 ),
    .I5(\blk00000001/sig000000a1 ),
    .O(\blk00000001/sig0000009a )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \blk00000001/blk000001a4  (
    .I0(\blk00000001/sig00000051 ),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig000000f3 ),
    .I3(\blk00000001/sig0000015b ),
    .O(\blk00000001/sig0000009f )
  );
  LUT5 #(
    .INIT ( 32'h55955555 ))
  \blk00000001/blk000001a3  (
    .I0(\blk00000001/sig00000054 ),
    .I1(\blk00000001/sig00000053 ),
    .I2(\blk00000001/sig00000051 ),
    .I3(\blk00000001/sig000000f3 ),
    .I4(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig000000a3 )
  );
  LUT4 #(
    .INIT ( 16'h1411 ))
  \blk00000001/blk000001a2  (
    .I0(\blk00000001/sig0000009e ),
    .I1(\blk00000001/sig00000051 ),
    .I2(\blk00000001/sig000000f3 ),
    .I3(\blk00000001/sig0000015b ),
    .O(\blk00000001/sig00000098 )
  );
  LUT6 #(
    .INIT ( 64'h5555000055554000 ))
  \blk00000001/blk000001a1  (
    .I0(\blk00000001/sig0000009e ),
    .I1(\blk00000001/sig000000a1 ),
    .I2(\blk00000001/sig000000a2 ),
    .I3(\blk00000001/sig000000a3 ),
    .I4(\blk00000001/sig000000a0 ),
    .I5(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig0000009d )
  );
  LUT6 #(
    .INIT ( 64'h2A0A20007F5F7555 ))
  \blk00000001/blk000001a0  (
    .I0(\blk00000001/sig00000057 ),
    .I1(\blk00000001/sig000000f4 ),
    .I2(\blk00000001/sig000000fb ),
    .I3(\blk00000001/sig0000005f ),
    .I4(\blk00000001/sig000001cb ),
    .I5(\blk00000001/sig000001ca ),
    .O(\blk00000001/sig000001ba )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \blk00000001/blk0000019f  (
    .I0(\blk00000001/sig000000f7 ),
    .I1(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig000001cb )
  );
  LUT5 #(
    .INIT ( 32'hFF33F5F5 ))
  \blk00000001/blk0000019e  (
    .I0(\blk00000001/sig00000077 ),
    .I1(\blk00000001/sig0000006f ),
    .I2(\blk00000001/sig000000ff ),
    .I3(\blk00000001/sig000000fc ),
    .I4(\blk00000001/sig00000102 ),
    .O(\blk00000001/sig000001ca )
  );
  LUT6 #(
    .INIT ( 64'hDF5757578A020202 ))
  \blk00000001/blk0000019d  (
    .I0(\blk00000001/sig00000057 ),
    .I1(\blk00000001/sig000000fb ),
    .I2(\blk00000001/sig000001c9 ),
    .I3(\blk00000001/sig0000005d ),
    .I4(\blk00000001/sig000000f4 ),
    .I5(\blk00000001/sig000001c8 ),
    .O(\blk00000001/sig000001b9 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \blk00000001/blk0000019c  (
    .I0(\blk00000001/sig000000f7 ),
    .I1(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig000001c9 )
  );
  LUT5 #(
    .INIT ( 32'hCC00A0A0 ))
  \blk00000001/blk0000019b  (
    .I0(\blk00000001/sig00000075 ),
    .I1(\blk00000001/sig0000006d ),
    .I2(\blk00000001/sig000000ff ),
    .I3(\blk00000001/sig000000fc ),
    .I4(\blk00000001/sig00000102 ),
    .O(\blk00000001/sig000001c8 )
  );
  LUT6 #(
    .INIT ( 64'hFFEEDDCCFFCFFCCC ))
  \blk00000001/blk0000019a  (
    .I0(\blk00000001/sig000001c6 ),
    .I1(\blk00000001/sig000001c7 ),
    .I2(\blk00000001/sig00000103 ),
    .I3(\blk00000001/sig000001bf ),
    .I4(\blk00000001/sig000001c0 ),
    .I5(\blk00000001/sig00000104 ),
    .O(\blk00000001/sig0000010b )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000001/blk00000199  (
    .I0(\blk00000001/sig00000102 ),
    .I1(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig000001c7 )
  );
  LUT3 #(
    .INIT ( 8'h35 ))
  \blk00000001/blk00000198  (
    .I0(\blk00000001/sig00000101 ),
    .I1(\blk00000001/sig000000fe ),
    .I2(\blk00000001/sig00000102 ),
    .O(\blk00000001/sig000001c6 )
  );
  LUT5 #(
    .INIT ( 32'hAACAACCC ))
  \blk00000001/blk00000197  (
    .I0(\blk00000001/sig0000010a ),
    .I1(\blk00000001/sig00000108 ),
    .I2(\blk00000001/sig00000057 ),
    .I3(\blk00000001/sig000001b7 ),
    .I4(\blk00000001/sig000001c5 ),
    .O(\blk00000001/sig000001c0 )
  );
  LUT5 #(
    .INIT ( 32'hAACAACCC ))
  \blk00000001/blk00000196  (
    .I0(\blk00000001/sig00000107 ),
    .I1(\blk00000001/sig00000109 ),
    .I2(\blk00000001/sig00000057 ),
    .I3(\blk00000001/sig000001b7 ),
    .I4(\blk00000001/sig000001c5 ),
    .O(\blk00000001/sig000001bf )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \blk00000001/blk00000195  (
    .I0(\blk00000001/sig00000100 ),
    .I1(\blk00000001/sig000000fd ),
    .I2(\blk00000001/sig00000102 ),
    .O(\blk00000001/sig000001c5 )
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \blk00000001/blk00000194  (
    .I0(\blk00000001/sig0000006e ),
    .I1(\blk00000001/sig00000066 ),
    .I2(\blk00000001/sig0000005e ),
    .I3(\blk00000001/sig000000fb ),
    .I4(\blk00000001/sig00000102 ),
    .I5(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000012e )
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \blk00000001/blk00000193  (
    .I0(\blk00000001/sig0000006f ),
    .I1(\blk00000001/sig00000067 ),
    .I2(\blk00000001/sig0000005f ),
    .I3(\blk00000001/sig000000fb ),
    .I4(\blk00000001/sig00000102 ),
    .I5(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000012d )
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \blk00000001/blk00000192  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000060 ),
    .I2(\blk00000001/sig00000058 ),
    .I3(\blk00000001/sig000000fb ),
    .I4(\blk00000001/sig00000102 ),
    .I5(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000134 )
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \blk00000001/blk00000191  (
    .I0(\blk00000001/sig00000069 ),
    .I1(\blk00000001/sig00000061 ),
    .I2(\blk00000001/sig00000059 ),
    .I3(\blk00000001/sig000000fb ),
    .I4(\blk00000001/sig00000102 ),
    .I5(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000133 )
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \blk00000001/blk00000190  (
    .I0(\blk00000001/sig0000006a ),
    .I1(\blk00000001/sig00000062 ),
    .I2(\blk00000001/sig0000005a ),
    .I3(\blk00000001/sig000000fb ),
    .I4(\blk00000001/sig00000102 ),
    .I5(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000132 )
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \blk00000001/blk0000018f  (
    .I0(\blk00000001/sig0000006b ),
    .I1(\blk00000001/sig00000063 ),
    .I2(\blk00000001/sig0000005b ),
    .I3(\blk00000001/sig000000fb ),
    .I4(\blk00000001/sig00000102 ),
    .I5(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000131 )
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \blk00000001/blk0000018e  (
    .I0(\blk00000001/sig0000006c ),
    .I1(\blk00000001/sig00000064 ),
    .I2(\blk00000001/sig0000005c ),
    .I3(\blk00000001/sig000000fb ),
    .I4(\blk00000001/sig00000102 ),
    .I5(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000130 )
  );
  LUT6 #(
    .INIT ( 64'h00F000F0CCCCAAAA ))
  \blk00000001/blk0000018d  (
    .I0(\blk00000001/sig0000006d ),
    .I1(\blk00000001/sig00000065 ),
    .I2(\blk00000001/sig0000005d ),
    .I3(\blk00000001/sig000000fb ),
    .I4(\blk00000001/sig00000102 ),
    .I5(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000012f )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \blk00000001/blk0000018c  (
    .I0(\blk00000001/sig00000059 ),
    .I1(\blk00000001/sig00000102 ),
    .I2(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig000001c2 )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \blk00000001/blk0000018b  (
    .I0(\blk00000001/sig00000058 ),
    .I1(\blk00000001/sig00000102 ),
    .I2(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig000001c1 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000001/blk0000018a  (
    .I0(\blk00000001/sig0000005a ),
    .I1(\blk00000001/sig00000102 ),
    .I2(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000142 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000001/blk00000189  (
    .I0(\blk00000001/sig0000005b ),
    .I1(\blk00000001/sig00000102 ),
    .I2(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000141 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000001/blk00000188  (
    .I0(\blk00000001/sig0000005c ),
    .I1(\blk00000001/sig00000102 ),
    .I2(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000140 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000001/blk00000187  (
    .I0(\blk00000001/sig0000005d ),
    .I1(\blk00000001/sig00000102 ),
    .I2(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000013f )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000001/blk00000186  (
    .I0(\blk00000001/sig0000005e ),
    .I1(\blk00000001/sig00000102 ),
    .I2(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000013e )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \blk00000001/blk00000185  (
    .I0(\blk00000001/sig0000005f ),
    .I1(\blk00000001/sig00000102 ),
    .I2(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000013d )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \blk00000001/blk00000184  (
    .I0(\blk00000001/sig00000066 ),
    .I1(\blk00000001/sig0000005e ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000136 )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \blk00000001/blk00000183  (
    .I0(\blk00000001/sig00000065 ),
    .I1(\blk00000001/sig0000005d ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000137 )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \blk00000001/blk00000182  (
    .I0(\blk00000001/sig00000062 ),
    .I1(\blk00000001/sig0000005a ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000013a )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \blk00000001/blk00000181  (
    .I0(\blk00000001/sig00000067 ),
    .I1(\blk00000001/sig0000005f ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000135 )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \blk00000001/blk00000180  (
    .I0(\blk00000001/sig00000061 ),
    .I1(\blk00000001/sig00000059 ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000013b )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \blk00000001/blk0000017f  (
    .I0(\blk00000001/sig00000060 ),
    .I1(\blk00000001/sig00000058 ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000013c )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \blk00000001/blk0000017e  (
    .I0(\blk00000001/sig00000064 ),
    .I1(\blk00000001/sig0000005c ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000138 )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \blk00000001/blk0000017d  (
    .I0(\blk00000001/sig00000063 ),
    .I1(\blk00000001/sig0000005b ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000139 )
  );
  LUT6 #(
    .INIT ( 64'h0000555500001555 ))
  \blk00000001/blk0000017c  (
    .I0(\blk00000001/sig0000009e ),
    .I1(\blk00000001/sig000000a1 ),
    .I2(\blk00000001/sig000000a2 ),
    .I3(\blk00000001/sig000000a3 ),
    .I4(\blk00000001/sig000000a0 ),
    .I5(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig0000009c )
  );
  FDE   \blk00000001/blk0000017b  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000097 ),
    .Q(m_axis_result_tdata[23])
  );
  FDE   \blk00000001/blk0000017a  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000098 ),
    .Q(m_axis_result_tdata[24])
  );
  FDE   \blk00000001/blk00000179  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000099 ),
    .Q(m_axis_result_tdata[25])
  );
  FDE   \blk00000001/blk00000178  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000009a ),
    .Q(m_axis_result_tdata[26])
  );
  FDE   \blk00000001/blk00000177  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000009b ),
    .Q(m_axis_result_tdata[27])
  );
  FDE   \blk00000001/blk00000176  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000009c ),
    .Q(NlwRenamedSignal_m_axis_result_tdata[28])
  );
  FDE   \blk00000001/blk00000175  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000009d ),
    .Q(m_axis_result_tdata[30])
  );
  LUT6 #(
    .INIT ( 64'hFAFA5050BB11BB11 ))
  \blk00000001/blk00000174  (
    .I0(\blk00000001/sig000001cc ),
    .I1(\blk00000001/sig000001c4 ),
    .I2(\blk00000001/sig00000128 ),
    .I3(\blk00000001/sig0000012a ),
    .I4(\blk00000001/sig0000012c ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig0000010f )
  );
  LUT6 #(
    .INIT ( 64'h00FF33330F0F5555 ))
  \blk00000001/blk00000173  (
    .I0(\blk00000001/sig00000076 ),
    .I1(\blk00000001/sig0000006e ),
    .I2(\blk00000001/sig00000066 ),
    .I3(\blk00000001/sig0000005e ),
    .I4(\blk00000001/sig00000057 ),
    .I5(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig000001c4 )
  );
  LUT6 #(
    .INIT ( 64'hBB88BB88CFCF0303 ))
  \blk00000001/blk00000172  (
    .I0(\blk00000001/sig0000012d ),
    .I1(\blk00000001/sig000001cc ),
    .I2(\blk00000001/sig000001c3 ),
    .I3(\blk00000001/sig00000129 ),
    .I4(\blk00000001/sig0000012b ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000110 )
  );
  LUT6 #(
    .INIT ( 64'h00FF33330F0F5555 ))
  \blk00000001/blk00000171  (
    .I0(\blk00000001/sig00000075 ),
    .I1(\blk00000001/sig0000006d ),
    .I2(\blk00000001/sig00000065 ),
    .I3(\blk00000001/sig0000005d ),
    .I4(\blk00000001/sig00000057 ),
    .I5(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig000001c3 )
  );
  LUT6 #(
    .INIT ( 64'h5555F0F0CCCCFF00 ))
  \blk00000001/blk00000170  (
    .I0(\blk00000001/sig000001c2 ),
    .I1(\blk00000001/sig00000141 ),
    .I2(\blk00000001/sig0000013f ),
    .I3(\blk00000001/sig0000013d ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000126 )
  );
  LUT6 #(
    .INIT ( 64'h5555F0F0CCCCFF00 ))
  \blk00000001/blk0000016f  (
    .I0(\blk00000001/sig000001c1 ),
    .I1(\blk00000001/sig00000142 ),
    .I2(\blk00000001/sig00000140 ),
    .I3(\blk00000001/sig0000013e ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000127 )
  );
  LUT6 #(
    .INIT ( 64'hD8D8D8D8FFFFFF00 ))
  \blk00000001/blk0000016e  (
    .I0(\blk00000001/sig00000105 ),
    .I1(\blk00000001/sig000001bc ),
    .I2(\blk00000001/sig000001be ),
    .I3(\blk00000001/sig000001ba ),
    .I4(\blk00000001/sig000001b9 ),
    .I5(\blk00000001/sig00000104 ),
    .O(\blk00000001/sig00000106 )
  );
  LUT5 #(
    .INIT ( 32'hFD75A820 ))
  \blk00000001/blk0000016d  (
    .I0(\blk00000001/sig00000057 ),
    .I1(\blk00000001/sig000000fb ),
    .I2(\blk00000001/sig00000063 ),
    .I3(\blk00000001/sig0000005b ),
    .I4(\blk00000001/sig000001bd ),
    .O(\blk00000001/sig000001be )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \blk00000001/blk0000016c  (
    .I0(\blk00000001/sig00000073 ),
    .I1(\blk00000001/sig0000006b ),
    .I2(\blk00000001/sig00000102 ),
    .O(\blk00000001/sig000001bd )
  );
  LUT5 #(
    .INIT ( 32'hFD75A820 ))
  \blk00000001/blk0000016b  (
    .I0(\blk00000001/sig00000057 ),
    .I1(\blk00000001/sig000000fb ),
    .I2(\blk00000001/sig00000061 ),
    .I3(\blk00000001/sig00000059 ),
    .I4(\blk00000001/sig000001bb ),
    .O(\blk00000001/sig000001bc )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \blk00000001/blk0000016a  (
    .I0(\blk00000001/sig00000071 ),
    .I1(\blk00000001/sig00000069 ),
    .I2(\blk00000001/sig00000102 ),
    .O(\blk00000001/sig000001bb )
  );
  LUT5 #(
    .INIT ( 32'hFFCA00CA ))
  \blk00000001/blk00000169  (
    .I0(\blk00000001/sig000000ff ),
    .I1(\blk00000001/sig000000fc ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .I4(\blk00000001/sig000001b8 ),
    .O(\blk00000001/sig00000103 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \blk00000001/blk00000168  (
    .I0(\blk00000001/sig000000f7 ),
    .I1(\blk00000001/sig000000f4 ),
    .I2(\blk00000001/sig000000fb ),
    .O(\blk00000001/sig000001b8 )
  );
  LUT5 #(
    .INIT ( 32'hFFCA00CA ))
  \blk00000001/blk00000167  (
    .I0(\blk00000001/sig00000100 ),
    .I1(\blk00000001/sig000000fd ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .I4(\blk00000001/sig000001b7 ),
    .O(\blk00000001/sig00000104 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \blk00000001/blk00000166  (
    .I0(\blk00000001/sig000000f8 ),
    .I1(\blk00000001/sig000000f5 ),
    .I2(\blk00000001/sig000000fb ),
    .O(\blk00000001/sig000001b7 )
  );
  LUT5 #(
    .INIT ( 32'hFFCA00CA ))
  \blk00000001/blk00000165  (
    .I0(\blk00000001/sig00000101 ),
    .I1(\blk00000001/sig000000fe ),
    .I2(\blk00000001/sig00000102 ),
    .I3(\blk00000001/sig00000057 ),
    .I4(\blk00000001/sig000001b6 ),
    .O(\blk00000001/sig00000105 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \blk00000001/blk00000164  (
    .I0(\blk00000001/sig000000f9 ),
    .I1(\blk00000001/sig000000f6 ),
    .I2(\blk00000001/sig000000fb ),
    .O(\blk00000001/sig000001b6 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000163  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000004e ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[22]),
    .O(\blk00000001/sig000001b4 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000162  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000004d ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[21]),
    .O(\blk00000001/sig000001b3 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000161  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000004c ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[20]),
    .O(\blk00000001/sig000001b2 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000160  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000004b ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[19]),
    .O(\blk00000001/sig000001b1 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk0000015f  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000004a ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[18]),
    .O(\blk00000001/sig000001b0 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk0000015e  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000049 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[17]),
    .O(\blk00000001/sig000001af )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk0000015d  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000048 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[16]),
    .O(\blk00000001/sig000001ae )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk0000015c  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000046 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[14]),
    .O(\blk00000001/sig000001ac )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk0000015b  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000047 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[15]),
    .O(\blk00000001/sig000001ad )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk0000015a  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000044 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[12]),
    .O(\blk00000001/sig000001aa )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000159  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000045 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[13]),
    .O(\blk00000001/sig000001ab )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000158  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000017c ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[11]),
    .O(\blk00000001/sig000001a9 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000157  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000017d ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[10]),
    .O(\blk00000001/sig000001a8 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000156  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000017f ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[9]),
    .O(\blk00000001/sig000001a7 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000155  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000185 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[6]),
    .O(\blk00000001/sig000001a4 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000154  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000181 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[8]),
    .O(\blk00000001/sig000001a6 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000153  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000183 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[7]),
    .O(\blk00000001/sig000001a5 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000152  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000018b ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[3]),
    .O(\blk00000001/sig000001a1 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000151  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000187 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[5]),
    .O(\blk00000001/sig000001a3 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk00000150  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000189 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[4]),
    .O(\blk00000001/sig000001a2 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk0000014f  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000018d ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[2]),
    .O(\blk00000001/sig000001a0 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk0000014e  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig0000018f ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[1]),
    .O(\blk00000001/sig0000019f )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \blk00000001/blk0000014d  (
    .I0(aclken),
    .I1(\blk00000001/sig0000009e ),
    .I2(\blk00000001/sig00000191 ),
    .I3(NlwRenamedSig_OI_m_axis_result_tdata[0]),
    .O(\blk00000001/sig0000019e )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \blk00000001/blk0000014c  (
    .I0(\blk00000001/sig0000015f ),
    .I1(\blk00000001/sig0000015e ),
    .I2(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000179 )
  );
  LUT5 #(
    .INIT ( 32'h0F2F3B3B ))
  \blk00000001/blk0000014b  (
    .I0(\blk00000001/sig0000004f ),
    .I1(\blk00000001/sig0000015e ),
    .I2(\blk00000001/sig0000015f ),
    .I3(\blk00000001/sig00000160 ),
    .I4(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000178 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000014a  (
    .I0(\blk00000001/sig00000175 ),
    .I1(\blk00000001/sig00000174 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000158 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000149  (
    .I0(\blk00000001/sig00000174 ),
    .I1(\blk00000001/sig00000173 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000157 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000148  (
    .I0(\blk00000001/sig00000173 ),
    .I1(\blk00000001/sig00000172 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000156 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000147  (
    .I0(\blk00000001/sig00000172 ),
    .I1(\blk00000001/sig00000171 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000155 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000146  (
    .I0(\blk00000001/sig00000171 ),
    .I1(\blk00000001/sig00000170 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000154 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000145  (
    .I0(\blk00000001/sig00000170 ),
    .I1(\blk00000001/sig0000016f ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000153 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000144  (
    .I0(\blk00000001/sig0000016f ),
    .I1(\blk00000001/sig0000016e ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000152 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000143  (
    .I0(\blk00000001/sig0000016e ),
    .I1(\blk00000001/sig0000016d ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000151 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000142  (
    .I0(\blk00000001/sig0000016d ),
    .I1(\blk00000001/sig00000160 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000150 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000141  (
    .I0(\blk00000001/sig00000161 ),
    .I1(\blk00000001/sig00000176 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig0000015a )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000140  (
    .I0(\blk00000001/sig00000176 ),
    .I1(\blk00000001/sig00000175 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000159 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000013f  (
    .I0(\blk00000001/sig00000160 ),
    .I1(\blk00000001/sig0000015f ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig0000014f )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000013e  (
    .I0(\blk00000001/sig0000016b ),
    .I1(\blk00000001/sig0000016a ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig0000014d )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000013d  (
    .I0(\blk00000001/sig0000016a ),
    .I1(\blk00000001/sig00000169 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig0000014c )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000013c  (
    .I0(\blk00000001/sig00000169 ),
    .I1(\blk00000001/sig00000168 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig0000014b )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000013b  (
    .I0(\blk00000001/sig00000168 ),
    .I1(\blk00000001/sig00000167 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig0000014a )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000013a  (
    .I0(\blk00000001/sig00000167 ),
    .I1(\blk00000001/sig00000166 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000149 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000139  (
    .I0(\blk00000001/sig00000166 ),
    .I1(\blk00000001/sig00000165 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000148 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000138  (
    .I0(\blk00000001/sig00000165 ),
    .I1(\blk00000001/sig00000164 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000147 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000137  (
    .I0(\blk00000001/sig00000164 ),
    .I1(\blk00000001/sig00000163 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000146 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000136  (
    .I0(\blk00000001/sig00000163 ),
    .I1(\blk00000001/sig00000162 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000145 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000135  (
    .I0(\blk00000001/sig0000016c ),
    .I1(\blk00000001/sig0000016b ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig0000014e )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000134  (
    .I0(\blk00000001/sig00000162 ),
    .I1(\blk00000001/sig00000161 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig00000144 )
  );
  LUT6 #(
    .INIT ( 64'hBB88BB88FCFC3030 ))
  \blk00000001/blk00000133  (
    .I0(\blk00000001/sig0000012e ),
    .I1(\blk00000001/sig000001cc ),
    .I2(\blk00000001/sig00000128 ),
    .I3(\blk00000001/sig0000012a ),
    .I4(\blk00000001/sig0000012c ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000111 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAF0F0CCCCFF00 ))
  \blk00000001/blk00000132  (
    .I0(\blk00000001/sig00000141 ),
    .I1(\blk00000001/sig0000013f ),
    .I2(\blk00000001/sig0000013d ),
    .I3(\blk00000001/sig0000013b ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000124 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAF0F0CCCCFF00 ))
  \blk00000001/blk00000131  (
    .I0(\blk00000001/sig00000142 ),
    .I1(\blk00000001/sig00000140 ),
    .I2(\blk00000001/sig0000013e ),
    .I3(\blk00000001/sig0000013c ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000125 )
  );
  LUT6 #(
    .INIT ( 64'hCFCFC0C0AFA0AFA0 ))
  \blk00000001/blk00000130  (
    .I0(\blk00000001/sig0000012e ),
    .I1(\blk00000001/sig00000130 ),
    .I2(\blk00000001/sig000001cc ),
    .I3(\blk00000001/sig0000012a ),
    .I4(\blk00000001/sig0000012c ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000113 )
  );
  LUT6 #(
    .INIT ( 64'hF0CCF0CCAAFFAA00 ))
  \blk00000001/blk0000012f  (
    .I0(\blk00000001/sig0000012f ),
    .I1(\blk00000001/sig0000012d ),
    .I2(\blk00000001/sig00000131 ),
    .I3(\blk00000001/sig000001cc ),
    .I4(\blk00000001/sig0000012b ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000114 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00F0F0CCCC ))
  \blk00000001/blk0000012e  (
    .I0(\blk00000001/sig00000135 ),
    .I1(\blk00000001/sig0000012f ),
    .I2(\blk00000001/sig00000133 ),
    .I3(\blk00000001/sig00000131 ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000118 )
  );
  LUT6 #(
    .INIT ( 64'hF0CCF0CCAAFFAA00 ))
  \blk00000001/blk0000012d  (
    .I0(\blk00000001/sig00000130 ),
    .I1(\blk00000001/sig0000012e ),
    .I2(\blk00000001/sig00000132 ),
    .I3(\blk00000001/sig000001cc ),
    .I4(\blk00000001/sig0000012c ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000115 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \blk00000001/blk0000012c  (
    .I0(\blk00000001/sig0000012d ),
    .I1(\blk00000001/sig00000131 ),
    .I2(\blk00000001/sig0000012f ),
    .I3(\blk00000001/sig00000133 ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig000001cd ),
    .O(\blk00000001/sig00000116 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \blk00000001/blk0000012b  (
    .I0(\blk00000001/sig0000012e ),
    .I1(\blk00000001/sig00000132 ),
    .I2(\blk00000001/sig00000130 ),
    .I3(\blk00000001/sig00000134 ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000117 )
  );
  LUT6 #(
    .INIT ( 64'hCFCFC0C0AFA0AFA0 ))
  \blk00000001/blk0000012a  (
    .I0(\blk00000001/sig0000012d ),
    .I1(\blk00000001/sig0000012f ),
    .I2(\blk00000001/sig000001cc ),
    .I3(\blk00000001/sig00000129 ),
    .I4(\blk00000001/sig0000012b ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000112 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00F0F0CCCC ))
  \blk00000001/blk00000129  (
    .I0(\blk00000001/sig00000136 ),
    .I1(\blk00000001/sig00000130 ),
    .I2(\blk00000001/sig00000134 ),
    .I3(\blk00000001/sig00000132 ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000119 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00AAAAF0F0 ))
  \blk00000001/blk00000128  (
    .I0(\blk00000001/sig00000135 ),
    .I1(\blk00000001/sig00000137 ),
    .I2(\blk00000001/sig00000131 ),
    .I3(\blk00000001/sig00000133 ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000011a )
  );
  LUT6 #(
    .INIT ( 64'hCCCCFF00AAAAF0F0 ))
  \blk00000001/blk00000127  (
    .I0(\blk00000001/sig00000136 ),
    .I1(\blk00000001/sig00000138 ),
    .I2(\blk00000001/sig00000132 ),
    .I3(\blk00000001/sig00000134 ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000011b )
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00F0F0CCCC ))
  \blk00000001/blk00000126  (
    .I0(\blk00000001/sig0000013d ),
    .I1(\blk00000001/sig00000137 ),
    .I2(\blk00000001/sig0000013b ),
    .I3(\blk00000001/sig00000139 ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000120 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCAAAAFF00 ))
  \blk00000001/blk00000125  (
    .I0(\blk00000001/sig00000137 ),
    .I1(\blk00000001/sig00000135 ),
    .I2(\blk00000001/sig00000139 ),
    .I3(\blk00000001/sig00000133 ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000011c )
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00F0F0CCCC ))
  \blk00000001/blk00000124  (
    .I0(\blk00000001/sig0000013e ),
    .I1(\blk00000001/sig00000138 ),
    .I2(\blk00000001/sig0000013c ),
    .I3(\blk00000001/sig0000013a ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000121 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCAAAAFF00 ))
  \blk00000001/blk00000123  (
    .I0(\blk00000001/sig00000138 ),
    .I1(\blk00000001/sig00000136 ),
    .I2(\blk00000001/sig0000013a ),
    .I3(\blk00000001/sig00000134 ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000011d )
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00CCCCF0F0 ))
  \blk00000001/blk00000122  (
    .I0(\blk00000001/sig0000013f ),
    .I1(\blk00000001/sig0000013d ),
    .I2(\blk00000001/sig00000139 ),
    .I3(\blk00000001/sig0000013b ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000122 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \blk00000001/blk00000121  (
    .I0(\blk00000001/sig00000135 ),
    .I1(\blk00000001/sig00000139 ),
    .I2(\blk00000001/sig00000137 ),
    .I3(\blk00000001/sig0000013b ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000011e )
  );
  LUT6 #(
    .INIT ( 64'hAAAAFF00CCCCF0F0 ))
  \blk00000001/blk00000120  (
    .I0(\blk00000001/sig00000140 ),
    .I1(\blk00000001/sig0000013e ),
    .I2(\blk00000001/sig0000013a ),
    .I3(\blk00000001/sig0000013c ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000123 )
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  \blk00000001/blk0000011f  (
    .I0(\blk00000001/sig00000136 ),
    .I1(\blk00000001/sig0000013a ),
    .I2(\blk00000001/sig00000138 ),
    .I3(\blk00000001/sig0000013c ),
    .I4(\blk00000001/sig00000104 ),
    .I5(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000011f )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \blk00000001/blk0000011e  (
    .I0(\blk00000001/sig00000072 ),
    .I1(\blk00000001/sig0000006a ),
    .I2(\blk00000001/sig00000062 ),
    .I3(\blk00000001/sig0000005a ),
    .I4(\blk00000001/sig00000057 ),
    .I5(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig0000012a )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \blk00000001/blk0000011d  (
    .I0(\blk00000001/sig00000071 ),
    .I1(\blk00000001/sig00000069 ),
    .I2(\blk00000001/sig00000061 ),
    .I3(\blk00000001/sig00000059 ),
    .I4(\blk00000001/sig00000057 ),
    .I5(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig0000012b )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \blk00000001/blk0000011c  (
    .I0(\blk00000001/sig00000070 ),
    .I1(\blk00000001/sig00000068 ),
    .I2(\blk00000001/sig00000060 ),
    .I3(\blk00000001/sig00000058 ),
    .I4(\blk00000001/sig00000057 ),
    .I5(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig0000012c )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \blk00000001/blk0000011b  (
    .I0(\blk00000001/sig00000074 ),
    .I1(\blk00000001/sig0000006c ),
    .I2(\blk00000001/sig00000064 ),
    .I3(\blk00000001/sig0000005c ),
    .I4(\blk00000001/sig00000057 ),
    .I5(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000128 )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \blk00000001/blk0000011a  (
    .I0(\blk00000001/sig00000073 ),
    .I1(\blk00000001/sig0000006b ),
    .I2(\blk00000001/sig00000063 ),
    .I3(\blk00000001/sig0000005b ),
    .I4(\blk00000001/sig00000057 ),
    .I5(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000129 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000119  (
    .I0(\blk00000001/sig00000058 ),
    .I1(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig0000010e )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000118  (
    .I0(\blk00000001/sig0000005a ),
    .I1(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig0000010d )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000117  (
    .I0(\blk00000001/sig0000005c ),
    .I1(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig0000010c )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000116  (
    .I0(\blk00000001/sig00000059 ),
    .I1(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig000000f2 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000115  (
    .I0(\blk00000001/sig0000005a ),
    .I1(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig000000f1 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000114  (
    .I0(\blk00000001/sig0000005c ),
    .I1(\blk00000001/sig0000005d ),
    .O(\blk00000001/sig000000f0 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000113  (
    .I0(\blk00000001/sig0000005f ),
    .I1(\blk00000001/sig0000005e ),
    .O(\blk00000001/sig000000ef )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000112  (
    .I0(\blk00000001/sig00000060 ),
    .I1(\blk00000001/sig00000061 ),
    .O(\blk00000001/sig000000ee )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000111  (
    .I0(\blk00000001/sig00000062 ),
    .I1(\blk00000001/sig00000063 ),
    .O(\blk00000001/sig000000ed )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000110  (
    .I0(\blk00000001/sig00000064 ),
    .I1(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig000000ec )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000010f  (
    .I0(\blk00000001/sig00000067 ),
    .I1(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig000000eb )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000010e  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig000000ea )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000010d  (
    .I0(\blk00000001/sig0000006a ),
    .I1(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig000000e9 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000010c  (
    .I0(\blk00000001/sig0000006c ),
    .I1(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig000000e8 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000010b  (
    .I0(\blk00000001/sig0000006f ),
    .I1(\blk00000001/sig0000006e ),
    .O(\blk00000001/sig000000e7 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk0000010a  (
    .I0(\blk00000001/sig00000070 ),
    .I1(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig000000e6 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000109  (
    .I0(\blk00000001/sig00000072 ),
    .I1(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig000000e5 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000108  (
    .I0(\blk00000001/sig00000074 ),
    .I1(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig000000e4 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \blk00000001/blk00000107  (
    .I0(\blk00000001/sig00000077 ),
    .I1(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig000000e3 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk00000106  (
    .I0(\blk00000001/sig00000057 ),
    .I1(\blk00000001/sig000000fa ),
    .O(\blk00000001/sig00000050 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000105  (
    .I0(\blk00000001/sig000000fb ),
    .I1(\blk00000001/sig00000102 ),
    .I2(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000056 )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \blk00000001/blk00000104  (
    .I0(\blk00000001/sig0000009e ),
    .I1(\blk00000001/sig000000f3 ),
    .I2(\blk00000001/sig0000015b ),
    .O(\blk00000001/sig00000097 )
  );
  LUT5 #(
    .INIT ( 32'h44441444 ))
  \blk00000001/blk00000103  (
    .I0(\blk00000001/sig0000009e ),
    .I1(\blk00000001/sig000000a3 ),
    .I2(\blk00000001/sig000000a2 ),
    .I3(\blk00000001/sig000000a1 ),
    .I4(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig0000009b )
  );
  LUT3 #(
    .INIT ( 8'h59 ))
  \blk00000001/blk00000102  (
    .I0(\blk00000001/sig00000052 ),
    .I1(\blk00000001/sig00000051 ),
    .I2(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig000000a1 )
  );
  LUT5 #(
    .INIT ( 32'hF7FFFFFF ))
  \blk00000001/blk00000101  (
    .I0(\blk00000001/sig00000054 ),
    .I1(\blk00000001/sig00000051 ),
    .I2(\blk00000001/sig000000f3 ),
    .I3(\blk00000001/sig00000052 ),
    .I4(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig000000a0 )
  );
  LUT4 #(
    .INIT ( 16'h5595 ))
  \blk00000001/blk00000100  (
    .I0(\blk00000001/sig00000053 ),
    .I1(\blk00000001/sig00000052 ),
    .I2(\blk00000001/sig00000051 ),
    .I3(\blk00000001/sig000000f3 ),
    .O(\blk00000001/sig000000a2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ff  (
    .I0(s_axis_a_tdata[9]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000081 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000fe  (
    .I0(s_axis_a_tdata[8]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000080 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000fd  (
    .I0(s_axis_a_tdata[7]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000007f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000fc  (
    .I0(s_axis_a_tdata[6]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000007e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000fb  (
    .I0(s_axis_a_tdata[5]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000007d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000fa  (
    .I0(s_axis_a_tdata[4]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000007c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f9  (
    .I0(s_axis_a_tdata[3]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000007b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f8  (
    .I0(s_axis_a_tdata[30]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000096 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f7  (
    .I0(s_axis_a_tdata[2]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000007a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f6  (
    .I0(s_axis_a_tdata[29]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000095 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f5  (
    .I0(s_axis_a_tdata[28]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000094 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f4  (
    .I0(s_axis_a_tdata[27]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000093 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f3  (
    .I0(s_axis_a_tdata[26]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000092 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f2  (
    .I0(s_axis_a_tdata[25]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000091 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f1  (
    .I0(s_axis_a_tdata[24]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000090 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000f0  (
    .I0(s_axis_a_tdata[23]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000008f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ef  (
    .I0(s_axis_a_tdata[22]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000008e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ee  (
    .I0(s_axis_a_tdata[21]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000008d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ed  (
    .I0(s_axis_a_tdata[20]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000008c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ec  (
    .I0(s_axis_a_tdata[1]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000079 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000eb  (
    .I0(s_axis_a_tdata[19]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000008b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000ea  (
    .I0(s_axis_a_tdata[18]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig0000008a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e9  (
    .I0(s_axis_a_tdata[17]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000089 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e8  (
    .I0(s_axis_a_tdata[16]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000088 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e7  (
    .I0(s_axis_a_tdata[15]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000087 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e6  (
    .I0(s_axis_a_tdata[14]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000086 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e5  (
    .I0(s_axis_a_tdata[13]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000085 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e4  (
    .I0(s_axis_a_tdata[12]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000084 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e3  (
    .I0(s_axis_a_tdata[11]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000083 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e2  (
    .I0(s_axis_a_tdata[10]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000082 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000e1  (
    .I0(s_axis_a_tdata[0]),
    .I1(s_axis_a_tdata[31]),
    .O(\blk00000001/sig00000078 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000e0  (
    .C(aclk),
    .CE(aclken),
    .D(s_axis_a_tvalid),
    .Q(\blk00000001/sig000001b5 )
  );
  FD   \blk00000001/blk000000df  (
    .C(aclk),
    .D(\blk00000001/sig0000019e ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[0])
  );
  FD   \blk00000001/blk000000de  (
    .C(aclk),
    .D(\blk00000001/sig0000019f ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[1])
  );
  FD   \blk00000001/blk000000dd  (
    .C(aclk),
    .D(\blk00000001/sig000001a0 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[2])
  );
  FD   \blk00000001/blk000000dc  (
    .C(aclk),
    .D(\blk00000001/sig000001a1 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[3])
  );
  FD   \blk00000001/blk000000db  (
    .C(aclk),
    .D(\blk00000001/sig000001a2 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[4])
  );
  FD   \blk00000001/blk000000da  (
    .C(aclk),
    .D(\blk00000001/sig000001a3 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[5])
  );
  FD   \blk00000001/blk000000d9  (
    .C(aclk),
    .D(\blk00000001/sig000001a4 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[6])
  );
  FD   \blk00000001/blk000000d8  (
    .C(aclk),
    .D(\blk00000001/sig000001a5 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[7])
  );
  FD   \blk00000001/blk000000d7  (
    .C(aclk),
    .D(\blk00000001/sig000001a6 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[8])
  );
  FD   \blk00000001/blk000000d6  (
    .C(aclk),
    .D(\blk00000001/sig000001a7 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[9])
  );
  FD   \blk00000001/blk000000d5  (
    .C(aclk),
    .D(\blk00000001/sig000001a8 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[10])
  );
  FD   \blk00000001/blk000000d4  (
    .C(aclk),
    .D(\blk00000001/sig000001a9 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[11])
  );
  FD   \blk00000001/blk000000d3  (
    .C(aclk),
    .D(\blk00000001/sig000001aa ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[12])
  );
  FD   \blk00000001/blk000000d2  (
    .C(aclk),
    .D(\blk00000001/sig000001ab ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[13])
  );
  FD   \blk00000001/blk000000d1  (
    .C(aclk),
    .D(\blk00000001/sig000001ac ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[14])
  );
  FD   \blk00000001/blk000000d0  (
    .C(aclk),
    .D(\blk00000001/sig000001ad ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[15])
  );
  FD   \blk00000001/blk000000cf  (
    .C(aclk),
    .D(\blk00000001/sig000001ae ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[16])
  );
  FD   \blk00000001/blk000000ce  (
    .C(aclk),
    .D(\blk00000001/sig000001af ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[17])
  );
  FD   \blk00000001/blk000000cd  (
    .C(aclk),
    .D(\blk00000001/sig000001b0 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[18])
  );
  FD   \blk00000001/blk000000cc  (
    .C(aclk),
    .D(\blk00000001/sig000001b1 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[19])
  );
  FD   \blk00000001/blk000000cb  (
    .C(aclk),
    .D(\blk00000001/sig000001b2 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[20])
  );
  FD   \blk00000001/blk000000ca  (
    .C(aclk),
    .D(\blk00000001/sig000001b3 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[21])
  );
  FD   \blk00000001/blk000000c9  (
    .C(aclk),
    .D(\blk00000001/sig000001b4 ),
    .Q(NlwRenamedSig_OI_m_axis_result_tdata[22])
  );
  MUXCY   \blk00000001/blk000000c8  (
    .CI(\blk00000001/sig0000015c ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000144 ),
    .O(\blk00000001/sig0000019d )
  );
  XORCY   \blk00000001/blk000000c7  (
    .CI(\blk00000001/sig0000015c ),
    .LI(\blk00000001/sig00000144 ),
    .O(\blk00000001/sig00000044 )
  );
  MUXCY   \blk00000001/blk000000c6  (
    .CI(\blk00000001/sig0000019d ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000145 ),
    .O(\blk00000001/sig0000019c )
  );
  XORCY   \blk00000001/blk000000c5  (
    .CI(\blk00000001/sig0000019d ),
    .LI(\blk00000001/sig00000145 ),
    .O(\blk00000001/sig00000045 )
  );
  MUXCY   \blk00000001/blk000000c4  (
    .CI(\blk00000001/sig0000019c ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000146 ),
    .O(\blk00000001/sig0000019b )
  );
  XORCY   \blk00000001/blk000000c3  (
    .CI(\blk00000001/sig0000019c ),
    .LI(\blk00000001/sig00000146 ),
    .O(\blk00000001/sig00000046 )
  );
  MUXCY   \blk00000001/blk000000c2  (
    .CI(\blk00000001/sig0000019b ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000147 ),
    .O(\blk00000001/sig0000019a )
  );
  XORCY   \blk00000001/blk000000c1  (
    .CI(\blk00000001/sig0000019b ),
    .LI(\blk00000001/sig00000147 ),
    .O(\blk00000001/sig00000047 )
  );
  MUXCY   \blk00000001/blk000000c0  (
    .CI(\blk00000001/sig0000019a ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000148 ),
    .O(\blk00000001/sig00000199 )
  );
  XORCY   \blk00000001/blk000000bf  (
    .CI(\blk00000001/sig0000019a ),
    .LI(\blk00000001/sig00000148 ),
    .O(\blk00000001/sig00000048 )
  );
  MUXCY   \blk00000001/blk000000be  (
    .CI(\blk00000001/sig00000199 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000149 ),
    .O(\blk00000001/sig00000198 )
  );
  XORCY   \blk00000001/blk000000bd  (
    .CI(\blk00000001/sig00000199 ),
    .LI(\blk00000001/sig00000149 ),
    .O(\blk00000001/sig00000049 )
  );
  MUXCY   \blk00000001/blk000000bc  (
    .CI(\blk00000001/sig00000198 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000014a ),
    .O(\blk00000001/sig00000197 )
  );
  XORCY   \blk00000001/blk000000bb  (
    .CI(\blk00000001/sig00000198 ),
    .LI(\blk00000001/sig0000014a ),
    .O(\blk00000001/sig0000004a )
  );
  MUXCY   \blk00000001/blk000000ba  (
    .CI(\blk00000001/sig00000197 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000014b ),
    .O(\blk00000001/sig00000196 )
  );
  XORCY   \blk00000001/blk000000b9  (
    .CI(\blk00000001/sig00000197 ),
    .LI(\blk00000001/sig0000014b ),
    .O(\blk00000001/sig0000004b )
  );
  MUXCY   \blk00000001/blk000000b8  (
    .CI(\blk00000001/sig00000196 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000014c ),
    .O(\blk00000001/sig00000195 )
  );
  XORCY   \blk00000001/blk000000b7  (
    .CI(\blk00000001/sig00000196 ),
    .LI(\blk00000001/sig0000014c ),
    .O(\blk00000001/sig0000004c )
  );
  MUXCY   \blk00000001/blk000000b6  (
    .CI(\blk00000001/sig00000195 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig00000194 )
  );
  XORCY   \blk00000001/blk000000b5  (
    .CI(\blk00000001/sig00000195 ),
    .LI(\blk00000001/sig0000014d ),
    .O(\blk00000001/sig0000004d )
  );
  MUXCY   \blk00000001/blk000000b4  (
    .CI(\blk00000001/sig00000194 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000014e ),
    .O(\blk00000001/sig00000193 )
  );
  XORCY   \blk00000001/blk000000b3  (
    .CI(\blk00000001/sig00000194 ),
    .LI(\blk00000001/sig0000014e ),
    .O(\blk00000001/sig0000004e )
  );
  XORCY   \blk00000001/blk000000b2  (
    .CI(\blk00000001/sig00000193 ),
    .LI(\blk00000001/sig00000143 ),
    .O(\blk00000001/sig0000015b )
  );
  MUXCY   \blk00000001/blk000000b1  (
    .CI(\blk00000001/sig0000015d ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000014f ),
    .O(\blk00000001/sig00000192 )
  );
  XORCY   \blk00000001/blk000000b0  (
    .CI(\blk00000001/sig0000015d ),
    .LI(\blk00000001/sig0000014f ),
    .O(\blk00000001/sig00000191 )
  );
  MUXCY   \blk00000001/blk000000af  (
    .CI(\blk00000001/sig00000192 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000150 ),
    .O(\blk00000001/sig00000190 )
  );
  XORCY   \blk00000001/blk000000ae  (
    .CI(\blk00000001/sig00000192 ),
    .LI(\blk00000001/sig00000150 ),
    .O(\blk00000001/sig0000018f )
  );
  MUXCY   \blk00000001/blk000000ad  (
    .CI(\blk00000001/sig00000190 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000151 ),
    .O(\blk00000001/sig0000018e )
  );
  XORCY   \blk00000001/blk000000ac  (
    .CI(\blk00000001/sig00000190 ),
    .LI(\blk00000001/sig00000151 ),
    .O(\blk00000001/sig0000018d )
  );
  MUXCY   \blk00000001/blk000000ab  (
    .CI(\blk00000001/sig0000018e ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000152 ),
    .O(\blk00000001/sig0000018c )
  );
  XORCY   \blk00000001/blk000000aa  (
    .CI(\blk00000001/sig0000018e ),
    .LI(\blk00000001/sig00000152 ),
    .O(\blk00000001/sig0000018b )
  );
  MUXCY   \blk00000001/blk000000a9  (
    .CI(\blk00000001/sig0000018c ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000153 ),
    .O(\blk00000001/sig0000018a )
  );
  XORCY   \blk00000001/blk000000a8  (
    .CI(\blk00000001/sig0000018c ),
    .LI(\blk00000001/sig00000153 ),
    .O(\blk00000001/sig00000189 )
  );
  MUXCY   \blk00000001/blk000000a7  (
    .CI(\blk00000001/sig0000018a ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000154 ),
    .O(\blk00000001/sig00000188 )
  );
  XORCY   \blk00000001/blk000000a6  (
    .CI(\blk00000001/sig0000018a ),
    .LI(\blk00000001/sig00000154 ),
    .O(\blk00000001/sig00000187 )
  );
  MUXCY   \blk00000001/blk000000a5  (
    .CI(\blk00000001/sig00000188 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000155 ),
    .O(\blk00000001/sig00000186 )
  );
  XORCY   \blk00000001/blk000000a4  (
    .CI(\blk00000001/sig00000188 ),
    .LI(\blk00000001/sig00000155 ),
    .O(\blk00000001/sig00000185 )
  );
  MUXCY   \blk00000001/blk000000a3  (
    .CI(\blk00000001/sig00000186 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000156 ),
    .O(\blk00000001/sig00000184 )
  );
  XORCY   \blk00000001/blk000000a2  (
    .CI(\blk00000001/sig00000186 ),
    .LI(\blk00000001/sig00000156 ),
    .O(\blk00000001/sig00000183 )
  );
  MUXCY   \blk00000001/blk000000a1  (
    .CI(\blk00000001/sig00000184 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000157 ),
    .O(\blk00000001/sig00000182 )
  );
  XORCY   \blk00000001/blk000000a0  (
    .CI(\blk00000001/sig00000184 ),
    .LI(\blk00000001/sig00000157 ),
    .O(\blk00000001/sig00000181 )
  );
  MUXCY   \blk00000001/blk0000009f  (
    .CI(\blk00000001/sig00000182 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000158 ),
    .O(\blk00000001/sig00000180 )
  );
  XORCY   \blk00000001/blk0000009e  (
    .CI(\blk00000001/sig00000182 ),
    .LI(\blk00000001/sig00000158 ),
    .O(\blk00000001/sig0000017f )
  );
  MUXCY   \blk00000001/blk0000009d  (
    .CI(\blk00000001/sig00000180 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000159 ),
    .O(\blk00000001/sig0000017e )
  );
  XORCY   \blk00000001/blk0000009c  (
    .CI(\blk00000001/sig00000180 ),
    .LI(\blk00000001/sig00000159 ),
    .O(\blk00000001/sig0000017d )
  );
  MUXCY   \blk00000001/blk0000009b  (
    .CI(\blk00000001/sig0000017e ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000015a ),
    .O(\blk00000001/sig0000015c )
  );
  XORCY   \blk00000001/blk0000009a  (
    .CI(\blk00000001/sig0000017e ),
    .LI(\blk00000001/sig0000015a ),
    .O(\blk00000001/sig0000017c )
  );
  MUXCY   \blk00000001/blk00000099  (
    .CI(\blk00000001/sig00000143 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000179 ),
    .O(\blk00000001/sig0000017b )
  );
  MUXCY   \blk00000001/blk00000098  (
    .CI(\blk00000001/sig0000017b ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000177 ),
    .O(\blk00000001/sig0000017a )
  );
  MUXCY   \blk00000001/blk00000097  (
    .CI(\blk00000001/sig0000017a ),
    .DI(\blk00000001/sig00000143 ),
    .S(\blk00000001/sig00000178 ),
    .O(\blk00000001/sig0000015d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000096  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000127 ),
    .Q(\blk00000001/sig0000015e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000095  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000126 ),
    .Q(\blk00000001/sig0000015f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000094  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000125 ),
    .Q(\blk00000001/sig00000160 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000093  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000124 ),
    .Q(\blk00000001/sig0000016d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000092  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000123 ),
    .Q(\blk00000001/sig0000016e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000091  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000122 ),
    .Q(\blk00000001/sig0000016f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000090  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000121 ),
    .Q(\blk00000001/sig00000170 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008f  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000120 ),
    .Q(\blk00000001/sig00000171 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008e  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000011f ),
    .Q(\blk00000001/sig00000172 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008d  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000011e ),
    .Q(\blk00000001/sig00000173 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008c  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000011d ),
    .Q(\blk00000001/sig00000174 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008b  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000011c ),
    .Q(\blk00000001/sig00000175 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008a  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000011b ),
    .Q(\blk00000001/sig00000176 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000089  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000011a ),
    .Q(\blk00000001/sig00000161 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000088  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000119 ),
    .Q(\blk00000001/sig00000162 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000087  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000118 ),
    .Q(\blk00000001/sig00000163 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000086  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000117 ),
    .Q(\blk00000001/sig00000164 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000085  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000116 ),
    .Q(\blk00000001/sig00000165 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000084  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000115 ),
    .Q(\blk00000001/sig00000166 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000083  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000114 ),
    .Q(\blk00000001/sig00000167 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000082  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000113 ),
    .Q(\blk00000001/sig00000168 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000081  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000112 ),
    .Q(\blk00000001/sig00000169 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000080  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000111 ),
    .Q(\blk00000001/sig0000016a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007f  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000110 ),
    .Q(\blk00000001/sig0000016b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007e  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000010f ),
    .Q(\blk00000001/sig0000016c )
  );
  MUXCY   \blk00000001/blk0000007d  (
    .CI(\blk00000001/sig00000107 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000010e ),
    .O(\blk00000001/sig0000010a )
  );
  MUXCY   \blk00000001/blk0000007c  (
    .CI(\blk00000001/sig0000010a ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000010d ),
    .O(\blk00000001/sig00000109 )
  );
  MUXCY   \blk00000001/blk0000007b  (
    .CI(\blk00000001/sig00000109 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000010c ),
    .O(\blk00000001/sig00000108 )
  );
  MUXCY   \blk00000001/blk0000007a  (
    .CI(\blk00000001/sig00000143 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000143 ),
    .O(\blk00000001/sig00000107 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000079  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig0000010b ),
    .Q(\blk00000001/sig0000004f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000078  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000106 ),
    .Q(\blk00000001/sig000000f3 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000077  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000104 ),
    .Q(\blk00000001/sig00000052 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000076  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000055 ),
    .Q(\blk00000001/sig00000051 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000075  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000057 ),
    .Q(\blk00000001/sig00000054 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000074  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000056 ),
    .Q(\blk00000001/sig00000053 )
  );
  MUXCY   \blk00000001/blk00000073  (
    .CI(\blk00000001/sig00000143 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000e3 ),
    .O(\blk00000001/sig000000ff )
  );
  MUXCY   \blk00000001/blk00000072  (
    .CI(\blk00000001/sig000000ff ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000e4 ),
    .O(\blk00000001/sig00000100 )
  );
  MUXCY   \blk00000001/blk00000071  (
    .CI(\blk00000001/sig00000100 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000e5 ),
    .O(\blk00000001/sig00000101 )
  );
  MUXCY   \blk00000001/blk00000070  (
    .CI(\blk00000001/sig00000101 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000e6 ),
    .O(\blk00000001/sig00000102 )
  );
  MUXCY   \blk00000001/blk0000006f  (
    .CI(\blk00000001/sig00000102 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000e7 ),
    .O(\blk00000001/sig000000fc )
  );
  MUXCY   \blk00000001/blk0000006e  (
    .CI(\blk00000001/sig000000fc ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000e8 ),
    .O(\blk00000001/sig000000fd )
  );
  MUXCY   \blk00000001/blk0000006d  (
    .CI(\blk00000001/sig000000fd ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000e9 ),
    .O(\blk00000001/sig000000fe )
  );
  MUXCY   \blk00000001/blk0000006c  (
    .CI(\blk00000001/sig000000fe ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000ea ),
    .O(\blk00000001/sig00000057 )
  );
  MUXCY   \blk00000001/blk0000006b  (
    .CI(\blk00000001/sig00000143 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000eb ),
    .O(\blk00000001/sig000000f7 )
  );
  MUXCY   \blk00000001/blk0000006a  (
    .CI(\blk00000001/sig000000f7 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000ec ),
    .O(\blk00000001/sig000000f8 )
  );
  MUXCY   \blk00000001/blk00000069  (
    .CI(\blk00000001/sig000000f8 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000ed ),
    .O(\blk00000001/sig000000f9 )
  );
  MUXCY   \blk00000001/blk00000068  (
    .CI(\blk00000001/sig000000f9 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000ee ),
    .O(\blk00000001/sig000000fb )
  );
  MUXCY   \blk00000001/blk00000067  (
    .CI(\blk00000001/sig000000fb ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000ef ),
    .O(\blk00000001/sig000000f4 )
  );
  MUXCY   \blk00000001/blk00000066  (
    .CI(\blk00000001/sig000000f4 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000f0 ),
    .O(\blk00000001/sig000000f5 )
  );
  MUXCY   \blk00000001/blk00000065  (
    .CI(\blk00000001/sig000000f5 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000f1 ),
    .O(\blk00000001/sig000000f6 )
  );
  MUXCY   \blk00000001/blk00000064  (
    .CI(\blk00000001/sig000000f6 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig000000f2 ),
    .O(\blk00000001/sig000000fa )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000063  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000e1 ),
    .Q(\blk00000001/sig00000058 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000062  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000df ),
    .Q(\blk00000001/sig00000059 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000061  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000dd ),
    .Q(\blk00000001/sig0000005a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000060  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000db ),
    .Q(\blk00000001/sig0000005b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005f  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000d9 ),
    .Q(\blk00000001/sig0000005c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005e  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000d7 ),
    .Q(\blk00000001/sig0000005d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005d  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000d5 ),
    .Q(\blk00000001/sig0000005e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005c  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000d3 ),
    .Q(\blk00000001/sig0000005f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005b  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000d1 ),
    .Q(\blk00000001/sig00000060 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005a  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000cf ),
    .Q(\blk00000001/sig00000061 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000059  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000cd ),
    .Q(\blk00000001/sig00000062 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000058  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000cb ),
    .Q(\blk00000001/sig00000063 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000057  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000c9 ),
    .Q(\blk00000001/sig00000064 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000056  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000c7 ),
    .Q(\blk00000001/sig00000065 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000055  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000c5 ),
    .Q(\blk00000001/sig00000066 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000054  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000c3 ),
    .Q(\blk00000001/sig00000067 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000053  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000c1 ),
    .Q(\blk00000001/sig00000068 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000052  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000bf ),
    .Q(\blk00000001/sig00000069 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000051  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000bd ),
    .Q(\blk00000001/sig0000006a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000050  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000bb ),
    .Q(\blk00000001/sig0000006b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004f  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000b9 ),
    .Q(\blk00000001/sig0000006c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004e  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000b7 ),
    .Q(\blk00000001/sig0000006d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000b5 ),
    .Q(\blk00000001/sig0000006e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004c  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000b3 ),
    .Q(\blk00000001/sig0000006f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004b  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000b1 ),
    .Q(\blk00000001/sig00000070 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004a  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000af ),
    .Q(\blk00000001/sig00000071 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000049  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000ad ),
    .Q(\blk00000001/sig00000072 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000048  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000ab ),
    .Q(\blk00000001/sig00000073 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000047  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000a9 ),
    .Q(\blk00000001/sig00000074 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000046  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000a7 ),
    .Q(\blk00000001/sig00000075 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000045  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000a5 ),
    .Q(\blk00000001/sig00000076 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000044  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig000000a4 ),
    .Q(\blk00000001/sig00000077 )
  );
  MUXCY   \blk00000001/blk00000043  (
    .CI(s_axis_a_tdata[31]),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig000000e2 )
  );
  XORCY   \blk00000001/blk00000042  (
    .CI(s_axis_a_tdata[31]),
    .LI(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig000000e1 )
  );
  MUXCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig000000e2 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig000000e0 )
  );
  XORCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig000000e2 ),
    .LI(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig000000df )
  );
  MUXCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig000000e0 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000007a ),
    .O(\blk00000001/sig000000de )
  );
  XORCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig000000e0 ),
    .LI(\blk00000001/sig0000007a ),
    .O(\blk00000001/sig000000dd )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig000000de ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig000000dc )
  );
  XORCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig000000de ),
    .LI(\blk00000001/sig0000007b ),
    .O(\blk00000001/sig000000db )
  );
  MUXCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig000000dc ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000007c ),
    .O(\blk00000001/sig000000da )
  );
  XORCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig000000dc ),
    .LI(\blk00000001/sig0000007c ),
    .O(\blk00000001/sig000000d9 )
  );
  MUXCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig000000da ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000007d ),
    .O(\blk00000001/sig000000d8 )
  );
  XORCY   \blk00000001/blk00000038  (
    .CI(\blk00000001/sig000000da ),
    .LI(\blk00000001/sig0000007d ),
    .O(\blk00000001/sig000000d7 )
  );
  MUXCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig000000d8 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig000000d6 )
  );
  XORCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig000000d8 ),
    .LI(\blk00000001/sig0000007e ),
    .O(\blk00000001/sig000000d5 )
  );
  MUXCY   \blk00000001/blk00000035  (
    .CI(\blk00000001/sig000000d6 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig000000d4 )
  );
  XORCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig000000d6 ),
    .LI(\blk00000001/sig0000007f ),
    .O(\blk00000001/sig000000d3 )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig000000d4 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig000000d2 )
  );
  XORCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig000000d4 ),
    .LI(\blk00000001/sig00000080 ),
    .O(\blk00000001/sig000000d1 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig000000d2 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig000000d0 )
  );
  XORCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig000000d2 ),
    .LI(\blk00000001/sig00000081 ),
    .O(\blk00000001/sig000000cf )
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig000000d0 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig000000ce )
  );
  XORCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig000000d0 ),
    .LI(\blk00000001/sig00000082 ),
    .O(\blk00000001/sig000000cd )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig000000ce ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig000000cc )
  );
  XORCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig000000ce ),
    .LI(\blk00000001/sig00000083 ),
    .O(\blk00000001/sig000000cb )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig000000cc ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig000000ca )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig000000cc ),
    .LI(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig000000c9 )
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig000000ca ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000085 ),
    .O(\blk00000001/sig000000c8 )
  );
  XORCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig000000ca ),
    .LI(\blk00000001/sig00000085 ),
    .O(\blk00000001/sig000000c7 )
  );
  MUXCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig000000c8 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig000000c6 )
  );
  XORCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig000000c8 ),
    .LI(\blk00000001/sig00000086 ),
    .O(\blk00000001/sig000000c5 )
  );
  MUXCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig000000c6 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000087 ),
    .O(\blk00000001/sig000000c4 )
  );
  XORCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig000000c6 ),
    .LI(\blk00000001/sig00000087 ),
    .O(\blk00000001/sig000000c3 )
  );
  MUXCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig000000c4 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig000000c2 )
  );
  XORCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig000000c4 ),
    .LI(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig000000c1 )
  );
  MUXCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig000000c2 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig000000c0 )
  );
  XORCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig000000c2 ),
    .LI(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig000000bf )
  );
  MUXCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig000000c0 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig000000be )
  );
  XORCY   \blk00000001/blk0000001e  (
    .CI(\blk00000001/sig000000c0 ),
    .LI(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig000000bd )
  );
  MUXCY   \blk00000001/blk0000001d  (
    .CI(\blk00000001/sig000000be ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000008b ),
    .O(\blk00000001/sig000000bc )
  );
  XORCY   \blk00000001/blk0000001c  (
    .CI(\blk00000001/sig000000be ),
    .LI(\blk00000001/sig0000008b ),
    .O(\blk00000001/sig000000bb )
  );
  MUXCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig000000bc ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig000000ba )
  );
  XORCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig000000bc ),
    .LI(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig000000b9 )
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig000000ba ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000008d ),
    .O(\blk00000001/sig000000b8 )
  );
  XORCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig000000ba ),
    .LI(\blk00000001/sig0000008d ),
    .O(\blk00000001/sig000000b7 )
  );
  MUXCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig000000b8 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig000000b6 )
  );
  XORCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig000000b8 ),
    .LI(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig000000b5 )
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig000000b6 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig0000008f ),
    .O(\blk00000001/sig000000b4 )
  );
  XORCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig000000b6 ),
    .LI(\blk00000001/sig0000008f ),
    .O(\blk00000001/sig000000b3 )
  );
  MUXCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig000000b4 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig000000b2 )
  );
  XORCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig000000b4 ),
    .LI(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig000000b1 )
  );
  MUXCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig000000b2 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000091 ),
    .O(\blk00000001/sig000000b0 )
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig000000b2 ),
    .LI(\blk00000001/sig00000091 ),
    .O(\blk00000001/sig000000af )
  );
  MUXCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig000000b0 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000092 ),
    .O(\blk00000001/sig000000ae )
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig000000b0 ),
    .LI(\blk00000001/sig00000092 ),
    .O(\blk00000001/sig000000ad )
  );
  MUXCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig000000ae ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000093 ),
    .O(\blk00000001/sig000000ac )
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig000000ae ),
    .LI(\blk00000001/sig00000093 ),
    .O(\blk00000001/sig000000ab )
  );
  MUXCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig000000ac ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000094 ),
    .O(\blk00000001/sig000000aa )
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig000000ac ),
    .LI(\blk00000001/sig00000094 ),
    .O(\blk00000001/sig000000a9 )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig000000aa ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000095 ),
    .O(\blk00000001/sig000000a8 )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig000000aa ),
    .LI(\blk00000001/sig00000095 ),
    .O(\blk00000001/sig000000a7 )
  );
  MUXCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig000000a8 ),
    .DI(\blk00000001/sig00000177 ),
    .S(\blk00000001/sig00000096 ),
    .O(\blk00000001/sig000000a6 )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig000000a8 ),
    .LI(\blk00000001/sig00000096 ),
    .O(\blk00000001/sig000000a5 )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig000000a6 ),
    .LI(\blk00000001/sig00000177 ),
    .O(\blk00000001/sig000000a4 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(aclk),
    .CE(aclken),
    .D(\blk00000001/sig00000050 ),
    .Q(\blk00000001/sig0000009e )
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig00000177 )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig00000143 )
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
