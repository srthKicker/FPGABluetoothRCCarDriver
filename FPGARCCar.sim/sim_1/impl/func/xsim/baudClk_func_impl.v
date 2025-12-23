// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Apr 17 10:59:01 2025
// Host        : srth-ThinkPadP50 running 64-bit Linux Mint 22.1
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /media/srth/GamerDisk/Apps/Vivado/RCCar/RCCar.sim/sim_1/impl/func/xsim/baudClk_func_impl.v
// Design      : uart
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module baudClk
   (lastRST,
    waiting,
    bodCk_reg_0,
    rstBaud,
    CLK,
    SR);
  output lastRST;
  output waiting;
  output bodCk_reg_0;
  input rstBaud;
  input CLK;
  input [0:0]SR;

  wire CLK;
  wire [0:0]SR;
  wire bodCk_i_1_n_0;
  wire bodCk_i_2_n_0;
  wire bodCk_reg_0;
  wire [16:0]count;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[16]_i_6_n_0 ;
  wire \count[16]_i_7_n_0 ;
  wire \count[16]_i_8_n_0 ;
  wire [16:0]count_0;
  wire \count_reg[12]_i_2_n_0 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[8]_i_2_n_0 ;
  wire [16:1]data0;
  wire lastRST;
  wire \numBits[3]_i_1_n_0 ;
  wire [3:0]numBits_reg;
  wire [3:0]p_0_in;
  wire rstBaud;
  wire waiting;
  wire waiting_i_1_n_0;
  wire [2:0]\NLW_count_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[16]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_2_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAAACCAC)) 
    bodCk_i_1
       (.I0(bodCk_reg_0),
        .I1(\count[16]_i_5_n_0 ),
        .I2(rstBaud),
        .I3(lastRST),
        .I4(bodCk_i_2_n_0),
        .O(bodCk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    bodCk_i_2
       (.I0(numBits_reg[1]),
        .I1(numBits_reg[0]),
        .I2(numBits_reg[3]),
        .I3(numBits_reg[2]),
        .O(bodCk_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bodCk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(bodCk_i_1_n_0),
        .Q(bodCk_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[10]_i_1 
       (.I0(data0[10]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[11]_i_1 
       (.I0(data0[11]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_1 
       (.I0(data0[12]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[13]_i_1 
       (.I0(data0[13]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[14]_i_1 
       (.I0(data0[14]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[15]_i_1 
       (.I0(data0[15]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[15]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \count[16]_i_2 
       (.I0(numBits_reg[2]),
        .I1(numBits_reg[3]),
        .I2(numBits_reg[0]),
        .I3(numBits_reg[1]),
        .O(\count[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[16]_i_3 
       (.I0(data0[16]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[16]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \count[16]_i_5 
       (.I0(\count[16]_i_6_n_0 ),
        .I1(\count[16]_i_7_n_0 ),
        .I2(\count[16]_i_8_n_0 ),
        .I3(count[15]),
        .I4(count[10]),
        .I5(count[6]),
        .O(\count[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \count[16]_i_6 
       (.I0(count[8]),
        .I1(count[11]),
        .I2(count[1]),
        .I3(count[14]),
        .I4(count[16]),
        .I5(count[7]),
        .O(\count[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[16]_i_7 
       (.I0(count[0]),
        .I1(count[12]),
        .I2(count[13]),
        .I3(count[9]),
        .O(\count[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \count[16]_i_8 
       (.I0(count[3]),
        .I1(count[2]),
        .I2(count[5]),
        .I3(count[4]),
        .O(\count[16]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[1]_i_1 
       (.I0(data0[1]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1 
       (.I0(data0[2]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_1 
       (.I0(data0[3]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_1 
       (.I0(data0[4]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[5]_i_1 
       (.I0(data0[5]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[6]_i_1 
       (.I0(data0[6]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_1 
       (.I0(data0[7]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_1 
       (.I0(data0[8]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[9]_i_1 
       (.I0(data0[9]),
        .I1(\count[16]_i_5_n_0 ),
        .O(count_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[0]),
        .Q(count[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[10]),
        .Q(count[10]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[11]),
        .Q(count[11]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[12]),
        .Q(count[12]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[12]_i_2 
       (.CI(\count_reg[8]_i_2_n_0 ),
        .CO({\count_reg[12]_i_2_n_0 ,\NLW_count_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(count[12:9]));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[13] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[13]),
        .Q(count[13]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[14] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[14]),
        .Q(count[14]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[15] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[15]),
        .Q(count[15]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[16] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[16]),
        .Q(count[16]),
        .S(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[16]_i_4 
       (.CI(\count_reg[12]_i_2_n_0 ),
        .CO(\NLW_count_reg[16]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(count[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[1]),
        .Q(count[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[2]),
        .Q(count[2]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[3]),
        .Q(count[3]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[4]),
        .Q(count[4]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_2_n_0 ,\NLW_count_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[5]),
        .Q(count[5]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[6]),
        .Q(count[6]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[7]),
        .Q(count[7]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[8]),
        .Q(count[8]),
        .S(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_reg[8]_i_2 
       (.CI(\count_reg[4]_i_2_n_0 ),
        .CO({\count_reg[8]_i_2_n_0 ,\NLW_count_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(\count[16]_i_2_n_0 ),
        .D(count_0[9]),
        .Q(count[9]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    lastRST_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rstBaud),
        .Q(lastRST),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \numBits[0]_i_1 
       (.I0(numBits_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \numBits[1]_i_1 
       (.I0(numBits_reg[0]),
        .I1(numBits_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \numBits[2]_i_1 
       (.I0(numBits_reg[0]),
        .I1(numBits_reg[1]),
        .I2(numBits_reg[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \numBits[3]_i_1 
       (.I0(\count[16]_i_5_n_0 ),
        .I1(numBits_reg[2]),
        .I2(numBits_reg[3]),
        .I3(numBits_reg[0]),
        .I4(numBits_reg[1]),
        .O(\numBits[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \numBits[3]_i_2 
       (.I0(numBits_reg[3]),
        .I1(numBits_reg[0]),
        .I2(numBits_reg[1]),
        .I3(numBits_reg[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \numBits_reg[0] 
       (.C(CLK),
        .CE(\numBits[3]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(numBits_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \numBits_reg[1] 
       (.C(CLK),
        .CE(\numBits[3]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(numBits_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \numBits_reg[2] 
       (.C(CLK),
        .CE(\numBits[3]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(numBits_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \numBits_reg[3] 
       (.C(CLK),
        .CE(\numBits[3]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(numBits_reg[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000AAAAABAA)) 
    waiting_i_1
       (.I0(waiting),
        .I1(numBits_reg[1]),
        .I2(numBits_reg[0]),
        .I3(numBits_reg[3]),
        .I4(numBits_reg[2]),
        .I5(SR),
        .O(waiting_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    waiting_reg
       (.C(CLK),
        .CE(1'b1),
        .D(waiting_i_1_n_0),
        .Q(waiting),
        .R(1'b0));
endmodule

module ctrlMotor
   (lPWM_OBUF,
    rPWM_OBUF,
    lMotor0,
    Q,
    trigFSM,
    rMotor0);
  output lPWM_OBUF;
  output rPWM_OBUF;
  input lMotor0;
  input [1:0]Q;
  input trigFSM;
  input rMotor0;

  wire [1:0]Q;
  wire lMotor0;
  wire lPWM_OBUF;
  wire rMotor0;
  wire rPWM_OBUF;
  wire trigFSM;

  FDRE #(
    .INIT(1'b0)) 
    lMotor_reg
       (.C(trigFSM),
        .CE(lMotor0),
        .D(Q[0]),
        .Q(lPWM_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rMotor_reg
       (.C(trigFSM),
        .CE(rMotor0),
        .D(Q[1]),
        .Q(rPWM_OBUF),
        .R(1'b0));
endmodule

module rstDriver
   (rstBaud,
    SR,
    lastBitIn_reg_0,
    CLK,
    lastRST,
    waiting);
  output rstBaud;
  output [0:0]SR;
  input [0:0]lastBitIn_reg_0;
  input CLK;
  input lastRST;
  input waiting;

  wire CLK;
  wire [0:0]SR;
  wire lastBitIn;
  wire [0:0]lastBitIn_reg_0;
  wire lastRST;
  wire rstBaud;
  wire rstBaud_i_1_n_0;
  wire waiting;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[16]_i_1 
       (.I0(rstBaud),
        .I1(lastRST),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    lastBitIn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(lastBitIn_reg_0),
        .Q(lastBitIn),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    rstBaud_i_1
       (.I0(rstBaud),
        .I1(waiting),
        .I2(lastBitIn),
        .I3(lastBitIn_reg_0),
        .O(rstBaud_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rstBaud_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rstBaud_i_1_n_0),
        .Q(rstBaud),
        .R(1'b0));
endmodule

module rxBit
   (trigFSM,
    D,
    Q,
    lMotor0,
    rMotor0,
    CLK,
    lastDriven,
    \data_reg[0]_0 );
  output trigFSM;
  output [6:0]D;
  output [1:0]Q;
  output lMotor0;
  output rMotor0;
  input CLK;
  input lastDriven;
  input [0:0]\data_reg[0]_0 ;

  wire CLK;
  wire [6:0]D;
  wire [1:0]Q;
  wire \data[0]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire [0:0]\data_reg[0]_0 ;
  wire \data_reg_n_0_[7] ;
  wire [2:0]index;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire lMotor0;
  wire lastDriven;
  wire p_0_in3_in;
  wire p_1_in0_in;
  wire p_1_in1_in;
  wire p_1_in4_in;
  wire p_1_in5_in;
  wire rMotor0;
  wire \seg[0]_i_2_n_0 ;
  wire \seg[1]_i_2_n_0 ;
  wire \seg[2]_i_2_n_0 ;
  wire \seg[3]_i_2_n_0 ;
  wire \seg[4]_i_2_n_0 ;
  wire \seg[5]_i_2_n_0 ;
  wire \seg[6]_i_2_n_0 ;
  wire trigFSM;
  wire trigFSM0_n_0;

  LUT3 #(
    .INIT(8'h01)) 
    \data[0]_i_1 
       (.I0(index[2]),
        .I1(index[0]),
        .I2(index[1]),
        .O(\data[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \data[1]_i_1 
       (.I0(index[2]),
        .I1(index[0]),
        .I2(index[1]),
        .O(\data[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \data[2]_i_1 
       (.I0(index[2]),
        .I1(index[1]),
        .I2(index[0]),
        .O(\data[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \data[3]_i_1 
       (.I0(index[2]),
        .I1(index[0]),
        .I2(index[1]),
        .O(\data[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data[4]_i_1 
       (.I0(index[2]),
        .I1(index[0]),
        .I2(index[1]),
        .O(\data[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \data[5]_i_1 
       (.I0(index[2]),
        .I1(index[0]),
        .I2(index[1]),
        .O(\data[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \data[6]_i_1 
       (.I0(index[2]),
        .I1(index[1]),
        .I2(index[0]),
        .O(\data[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \data[7]_i_1 
       (.I0(index[2]),
        .I1(index[0]),
        .I2(index[1]),
        .O(\data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(\data[0]_i_1_n_0 ),
        .D(\data_reg[0]_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(\data[1]_i_1_n_0 ),
        .D(\data_reg[0]_0 ),
        .Q(p_1_in5_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(\data[2]_i_1_n_0 ),
        .D(\data_reg[0]_0 ),
        .Q(p_1_in4_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(\data[3]_i_1_n_0 ),
        .D(\data_reg[0]_0 ),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(\data[4]_i_1_n_0 ),
        .D(\data_reg[0]_0 ),
        .Q(p_1_in1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(\data[5]_i_1_n_0 ),
        .D(\data_reg[0]_0 ),
        .Q(p_1_in0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(\data[6]_i_1_n_0 ),
        .D(\data_reg[0]_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(\data[7]_i_1_n_0 ),
        .D(\data_reg[0]_0 ),
        .Q(\data_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(index[0]),
        .O(\index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(index[0]),
        .I1(index[1]),
        .O(\index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(index[0]),
        .I1(index[1]),
        .I2(index[2]),
        .O(\index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index[0]_i_1_n_0 ),
        .Q(index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index[1]_i_1_n_0 ),
        .Q(index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\index[2]_i_1_n_0 ),
        .Q(index[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    lMotor_i_1
       (.I0(p_1_in4_in),
        .I1(p_0_in3_in),
        .I2(Q[0]),
        .I3(p_1_in5_in),
        .O(lMotor0));
  LUT4 #(
    .INIT(16'h8001)) 
    rMotor_i_1
       (.I0(Q[1]),
        .I1(\data_reg_n_0_[7] ),
        .I2(p_1_in1_in),
        .I3(p_1_in0_in),
        .O(rMotor0));
  LUT6 #(
    .INIT(64'h2910FFFF29100000)) 
    \seg[0]_i_1 
       (.I0(\data_reg_n_0_[7] ),
        .I1(p_1_in0_in),
        .I2(Q[1]),
        .I3(p_1_in1_in),
        .I4(lastDriven),
        .I5(\seg[0]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg[0]_i_2 
       (.I0(p_0_in3_in),
        .I1(p_1_in4_in),
        .I2(Q[0]),
        .I3(p_1_in5_in),
        .O(\seg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB680FFFFB6800000)) 
    \seg[1]_i_1 
       (.I0(\data_reg_n_0_[7] ),
        .I1(p_1_in1_in),
        .I2(p_1_in0_in),
        .I3(Q[1]),
        .I4(lastDriven),
        .I5(\seg[1]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hB680)) 
    \seg[1]_i_2 
       (.I0(p_0_in3_in),
        .I1(Q[0]),
        .I2(p_1_in5_in),
        .I3(p_1_in4_in),
        .O(\seg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8098FFFF80980000)) 
    \seg[2]_i_1 
       (.I0(\data_reg_n_0_[7] ),
        .I1(Q[1]),
        .I2(p_1_in0_in),
        .I3(p_1_in1_in),
        .I4(lastDriven),
        .I5(\seg[2]_i_2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg[2]_i_2 
       (.I0(p_0_in3_in),
        .I1(Q[0]),
        .I2(p_1_in5_in),
        .I3(p_1_in4_in),
        .O(\seg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC118FFFFC1180000)) 
    \seg[3]_i_1 
       (.I0(\data_reg_n_0_[7] ),
        .I1(p_1_in0_in),
        .I2(p_1_in1_in),
        .I3(Q[1]),
        .I4(lastDriven),
        .I5(\seg[3]_i_2_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8492)) 
    \seg[3]_i_2 
       (.I0(p_1_in4_in),
        .I1(p_1_in5_in),
        .I2(Q[0]),
        .I3(p_0_in3_in),
        .O(\seg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h454CFFFF454C0000)) 
    \seg[4]_i_1 
       (.I0(\data_reg_n_0_[7] ),
        .I1(p_1_in1_in),
        .I2(p_1_in0_in),
        .I3(Q[1]),
        .I4(lastDriven),
        .I5(\seg[4]_i_2_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h445C)) 
    \seg[4]_i_2 
       (.I0(p_0_in3_in),
        .I1(Q[0]),
        .I2(p_1_in4_in),
        .I3(p_1_in5_in),
        .O(\seg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5910FFFF59100000)) 
    \seg[5]_i_1 
       (.I0(\data_reg_n_0_[7] ),
        .I1(Q[1]),
        .I2(p_1_in0_in),
        .I3(p_1_in1_in),
        .I4(lastDriven),
        .I5(\seg[5]_i_2_n_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5910)) 
    \seg[5]_i_2 
       (.I0(p_0_in3_in),
        .I1(p_1_in4_in),
        .I2(p_1_in5_in),
        .I3(Q[0]),
        .O(\seg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4025FFFF40250000)) 
    \seg[6]_i_1 
       (.I0(\data_reg_n_0_[7] ),
        .I1(p_1_in1_in),
        .I2(Q[1]),
        .I3(p_1_in0_in),
        .I4(lastDriven),
        .I5(\seg[6]_i_2_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4211)) 
    \seg[6]_i_2 
       (.I0(p_0_in3_in),
        .I1(p_1_in5_in),
        .I2(Q[0]),
        .I3(p_1_in4_in),
        .O(\seg[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    trigFSM0
       (.I0(index[1]),
        .I1(index[2]),
        .I2(index[0]),
        .O(trigFSM0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    trigFSM_reg
       (.C(CLK),
        .CE(1'b1),
        .D(trigFSM0_n_0),
        .Q(trigFSM),
        .R(1'b0));
endmodule

module sevenSegDriver
   (lastDriven,
    Q,
    \seg_reg[6]_0 ,
    CLK,
    D);
  output lastDriven;
  output [1:0]Q;
  output [6:0]\seg_reg[6]_0 ;
  input CLK;
  input [6:0]D;

  wire CLK;
  wire [6:0]D;
  wire [1:0]Q;
  wire \an[2]_i_1_n_0 ;
  wire \an[2]_i_2_n_0 ;
  wire \an[2]_i_3_n_0 ;
  wire \an[2]_i_4_n_0 ;
  wire \count[0]_i_2_n_0 ;
  wire [14:3]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire lastDriven;
  wire lastDriven_i_1_n_0;
  wire [6:0]\seg_reg[6]_0 ;
  wire [2:0]\NLW_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hD0000000)) 
    \an[2]_i_1 
       (.I0(\an[2]_i_3_n_0 ),
        .I1(\an[2]_i_4_n_0 ),
        .I2(count_reg[13]),
        .I3(count_reg[14]),
        .I4(lastDriven),
        .O(\an[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD000)) 
    \an[2]_i_2 
       (.I0(\an[2]_i_3_n_0 ),
        .I1(\an[2]_i_4_n_0 ),
        .I2(count_reg[13]),
        .I3(count_reg[14]),
        .O(\an[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h777777777F7F7FFF)) 
    \an[2]_i_3 
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .I2(count_reg[5]),
        .I3(count_reg[4]),
        .I4(count_reg[3]),
        .I5(count_reg[6]),
        .O(\an[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \an[2]_i_4 
       (.I0(count_reg[11]),
        .I1(count_reg[12]),
        .I2(count_reg[9]),
        .I3(count_reg[10]),
        .O(\an[2]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \an_reg[1] 
       (.C(CLK),
        .CE(\an[2]_i_2_n_0 ),
        .D(1'b0),
        .Q(Q[0]),
        .S(\an[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[2] 
       (.C(CLK),
        .CE(\an[2]_i_2_n_0 ),
        .D(\an[2]_i_2_n_0 ),
        .Q(Q[1]),
        .R(\an[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\an[2]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\NLW_count_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({count_reg[3],\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\an[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\an[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\an[2]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO(\NLW_count_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1_O_UNCONNECTED [3],\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({1'b0,count_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\an[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\an[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\an[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\an[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]),
        .R(\an[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\an[2]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\an[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\an[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\an[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\an[2]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\an[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h2FFFD000)) 
    lastDriven_i_1
       (.I0(\an[2]_i_3_n_0 ),
        .I1(\an[2]_i_4_n_0 ),
        .I2(count_reg[13]),
        .I3(count_reg[14]),
        .I4(lastDriven),
        .O(lastDriven_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lastDriven_reg
       (.C(CLK),
        .CE(1'b1),
        .D(lastDriven_i_1_n_0),
        .Q(lastDriven),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[0] 
       (.C(CLK),
        .CE(\an[2]_i_2_n_0 ),
        .D(D[0]),
        .Q(\seg_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[1] 
       (.C(CLK),
        .CE(\an[2]_i_2_n_0 ),
        .D(D[1]),
        .Q(\seg_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[2] 
       (.C(CLK),
        .CE(\an[2]_i_2_n_0 ),
        .D(D[2]),
        .Q(\seg_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[3] 
       (.C(CLK),
        .CE(\an[2]_i_2_n_0 ),
        .D(D[3]),
        .Q(\seg_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[4] 
       (.C(CLK),
        .CE(\an[2]_i_2_n_0 ),
        .D(D[4]),
        .Q(\seg_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(CLK),
        .CE(\an[2]_i_2_n_0 ),
        .D(D[5]),
        .Q(\seg_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[6] 
       (.C(CLK),
        .CE(\an[2]_i_2_n_0 ),
        .D(D[6]),
        .Q(\seg_reg[6]_0 [6]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "a60220a9" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module uart
   (sysClk,
    bitIn,
    lPWM,
    rPWM,
    seg,
    an);
  input sysClk;
  input bitIn;
  output lPWM;
  output rPWM;
  output [6:0]seg;
  output [3:0]an;

  wire [3:0]an;
  wire [2:1]an_OBUF;
  wire bitIn;
  wire bitIn_IBUF;
  wire bodCk;
  wire count0;
  wire lMotor0;
  wire lPWM;
  wire lPWM_OBUF;
  wire lastDriven;
  wire lastRST;
  wire p_1_in;
  wire rMotor0;
  wire rPWM;
  wire rPWM_OBUF;
  wire reciever_n_1;
  wire reciever_n_2;
  wire reciever_n_3;
  wire reciever_n_4;
  wire reciever_n_5;
  wire reciever_n_6;
  wire reciever_n_7;
  wire reciever_n_9;
  wire rstBaud;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire sysClk;
  wire sysClk_IBUF;
  wire sysClk_IBUF_BUFG;
  wire trigFSM;
  wire waiting;

  OBUF \an_OBUF[0]_inst 
       (.I(1'b1),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(1'b1),
        .O(an[3]));
  baudClk baudGenerator
       (.CLK(sysClk_IBUF_BUFG),
        .SR(count0),
        .bodCk_reg_0(bodCk),
        .lastRST(lastRST),
        .rstBaud(rstBaud),
        .waiting(waiting));
  IBUF bitIn_IBUF_inst
       (.I(bitIn),
        .O(bitIn_IBUF));
  sevenSegDriver driveSeg
       (.CLK(sysClk_IBUF_BUFG),
        .D({reciever_n_1,reciever_n_2,reciever_n_3,reciever_n_4,reciever_n_5,reciever_n_6,reciever_n_7}),
        .Q(an_OBUF),
        .lastDriven(lastDriven),
        .\seg_reg[6]_0 (seg_OBUF));
  OBUF lPWM_OBUF_inst
       (.I(lPWM_OBUF),
        .O(lPWM));
  ctrlMotor motorControl
       (.Q({p_1_in,reciever_n_9}),
        .lMotor0(lMotor0),
        .lPWM_OBUF(lPWM_OBUF),
        .rMotor0(rMotor0),
        .rPWM_OBUF(rPWM_OBUF),
        .trigFSM(trigFSM));
  OBUF rPWM_OBUF_inst
       (.I(rPWM_OBUF),
        .O(rPWM));
  rxBit reciever
       (.CLK(bodCk),
        .D({reciever_n_1,reciever_n_2,reciever_n_3,reciever_n_4,reciever_n_5,reciever_n_6,reciever_n_7}),
        .Q({p_1_in,reciever_n_9}),
        .\data_reg[0]_0 (bitIn_IBUF),
        .lMotor0(lMotor0),
        .lastDriven(lastDriven),
        .rMotor0(rMotor0),
        .trigFSM(trigFSM));
  rstDriver resetOnStartBit
       (.CLK(sysClk_IBUF_BUFG),
        .SR(count0),
        .lastBitIn_reg_0(bitIn_IBUF),
        .lastRST(lastRST),
        .rstBaud(rstBaud),
        .waiting(waiting));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  BUFG sysClk_IBUF_BUFG_inst
       (.I(sysClk_IBUF),
        .O(sysClk_IBUF_BUFG));
  IBUF sysClk_IBUF_inst
       (.I(sysClk),
        .O(sysClk_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
