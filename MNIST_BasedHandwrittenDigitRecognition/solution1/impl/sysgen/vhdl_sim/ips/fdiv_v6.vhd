--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file fdiv_v6.vhd when simulating
-- the core, fdiv_v6. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY fdiv_v6 IS
  PORT (
    aclk : IN STD_LOGIC;
    aclken : IN STD_LOGIC;
    s_axis_a_tvalid : IN STD_LOGIC;
    s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_b_tvalid : IN STD_LOGIC;
    s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_result_tvalid : OUT STD_LOGIC;
    m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END fdiv_v6;

ARCHITECTURE fdiv_v6_a OF fdiv_v6 IS
-- synthesis translate_off
COMPONENT wrapped_fdiv_v6
  PORT (
    aclk : IN STD_LOGIC;
    aclken : IN STD_LOGIC;
    s_axis_a_tvalid : IN STD_LOGIC;
    s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_b_tvalid : IN STD_LOGIC;
    s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_result_tvalid : OUT STD_LOGIC;
    m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_fdiv_v6 USE ENTITY XilinxCoreLib.floating_point_v6_1(behavioral)
    GENERIC MAP (
      C_A_FRACTION_WIDTH => 24,
      C_A_TDATA_WIDTH => 32,
      C_A_TUSER_WIDTH => 1,
      C_A_WIDTH => 32,
      C_B_FRACTION_WIDTH => 24,
      C_B_TDATA_WIDTH => 32,
      C_B_TUSER_WIDTH => 1,
      C_B_WIDTH => 32,
      C_COMPARE_OPERATION => 8,
      C_HAS_ABSOLUTE => 0,
      C_HAS_ACLKEN => 1,
      C_HAS_ADD => 0,
      C_HAS_ARESETN => 0,
      C_HAS_A_TLAST => 0,
      C_HAS_A_TUSER => 0,
      C_HAS_B => 1,
      C_HAS_B_TLAST => 0,
      C_HAS_B_TUSER => 0,
      C_HAS_COMPARE => 0,
      C_HAS_DIVIDE => 1,
      C_HAS_DIVIDE_BY_ZERO => 0,
      C_HAS_EXPONENTIAL => 0,
      C_HAS_FIX_TO_FLT => 0,
      C_HAS_FLT_TO_FIX => 0,
      C_HAS_FLT_TO_FLT => 0,
      C_HAS_INVALID_OP => 0,
      C_HAS_LOGARITHM => 0,
      C_HAS_MULTIPLY => 0,
      C_HAS_OPERATION => 0,
      C_HAS_OPERATION_TLAST => 0,
      C_HAS_OPERATION_TUSER => 0,
      C_HAS_OVERFLOW => 0,
      C_HAS_RECIP => 0,
      C_HAS_RECIP_SQRT => 0,
      C_HAS_RESULT_TLAST => 0,
      C_HAS_RESULT_TUSER => 0,
      C_HAS_SQRT => 0,
      C_HAS_SUBTRACT => 0,
      C_HAS_UNDERFLOW => 0,
      C_LATENCY => 1,
      C_MULT_USAGE => 0,
      C_OPERATION_TDATA_WIDTH => 8,
      C_OPERATION_TUSER_WIDTH => 1,
      C_OPTIMIZATION => 1,
      C_RATE => 1,
      C_RESULT_FRACTION_WIDTH => 24,
      C_RESULT_TDATA_WIDTH => 32,
      C_RESULT_TUSER_WIDTH => 1,
      C_RESULT_WIDTH => 32,
      C_THROTTLE_SCHEME => 3,
      C_TLAST_RESOLUTION => 0,
      C_XDEVICEFAMILY => "spartan6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_fdiv_v6
  PORT MAP (
    aclk => aclk,
    aclken => aclken,
    s_axis_a_tvalid => s_axis_a_tvalid,
    s_axis_a_tdata => s_axis_a_tdata,
    s_axis_b_tvalid => s_axis_b_tvalid,
    s_axis_b_tdata => s_axis_b_tdata,
    m_axis_result_tvalid => m_axis_result_tvalid,
    m_axis_result_tdata => m_axis_result_tdata
  );
-- synthesis translate_on

END fdiv_v6_a;
