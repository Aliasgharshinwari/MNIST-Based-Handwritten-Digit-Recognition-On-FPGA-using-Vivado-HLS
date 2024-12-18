-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.2
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity neural_network_dense_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_input_r_AWVALID : OUT STD_LOGIC;
    m_axi_input_r_AWREADY : IN STD_LOGIC;
    m_axi_input_r_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_input_r_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_input_r_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_input_r_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_input_r_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_input_r_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_input_r_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_input_r_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_input_r_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_input_r_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_input_r_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_input_r_WVALID : OUT STD_LOGIC;
    m_axi_input_r_WREADY : IN STD_LOGIC;
    m_axi_input_r_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_input_r_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_input_r_WLAST : OUT STD_LOGIC;
    m_axi_input_r_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_input_r_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_input_r_ARVALID : OUT STD_LOGIC;
    m_axi_input_r_ARREADY : IN STD_LOGIC;
    m_axi_input_r_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_input_r_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_input_r_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_input_r_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_input_r_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_input_r_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_input_r_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_input_r_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_input_r_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_input_r_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_input_r_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_input_r_RVALID : IN STD_LOGIC;
    m_axi_input_r_RREADY : OUT STD_LOGIC;
    m_axi_input_r_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_input_r_RLAST : IN STD_LOGIC;
    m_axi_input_r_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_input_r_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_input_r_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_input_r_BVALID : IN STD_LOGIC;
    m_axi_input_r_BREADY : OUT STD_LOGIC;
    m_axi_input_r_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_input_r_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_input_r_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    input1 : IN STD_LOGIC_VECTOR (29 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    dense_1_weights5 : IN STD_LOGIC_VECTOR (29 downto 0);
    dense_1_bias7 : IN STD_LOGIC_VECTOR (29 downto 0) );
end;


architecture behav of neural_network_dense_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (4 downto 0) := "00011";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (4 downto 0) := "00101";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (4 downto 0) := "00110";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (4 downto 0) := "00111";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (4 downto 0) := "01001";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_ST_st12_fsm_11 : STD_LOGIC_VECTOR (4 downto 0) := "01011";
    constant ap_ST_st13_fsm_12 : STD_LOGIC_VECTOR (4 downto 0) := "01100";
    constant ap_ST_st14_fsm_13 : STD_LOGIC_VECTOR (4 downto 0) := "01101";
    constant ap_ST_st15_fsm_14 : STD_LOGIC_VECTOR (4 downto 0) := "01110";
    constant ap_ST_st16_fsm_15 : STD_LOGIC_VECTOR (4 downto 0) := "01111";
    constant ap_ST_st17_fsm_16 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_ST_st18_fsm_17 : STD_LOGIC_VECTOR (4 downto 0) := "10001";
    constant ap_ST_st19_fsm_18 : STD_LOGIC_VECTOR (4 downto 0) := "10010";
    constant ap_ST_st20_fsm_19 : STD_LOGIC_VECTOR (4 downto 0) := "10011";
    constant ap_ST_st21_fsm_20 : STD_LOGIC_VECTOR (4 downto 0) := "10100";
    constant ap_ST_st22_fsm_21 : STD_LOGIC_VECTOR (4 downto 0) := "10101";
    constant ap_ST_st23_fsm_22 : STD_LOGIC_VECTOR (4 downto 0) := "10110";
    constant ap_ST_st24_fsm_23 : STD_LOGIC_VECTOR (4 downto 0) := "10111";
    constant ap_ST_st25_fsm_24 : STD_LOGIC_VECTOR (4 downto 0) := "11000";
    constant ap_ST_st26_fsm_25 : STD_LOGIC_VECTOR (4 downto 0) := "11001";
    constant ap_ST_st27_fsm_26 : STD_LOGIC_VECTOR (4 downto 0) := "11010";
    constant ap_ST_st28_fsm_27 : STD_LOGIC_VECTOR (4 downto 0) := "11011";
    constant ap_ST_st29_fsm_28 : STD_LOGIC_VECTOR (4 downto 0) := "11100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv10_310 : STD_LOGIC_VECTOR (9 downto 0) := "1100010000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    signal i_1_fu_146_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_1_reg_280 : STD_LOGIC_VECTOR (7 downto 0);
    signal bias_addr_reg_285 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond1_fu_140_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sum_reg_291 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_175_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_reg_296 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_cast_fu_191_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_1_cast_reg_301 : STD_LOGIC_VECTOR (14 downto 0);
    signal j_1_fu_201_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal j_1_reg_309 : STD_LOGIC_VECTOR (9 downto 0);
    signal bias_addr_2_reg_314 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bias_addr_3_reg_320 : STD_LOGIC_VECTOR (31 downto 0);
    signal bias_addr_2_read_reg_326 : STD_LOGIC_VECTOR (31 downto 0);
    signal bias_addr_3_read_reg_331 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_136_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_reg_336 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_131_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_96 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum2_reg_108 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_reg_119 : STD_LOGIC_VECTOR (9 downto 0);
    signal sum9_cast_fu_165_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sum1_cast_fu_224_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sum5_cast_fu_252_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_m_axi_input_r_ARREADY : STD_LOGIC := '0';
    signal ap_sig_ioackin_m_axi_input_r_ARREADY : STD_LOGIC;
    signal grp_fu_131_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_131_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_136_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_136_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext8_cast_fu_156_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_cast_fu_152_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal sum9_fu_159_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_4_fu_179_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_1_fu_183_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal sext_cast_fu_215_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_cast1_fu_207_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal sum1_fu_218_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_cast_41_fu_211_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_3_fu_234_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal sext4_cast_fu_243_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal tmp_3_cast_cast_fu_239_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal sum5_fu_246_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal neural_network_dense_1_ap_rst : STD_LOGIC;
    signal grp_fu_131_ce : STD_LOGIC;
    signal grp_fu_136_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component neural_network_fadd_32ns_32ns_32_5_no_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component neural_network_fmul_32ns_32ns_32_7_max_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    neural_network_fadd_32ns_32ns_32_5_no_dsp_U0 : component neural_network_fadd_32ns_32ns_32_5_no_dsp
    generic map (
        ID => 0,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => neural_network_dense_1_ap_rst,
        din0 => grp_fu_131_p0,
        din1 => grp_fu_131_p1,
        ce => grp_fu_131_ce,
        dout => grp_fu_131_p2);

    neural_network_fmul_32ns_32ns_32_7_max_dsp_U1 : component neural_network_fmul_32ns_32ns_32_7_max_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 7,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => neural_network_dense_1_ap_rst,
        din0 => grp_fu_136_p0,
        din1 => grp_fu_136_p1,
        ce => grp_fu_136_ce,
        dout => grp_fu_136_p2);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n = '0') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_reg_ioackin_m_axi_input_r_ARREADY assign process. --
    ap_reg_ioackin_m_axi_input_r_ARREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n = '0') then
                ap_reg_ioackin_m_axi_input_r_ARREADY <= ap_const_logic_0;
            else
                if ((((ap_ST_st3_fsm_2 = ap_CS_fsm) and not((ap_const_logic_0 = ap_sig_ioackin_m_axi_input_r_ARREADY))) or (not((ap_const_logic_0 = ap_sig_ioackin_m_axi_input_r_ARREADY)) and (ap_ST_st11_fsm_10 = ap_CS_fsm)) or (not((ap_const_logic_0 = ap_sig_ioackin_m_axi_input_r_ARREADY)) and (ap_ST_st12_fsm_11 = ap_CS_fsm)))) then 
                    ap_reg_ioackin_m_axi_input_r_ARREADY <= ap_const_logic_0;
                elsif ((((ap_const_logic_1 = m_axi_input_r_ARREADY) and (ap_ST_st3_fsm_2 = ap_CS_fsm)) or ((ap_const_logic_1 = m_axi_input_r_ARREADY) and (ap_ST_st11_fsm_10 = ap_CS_fsm)) or ((ap_const_logic_1 = m_axi_input_r_ARREADY) and (ap_ST_st12_fsm_11 = ap_CS_fsm)))) then 
                    ap_reg_ioackin_m_axi_input_r_ARREADY <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- i_reg_96 assign process. --
    i_reg_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st10_fsm_9 = ap_CS_fsm) and not((ap_const_lv1_0 = exitcond_fu_195_p2)))) then 
                i_reg_96 <= i_1_reg_280;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_96 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    -- j_reg_119 assign process. --
    j_reg_119_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st29_fsm_28 = ap_CS_fsm)) then 
                j_reg_119 <= j_1_reg_309;
            elsif ((ap_ST_st9_fsm_8 = ap_CS_fsm)) then 
                j_reg_119 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    -- sum2_reg_108 assign process. --
    sum2_reg_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st29_fsm_28 = ap_CS_fsm)) then 
                sum2_reg_108 <= grp_fu_131_p2;
            elsif ((ap_ST_st9_fsm_8 = ap_CS_fsm)) then 
                sum2_reg_108 <= sum_reg_291;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((m_axi_input_r_RVALID = ap_const_logic_0)) and (ap_ST_st16_fsm_15 = ap_CS_fsm))) then
                bias_addr_2_read_reg_326 <= m_axi_input_r_RDATA;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st10_fsm_9 = ap_CS_fsm) and (ap_const_lv1_0 = exitcond_fu_195_p2))) then
                bias_addr_2_reg_314 <= sum1_cast_fu_224_p1(32 - 1 downto 0);
                bias_addr_3_reg_320 <= sum5_cast_fu_252_p1(32 - 1 downto 0);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((m_axi_input_r_RVALID = ap_const_logic_0)) and (ap_ST_st17_fsm_16 = ap_CS_fsm))) then
                bias_addr_3_read_reg_331 <= m_axi_input_r_RDATA;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = exitcond1_fu_140_p2))) then
                bias_addr_reg_285 <= sum9_cast_fu_165_p1(32 - 1 downto 0);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then
                i_1_reg_280 <= i_1_fu_146_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st10_fsm_9 = ap_CS_fsm)) then
                j_1_reg_309 <= j_1_fu_201_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st8_fsm_7 = ap_CS_fsm) and not((m_axi_input_r_RVALID = ap_const_logic_0)))) then
                sum_reg_291 <= m_axi_input_r_RDATA;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st9_fsm_8 = ap_CS_fsm)) then
                tmp_1_cast_reg_301(7) <= tmp_1_cast_fu_191_p1(7);
    tmp_1_cast_reg_301(8) <= tmp_1_cast_fu_191_p1(8);
    tmp_1_cast_reg_301(9) <= tmp_1_cast_fu_191_p1(9);
    tmp_1_cast_reg_301(10) <= tmp_1_cast_fu_191_p1(10);
    tmp_1_cast_reg_301(11) <= tmp_1_cast_fu_191_p1(11);
    tmp_1_cast_reg_301(12) <= tmp_1_cast_fu_191_p1(12);
    tmp_1_cast_reg_301(13) <= tmp_1_cast_fu_191_p1(13);
                tmp_reg_296(0) <= tmp_fu_175_p1(0);
    tmp_reg_296(1) <= tmp_fu_175_p1(1);
    tmp_reg_296(2) <= tmp_fu_175_p1(2);
    tmp_reg_296(3) <= tmp_fu_175_p1(3);
    tmp_reg_296(4) <= tmp_fu_175_p1(4);
    tmp_reg_296(5) <= tmp_fu_175_p1(5);
    tmp_reg_296(6) <= tmp_fu_175_p1(6);
    tmp_reg_296(7) <= tmp_fu_175_p1(7);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st24_fsm_23 = ap_CS_fsm)) then
                tmp_2_reg_336 <= grp_fu_136_p2;
            end if;
        end if;
    end process;
    tmp_reg_296(63 downto 8) <= "00000000000000000000000000000000000000000000000000000000";
    tmp_1_cast_reg_301(6 downto 0) <= "0000000";
    tmp_1_cast_reg_301(14) <= '0';

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, m_axi_input_r_RVALID, exitcond1_fu_140_p2, exitcond_fu_195_p2, ap_sig_ioackin_m_axi_input_r_ARREADY)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((ap_const_lv1_0 = exitcond1_fu_140_p2))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if (not((ap_const_logic_0 = ap_sig_ioackin_m_axi_input_r_ARREADY))) then
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
            when ap_ST_st8_fsm_7 => 
                if (not((m_axi_input_r_RVALID = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st9_fsm_8;
                else
                    ap_NS_fsm <= ap_ST_st8_fsm_7;
                end if;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st10_fsm_9 => 
                if (not((ap_const_lv1_0 = exitcond_fu_195_p2))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st11_fsm_10;
                end if;
            when ap_ST_st11_fsm_10 => 
                if (not((ap_const_logic_0 = ap_sig_ioackin_m_axi_input_r_ARREADY))) then
                    ap_NS_fsm <= ap_ST_st12_fsm_11;
                else
                    ap_NS_fsm <= ap_ST_st11_fsm_10;
                end if;
            when ap_ST_st12_fsm_11 => 
                if (not((ap_const_logic_0 = ap_sig_ioackin_m_axi_input_r_ARREADY))) then
                    ap_NS_fsm <= ap_ST_st13_fsm_12;
                else
                    ap_NS_fsm <= ap_ST_st12_fsm_11;
                end if;
            when ap_ST_st13_fsm_12 => 
                ap_NS_fsm <= ap_ST_st14_fsm_13;
            when ap_ST_st14_fsm_13 => 
                ap_NS_fsm <= ap_ST_st15_fsm_14;
            when ap_ST_st15_fsm_14 => 
                ap_NS_fsm <= ap_ST_st16_fsm_15;
            when ap_ST_st16_fsm_15 => 
                if (not((m_axi_input_r_RVALID = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st17_fsm_16;
                else
                    ap_NS_fsm <= ap_ST_st16_fsm_15;
                end if;
            when ap_ST_st17_fsm_16 => 
                if (not((m_axi_input_r_RVALID = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st18_fsm_17;
                else
                    ap_NS_fsm <= ap_ST_st17_fsm_16;
                end if;
            when ap_ST_st18_fsm_17 => 
                ap_NS_fsm <= ap_ST_st19_fsm_18;
            when ap_ST_st19_fsm_18 => 
                ap_NS_fsm <= ap_ST_st20_fsm_19;
            when ap_ST_st20_fsm_19 => 
                ap_NS_fsm <= ap_ST_st21_fsm_20;
            when ap_ST_st21_fsm_20 => 
                ap_NS_fsm <= ap_ST_st22_fsm_21;
            when ap_ST_st22_fsm_21 => 
                ap_NS_fsm <= ap_ST_st23_fsm_22;
            when ap_ST_st23_fsm_22 => 
                ap_NS_fsm <= ap_ST_st24_fsm_23;
            when ap_ST_st24_fsm_23 => 
                ap_NS_fsm <= ap_ST_st25_fsm_24;
            when ap_ST_st25_fsm_24 => 
                ap_NS_fsm <= ap_ST_st26_fsm_25;
            when ap_ST_st26_fsm_25 => 
                ap_NS_fsm <= ap_ST_st27_fsm_26;
            when ap_ST_st27_fsm_26 => 
                ap_NS_fsm <= ap_ST_st28_fsm_27;
            when ap_ST_st28_fsm_27 => 
                ap_NS_fsm <= ap_ST_st29_fsm_28;
            when ap_ST_st29_fsm_28 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_start, ap_CS_fsm, exitcond1_fu_140_p2)
    begin
        if (((not((ap_const_logic_1 = ap_start)) and (ap_ST_st1_fsm_0 = ap_CS_fsm)) or ((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = exitcond1_fu_140_p2))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_CS_fsm)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_ST_st1_fsm_0 = ap_CS_fsm))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_CS_fsm, exitcond1_fu_140_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = exitcond1_fu_140_p2)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_ioackin_m_axi_input_r_ARREADY assign process. --
    ap_sig_ioackin_m_axi_input_r_ARREADY_assign_proc : process(m_axi_input_r_ARREADY, ap_reg_ioackin_m_axi_input_r_ARREADY)
    begin
        if ((ap_const_logic_0 = ap_reg_ioackin_m_axi_input_r_ARREADY)) then 
            ap_sig_ioackin_m_axi_input_r_ARREADY <= m_axi_input_r_ARREADY;
        else 
            ap_sig_ioackin_m_axi_input_r_ARREADY <= ap_const_logic_1;
        end if; 
    end process;

    exitcond1_fu_140_p2 <= "1" when (i_reg_96 = ap_const_lv8_80) else "0";
    exitcond_fu_195_p2 <= "1" when (j_reg_119 = ap_const_lv10_310) else "0";
    grp_fu_131_ce <= ap_const_logic_1;
    grp_fu_131_p0 <= sum2_reg_108;
    grp_fu_131_p1 <= tmp_2_reg_336;
    grp_fu_136_ce <= ap_const_logic_1;
    grp_fu_136_p0 <= bias_addr_2_read_reg_326;
    grp_fu_136_p1 <= bias_addr_3_read_reg_331;
    i_1_fu_146_p2 <= std_logic_vector(unsigned(i_reg_96) + unsigned(ap_const_lv8_1));
    j_1_fu_201_p2 <= std_logic_vector(unsigned(j_reg_119) + unsigned(ap_const_lv10_1));

    -- m_axi_input_r_ARADDR assign process. --
    m_axi_input_r_ARADDR_assign_proc : process(ap_CS_fsm, bias_addr_reg_285, bias_addr_2_reg_314, bias_addr_3_reg_320, ap_reg_ioackin_m_axi_input_r_ARREADY)
    begin
        if ((ap_const_logic_0 = ap_reg_ioackin_m_axi_input_r_ARREADY)) then
            if ((ap_ST_st12_fsm_11 = ap_CS_fsm)) then 
                m_axi_input_r_ARADDR <= bias_addr_3_reg_320;
            elsif ((ap_ST_st11_fsm_10 = ap_CS_fsm)) then 
                m_axi_input_r_ARADDR <= bias_addr_2_reg_314;
            elsif ((ap_ST_st3_fsm_2 = ap_CS_fsm)) then 
                m_axi_input_r_ARADDR <= bias_addr_reg_285;
            else 
                m_axi_input_r_ARADDR <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            m_axi_input_r_ARADDR <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    m_axi_input_r_ARBURST <= ap_const_lv2_0;
    m_axi_input_r_ARCACHE <= ap_const_lv4_0;
    m_axi_input_r_ARID <= ap_const_lv1_0;
    m_axi_input_r_ARLEN <= ap_const_lv32_1;
    m_axi_input_r_ARLOCK <= ap_const_lv2_0;
    m_axi_input_r_ARPROT <= ap_const_lv3_0;
    m_axi_input_r_ARQOS <= ap_const_lv4_0;
    m_axi_input_r_ARREGION <= ap_const_lv4_0;
    m_axi_input_r_ARSIZE <= ap_const_lv3_0;
    m_axi_input_r_ARUSER <= ap_const_lv1_0;

    -- m_axi_input_r_ARVALID assign process. --
    m_axi_input_r_ARVALID_assign_proc : process(ap_CS_fsm, ap_reg_ioackin_m_axi_input_r_ARREADY)
    begin
        if ((((ap_ST_st3_fsm_2 = ap_CS_fsm) and (ap_const_logic_0 = ap_reg_ioackin_m_axi_input_r_ARREADY)) or ((ap_const_logic_0 = ap_reg_ioackin_m_axi_input_r_ARREADY) and (ap_ST_st11_fsm_10 = ap_CS_fsm)) or ((ap_const_logic_0 = ap_reg_ioackin_m_axi_input_r_ARREADY) and (ap_ST_st12_fsm_11 = ap_CS_fsm)))) then 
            m_axi_input_r_ARVALID <= ap_const_logic_1;
        else 
            m_axi_input_r_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_input_r_AWADDR <= ap_const_lv32_0;
    m_axi_input_r_AWBURST <= ap_const_lv2_0;
    m_axi_input_r_AWCACHE <= ap_const_lv4_0;
    m_axi_input_r_AWID <= ap_const_lv1_0;
    m_axi_input_r_AWLEN <= ap_const_lv32_0;
    m_axi_input_r_AWLOCK <= ap_const_lv2_0;
    m_axi_input_r_AWPROT <= ap_const_lv3_0;
    m_axi_input_r_AWQOS <= ap_const_lv4_0;
    m_axi_input_r_AWREGION <= ap_const_lv4_0;
    m_axi_input_r_AWSIZE <= ap_const_lv3_0;
    m_axi_input_r_AWUSER <= ap_const_lv1_0;
    m_axi_input_r_AWVALID <= ap_const_logic_0;
    m_axi_input_r_BREADY <= ap_const_logic_0;

    -- m_axi_input_r_RREADY assign process. --
    m_axi_input_r_RREADY_assign_proc : process(ap_CS_fsm, m_axi_input_r_RVALID)
    begin
        if ((((ap_ST_st8_fsm_7 = ap_CS_fsm) and not((m_axi_input_r_RVALID = ap_const_logic_0))) or (not((m_axi_input_r_RVALID = ap_const_logic_0)) and (ap_ST_st16_fsm_15 = ap_CS_fsm)) or (not((m_axi_input_r_RVALID = ap_const_logic_0)) and (ap_ST_st17_fsm_16 = ap_CS_fsm)))) then 
            m_axi_input_r_RREADY <= ap_const_logic_1;
        else 
            m_axi_input_r_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_input_r_WDATA <= ap_const_lv32_0;
    m_axi_input_r_WID <= ap_const_lv1_0;
    m_axi_input_r_WLAST <= ap_const_logic_0;
    m_axi_input_r_WSTRB <= ap_const_lv4_0;
    m_axi_input_r_WUSER <= ap_const_lv1_0;
    m_axi_input_r_WVALID <= ap_const_logic_0;

    -- neural_network_dense_1_ap_rst assign process. --
    neural_network_dense_1_ap_rst_assign_proc : process(ap_rst_n)
    begin
                neural_network_dense_1_ap_rst <= not(ap_rst_n);
    end process;

    output_r_address0 <= tmp_reg_296(7 - 1 downto 0);

    -- output_r_ce0 assign process. --
    output_r_ce0_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_st10_fsm_9 = ap_CS_fsm)) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= sum2_reg_108;

    -- output_r_we0 assign process. --
    output_r_we0_assign_proc : process(ap_CS_fsm, exitcond_fu_195_p2)
    begin
        if ((((ap_ST_st10_fsm_9 = ap_CS_fsm) and not((ap_const_lv1_0 = exitcond_fu_195_p2))))) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    sext4_cast_fu_243_p1 <= std_logic_vector(resize(unsigned(dense_1_weights5),33));
    sext8_cast_fu_156_p1 <= std_logic_vector(resize(unsigned(dense_1_bias7),33));
    sext_cast_fu_215_p1 <= std_logic_vector(resize(unsigned(input1),33));
    sum1_cast_fu_224_p1 <= std_logic_vector(resize(unsigned(sum1_fu_218_p2),64));
    sum1_fu_218_p2 <= std_logic_vector(unsigned(sext_cast_fu_215_p1) + unsigned(tmp_cast1_fu_207_p1));
    sum5_cast_fu_252_p1 <= std_logic_vector(resize(unsigned(sum5_fu_246_p2),64));
    sum5_fu_246_p2 <= std_logic_vector(unsigned(sext4_cast_fu_243_p1) + unsigned(tmp_3_cast_cast_fu_239_p1));
    sum9_cast_fu_165_p1 <= std_logic_vector(resize(unsigned(sum9_fu_159_p2),64));
    sum9_fu_159_p2 <= std_logic_vector(unsigned(sext8_cast_fu_156_p1) + unsigned(tmp_cast_fu_152_p1));
    tmp_1_cast_fu_191_p1 <= std_logic_vector(resize(unsigned(tmp_1_fu_183_p3),15));
    tmp_1_fu_183_p3 <= (tmp_4_fu_179_p1 & ap_const_lv7_0);
    tmp_3_cast_cast_fu_239_p1 <= std_logic_vector(resize(unsigned(tmp_3_fu_234_p2),33));
    tmp_3_fu_234_p2 <= std_logic_vector(unsigned(tmp_1_cast_reg_301) + unsigned(tmp_cast_41_fu_211_p1));
    tmp_4_fu_179_p1 <= i_reg_96(7 - 1 downto 0);
    tmp_cast1_fu_207_p1 <= std_logic_vector(resize(unsigned(j_reg_119),33));
    tmp_cast_41_fu_211_p1 <= std_logic_vector(resize(unsigned(j_reg_119),15));
    tmp_cast_fu_152_p1 <= std_logic_vector(resize(unsigned(i_reg_96),33));
    tmp_fu_175_p1 <= std_logic_vector(resize(unsigned(i_reg_96),64));
end behav;
