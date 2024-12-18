library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity neural_network_gmem_m_axi is
    generic (
        C_ID_WIDTH      : INTEGER := 1;
        C_ADDR_WIDTH    : INTEGER := 32;
        C_TARGET_ADDR   : INTEGER := 16#00000000#;
        C_DATA_WIDTH    : INTEGER := 32;
        C_AWUSER_WIDTH  : INTEGER := 1;
        C_ARUSER_WIDTH  : INTEGER := 1;
        C_WUSER_WIDTH   : INTEGER := 1;
        C_RUSER_WIDTH   : INTEGER := 1;
        C_BUSER_WIDTH   : INTEGER := 1;
        C_USER_VALUE    : INTEGER := 0;
        C_PROT_VALUE    : INTEGER := 0;
        C_CACHE_VALUE   : INTEGER := 2#0011#;
        USER_DW         : INTEGER := 16;
        USER_AW         : INTEGER := 32;
        USER_MAXREQS    : INTEGER := 16);
    port (
        -- system signal
        ACLK            : in STD_LOGIC;
        ARESETN         : in STD_LOGIC;
        ACLK_EN         : in STD_LOGIC;
        -- write address channel
        AWID            : out STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        AWADDR          : out STD_LOGIC_VECTOR(C_ADDR_WIDTH-1 downto 0);
        AWLEN           : out STD_LOGIC_VECTOR(7 downto 0);
        AWSIZE          : out STD_LOGIC_VECTOR(2 downto 0);
        AWBURST         : out STD_LOGIC_VECTOR(1 downto 0);
        AWLOCK          : out STD_LOGIC_VECTOR(1 downto 0);
        AWCACHE         : out STD_LOGIC_VECTOR(3 downto 0);
        AWPROT          : out STD_LOGIC_VECTOR(2 downto 0);
        AWQOS           : out STD_LOGIC_VECTOR(3 downto 0);
        AWREGION        : out STD_LOGIC_VECTOR(3 downto 0);
        AWUSER          : out STD_LOGIC_VECTOR(C_AWUSER_WIDTH-1 downto 0);
        AWVALID         : out STD_LOGIC;
        AWREADY         : in  STD_LOGIC;
        -- write data channel
        WID             : out STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        WDATA           : out STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
        WSTRB           : out STD_LOGIC_VECTOR(C_DATA_WIDTH/8-1 downto 0);
        WLAST           : out STD_LOGIC;
        WUSER           : out STD_LOGIC_VECTOR(C_WUSER_WIDTH-1 downto 0);
        WVALID          : out STD_LOGIC;
        WREADY          : in  STD_LOGIC;
        -- write response channel
        BID             : in  STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        BRESP           : in  STD_LOGIC_VECTOR(1 downto 0);
        BUSER           : in  STD_LOGIC_VECTOR(C_BUSER_WIDTH-1 downto 0);
        BVALID          : in  STD_LOGIC;
        BREADY          : out STD_LOGIC;
        -- read address channel
        ARID            : out STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        ARADDR          : out STD_LOGIC_VECTOR(C_ADDR_WIDTH-1 downto 0);
        ARLEN           : out STD_LOGIC_VECTOR(7 downto 0);
        ARSIZE          : out STD_LOGIC_VECTOR(2 downto 0);
        ARBURST         : out STD_LOGIC_VECTOR(1 downto 0);
        ARLOCK          : out STD_LOGIC_VECTOR(1 downto 0);
        ARCACHE         : out STD_LOGIC_VECTOR(3 downto 0);
        ARPROT          : out STD_LOGIC_VECTOR(2 downto 0);
        ARQOS           : out STD_LOGIC_VECTOR(3 downto 0);
        ARREGION        : out STD_LOGIC_VECTOR(3 downto 0);
        ARUSER          : out STD_LOGIC_VECTOR(C_ARUSER_WIDTH-1 downto 0);
        ARVALID         : out STD_LOGIC;
        ARREADY         : in  STD_LOGIC;
        -- read data channel
        RID             : in  STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        RDATA           : in  STD_LOGIC_VECTOR(C_DATA_WIDTH-1 downto 0);
        RRESP           : in  STD_LOGIC_VECTOR(1 downto 0);
        RLAST           : in  STD_LOGIC;
        RUSER           : in  STD_LOGIC_VECTOR(C_RUSER_WIDTH-1 downto 0);
        RVALID          : in  STD_LOGIC;
        RREADY          : out STD_LOGIC;

        -- internal bus ports
        -- write address channel
        I_AWID          : in  STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        I_AWADDR        : in  STD_LOGIC_VECTOR(USER_AW-1 downto 0);
        I_AWLEN         : in  STD_LOGIC_VECTOR(31 downto 0);
        I_AWSIZE        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_AWBURST       : in  STD_LOGIC_VECTOR(1 downto 0);
        I_AWLOCK        : in  STD_LOGIC_VECTOR(1 downto 0);
        I_AWCACHE       : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWPROT        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_AWQOS         : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWREGION      : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWUSER        : in  STD_LOGIC_VECTOR(C_AWUSER_WIDTH-1 downto 0);
        I_AWVALID       : in  STD_LOGIC;
        I_AWREADY       : out STD_LOGIC;
        -- write data channel
        I_WID           : in  STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        I_WDATA         : in  STD_LOGIC_VECTOR(USER_DW-1 downto 0);
        I_WSTRB         : in  STD_LOGIC_VECTOR(USER_DW/8-1 downto 0);
        I_WLAST         : in  STD_LOGIC;
        I_WUSER         : in  STD_LOGIC_VECTOR(C_WUSER_WIDTH-1 downto 0);
        I_WVALID        : in  STD_LOGIC;
        I_WREADY        : out STD_LOGIC;
        -- write response channel
        I_BID           : out STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        I_BRESP         : out STD_LOGIC_VECTOR(1 downto 0);
        I_BUSER         : out STD_LOGIC_VECTOR(C_BUSER_WIDTH-1 downto 0);
        I_BVALID        : out STD_LOGIC;
        I_BREADY        : in  STD_LOGIC;
        -- read address channel
        I_ARID          : in  STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        I_ARADDR        : in  STD_LOGIC_VECTOR(USER_AW-1 downto 0);
        I_ARLEN         : in  STD_LOGIC_VECTOR(31 downto 0);
        I_ARSIZE        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_ARBURST       : in  STD_LOGIC_VECTOR(1 downto 0);
        I_ARLOCK        : in  STD_LOGIC_VECTOR(1 downto 0);
        I_ARCACHE       : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARPROT        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_ARQOS         : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARREGION      : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARUSER        : in  STD_LOGIC_VECTOR(C_ARUSER_WIDTH-1 downto 0);
        I_ARVALID       : in  STD_LOGIC;
        I_ARREADY       : out STD_LOGIC;
        -- read data channel
        I_RID           : out STD_LOGIC_VECTOR(C_ID_WIDTH-1 downto 0);
        I_RDATA         : out STD_LOGIC_VECTOR(USER_DW-1 downto 0);
        I_RRESP         : out STD_LOGIC_VECTOR(1 downto 0);
        I_RLAST         : out STD_LOGIC;
        I_RUSER         : out STD_LOGIC_VECTOR(C_RUSER_WIDTH-1 downto 0);
        I_RVALID        : out STD_LOGIC;
        I_RREADY        : in  STD_LOGIC);
end entity neural_network_gmem_m_axi;

architecture behave of neural_network_gmem_m_axi is
    component neural_network_gmem_m_axi_write is
        generic (
            C_ID_WIDTH      : INTEGER := 1;
            C_ADDR_WIDTH    : INTEGER := 32;
            C_TARGET_ADDR   : INTEGER := 16#00000000#;
            C_DATA_WIDTH    : INTEGER := 32;
            C_AWUSER_WIDTH  : INTEGER := 1;
            C_WUSER_WIDTH   : INTEGER := 1;
            C_BUSER_WIDTH   : INTEGER := 1;
            C_USER_VALUE    : INTEGER := 0;
            C_PROT_VALUE    : INTEGER := 0;
            C_CACHE_VALUE   : INTEGER := 2#0011#;
            USER_DW         : INTEGER := 16;
            USER_AW         : INTEGER := 32;
            USER_MAXREQS    : INTEGER := 16);
        port (
            ACLK            : in  STD_LOGIC;
            ARESETN         : in  STD_LOGIC;
            ACLK_EN         : in  STD_LOGIC;
            AWID            : out UNSIGNED(C_ID_WIDTH-1 downto 0);
            AWADDR          : out UNSIGNED(C_ADDR_WIDTH-1 downto 0);
            AWLEN           : out UNSIGNED(7 downto 0);
            AWSIZE          : out UNSIGNED(2 downto 0);
            AWBURST         : out UNSIGNED(1 downto 0);
            AWLOCK          : out UNSIGNED(1 downto 0);
            AWCACHE         : out UNSIGNED(3 downto 0);
            AWPROT          : out UNSIGNED(2 downto 0);
            AWQOS           : out UNSIGNED(3 downto 0);
            AWREGION        : out UNSIGNED(3 downto 0);
            AWUSER          : out UNSIGNED(C_AWUSER_WIDTH-1 downto 0);
            AWVALID         : out STD_LOGIC;
            AWREADY         : in  STD_LOGIC;
            WID             : out UNSIGNED(C_ID_WIDTH-1 downto 0);
            WDATA           : out UNSIGNED(C_DATA_WIDTH-1 downto 0);
            WSTRB           : out UNSIGNED(C_DATA_WIDTH/8-1 downto 0);
            WLAST           : out STD_LOGIC;
            WUSER           : out UNSIGNED(C_WUSER_WIDTH-1 downto 0);
            WVALID          : out STD_LOGIC;
            WREADY          : in  STD_LOGIC;
            BID             : in  UNSIGNED(C_ID_WIDTH-1 downto 0);
            BRESP           : in  UNSIGNED(1 downto 0);
            BUSER           : in  UNSIGNED(C_BUSER_WIDTH-1 downto 0);
            BVALID          : in  STD_LOGIC;
            BREADY          : out STD_LOGIC;
            wreq_valid      : in  STD_LOGIC;
            wreq_ack        : out STD_LOGIC;
            wreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
            wreq_length     : in  UNSIGNED(31 downto 0);
            wreq_cache      : in  UNSIGNED(3 downto 0);
            wreq_prot       : in  UNSIGNED(2 downto 0);
            wreq_qos        : in  UNSIGNED(3 downto 0);
            wreq_user       : in  UNSIGNED(C_AWUSER_WIDTH-1 downto 0);
            wdata_valid     : in  STD_LOGIC;
            wdata_ack       : out STD_LOGIC;
            wdata_strb      : in  UNSIGNED(USER_DW/8-1 downto 0);
            wdata_user      : in  UNSIGNED(C_WUSER_WIDTH-1 downto 0);
            wdata_data      : in  UNSIGNED(USER_DW-1 downto 0);
            wrsp_valid      : out STD_LOGIC;
            wrsp_ack        : in  STD_LOGIC;
            wrsp            : out UNSIGNED(1 downto 0));
    end component neural_network_gmem_m_axi_write;

    component neural_network_gmem_m_axi_read is
        generic (
            C_ID_WIDTH      : INTEGER := 1;
            C_ADDR_WIDTH    : INTEGER := 32;
            C_TARGET_ADDR   : INTEGER := 16#00000000#;
            C_DATA_WIDTH    : INTEGER := 32;
            C_ARUSER_WIDTH  : INTEGER := 1;
            C_RUSER_WIDTH   : INTEGER := 1;
            C_USER_VALUE    : INTEGER := 0;
            C_PROT_VALUE    : INTEGER := 0;
            C_CACHE_VALUE   : INTEGER := 2#0011#;
            USER_DW         : INTEGER := 16;
            USER_AW         : INTEGER := 32;
            USER_MAXREQS    : INTEGER := 16);
        port (
            ACLK            : in  STD_LOGIC; 
            ARESETN         : in  STD_LOGIC; 
            ACLK_EN         : in  STD_LOGIC;
            ARID            : out UNSIGNED(C_ID_WIDTH-1 downto 0); 
            ARADDR          : out UNSIGNED(C_ADDR_WIDTH-1 downto 0); 
            ARLEN           : out UNSIGNED(7 downto 0);
            ARSIZE          : out UNSIGNED(2 downto 0);
            ARBURST         : out UNSIGNED(1 downto 0);
            ARLOCK          : out UNSIGNED(1 downto 0);
            ARCACHE         : out UNSIGNED(3 downto 0);
            ARPROT          : out UNSIGNED(2 downto 0);
            ARQOS           : out UNSIGNED(3 downto 0);
            ARREGION        : out UNSIGNED(3 downto 0);
            ARUSER          : out UNSIGNED(C_ARUSER_WIDTH-1 downto 0);
            ARVALID         : out STD_LOGIC;
            ARREADY         : in  STD_LOGIC;
            RID             : in  UNSIGNED(C_ID_WIDTH-1 downto 0);
            RDATA           : in  UNSIGNED(C_DATA_WIDTH-1 downto 0);
            RRESP           : in  UNSIGNED(1 downto 0);
            RLAST           : in  STD_LOGIC;
            RUSER           : in  UNSIGNED(C_RUSER_WIDTH-1 downto 0);
            RVALID          : in  STD_LOGIC;
            RREADY          : out STD_LOGIC;
            rreq_valid      : in  STD_LOGIC;
            rreq_ack        : out STD_LOGIC;
            rreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
            rreq_length     : in  UNSIGNED(31 downto 0);
            rreq_cache      : in  UNSIGNED(3 downto 0);
            rreq_prot       : in  UNSIGNED(2 downto 0);
            rreq_qos        : in  UNSIGNED(3 downto 0);
            rreq_user       : in  UNSIGNED(C_ARUSER_WIDTH-1 downto 0);
            rdata_valid     : out STD_LOGIC;
            rdata_ack       : in  STD_LOGIC;
            rdata_data      : out UNSIGNED(USER_DW-1 downto 0);
            rrsp            : out UNSIGNED(1 downto 0));
    end component neural_network_gmem_m_axi_read;

begin 

    I_BID   <= (others => '0');
    I_BUSER <= (others => '0');
    I_RID   <= (others => '0');
    I_RLAST <= '0';
    I_RUSER <= (others => '0');

    -- Instantiation
    bus_write : neural_network_gmem_m_axi_write
        generic map (
            C_ID_WIDTH     => C_ID_WIDTH,
            C_ADDR_WIDTH   => C_ADDR_WIDTH,
            C_TARGET_ADDR  => C_TARGET_ADDR,
            C_DATA_WIDTH   => C_DATA_WIDTH,
            C_AWUSER_WIDTH => C_AWUSER_WIDTH,
            C_WUSER_WIDTH  => C_WUSER_WIDTH,
            C_BUSER_WIDTH  => C_BUSER_WIDTH,
            C_USER_VALUE   => C_USER_VALUE,
            C_PROT_VALUE   => C_PROT_VALUE,
            C_CACHE_VALUE  => C_CACHE_VALUE,
            USER_DW        => USER_DW,
            USER_AW        => USER_AW,
            USER_MAXREQS   => USER_MAXREQS)
        port map (
            ACLK                        => ACLK,
            ARESETN                     => ARESETN,
            ACLK_EN                     => ACLK_EN,
            STD_LOGIC_VECTOR(AWID)      => AWID,
            STD_LOGIC_VECTOR(AWADDR)    => AWADDR,
            STD_LOGIC_VECTOR(AWLEN)     => AWLEN,
            STD_LOGIC_VECTOR(AWSIZE)    => AWSIZE,
            STD_LOGIC_VECTOR(AWBURST)   => AWBURST,
            STD_LOGIC_VECTOR(AWLOCK)    => AWLOCK,
            STD_LOGIC_VECTOR(AWCACHE)   => AWCACHE,
            STD_LOGIC_VECTOR(AWPROT)    => AWPROT,
            STD_LOGIC_VECTOR(AWQOS)     => AWQOS,
            STD_LOGIC_VECTOR(AWREGION)  => AWREGION,
            STD_LOGIC_VECTOR(AWUSER)    => AWUSER,
            AWVALID                     => AWVALID,
            AWREADY                     => AWREADY,
            STD_LOGIC_VECTOR(WID)       => WID,
            STD_LOGIC_VECTOR(WDATA)     => WDATA,
            STD_LOGIC_VECTOR(WSTRB)     => WSTRB,
            WLAST                       => WLAST,
            STD_LOGIC_VECTOR(WUSER)     => WUSER,
            WVALID                      => WVALID,
            WREADY                      => WREADY,
            BID                         => UNSIGNED(BID),
            BRESP                       => UNSIGNED(BRESP),
            BUSER                       => UNSIGNED(BUSER),
            BVALID                      => BVALID,
            BREADY                      => BREADY,
            wreq_valid                  => I_AWVALID,
            wreq_ack                    => I_AWREADY,
            wreq_addr                   => UNSIGNED(I_AWADDR),
            wreq_length                 => UNSIGNED(I_AWLEN),
            wreq_cache                  => UNSIGNED(I_AWCACHE),
            wreq_prot                   => UNSIGNED(I_AWPROT),
            wreq_qos                    => UNSIGNED(I_AWQOS),
            wreq_user                   => UNSIGNED(I_AWUSER),
            wdata_valid                 => I_WVALID,
            wdata_ack                   => I_WREADY,
            wdata_strb                  => UNSIGNED(I_WSTRB),
            wdata_user                  => UNSIGNED(I_WUSER),
            wdata_data                  => UNSIGNED(I_WDATA),
            wrsp_valid                  => I_BVALID,
            wrsp_ack                    => I_BREADY,
            STD_LOGIC_VECTOR(wrsp)      => I_BRESP);

    bus_read : neural_network_gmem_m_axi_read
        generic map (
            C_ID_WIDTH     => C_ID_WIDTH,
            C_ADDR_WIDTH   => C_ADDR_WIDTH,
            C_TARGET_ADDR  => C_TARGET_ADDR,
            C_DATA_WIDTH   => C_DATA_WIDTH,
            C_ARUSER_WIDTH => C_ARUSER_WIDTH,
            C_RUSER_WIDTH  => C_RUSER_WIDTH,
            C_USER_VALUE   => C_USER_VALUE,
            C_PROT_VALUE   => C_PROT_VALUE,
            C_CACHE_VALUE  => C_CACHE_VALUE,
            USER_DW        => USER_DW,
            USER_AW        => USER_AW,
            USER_MAXREQS   => USER_MAXREQS)
        port map (
            ACLK                        => ACLK,
            ARESETN                     => ARESETN,
            ACLK_EN                     => ACLK_EN,
            STD_LOGIC_VECTOR(ARID)      => ARID,
            STD_LOGIC_VECTOR(ARADDR)    => ARADDR,
            STD_LOGIC_VECTOR(ARLEN)     => ARLEN,
            STD_LOGIC_VECTOR(ARSIZE)    => ARSIZE,
            STD_LOGIC_VECTOR(ARBURST)   => ARBURST,
            STD_LOGIC_VECTOR(ARLOCK)    => ARLOCK,
            STD_LOGIC_VECTOR(ARCACHE)   => ARCACHE,
            STD_LOGIC_VECTOR(ARPROT)    => ARPROT,
            STD_LOGIC_VECTOR(ARQOS)     => ARQOS,
            STD_LOGIC_VECTOR(ARREGION)  => ARREGION,
            STD_LOGIC_VECTOR(ARUSER)    => ARUSER,
            ARVALID                     => ARVALID,
            ARREADY                     => ARREADY,
            RID                         => UNSIGNED(RID),
            RDATA                       => UNSIGNED(RDATA),
            RRESP                       => UNSIGNED(RRESP),
            RLAST                       => RLAST,
            RUSER                       => UNSIGNED(RUSER),
            RVALID                      => RVALID,
            RREADY                      => RREADY,
            rreq_valid                  => I_ARVALID,
            rreq_ack                    => I_ARREADY,
            rreq_addr                   => UNSIGNED(I_ARADDR),
            rreq_length                 => UNSIGNED(I_ARLEN),
            rreq_cache                  => UNSIGNED(I_ARCACHE),
            rreq_prot                   => UNSIGNED(I_ARPROT),
            rreq_qos                    => UNSIGNED(I_ARQOS),
            rreq_user                   => UNSIGNED(I_ARUSER),
            rdata_valid                 => I_RVALID,
            rdata_ack                   => I_RREADY,
            STD_LOGIC_VECTOR(rdata_data)=> I_RDATA,
            STD_LOGIC_VECTOR(rrsp)      => I_RRESP);

end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity neural_network_gmem_m_axi_fifo is
    generic (
        DATA_BITS   : INTEGER := 8;
        DEPTH       : INTEGER := 16;
        DEPTH_BITS  : INTEGER := 4);
    port (
        sclk        : in  STD_LOGIC;
        reset_n     : in  STD_LOGIC;
        sclk_en     : in  STD_LOGIC;
        empty_n     : out STD_LOGIC;
        full_n      : out STD_LOGIC;
        rdreq       : in  STD_LOGIC;
        wrreq       : in  STD_LOGIC;
        q           : out UNSIGNED(DATA_BITS-1 downto 0);
        data        : in  UNSIGNED(DATA_BITS-1 downto 0));
end entity neural_network_gmem_m_axi_fifo;

architecture behave of neural_network_gmem_m_axi_fifo is
    signal push, pop                : STD_LOGIC;
    signal empty_n_tmp, full_n_tmp  : STD_LOGIC;
    signal pout                     : INTEGER range 0 to DEPTH -1;
    subtype word is UNSIGNED(DATA_BITS-1 downto 0);
    type regFileType is array(0 to DEPTH-1) of word;
    signal mem                      : regFileType;
begin
    full_n <= full_n_tmp;
    empty_n <= empty_n_tmp;

    push <= full_n_tmp and wrreq;
    pop <= empty_n_tmp and rdreq;
    q <= mem(pout);
    
    empty_n_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') and sclk_en = '1' then
            if reset_n = '0' then
                empty_n_tmp <= '0';
            elsif push = '1' then
                empty_n_tmp <= '1';
            elsif push = '0' and pop = '1' and pout = 0 then
                empty_n_tmp <= '0';
            end if;
        end if;
    end process empty_n_proc;
    
    full_n_proc : process (sclk) 
    begin 
        if (sclk'event and sclk = '1') and sclk_en = '1' then 
            if reset_n = '0' then
                full_n_tmp <= '1';
            elsif rdreq = '1' then
                full_n_tmp <= '1';
            elsif push = '1' and pop = '0' and pout = DEPTH - 2 and empty_n_tmp = '1' then
                full_n_tmp <= '0';
            end if;
        end if;
    end process full_n_proc;

    pout_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') and sclk_en = '1' then 
            if reset_n = '0' then
                pout <= 0;
            elsif push = '1' and pop = '0' and empty_n_tmp = '1' then
                pout <= TO_INTEGER(TO_UNSIGNED(pout + 1, DEPTH_BITS));
            elsif push = '0' and pop = '1' and pout /= 0 then
                pout <= pout - 1;
            end if;
        end  if;
    end process pout_proc;

    process (sclk)
    begin
        if (sclk'event and sclk = '1') and sclk_en = '1' then 
            if push = '1' then
                for i in 0 to DEPTH - 2 loop
                    mem(i+1) <= mem(i);
                end loop;
                mem(0) <= data;
            end if;
        end  if;
    end process;
end architecture behave; 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity neural_network_gmem_m_axi_decoder is
    generic (
        DIN_WIDTH : integer := 3);
    port (
        din     : in  UNSIGNED(DIN_WIDTH - 1 downto 0);
        dout    : out UNSIGNED(2**DIN_WIDTH - 1 downto 0));
end entity neural_network_gmem_m_axi_decoder;

architecture behav of neural_network_gmem_m_axi_decoder is
begin
    process (din)
    begin
        dout <= (others => '0');
        dout(TO_INTEGER(din) - 1 downto 0) <= (others => '1');
    end process;
end architecture behav;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity neural_network_gmem_m_axi_read is
    generic (
        C_ID_WIDTH      : INTEGER := 1;
        C_ADDR_WIDTH    : INTEGER := 32;
        C_TARGET_ADDR   : INTEGER := 16#00000000#;
        C_DATA_WIDTH    : INTEGER := 32;
        C_ARUSER_WIDTH  : INTEGER := 1;
        C_RUSER_WIDTH   : INTEGER := 1;
        C_USER_VALUE    : INTEGER := 0;
        C_PROT_VALUE    : INTEGER := 0;
        C_CACHE_VALUE   : INTEGER := 2#0011#;
        USER_DW         : INTEGER := 16;
        USER_AW         : INTEGER := 32;
        USER_MAXREQS    : INTEGER := 16);
    port (
        ACLK            : in  STD_LOGIC;
        ARESETN         : in  STD_LOGIC;
        ACLK_EN         : in  STD_LOGIC;
        ARID            : out UNSIGNED(C_ID_WIDTH-1 downto 0);
        ARADDR          : out UNSIGNED(C_ADDR_WIDTH-1 downto 0);
        ARLEN           : out UNSIGNED(7 downto 0);
        ARSIZE          : out UNSIGNED(2 downto 0);
        ARBURST         : out UNSIGNED(1 downto 0);
        ARLOCK          : out UNSIGNED(1 downto 0);
        ARCACHE         : out UNSIGNED(3 downto 0);
        ARPROT          : out UNSIGNED(2 downto 0);
        ARQOS           : out UNSIGNED(3 downto 0);
        ARREGION        : out UNSIGNED(3 downto 0);
        ARUSER          : out UNSIGNED(C_ARUSER_WIDTH-1 downto 0);
        ARVALID         : out STD_LOGIC;
        ARREADY         : in  STD_LOGIC;
        RID             : in  UNSIGNED(C_ID_WIDTH-1 downto 0);
        RDATA           : in  UNSIGNED(C_DATA_WIDTH-1 downto 0);
        RRESP           : in  UNSIGNED(1 downto 0);
        RLAST           : in  STD_LOGIC;
        RUSER           : in  UNSIGNED(C_RUSER_WIDTH-1 downto 0);
        RVALID          : in  STD_LOGIC;
        RREADY          : out STD_LOGIC;
        rreq_valid      : in  STD_LOGIC;
        rreq_ack        : out STD_LOGIC;
        rreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
        rreq_length     : in  UNSIGNED(31 downto 0);
        rreq_cache      : in  UNSIGNED(3 downto 0);
        rreq_prot       : in  UNSIGNED(2 downto 0);
        rreq_qos        : in  UNSIGNED(3 downto 0);
        rreq_user       : in  UNSIGNED(C_ARUSER_WIDTH-1 downto 0);
        rdata_valid     : out STD_LOGIC;
        rdata_ack       : in  STD_LOGIC;
        rdata_data      : out UNSIGNED(USER_DW-1 downto 0);
        rrsp            : out UNSIGNED(1 downto 0));

    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

end entity neural_network_gmem_m_axi_read;

architecture behave of neural_network_gmem_m_axi_read is
    --common
    constant USER_DATA_WIDTH : INTEGER := calc_data_width(USER_DW);
    constant USER_DATA_BYTES : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_WIDTH  : INTEGER := C_DATA_WIDTH;
    constant BUS_DATA_BYTES  : INTEGER := BUS_DATA_WIDTH / 8;
    constant BUS_ADDR_ALIGN  : INTEGER := log2(BUS_DATA_BYTES);
    --AR channel
    constant TARGET_ADDR     : INTEGER := (C_TARGET_ADDR/USER_DATA_BYTES)*USER_DATA_BYTES;
    constant BOUNDARY_BEATS  : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0) := (others => '1');
    signal  rreq_data        : UNSIGNED(USER_AW + 31 downto 0);
    signal  fifo_rreq_data   : UNSIGNED(USER_AW + 31 downto 0);
    signal  tmp_addr         : UNSIGNED(USER_AW - 1 downto 0);
    signal  tmp_len          : UNSIGNED(31 downto 0);
    signal  align_len        : UNSIGNED(31 downto 0);
    signal  arlen_tmp        : UNSIGNED(7 downto 0);
    signal  araddr_tmp       : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  start_addr       : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  start_addr_buf   : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  end_addr         : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  end_addr_buf     : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr        : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr_buf    : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  sect_end         : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  sect_end_buf     : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  burst_end        : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  start_to_4k      : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len         : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len_buf     : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  beat_len_buf     : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_cnt         : UNSIGNED(19 downto 0);
    signal  fifo_rreq_valid  : STD_LOGIC;
    signal  fifo_rreq_read   : STD_LOGIC;
    signal  fifo_burst_w     : STD_LOGIC;
    signal  fifo_resp_w      : STD_LOGIC;
    signal  ARVALID_T        : STD_LOGIC;
    signal  ready_for_sect   : STD_LOGIC;
    signal  next_rreq        : BOOLEAN;
    signal  ready_for_rreq   : BOOLEAN;
    signal  rreq_handling    : BOOLEAN;
    signal  first_sect       : BOOLEAN;
    signal  last_sect        : BOOLEAN;
    signal  next_sect        : BOOLEAN;
    --R channel
    signal  fifo_rresp_rdata : UNSIGNED(BUS_DATA_WIDTH + 1 downto 0);
    signal  data_pack        : UNSIGNED(BUS_DATA_WIDTH + 1 downto 0);
    signal  tmp_data         : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
    signal  len_cnt          : UNSIGNED(7 downto 0);
    signal  tmp_resp         : UNSIGNED(1 downto 0);
    signal  resp_buf         : UNSIGNED(1 downto 0);
    signal  beat_valid       : STD_LOGIC;
    signal  next_beat        : STD_LOGIC;
    signal  burst_valid      : STD_LOGIC;
    signal  fifo_burst_ready : STD_LOGIC;
    signal  next_burst       : STD_LOGIC;
    signal  rdata_valid_t    : STD_LOGIC;

    component neural_network_gmem_m_axi_fifo is
        generic (
            DATA_BITS   : INTEGER := 8;
            DEPTH       : INTEGER := 16;
            DEPTH_BITS  : INTEGER := 4);
        port (
            sclk        : in  STD_LOGIC;
            reset_n     : in  STD_LOGIC;
            sclk_en     : in  STD_LOGIC;
            empty_n     : out STD_LOGIC;
            full_n      : out STD_LOGIC;
            rdreq       : in  STD_LOGIC;
            wrreq       : in  STD_LOGIC;
            q           : out UNSIGNED(DATA_BITS-1 downto 0);
            data        : in  UNSIGNED(DATA_BITS-1 downto 0));
    end component neural_network_gmem_m_axi_fifo;

begin
    --------------------------- AR channel begin -----------------------------------
    -- Instantiation
    fifo_rreq : neural_network_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  USER_AW + 32,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            sclk_en         =>  ACLK_EN,
            empty_n         =>  fifo_rreq_valid,
            full_n          =>  rreq_ack,
            rdreq           =>  fifo_rreq_read,
            wrreq           =>  rreq_valid,
            q               =>  fifo_rreq_data,
            data            =>  rreq_data);

    rreq_data   <= (rreq_length & rreq_addr);
    tmp_addr    <= fifo_rreq_data(USER_AW - 1 downto 0);
    tmp_len     <= fifo_rreq_data(USER_AW + 31 downto USER_AW);

    align_len   <= SHIFT_LEFT(tmp_len, USER_ADDR_ALIGN) - 1;
    start_addr  <= TARGET_ADDR + SHIFT_LEFT(RESIZE(tmp_addr, C_ADDR_WIDTH), USER_ADDR_ALIGN);
    end_addr    <= start_addr + align_len;

    next_rreq      <= (fifo_rreq_valid = '1') and ready_for_rreq;
    ready_for_rreq <= not(rreq_handling and not(last_sect and next_sect));
    fifo_rreq_read <= '1' when next_rreq else '0';

    rreq_handling_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                rreq_handling <= false;
            elsif fifo_rreq_valid = '1' and not rreq_handling then
                rreq_handling <= true;
            elsif fifo_rreq_valid = '0' and last_sect and next_sect then
                rreq_handling <= false;
            end if;
        end if;
    end process rreq_handling_proc;

    start_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                start_addr_buf <= (others => '0');
            elsif next_rreq then
                start_addr_buf <= start_addr;
            end if;
        end if;
    end process start_addr_buf_proc;

    end_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                end_addr_buf <= (others => '0');
            elsif next_rreq then
                end_addr_buf <= end_addr;
            end if;
        end if;
    end process end_addr_buf_proc;

    beat_len_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                beat_len_buf <= (others => '0');
            elsif next_rreq then
                beat_len_buf <= RESIZE(SHIFT_RIGHT(align_len(11 downto 0) + start_addr(BUS_ADDR_ALIGN-1 downto 0), BUS_ADDR_ALIGN), 12-BUS_ADDR_ALIGN);
            end if;
        end if;
    end process beat_len_buf_proc;

    sect_cnt_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                sect_cnt <= (others => '0');
            elsif next_rreq then
                sect_cnt <= start_addr(31 downto 12);
            elsif next_sect then
                sect_cnt <= sect_cnt + 1;
            end if;
        end if;
    end process sect_cnt_proc;

    first_sect <= (sect_cnt = start_addr_buf(C_ADDR_WIDTH - 1 downto 12));
    last_sect  <= (sect_cnt = end_addr_buf(C_ADDR_WIDTH -1 downto 12));
    next_sect  <= rreq_handling and ready_for_sect = '1';

    sect_addr  <= start_addr_buf when first_sect else
                  sect_cnt & (11 downto 0 => '0');
    sect_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                sect_addr_buf <= (others => '0');
            elsif next_sect then
                sect_addr_buf <= sect_addr;
            end if;
        end if;
    end process sect_addr_proc;

    start_to_4k <= BOUNDARY_BEATS - start_addr_buf(11 downto BUS_ADDR_ALIGN);
    sect_len    <= beat_len_buf                            when     first_sect and     last_sect else
                   start_to_4k                             when     first_sect and not last_sect else
                   end_addr_buf(11 downto BUS_ADDR_ALIGN)  when not first_sect and     last_sect else
                   BOUNDARY_BEATS                          when not first_sect and not last_sect;

    sect_len_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                sect_len_buf <= (others => '0');
            elsif next_sect then
                sect_len_buf <= sect_len;
            end if;
        end if;
    end process sect_len_proc;

    sect_end <= end_addr_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_sect else
                (others => '1');
    sect_end_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                sect_end_buf <= (others => '0');
            elsif next_sect then
                sect_end_buf <= sect_end;
            end if;
        end if;
    end process sect_end_proc;

    ARID    <= (others => '0');
    ARSIZE  <= TO_UNSIGNED(BUS_ADDR_ALIGN, ARSIZE'length);
    ARBURST <= "01";
    ARLOCK  <= "00";
    ARCACHE <= TO_UNSIGNED(C_CACHE_VALUE, ARCACHE'length);
    ARPROT  <= TO_UNSIGNED(C_PROT_VALUE, ARPROT'length);
    ARUSER  <= TO_UNSIGNED(C_USER_VALUE, ARUSER'length);
    ARQOS   <= rreq_qos;

    -- if BUS_DATA_BYTES >= 16, then a 256 length burst is 4096 bytes(reach boundary).
    must_one_burst : if (BUS_DATA_BYTES >= 16) generate
    begin
        ARADDR  <= sect_addr_buf(C_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
        ARLEN   <= RESIZE(sect_len_buf, 8);
        ARVALID <= ARVALID_T;

        ready_for_sect <= '1' when not (ARVALID_T = '1' and ARREADY = '0') and fifo_burst_ready = '1' else '0';

        arvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    ARVALID_T <= '0';
                elsif next_sect then
                    ARVALID_T <= '1';
                elsif not next_sect and ARREADY = '1' then
                    ARVALID_T <= '0';
                end if;
            end if;
        end process arvalid_proc;

        fifo_burst_w <= '1' when next_sect else '0';
        araddr_tmp   <= sect_addr(C_ADDR_WIDTH - 1 downto 0);
        arlen_tmp    <= RESIZE(sect_len, 8);
        burst_end    <= sect_end;
    end generate must_one_burst;

    could_multi_bursts : if (BUS_DATA_BYTES < 16) generate
        signal  araddr_buf      : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
        signal  arlen_buf       : UNSIGNED(7 downto 0);
        signal  loop_cnt        : UNSIGNED(3 - BUS_ADDR_ALIGN downto 0);
        signal  last_loop       : BOOLEAN;
        signal  next_loop       : BOOLEAN;
        signal  ready_for_loop  : BOOLEAN;
        signal  sect_handling   : BOOLEAN;
    begin
        ARADDR  <= araddr_buf;
        ARLEN   <= arlen_buf;
        ARVALID <= ARVALID_T;

        last_loop      <= (loop_cnt = sect_len_buf(11 - BUS_ADDR_ALIGN downto 8));
        next_loop      <= sect_handling and ready_for_loop;
        ready_for_loop <= not (ARVALID_T = '1' and ARREADY = '0') and fifo_burst_ready = '1';
        ready_for_sect <= '1' when not (sect_handling and not (last_loop and next_loop)) else '0';

        sect_handling_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    sect_handling <= false;
                elsif rreq_handling and not sect_handling then
                    sect_handling <= true;
                elsif not rreq_handling and last_loop and next_loop then
                    sect_handling <= false;
                end if;
            end if;
        end process sect_handling_proc;

        loop_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    loop_cnt <= (others => '0');
                elsif next_sect then
                    loop_cnt <= (others => '0');
                elsif next_loop then
                    loop_cnt <= loop_cnt + 1;
                end if;
            end if;
        end process loop_cnt_proc;

        araddr_tmp <= sect_addr_buf(C_ADDR_WIDTH -1 downto 0) when loop_cnt = 0 else 
                      araddr_buf + SHIFT_LEFT(RESIZE(arlen_buf, 32) + 1, BUS_ADDR_ALIGN);
        araddr_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    araddr_buf <= (others => '0');
                elsif next_loop then
                    araddr_buf <= araddr_tmp(C_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
                end if;
            end if;
        end process araddr_buf_proc;

        arlen_tmp  <= sect_len_buf(7 downto 0) when last_loop else
                      X"FF";
        arlen_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    arlen_buf <= (others => '0');
                elsif next_loop then
                    arlen_buf <= arlen_tmp;
                end if;
            end if;
        end process arlen_buf_proc;
                    
        arvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    ARVALID_T <= '0';
                elsif next_loop then
                    ARVALID_T <= '1';
                elsif not next_loop and ARREADY = '1' then
                    ARVALID_T <= '0';
                end if;
            end if;
        end process arvalid_proc;

        fifo_burst_w <= '1' when next_loop else '0';
        burst_end    <= sect_end_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_loop else (others => '1');
    end generate could_multi_bursts;
    --------------------------- AR channel end -------------------------------------

    --------------------------- R channel begin ------------------------------------
    -- Instantiation
    fifo_rdata : neural_network_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  BUS_DATA_WIDTH + 2,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            sclk_en         =>  ACLK_EN,
            empty_n         =>  beat_valid,
            full_n          =>  RREADY,
            rdreq           =>  next_beat,
            wrreq           =>  RVALID,
            q               =>  data_pack,
            data            =>  fifo_rresp_rdata);

    fifo_rresp_rdata <= (RRESP & RDATA);
    tmp_data         <= data_pack(BUS_DATA_WIDTH - 1 downto 0);
    tmp_resp         <= data_pack(BUS_DATA_WIDTH + 1 downto BUS_DATA_WIDTH);

    bus_equal_gen : if (USER_DATA_WIDTH = BUS_DATA_WIDTH) generate
        signal  data_buf    : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  ready_for_data   : BOOLEAN;
    begin
        rrsp        <= resp_buf;
        rdata_data  <= data_buf;
        rdata_valid <= rdata_valid_t;

        fifo_burst_ready <= '1';
        next_beat        <= '1' when beat_valid = '1' and ready_for_data else '0';
        ready_for_data   <= not (rdata_valid_t = '1' and rdata_ack = '0');

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    data_buf <= (others => '0');
                elsif next_beat = '1' then
                    data_buf <= tmp_data;
                end if;
            end if;
        end process data_buf_proc;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    resp_buf <= "00";
                elsif next_beat = '1' then
                    resp_buf <= tmp_resp;
                end if;
            end if;
        end process resp_buf_proc;

        rdata_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    rdata_valid_t <= '0';
                elsif next_beat = '1' then
                    rdata_valid_t <= '1';
                elsif ready_for_data then
                    rdata_valid_t <= '0';
                end if;
            end if;
        end process rdata_valid_proc;
    end generate bus_equal_gen;

    bus_wide_gen : if (USER_DATA_WIDTH < BUS_DATA_WIDTH) generate
        constant TOTAL_SPLIT    : INTEGER := BUS_DATA_WIDTH / USER_DATA_WIDTH;
        constant SPLIT_ALIGN    : INTEGER := log2(TOTAL_SPLIT);
        signal  tmp_burst_info  : UNSIGNED(2*SPLIT_ALIGN + 7 downto 0);
        signal  burst_pack      : UNSIGNED(2*SPLIT_ALIGN + 7 downto 0);
        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  split_cnt       : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  split_cnt_buf   : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  head_split      : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  tail_split      : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  burst_len       : UNSIGNED(7 downto 0);
        signal  first_beat      : BOOLEAN;
        signal  last_beat       : BOOLEAN;
        signal  first_split     : BOOLEAN;
        signal  next_split      : BOOLEAN;
        signal  last_split      : BOOLEAN;
        signal  ready_for_data  : BOOLEAN;
    begin
        -- instantiation
        fifo_burst : neural_network_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  2*SPLIT_ALIGN + 8,
                DEPTH           =>  USER_MAXREQS,
                DEPTH_BITS      =>  log2(USER_MAXREQS))
            port map (
                sclk            =>  ACLK,
                reset_n         =>  ARESETN,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_pack,
                data            =>  tmp_burst_info);

        rrsp        <= resp_buf;
        rdata_data  <= data_buf(USER_DATA_WIDTH - 1 downto 0);
        rdata_valid <= rdata_valid_t;

        tmp_burst_info <= araddr_tmp(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & burst_end(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & RESIZE(arlen_tmp, 8);
        head_split     <= burst_pack(2*SPLIT_ALIGN + 7 downto 8 + SPLIT_ALIGN);
        tail_split     <= burst_pack(SPLIT_ALIGN + 7 downto 8);
        burst_len      <= burst_pack(7 downto 0);

        fifo_burst_ready <= '1';
        next_beat        <= '1' when last_split else '0';
        next_burst       <= '1' when last_beat and last_split else '0';
        ready_for_data   <= not (rdata_valid_t = '1' and rdata_ack = '0');

        first_beat <= len_cnt = 0 and burst_valid = '1' and beat_valid = '1';
        last_beat  <= len_cnt = burst_len and burst_valid = '1' and beat_valid = '1';

        first_split <= (split_cnt = 0 and beat_valid = '1' and ready_for_data) when not first_beat else
                       (split_cnt = head_split and ready_for_data);
        last_split  <= (split_cnt = (TOTAL_SPLIT - 1) and ready_for_data) when not last_beat else
                       (split_cnt = tail_split and ready_for_data);
        next_split  <= (split_cnt /= 0 and ready_for_data) when not first_beat else
                       (split_cnt /= head_split and ready_for_data);

        split_cnt <= head_split when first_beat and (split_cnt_buf = 0) else
                     split_cnt_buf;
        split_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    split_cnt_buf <= (others => '0');
                elsif last_split then
                    split_cnt_buf <= (others => '0');
                elsif first_split or next_split then
                    split_cnt_buf <= split_cnt + 1;
                end if;
            end if;
        end process split_cnt_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    len_cnt <= (others => '0');
                elsif last_beat and last_split then
                    len_cnt <= (others => '0');
                elsif last_split then
                    len_cnt <= len_cnt + 1;
                end if;
            end if;
        end process len_cnt_proc;

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    data_buf <= (others => '0');
                elsif first_split and first_beat then
                    data_buf <= SHIFT_RIGHT(tmp_data, to_integer(head_split)*USER_DATA_WIDTH);
                elsif first_split then
                    data_buf <= tmp_data;
                elsif next_split then
                    data_buf <= SHIFT_RIGHT(data_buf, USER_DATA_WIDTH);
                end if;
            end if;
        end process data_buf_proc;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    resp_buf <= "00";
                elsif first_split then
                    resp_buf <= tmp_resp;
                end if;
            end if;
        end process resp_buf_proc;

        rdata_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    rdata_valid_t <= '0';
                elsif first_split then
                    rdata_valid_t <= '1';
                elsif not (first_split or next_split) and ready_for_data then
                    rdata_valid_t <= '0';
                end if;
            end if;
        end process rdata_valid_proc;

    end generate bus_wide_gen;

    bus_narrow_gen : if (USER_DATA_WIDTH > BUS_DATA_WIDTH) generate
        constant TOTAL_PADS     : INTEGER := USER_DATA_WIDTH / BUS_DATA_WIDTH;
        constant PAD_ALIGN      : INTEGER := log2(TOTAL_PADS);
        signal  data_buf        : UNSIGNED(USER_DATA_WIDTH - 1 downto 0);
        signal  pad_oh          : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh_reg      : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  ready_for_data  : BOOLEAN;
        signal  next_pad        : BOOLEAN;
        signal  first_pad       : BOOLEAN;
        signal  last_pad        : BOOLEAN;
        signal  next_data       : BOOLEAN;
    begin
        rrsp        <= resp_buf;
        rdata_data  <= data_buf;
        rdata_valid <= rdata_valid_t;

        fifo_burst_ready <= '1';
        next_beat        <= '1' when next_pad else '0';
        ready_for_data   <= not (rdata_valid_t = '1' and rdata_ack = '0');

        next_pad  <= beat_valid = '1' and ready_for_data;
        last_pad  <= pad_oh(TOTAL_PADS - 1) = '1';
        next_data <= last_pad and ready_for_data;

        first_pad_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    first_pad <= true;
                elsif next_pad and not last_pad then
                    first_pad <= false;
                elsif next_pad and last_pad then
                    first_pad <= true;
                end if;
            end if;
        end process first_pad_proc;

        pad_oh <= (others => '0') when beat_valid = '0' else
                  TO_UNSIGNED(1, TOTAL_PADS) when first_pad else
                  pad_oh_reg;
        pad_oh_reg_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    pad_oh_reg <= (others => '0');
                elsif next_pad then
                    pad_oh_reg <= pad_oh(TOTAL_PADS - 2 downto 0) & '0';
                end if;
            end if;
        end process pad_oh_reg_proc;

        data_gen : for i in 1 to TOTAL_PADS generate
        begin
            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                    if (ARESETN = '0') then
                        data_buf(i*BUS_DATA_WIDTH - 1 downto (i-1)*BUS_DATA_WIDTH) <= (others => '0');
                    elsif pad_oh(i-1) = '1' and ready_for_data then
                        data_buf(i*BUS_DATA_WIDTH - 1 downto (i-1)*BUS_DATA_WIDTH) <= tmp_data;
                    end if;
                end if;
            end process;
        end generate data_gen;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    resp_buf <= "00";
                elsif next_beat = '1' and resp_buf(0) = '0' then
                    resp_buf <= tmp_resp;
                end if;
            end if;
        end process resp_buf_proc;

        rdata_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    rdata_valid_t <= '0';
                elsif next_data then
                    rdata_valid_t <= '1';
                elsif ready_for_data then
                    rdata_valid_t <= '0';
                end if;
            end if;
        end process rdata_valid_proc;
    end generate bus_narrow_gen;
    --------------------------- R channel end --------------------------------------
end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity neural_network_gmem_m_axi_write is
    generic (
        C_ID_WIDTH      : INTEGER := 1;
        C_ADDR_WIDTH    : INTEGER := 32;
        C_TARGET_ADDR   : INTEGER := 16#00000000#;
        C_DATA_WIDTH    : INTEGER := 32;
        C_AWUSER_WIDTH  : INTEGER := 1;
        C_WUSER_WIDTH   : INTEGER := 1;
        C_BUSER_WIDTH   : INTEGER := 1;
        C_USER_VALUE    : INTEGER := 0;
        C_PROT_VALUE    : INTEGER := 0;
        C_CACHE_VALUE   : INTEGER := 2#0011#;
        USER_DW         : INTEGER := 16;
        USER_AW         : INTEGER := 32;
        USER_MAXREQS    : INTEGER := 16);
    port (
        ACLK            : in  STD_LOGIC;  
        ARESETN         : in  STD_LOGIC;  
        ACLK_EN         : in  STD_LOGIC;
        AWID            : out UNSIGNED(C_ID_WIDTH-1 downto 0);  
        AWADDR          : out UNSIGNED(C_ADDR_WIDTH-1 downto 0);  
        AWLEN           : out UNSIGNED(7 downto 0);  
        AWSIZE          : out UNSIGNED(2 downto 0);  
        AWBURST         : out UNSIGNED(1 downto 0);  
        AWLOCK          : out UNSIGNED(1 downto 0);  
        AWCACHE         : out UNSIGNED(3 downto 0);  
        AWPROT          : out UNSIGNED(2 downto 0);  
        AWQOS           : out UNSIGNED(3 downto 0);  
        AWREGION        : out UNSIGNED(3 downto 0);  
        AWUSER          : out UNSIGNED(C_AWUSER_WIDTH-1 downto 0);  
        AWVALID         : out STD_LOGIC;  
        AWREADY         : in  STD_LOGIC;  
        WID             : out UNSIGNED(C_ID_WIDTH-1 downto 0);  
        WDATA           : out UNSIGNED(C_DATA_WIDTH-1 downto 0);  
        WSTRB           : out UNSIGNED(C_DATA_WIDTH/8-1 downto 0);  
        WLAST           : out STD_LOGIC;  
        WUSER           : out UNSIGNED(C_WUSER_WIDTH-1 downto 0);  
        WVALID          : out STD_LOGIC;  
        WREADY          : in  STD_LOGIC;  
        BID             : in  UNSIGNED(C_ID_WIDTH-1 downto 0);  
        BRESP           : in  UNSIGNED(1 downto 0);  
        BUSER           : in  UNSIGNED(C_BUSER_WIDTH-1 downto 0);  
        BVALID          : in  STD_LOGIC;  
        BREADY          : out STD_LOGIC;  
        wreq_valid      : in  STD_LOGIC;  
        wreq_ack        : out STD_LOGIC;  
        wreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);  
        wreq_length     : in  UNSIGNED(31 downto 0);  
        wreq_cache      : in  UNSIGNED(3 downto 0);  
        wreq_prot       : in  UNSIGNED(2 downto 0);  
        wreq_qos        : in  UNSIGNED(3 downto 0);  
        wreq_user       : in  UNSIGNED(C_AWUSER_WIDTH-1 downto 0);  
        wdata_valid     : in  STD_LOGIC;  
        wdata_ack       : out STD_LOGIC;  
        wdata_strb      : in  UNSIGNED(USER_DW/8-1 downto 0);  
        wdata_user      : in  UNSIGNED(C_WUSER_WIDTH-1 downto 0);  
        wdata_data      : in  UNSIGNED(USER_DW-1 downto 0);  
        wrsp_valid      : out STD_LOGIC;  
        wrsp_ack        : in  STD_LOGIC;  
        wrsp            : out UNSIGNED(1 downto 0));

    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

end entity neural_network_gmem_m_axi_write;

architecture behave of neural_network_gmem_m_axi_write is
    --common
    constant USER_DATA_WIDTH : INTEGER := calc_data_width(USER_DW);
    constant USER_DATA_BYTES : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_WIDTH  : INTEGER := C_DATA_WIDTH;
    constant BUS_DATA_BYTES  : INTEGER := BUS_DATA_WIDTH / 8;
    constant BUS_ADDR_ALIGN  : INTEGER := log2(BUS_DATA_BYTES);
    --AW channel
    constant TARGET_ADDR     : INTEGER := (C_TARGET_ADDR/USER_DATA_BYTES)*USER_DATA_BYTES;
    constant BOUNDARY_BEATS  : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0) := (others => '1');
    signal  wreq_data        : UNSIGNED(USER_AW + 31 downto 0);
    signal  fifo_wreq_data   : UNSIGNED(USER_AW + 31 downto 0);
    signal  tmp_addr         : UNSIGNED(USER_AW - 1 downto 0);
    signal  tmp_len          : UNSIGNED(31 downto 0);
    signal  align_len        : UNSIGNED(31 downto 0);
    signal  sect_cnt         : UNSIGNED(19 downto 0);
    signal  awlen_tmp        : UNSIGNED(7 downto 0);
    signal  start_addr       : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  end_addr         : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  start_addr_buf   : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  end_addr_buf     : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  awaddr_tmp       : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr        : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr_buf    : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
    signal  sect_end         : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  sect_end_buf     : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  burst_end        : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  start_to_4k      : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len         : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len_buf     : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  beat_len_buf     : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  burst_cnt        : UNSIGNED(C_ADDR_WIDTH - 13 downto 0);
    signal  fifo_wreq_valid  : STD_LOGIC;
    signal  fifo_wreq_read   : STD_LOGIC;
    signal  fifo_burst_w     : STD_LOGIC;
    signal  fifo_resp_w      : STD_LOGIC;
    signal  last_sect_buf    : STD_LOGIC;
    signal  ready_for_sect   : STD_LOGIC;
    signal  AWVALID_T        : STD_LOGIC;
    signal  next_wreq        : BOOLEAN;
    signal  ready_for_wreq   : BOOLEAN;
    signal  wreq_handling    : BOOLEAN;
    signal  first_sect       : BOOLEAN;
    signal  last_sect        : BOOLEAN;
    signal  next_sect        : BOOLEAN;
    --W channel
    signal  fifo_wdata_wstrb : UNSIGNED(USER_DW + USER_DW/8 - 1 downto 0);
    signal  data_pack        : UNSIGNED(USER_DW + USER_DW/8 - 1 downto 0);
    signal  tmp_data         : UNSIGNED(USER_DATA_WIDTH - 1 downto 0);
    signal  tmp_strb         : UNSIGNED(USER_DATA_BYTES - 1 downto 0);
    signal  len_cnt          : UNSIGNED(7 downto 0);
    signal  burst_len        : UNSIGNED(7 downto 0);
    signal  data_valid       : STD_LOGIC;
    signal  next_data        : STD_LOGIC;
    signal  burst_valid      : STD_LOGIC;
    signal  fifo_burst_ready : STD_LOGIC;
    signal  next_burst       : STD_LOGIC;
    signal  WVALID_T         : STD_LOGIC;
    signal  WLAST_T          : STD_LOGIC;
    --B channel
    signal  resp_total       : UNSIGNED(C_ADDR_WIDTH - 13 downto 0);
    signal  resp_cnt         : UNSIGNED(C_ADDR_WIDTH - 13 downto 0);
    signal  bresp_tmp        : UNSIGNED(1 downto 0);
    signal  next_resp        : BOOLEAN;
    signal  fifo_resp_ready  : STD_LOGIC;
    signal  need_wrsp        : STD_LOGIC;
    signal  resp_match       : STD_LOGIC;
    signal  resp_ready       : STD_LOGIC;

    component neural_network_gmem_m_axi_fifo is
        generic (
            DATA_BITS   : INTEGER := 8;
            DEPTH       : INTEGER := 16;
            DEPTH_BITS  : INTEGER := 4);
        port (
            sclk        : in  STD_LOGIC;
            reset_n     : in  STD_LOGIC;
            sclk_en     : in  STD_LOGIC;
            empty_n     : out STD_LOGIC;
            full_n      : out STD_LOGIC;
            rdreq       : in  STD_LOGIC;
            wrreq       : in  STD_LOGIC;
            q           : out UNSIGNED(DATA_BITS-1 downto 0);
            data        : in  UNSIGNED(DATA_BITS-1 downto 0));
    end component neural_network_gmem_m_axi_fifo;

begin
    --------------------------- AW channel begin -----------------------------------
    -- Instantiation
    fifo_wreq : neural_network_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  USER_AW + 32,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            sclk_en         =>  ACLK_EN,
            empty_n         =>  fifo_wreq_valid,
            full_n          =>  wreq_ack,
            rdreq           =>  fifo_wreq_read,
            wrreq           =>  wreq_valid,
            q               =>  fifo_wreq_data,
            data            =>  wreq_data);

    wreq_data   <= (wreq_length & wreq_addr);
    tmp_addr    <= fifo_wreq_data(USER_AW - 1 downto 0);
    tmp_len     <= fifo_wreq_data(USER_AW + 31 downto USER_AW);

    align_len   <= SHIFT_LEFT(tmp_len, USER_ADDR_ALIGN) - 1;
    start_addr  <= TARGET_ADDR + SHIFT_LEFT(RESIZE(tmp_addr, C_ADDR_WIDTH), USER_ADDR_ALIGN);
    end_addr    <= start_addr + align_len;

    next_wreq      <= (fifo_wreq_valid = '1') and ready_for_wreq;
    ready_for_wreq <= not(wreq_handling and not(last_sect and next_sect));
    fifo_wreq_read <= '1' when next_wreq else '0';

    wreq_handling_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                wreq_handling <= false;
            elsif fifo_wreq_valid = '1' and not wreq_handling then
                wreq_handling <= true;
            elsif fifo_wreq_valid = '0' and last_sect and next_sect then
                wreq_handling <= false;
            end if;
        end if;
    end process wreq_handling_proc;

    start_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                start_addr_buf <= (others => '0');
            elsif next_wreq then
                start_addr_buf <= start_addr;
            end if;
        end if;
    end process start_addr_buf_proc;

    end_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                end_addr_buf <= (others => '0');
            elsif next_wreq then
                end_addr_buf <= end_addr;
            end if;
        end if;
    end process end_addr_buf_proc;

    beat_len_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                beat_len_buf <= (others => '0');
            elsif next_wreq then
                beat_len_buf <= RESIZE(SHIFT_RIGHT(align_len(11 downto 0) + start_addr(BUS_ADDR_ALIGN-1 downto 0), BUS_ADDR_ALIGN), 12-BUS_ADDR_ALIGN);
            end if;
        end if;
    end process beat_len_buf_proc;

    sect_cnt_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                sect_cnt <= (others => '0');
            elsif next_wreq then
                sect_cnt <= start_addr(31 downto 12);
            elsif next_sect then
                sect_cnt <= sect_cnt + 1;
            end if;
        end if;
    end process sect_cnt_proc;

    first_sect <= (sect_cnt = start_addr_buf(C_ADDR_WIDTH - 1 downto 12));
    last_sect  <= (sect_cnt = end_addr_buf(C_ADDR_WIDTH -1 downto 12));
    next_sect  <= wreq_handling and ready_for_sect = '1';

    sect_addr <= start_addr_buf when first_sect else
                 sect_cnt & (11 downto 0 => '0');
    sect_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                sect_addr_buf <= (others => '0');
            elsif next_sect then
                sect_addr_buf <= sect_addr;
            end if;
        end if;
    end process sect_addr_proc;

    start_to_4k <= BOUNDARY_BEATS - start_addr_buf(11 downto BUS_ADDR_ALIGN);
    sect_len    <= beat_len_buf                            when     first_sect and     last_sect else
                   start_to_4k                             when     first_sect and not last_sect else
                   end_addr_buf(11 downto BUS_ADDR_ALIGN)  when not first_sect and     last_sect else
                   BOUNDARY_BEATS                          when not first_sect and not last_sect;
    sect_len_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                sect_len_buf <= (others => '0');
            elsif next_sect then
                sect_len_buf <= sect_len;
            end if;
        end if;
    end process sect_len_proc;

    sect_end <= end_addr_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_sect else
                (others => '1');
    sect_end_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                sect_end_buf <= (others => '0');
            elsif next_sect then
                sect_end_buf <= sect_end;
            end if;
        end if;
    end process sect_end_proc;

    AWID    <= (others => '0');
    AWSIZE  <= TO_UNSIGNED(BUS_ADDR_ALIGN, AWSIZE'length);
    AWBURST <= "01";
    AWLOCK  <= "00";
    AWCACHE <= TO_UNSIGNED(C_CACHE_VALUE, AWCACHE'length);
    AWPROT  <= TO_UNSIGNED(C_PROT_VALUE, AWPROT'length);
    AWUSER  <= TO_UNSIGNED(C_USER_VALUE, AWUSER'length);
    AWQOS   <= wreq_qos;

    -- if BUS_DATA_BYTES >= 16, then a 256 length burst is 4096 bytes(reach boundary).
    must_one_burst : if (BUS_DATA_BYTES >= 16) generate
    begin
        AWADDR  <= sect_addr_buf(C_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
        AWLEN   <= RESIZE(sect_len_buf, 8);
        AWVALID <= AWVALID_T;

        ready_for_sect <= '1' when not (AWVALID_T = '1' and AWREADY = '0') and fifo_resp_ready = '1' and fifo_burst_ready = '1' else '0';

        awvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    AWVALID_T <= '0';
                elsif next_sect then
                    AWVALID_T <= '1';
                elsif not next_sect and AWREADY = '1' then
                    AWVALID_T <= '0';
                end if;
            end if;
        end process awvalid_proc;

        fifo_resp_w <= '1' when last_sect and next_sect else '0';
        burst_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    burst_cnt <= (others => '0');
                elsif next_wreq then
                    burst_cnt <= (others => '0');
                    burst_cnt(0) <= '1';
                elsif next_sect then
                    burst_cnt <= burst_cnt + 1;
                end if;
            end if;
        end process burst_cnt_proc;

        fifo_burst_w <= '1' when next_sect else '0';
        burst_end    <= sect_end;
        awaddr_tmp   <= sect_addr(C_ADDR_WIDTH - 1 downto 0);
        awlen_tmp    <= RESIZE(sect_len, 8);
    end generate must_one_burst;

    could_multi_bursts : if (BUS_DATA_BYTES < 16) generate
        signal  awaddr_buf      : UNSIGNED(C_ADDR_WIDTH - 1 downto 0);
        signal  awlen_buf       : UNSIGNED(7 downto 0);
        signal  loop_cnt        : UNSIGNED(3 - BUS_ADDR_ALIGN downto 0);
        signal  last_loop       : BOOLEAN;
        signal  next_loop       : BOOLEAN;
        signal  ready_for_loop  : BOOLEAN;
        signal  sect_handling   : BOOLEAN;
    begin
        AWADDR  <= awaddr_buf;
        AWLEN   <= awlen_buf;
        AWVALID <= AWVALID_T;

        last_loop      <= (loop_cnt = sect_len_buf(11 - BUS_ADDR_ALIGN downto 8));
        next_loop      <= sect_handling and ready_for_loop;
        ready_for_sect <= '1' when not (sect_handling and not (last_loop and next_loop)) else '0';
        ready_for_loop <= not (AWVALID_T = '1' and AWREADY = '0') and fifo_resp_ready = '1' and fifo_burst_ready = '1';

        sect_handling_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    sect_handling <= false;
                elsif wreq_handling and not sect_handling then
                    sect_handling <= true;
                elsif not wreq_handling and last_loop and next_loop then
                    sect_handling <= false;
                end if;
            end if;
        end process sect_handling_proc;

        loop_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    loop_cnt <= (others => '0');
                elsif next_sect then
                    loop_cnt <= (others => '0');
                elsif next_loop then
                    loop_cnt <= loop_cnt + 1;
                end if;
            end if;
        end process loop_cnt_proc;

        awaddr_tmp <= sect_addr_buf(C_ADDR_WIDTH -1 downto 0) when loop_cnt = 0 else 
                      awaddr_buf + SHIFT_LEFT(RESIZE(awlen_buf, 32) + 1, BUS_ADDR_ALIGN);
        awaddr_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    awaddr_buf <= (others => '0');
                elsif next_loop then
                    awaddr_buf <= awaddr_tmp(C_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
                end if;
            end if;
        end process awaddr_buf_proc;

        awlen_tmp  <= sect_len_buf(7 downto 0) when last_loop else
                      X"FF";
        awlen_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    awlen_buf <= (others => '0');
                elsif next_loop then
                    awlen_buf <= awlen_tmp;
                end if;
            end if;
        end process awlen_buf_proc;
                    
        awvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    AWVALID_T <= '0';
                elsif next_loop then
                    AWVALID_T <= '1';
                elsif not next_loop and AWREADY = '1' then
                    AWVALID_T <= '0';
                end if;
            end if;
        end process awvalid_proc;

        fifo_resp_w <= '1' when next_loop and last_loop and last_sect_buf = '1' else '0';
        last_sect_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    last_sect_buf <= '0';
                elsif next_sect and last_sect then
                    last_sect_buf <= '1';
                elsif next_sect then
                    last_sect_buf <= '0';
                end if;
            end if;
        end process last_sect_buf_proc;

        burst_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    burst_cnt <= (others => '0');
                elsif next_sect and first_sect then
                    burst_cnt <= (others => '0');
                    burst_cnt(0) <= '1';
                elsif next_loop then
                    burst_cnt <= burst_cnt + 1;
                end if;
            end if;
        end process burst_cnt_proc;

        fifo_burst_w <= '1' when next_loop else '0';
        burst_end <= sect_end_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_loop else (others => '1');
    end generate could_multi_bursts;
    --------------------------- AW channel end -------------------------------------

    --------------------------- W channel begin ------------------------------------
    -- Instantiation
    fifo_wdata : neural_network_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  USER_DW + USER_DW/8,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            sclk_en         =>  ACLK_EN,
            empty_n         =>  data_valid,
            full_n          =>  wdata_ack,
            rdreq           =>  next_data,
            wrreq           =>  wdata_valid,
            q               =>  data_pack,
            data            =>  fifo_wdata_wstrb);

    fifo_wdata_wstrb <= (wdata_strb & wdata_data);
    tmp_data         <= RESIZE(data_pack(USER_DW - 1 downto 0), USER_DATA_WIDTH);
    tmp_strb         <= RESIZE(data_pack(USER_DW + USER_DW/8 - 1 downto USER_DW), USER_DATA_BYTES);

    bus_equal_gen : if (USER_DATA_WIDTH = BUS_DATA_WIDTH) generate
        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  strb_buf        : UNSIGNED(BUS_DATA_BYTES - 1 downto 0);
        signal  tmp_burst_info  : UNSIGNED(7 downto 0);
        signal  ready_for_data  : BOOLEAN;
    begin
        -- Instantiation
        fifo_burst : neural_network_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  8,
                DEPTH           =>  USER_MAXREQS,
                DEPTH_BITS      =>  log2(USER_MAXREQS))
            port map (
                sclk            =>  ACLK,
                reset_n         =>  ARESETN,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_len,
                data            =>  tmp_burst_info);

        WDATA   <= data_buf;
        WSTRB   <= strb_buf;
        WLAST   <= WLAST_T;
        WVALID  <= WVALID_T;

        tmp_burst_info <= RESIZE(awlen_tmp, 8);

        ready_for_data <= not (WVALID_T = '1' and WREADY = '0');
        next_data      <= '1' when burst_valid = '1' and data_valid = '1' and ready_for_data else '0';
        next_burst     <= '1' when len_cnt = burst_len and next_data = '1' else '0';

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    data_buf <= (others => '0');
                elsif next_data = '1' then
                    data_buf <= tmp_data;
                end if;
            end if;
        end process data_buf_proc;

        strb_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    strb_buf <= (others => '0');
                elsif next_data = '1' then
                    strb_buf <= tmp_strb;
                end if;
            end if;
        end process strb_buf_proc;

        wvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    WVALID_T <= '0';
                elsif next_data = '1' then
                    WVALID_T <= '1';
                elsif ready_for_data then
                    WVALID_T <= '0';
                end if;
            end if;
        end process wvalid_proc;

        wlast_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    WLAST_T <= '0';
                elsif next_burst = '1' then
                    WLAST_T <= '1';
                elsif ready_for_data then
                    WLAST_T <= '0';
                end if;
            end if;
        end process wlast_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    len_cnt <= (others => '0');
                elsif next_burst = '1' then
                    len_cnt <= (others => '0');
                elsif next_data = '1' then
                    len_cnt <= len_cnt + 1;
                end if;
            end if;
        end process len_cnt_proc;

    end generate bus_equal_gen;

    bus_narrow_gen : if (USER_DATA_WIDTH > BUS_DATA_WIDTH) generate
        constant TOTAL_SPLIT    : INTEGER := USER_DATA_WIDTH / BUS_DATA_WIDTH;
        constant SPLIT_ALIGN    : INTEGER := log2(TOTAL_SPLIT);
        signal  data_buf        : UNSIGNED(USER_DATA_WIDTH - 1 downto 0);
        signal  strb_buf        : UNSIGNED(USER_DATA_BYTES - 1 downto 0);
        signal  split_cnt       : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  tmp_burst_info  : UNSIGNED(7 downto 0);
        signal  first_split     : BOOLEAN;
        signal  next_split      : BOOLEAN;
        signal  last_split      : BOOLEAN;
        signal  ready_for_data  : BOOLEAN;
    begin
        -- instantiation
        fifo_burst : neural_network_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  8,
                DEPTH           =>  USER_MAXREQS,
                DEPTH_BITS      =>  log2(USER_MAXREQS))
            port map (
                sclk            =>  ACLK,
                reset_n         =>  ARESETN,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_len,
                data            =>  tmp_burst_info);

        WDATA   <= data_buf(BUS_DATA_WIDTH - 1 downto 0);
        WSTRB   <= strb_buf(BUS_DATA_BYTES - 1 downto 0);
        WLAST   <= WLAST_T;
        WVALID  <= WVALID_T;

        tmp_burst_info <= RESIZE(awlen_tmp, 8);

        next_data      <= '1' when first_split else '0';
        next_burst     <= '1' when len_cnt = burst_len and burst_valid = '1' and last_split else '0';
        ready_for_data <= not (WVALID_T = '1' and WREADY = '0');

        first_split <= split_cnt = 0 and data_valid = '1' and burst_valid ='1' and ready_for_data;
        next_split  <= split_cnt /= 0 and ready_for_data;
        last_split  <= split_cnt = (TOTAL_SPLIT - 1) and ready_for_data;

        split_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    split_cnt <= (others => '0');
                elsif last_split then
                    split_cnt <= (others => '0');
                elsif first_split or next_split then
                    split_cnt <= split_cnt + 1;
                end if;
            end if;
        end process split_cnt_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    len_cnt <= (others => '0');
                elsif next_burst = '1' then
                    len_cnt <= (others => '0');
                elsif next_data = '1' or next_split then
                    len_cnt <= len_cnt + 1;
                end if;
            end if;
        end process len_cnt_proc;

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    data_buf <= (others => '0');
                elsif next_data = '1' then
                    data_buf <= tmp_data;
                elsif next_split then
                    data_buf <= SHIFT_RIGHT(data_buf, BUS_DATA_WIDTH);
                end if;
            end if;
        end process data_buf_proc;

        strb_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    strb_buf <= (others => '0');
                elsif next_data = '1' then
                    strb_buf <= tmp_strb;
                elsif next_split then
                    strb_buf <= SHIFT_RIGHT(strb_buf, BUS_DATA_BYTES);
                end if;
            end if;
        end process strb_buf_proc;

        wvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    WVALID_T <= '0';
                elsif next_data = '1' then
                    WVALID_T <= '1';
                elsif not (first_split or next_split) and ready_for_data then
                    WVALID_T <= '0';
                end if;
            end if;
        end process wvalid_proc;

        wlast_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    WLAST_T <= '0';
                elsif next_burst = '1' and last_split then
                    WLAST_T <= '1';
                elsif ready_for_data then
                    WLAST_T <= '0';
                end if;
            end if;
        end process wlast_proc;
    end generate bus_narrow_gen;

    bus_wide_gen : if (USER_DATA_WIDTH < BUS_DATA_WIDTH) generate
        constant TOTAL_PADS     : INTEGER := BUS_DATA_WIDTH / USER_DATA_WIDTH;
        constant PAD_ALIGN      : INTEGER := log2(TOTAL_PADS);
        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  strb_buf        : UNSIGNED(BUS_DATA_BYTES - 1 downto 0);
        signal  burst_pack      : UNSIGNED(2*PAD_ALIGN + 7 downto 0);
        signal  tmp_burst_info  : UNSIGNED(2*PAD_ALIGN + 7 downto 0);
        signal  head_pads       : UNSIGNED(PAD_ALIGN - 1 downto 0);
        signal  tail_pads       : UNSIGNED(PAD_ALIGN - 1 downto 0);
        signal  add_head        : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  add_tail        : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh          : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh_reg      : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  head_pad_sel    : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  tail_pad_sel    : UNSIGNED(0 to TOTAL_PADS - 1);
        signal  ready_for_data  : BOOLEAN;
        signal  next_pad        : BOOLEAN;
        signal  first_pad       : BOOLEAN;
        signal  last_pad        : BOOLEAN;
        signal  first_beat      : BOOLEAN;
        signal  last_beat       : BOOLEAN;
        signal  next_beat       : BOOLEAN;

        component neural_network_gmem_m_axi_decoder is
            generic (
                DIN_WIDTH : integer := 3);
            port (
                din     : in  UNSIGNED(DIN_WIDTH - 1 downto 0);
                dout    : out UNSIGNED(2**DIN_WIDTH - 1 downto 0));
        end component neural_network_gmem_m_axi_decoder;

    begin
        -- Instantiation
        fifo_burst : neural_network_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  8 + 2*PAD_ALIGN,
                DEPTH           =>  user_maxreqs,
                DEPTH_BITS      =>  log2(user_maxreqs))
            port map (
                sclk            =>  ACLK,
                reset_n         =>  ARESETN,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_pack,
                data            =>  tmp_burst_info);

        WDATA   <= data_buf;
        WSTRB   <= strb_buf;
        WLAST   <= WLAST_T;
        WVALID  <= WVALID_T;

        tmp_burst_info <= awaddr_tmp(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & burst_end(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & RESIZE(awlen_tmp, 8);

        head_pad_decoder : neural_network_gmem_m_axi_decoder
            generic map (
                DIN_WIDTH       =>  PAD_ALIGN)
            port map (
                din             =>  head_pads,
                dout            =>  head_pad_sel);

        tail_pad_decoder : neural_network_gmem_m_axi_decoder
            generic map (
                DIN_WIDTH       =>  PAD_ALIGN)
            port map (
                din             =>  tail_pads,
                dout            =>  tail_pad_sel);

        head_pads <= burst_pack(2*PAD_ALIGN + 7 downto 8 + PAD_ALIGN);
        tail_pads <= not burst_pack(PAD_ALIGN + 7 downto 8);
        burst_len <= burst_pack(7 downto 0);

        next_data      <= '1' when next_pad else '0';
        next_burst     <= '1' when last_beat and next_beat else '0';
        ready_for_data <= not (WVALID_T = '1' and WREADY = '0');

        first_beat <= len_cnt = 0 and burst_valid = '1';
        last_beat  <= len_cnt = burst_len and burst_valid = '1';
        next_beat  <= burst_valid = '1' and last_pad and ready_for_data;

        next_pad <= burst_valid = '1' and data_valid = '1' and ready_for_data;
        last_pad <= pad_oh(TOTAL_PADS - to_integer(tail_pads) - 1) = '1' when last_beat else
                    pad_oh(TOTAL_PADS - 1) = '1';

        first_pad_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    first_pad <= true;
                elsif next_pad and not last_pad then
                    first_pad <= false;
                elsif next_pad and last_pad then
                    first_pad <= true;
                end if;
            end if;
        end process first_pad_proc;

        pad_oh <= (others => '0')                                               when data_valid = '0' else
                  SHIFT_LEFT(TO_UNSIGNED(1, TOTAL_PADS), TO_INTEGER(head_pads)) when first_beat and first_pad else
                  TO_UNSIGNED(1, TOTAL_PADS)                                    when first_pad else
                  pad_oh_reg;
        pad_oh_reg_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    pad_oh_reg <= (others => '0');
                elsif next_pad then
                    pad_oh_reg <= pad_oh(TOTAL_PADS - 2 downto 0) & '0';
                end if;
            end if;
        end process pad_oh_reg_proc;

        data_strb_gen : for i in 1 to TOTAL_PADS generate
        begin
            add_head(i-1) <= '1' when head_pad_sel(i-1) = '1' and first_beat else
                             '0';
            add_tail(i-1) <= '1' when tail_pad_sel(i-1) = '1' and last_beat else
                             '0';
            
            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                    if (ARESETN = '0') then
                        data_buf(i*USER_DATA_WIDTH - 1 downto (i-1)*USER_DATA_WIDTH) <= (others => '0');
                    elsif (add_head(i-1) = '1' or add_tail(i-1) = '1') and ready_for_data then
                        data_buf(i*USER_DATA_WIDTH - 1 downto (i-1)*USER_DATA_WIDTH) <= (others => '0');
                    elsif pad_oh(i-1) = '1' and ready_for_data then
                        data_buf(i*USER_DATA_WIDTH - 1 downto (i-1)*USER_DATA_WIDTH) <= tmp_data;
                    end if;
                end if;
            end process;

            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                    if (ARESETN = '0') then
                        strb_buf(i*USER_DATA_BYTES - 1 downto (i-1)*USER_DATA_BYTES) <= (others => '0');
                    elsif (add_head(i-1) = '1' or add_tail(i-1) = '1') and ready_for_data then
                        strb_buf(i*USER_DATA_BYTES - 1 downto (i-1)*USER_DATA_BYTES) <= (others => '0');
                    elsif pad_oh(i-1) = '1' and ready_for_data then
                        strb_buf(i*USER_DATA_BYTES - 1 downto (i-1)*USER_DATA_BYTES) <= tmp_strb;
                    end if;
                end if;
            end process;
        end generate data_strb_gen;

        wvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    WVALID_T <= '0';
                elsif next_beat then
                    WVALID_T <= '1';
                elsif ready_for_data then
                    WVALID_T <= '0';
                end if;
            end if;
        end process wvalid_proc;

        wlast_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    WLAST_T <= '0';
                elsif next_burst = '1' then
                    WLAST_T <= '1';
                elsif next_data = '1' then
                    WLAST_T <= '0';
                end if;
            end if;
        end process wlast_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESETN = '0') then
                    len_cnt <= (others => '0');
                elsif next_burst = '1' then
                    len_cnt <= (others => '0');
                elsif next_beat then
                    len_cnt <= len_cnt + 1;
                end if;
            end if;
        end process len_cnt_proc;
    end generate bus_wide_gen;
    --------------------------- W channel end --------------------------------------

    --------------------------- B channel begin ------------------------------------
    -- Instantiation
    fifo_resp : neural_network_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  C_ADDR_WIDTH - 12,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            sclk_en         =>  ACLK_EN,
            empty_n         =>  need_wrsp,
            full_n          =>  fifo_resp_ready,
            rdreq           =>  resp_match,
            wrreq           =>  fifo_resp_w,
            q               =>  resp_total,
            data            =>  burst_cnt);

    fifo_resp_to_user : neural_network_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  2,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset_n         =>  ARESETN,
            sclk_en         =>  ACLK_EN,
            empty_n         =>  wrsp_valid,
            full_n          =>  resp_ready,
            rdreq           =>  wrsp_ack,
            wrreq           =>  resp_match,
            q               =>  wrsp,
            data            =>  bresp_tmp);

    BREADY <= resp_ready;

    resp_match <= '1' when (resp_cnt = resp_total and need_wrsp = '1') else '0';
    next_resp  <= BVALID = '1' and resp_ready = '1';

    resp_cnt_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                resp_cnt <= (others => '0');
            elsif (resp_match = '1' and not next_resp) then
                resp_cnt <= (others => '0');
            elsif (resp_match = '1' and next_resp) then
                resp_cnt <= (others => '0');
                resp_cnt(0) <= '1';
            elsif (next_resp) then
                resp_cnt <= resp_cnt + 1;
            end if;
        end if;
    end process resp_cnt_proc;

    bresp_tmp_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
            if (ARESETN = '0') then
                bresp_tmp <= "00";
            elsif (resp_match = '1' and not next_resp) then
                bresp_tmp <= "00";
            elsif (resp_match = '1' and next_resp) then
                bresp_tmp <= BRESP;
            elsif (next_resp and bresp_tmp(1) = '0') then
                bresp_tmp <= BRESP;
            end if;
        end if;
    end process bresp_tmp_proc;
    --------------------------- B channel end --------------------------------------
end architecture behave;
