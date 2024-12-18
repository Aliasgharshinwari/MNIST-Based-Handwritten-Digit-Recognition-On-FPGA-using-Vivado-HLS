`timescale 1ns/1ps

module neural_network_gmem_m_axi
#(parameter
    C_ID_WIDTH        = 1,
    C_ADDR_WIDTH      = 32,
    C_TARGET_ADDR     = 32'h00000000,
    C_DATA_WIDTH      = 32,
    C_AWUSER_WIDTH    = 1,
    C_ARUSER_WIDTH    = 1,
    C_WUSER_WIDTH     = 1,
    C_RUSER_WIDTH     = 1,
    C_BUSER_WIDTH     = 1,
    C_USER_VALUE      = 1'b0,
    C_PROT_VALUE      = 3'b000,
    C_CACHE_VALUE     = 4'b0011,
    USER_DW           = 16,
    USER_AW           = 32,
    USER_MAXREQS      = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESETN,
    input  wire                         ACLK_EN,
    // write address channel
    output wire [C_ID_WIDTH-1:0]        AWID,
    output wire [C_ADDR_WIDTH-1:0]      AWADDR,
    output wire [7:0]                   AWLEN,
    output wire [2:0]                   AWSIZE,
    output wire [1:0]                   AWBURST,
    output wire [1:0]                   AWLOCK,
    output wire [3:0]                   AWCACHE,
    output wire [2:0]                   AWPROT,
    output wire [3:0]                   AWQOS,
    output wire [3:0]                   AWREGION,
    output wire [C_AWUSER_WIDTH-1:0]    AWUSER,
    output wire                         AWVALID,
    input  wire                         AWREADY,
    // write data channel
    output wire [C_ID_WIDTH-1:0]        WID,
    output wire [C_DATA_WIDTH-1:0]      WDATA,
    output wire [C_DATA_WIDTH/8-1:0]    WSTRB,
    output wire                         WLAST,
    output wire [C_WUSER_WIDTH-1:0]     WUSER,
    output wire                         WVALID,
    input  wire                         WREADY,
    // write response channel
    input  wire [C_ID_WIDTH-1:0]        BID,
    input  wire [1:0]                   BRESP,
    input  wire [C_BUSER_WIDTH-1:0]     BUSER,
    input  wire                         BVALID,
    output wire                         BREADY,
    // read address channel
    output wire [C_ID_WIDTH-1:0]        ARID,
    output wire [C_ADDR_WIDTH-1:0]      ARADDR,
    output wire [7:0]                   ARLEN,
    output wire [2:0]                   ARSIZE,
    output wire [1:0]                   ARBURST,
    output wire [1:0]                   ARLOCK,
    output wire [3:0]                   ARCACHE,
    output wire [2:0]                   ARPROT,
    output wire [3:0]                   ARQOS,
    output wire [3:0]                   ARREGION,
    output wire [C_ARUSER_WIDTH-1:0]    ARUSER,
    output wire                         ARVALID,
    input  wire                         ARREADY,
    // read data channel
    input  wire [C_ID_WIDTH-1:0]        RID,
    input  wire [C_DATA_WIDTH-1:0]      RDATA,
    input  wire [1:0]                   RRESP,
    input  wire                         RLAST,
    input  wire [C_RUSER_WIDTH-1:0]     RUSER,
    input  wire                         RVALID,
    output wire                         RREADY,

    // internal bus ports
    // write address
    input  wire [C_ID_WIDTH-1:0]        I_AWID,
    input  wire [USER_AW-1:0]           I_AWADDR,
    input  wire [31:0]                  I_AWLEN,
    input  wire [2:0]                   I_AWSIZE,
    input  wire [1:0]                   I_AWBURST,
    input  wire [1:0]                   I_AWLOCK,
    input  wire [3:0]                   I_AWCACHE,
    input  wire [2:0]                   I_AWPROT,
    input  wire [3:0]                   I_AWQOS,
    input  wire [3:0]                   I_AWREGION,
    input  wire [C_AWUSER_WIDTH-1:0]    I_AWUSER,
    input  wire                         I_AWVALID,
    output wire                         I_AWREADY,
    // write data
    input  wire [C_ID_WIDTH-1:0]        I_WID,
    input  wire [USER_DW-1:0]           I_WDATA,
    input  wire                         I_WLAST,
    input  wire [USER_DW/8-1:0]         I_WSTRB,
    input  wire [C_WUSER_WIDTH-1:0]     I_WUSER,
    input  wire                         I_WVALID,
    output wire                         I_WREADY,
    // write response
    output wire [C_ID_WIDTH-1:0]        I_BID,
    output wire [1:0]                   I_BRESP,
    output wire [C_BUSER_WIDTH-1:0]     I_BUSER,
    output wire                         I_BVALID,
    input  wire                         I_BREADY,
    // read address
    input  wire [C_ID_WIDTH-1:0]        I_ARID,
    input  wire [USER_AW-1:0]           I_ARADDR,
    input  wire [31:0]                  I_ARLEN,
    input  wire [2:0]                   I_ARSIZE,
    input  wire [1:0]                   I_ARBURST,
    input  wire [1:0]                   I_ARLOCK,
    input  wire [3:0]                   I_ARCACHE,
    input  wire [2:0]                   I_ARPROT,
    input  wire [3:0]                   I_ARQOS,
    input  wire [3:0]                   I_ARREGION,
    input  wire [C_ARUSER_WIDTH-1:0]    I_ARUSER,
    input  wire                         I_ARVALID,
    output wire                         I_ARREADY,
    // read data
    output wire [C_ID_WIDTH-1:0]        I_RID,
    output wire [USER_DW-1:0]           I_RDATA,
    output wire [1:0]                   I_RRESP,
    output wire                         I_RLAST,
    output wire [C_RUSER_WIDTH-1:0]     I_RUSER,
    output wire                         I_RVALID,
    input  wire                         I_RREADY
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
assign I_BID = 1'b0;
assign I_BUSER = C_USER_VALUE;
assign I_RID = 1'b0;
assign I_RLAST = 1'b0;
assign I_RUSER = C_USER_VALUE;
//------------------------Instantiation------------------
// neural_network_gmem_m_axi_write
neural_network_gmem_m_axi_write #(
    .C_ID_WIDTH        ( C_ID_WIDTH ),
    .C_ADDR_WIDTH      ( C_ADDR_WIDTH ),
    .C_TARGET_ADDR     ( C_TARGET_ADDR ),
    .C_DATA_WIDTH      ( C_DATA_WIDTH ),
    .C_AWUSER_WIDTH    ( C_AWUSER_WIDTH ),
    .C_WUSER_WIDTH     ( C_WUSER_WIDTH ),
    .C_BUSER_WIDTH     ( C_BUSER_WIDTH ),
    .C_USER_VALUE      ( C_USER_VALUE ),
    .C_PROT_VALUE      ( C_PROT_VALUE ),
    .C_CACHE_VALUE     ( C_CACHE_VALUE ),
    .USER_DW           ( USER_DW ),
    .USER_AW           ( USER_AW ),
    .USER_MAXREQS      ( USER_MAXREQS )
) bus_write (
    .ACLK              ( ACLK ),
    .ARESETN           ( ARESETN ),
    .ACLK_EN           ( ACLK_EN ),
    .AWID              ( AWID ),
    .AWADDR            ( AWADDR ),
    .AWLEN             ( AWLEN ),
    .AWSIZE            ( AWSIZE ),
    .AWBURST           ( AWBURST ),
    .AWLOCK            ( AWLOCK ),
    .AWCACHE           ( AWCACHE ),
    .AWPROT            ( AWPROT ),
    .AWQOS             ( AWQOS ),
    .AWREGION          ( AWREGION ),
    .AWUSER            ( AWUSER ),
    .AWVALID           ( AWVALID ),
    .AWREADY           ( AWREADY ),
    .WID               ( WID ),
    .WDATA             ( WDATA ),
    .WSTRB             ( WSTRB ),
    .WLAST             ( WLAST ),
    .WUSER             ( WUSER ),
    .WVALID            ( WVALID ),
    .WREADY            ( WREADY ),
    .BID               ( BID ),
    .BRESP             ( BRESP ),
    .BUSER             ( BUSER ),
    .BVALID            ( BVALID ),
    .BREADY            ( BREADY ),
    .wreq_valid        ( I_AWVALID ),
    .wreq_ack          ( I_AWREADY ),
    .wreq_addr         ( I_AWADDR ),
    .wreq_length       ( I_AWLEN ),
    .wreq_cache        ( I_AWCACHE ),
    .wreq_prot         ( I_AWPROT ),
    .wreq_qos          ( I_AWQOS ),
    .wreq_user         ( I_AWUSER ),
    .wdata_valid       ( I_WVALID ),
    .wdata_ack         ( I_WREADY ),
    .wdata_strb        ( I_WSTRB ),
    .wdata_user        ( I_WUSER ),
    .wdata_data        ( I_WDATA ),
    .wrsp_valid        ( I_BVALID ),
    .wrsp_ack          ( I_BREADY ),
    .wrsp              ( I_BRESP )
);

// neural_network_gmem_m_axi_read
neural_network_gmem_m_axi_read #(
    .C_ID_WIDTH        ( C_ID_WIDTH ),
    .C_ADDR_WIDTH      ( C_ADDR_WIDTH ),
    .C_TARGET_ADDR     ( C_TARGET_ADDR ),
    .C_DATA_WIDTH      ( C_DATA_WIDTH ),
    .C_ARUSER_WIDTH    ( C_ARUSER_WIDTH ),
    .C_RUSER_WIDTH     ( C_RUSER_WIDTH ),
    .C_USER_VALUE      ( C_USER_VALUE ),
    .C_PROT_VALUE      ( C_PROT_VALUE ),
    .C_CACHE_VALUE     ( C_CACHE_VALUE ),
    .USER_DW           ( USER_DW ),
    .USER_AW           ( USER_AW ),
    .USER_MAXREQS      ( USER_MAXREQS )
) bus_read (
    .ACLK              ( ACLK ),
    .ARESETN           ( ARESETN ),
    .ACLK_EN           ( ACLK_EN ),
    .ARID              ( ARID ),
    .ARADDR            ( ARADDR ),
    .ARLEN             ( ARLEN ),
    .ARSIZE            ( ARSIZE ),
    .ARBURST           ( ARBURST ),
    .ARLOCK            ( ARLOCK ),
    .ARCACHE           ( ARCACHE ),
    .ARPROT            ( ARPROT ),
    .ARQOS             ( ARQOS ),
    .ARREGION          ( ARREGION ),
    .ARUSER            ( ARUSER ),
    .ARVALID           ( ARVALID ),
    .ARREADY           ( ARREADY ),
    .RID               ( RID ),
    .RDATA             ( RDATA ),
    .RRESP             ( RRESP ),
    .RLAST             ( RLAST ),
    .RUSER             ( RUSER ),
    .RVALID            ( RVALID ),
    .RREADY            ( RREADY ),
    .rreq_valid        ( I_ARVALID ),
    .rreq_ack          ( I_ARREADY ),
    .rreq_addr         ( I_ARADDR ),
    .rreq_length       ( I_ARLEN ),
    .rreq_cache        ( I_ARCACHE ),
    .rreq_prot         ( I_ARPROT ),
    .rreq_qos          ( I_ARQOS ),
    .rreq_user         ( I_ARUSER ),
    .rdata_valid       ( I_RVALID ),
    .rdata_ack         ( I_RREADY ),
    .rdata_data        ( I_RDATA ),
    .rrsp              ( I_RRESP )
);
endmodule

module neural_network_gmem_m_axi_fifo
#(parameter
    DATA_BITS  = 8,
    DEPTH      = 16,
    DEPTH_BITS = 4
)(
    input  wire                 sclk,
    input  wire                 reset_n,
    input  wire                 sclk_en,
    output reg                  empty_n,
    output reg                  full_n,
    input  wire                 rdreq,
    input  wire                 wrreq,
    output wire [DATA_BITS-1:0] q,
    input  wire [DATA_BITS-1:0] data
);
//------------------------Parameter----------------------

//------------------------Local signal-------------------
wire                  push;
wire                  pop;
reg  [DEPTH_BITS-1:0] pout;
reg  [DATA_BITS-1:0]  mem[0:DEPTH-1];
//------------------------Body---------------------------
assign push = full_n & wrreq;
assign pop  = empty_n & rdreq;
assign q    = mem[pout];

// empty_n
always @(posedge sclk) begin
    if (sclk_en) begin
        if (~reset_n)
            empty_n <= 1'b0;
        else if (push)
            empty_n <= 1'b1;
        else if (~push && pop && pout == 1'b0)
            empty_n <= 1'b0;
    end
end

// full_n
always @(posedge sclk) begin
    if (sclk_en) begin
        if (~reset_n)
            full_n <= 1'b1;
        else if (rdreq)
            full_n <= 1'b1;
        else if (push && ~pop && pout == DEPTH - 2 && empty_n)
            full_n <= 1'b0;
    end
end

// pout
always @(posedge sclk) begin
    if (sclk_en) begin
        if (~reset_n)
            pout <= 1'b0;
        else if (push & ~pop & empty_n)
            pout <= pout + 1'b1;
        else if (~push && pop && pout != 1'b0)
            pout <= pout - 1'b1;
    end
end

integer i;
always @(posedge sclk) begin
    if (sclk_en) begin
        if (push) begin
            for (i = 0; i < DEPTH - 1; i = i + 1) begin
                mem[i+1] <= mem[i];
            end
            mem[0] <= data;
        end
    end
end
endmodule

`timescale 1ns/1ps

module neural_network_gmem_m_axi_decoder
#(parameter
    DIN_WIDTH       = 3
)(
    input  wire [DIN_WIDTH-1:0]         din,
    output reg  [2**DIN_WIDTH-1:0]      dout
);
    integer i;
    always @(din) begin
        dout = {2**DIN_WIDTH{1'b0}};
        for (i=0; i < din; i = i + 1)
            dout[i] = 1'b1;
    end
endmodule

`timescale 1ns/1ps

module neural_network_gmem_m_axi_read
#(parameter
    C_ID_WIDTH        = 1,
    C_ADDR_WIDTH      = 32,
    C_TARGET_ADDR     = 32'h00000000,
    C_DATA_WIDTH      = 32,
    C_ARUSER_WIDTH    = 1,
    C_RUSER_WIDTH     = 1,
    C_USER_VALUE      = 1'b0,
    C_PROT_VALUE      = 3'b000,
    C_CACHE_VALUE     = 4'b0011,
    USER_DW           = 16,
    USER_AW           = 32,
    USER_MAXREQS      = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESETN,
    input  wire                         ACLK_EN,
    // read address channel
    output wire [C_ID_WIDTH-1:0]        ARID,
    output wire [C_ADDR_WIDTH-1:0]      ARADDR,
    output wire [7:0]                   ARLEN,
    output wire [2:0]                   ARSIZE,
    output wire [1:0]                   ARBURST,
    output wire [1:0]                   ARLOCK,
    output wire [3:0]                   ARCACHE,
    output wire [2:0]                   ARPROT,
    output wire [3:0]                   ARQOS,
    output wire [3:0]                   ARREGION,
    output wire [C_ARUSER_WIDTH-1:0]    ARUSER,
    output wire                         ARVALID,
    input  wire                         ARREADY,
    // read data channel
    input  wire [C_ID_WIDTH-1:0]        RID,
    input  wire [C_DATA_WIDTH-1:0]      RDATA,
    input  wire [1:0]                   RRESP,
    input  wire                         RLAST,
    input  wire [C_RUSER_WIDTH-1:0]     RUSER,
    input  wire                         RVALID,
    output wire                         RREADY,
    // read
    input  wire                         rreq_valid,
    output wire                         rreq_ack,
    input  wire [USER_AW-1:0]           rreq_addr,
    input  wire [31:0]                  rreq_length,
    input  wire [3:0]                   rreq_cache,
    input  wire [2:0]                   rreq_prot,
    input  wire [3:0]                   rreq_qos,
    input  wire [C_ARUSER_WIDTH-1:0]    rreq_user,
    output wire [USER_DW-1:0]           rdata_data,
    output wire [1:0]                   rrsp,
    output wire                         rdata_valid,
    input  wire                         rdata_ack
);

//------------------------Parameter----------------------
localparam
    USER_DATA_WIDTH = calc_data_width(USER_DW),
    USER_DATA_BYTES = USER_DATA_WIDTH / 8,
    USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
    BUS_DATA_WIDTH  = C_DATA_WIDTH,
    BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
    BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
    TARGET_ADDR     = C_TARGET_ADDR & (32'hffffffff << USER_ADDR_ALIGN),
    BOUNDARY_BEATS  = {12-BUS_ADDR_ALIGN{1'b1}};

//------------------------Task and function--------------
function integer calc_data_width;
    input integer x;
    integer y;
begin
    y = 8;
    while (y < x) y = y * 2;
    calc_data_width = y;
end
endfunction

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

//------------------------Local signal-------------------
    // AR channel
    wire [USER_AW + 31:0]                   rreq_data;
    wire [USER_AW + 31:0]                   fifo_rreq_data;
    wire [USER_AW - 1:0]                    tmp_addr;
    wire [31:0]                             tmp_len;
    wire [31:0]                             align_len;
    wire [7:0]                              arlen_tmp;
    wire [C_ADDR_WIDTH - 1:0]               araddr_tmp;
    wire [C_ADDR_WIDTH - 1:0]               start_addr;
    reg  [C_ADDR_WIDTH - 1:0]               start_addr_buf;
    wire [C_ADDR_WIDTH - 1:0]               end_addr;
    reg  [C_ADDR_WIDTH - 1:0]               end_addr_buf;
    wire [C_ADDR_WIDTH - 1:0]               sect_addr;
    reg  [C_ADDR_WIDTH - 1:0]               sect_addr_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             sect_end;
    reg  [BUS_ADDR_ALIGN - 1:0]             sect_end_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             burst_end;
    wire [11 - BUS_ADDR_ALIGN:0]            start_to_4k;
    wire [11 - BUS_ADDR_ALIGN:0]            sect_len;
    reg  [11 - BUS_ADDR_ALIGN:0]            sect_len_buf;
    reg  [11 - BUS_ADDR_ALIGN:0]            beat_len_buf;
    reg  [19:0]                             sect_cnt;
    wire                                    fifo_rreq_valid;
    wire                                    fifo_rreq_read;
    wire                                    fifo_burst_w;
    wire                                    fifo_resp_w;
    reg                                     ARVALID_T;
    wire                                    ready_for_sect;
    wire                                    next_rreq;
    wire                                    ready_for_rreq;
    reg                                     rreq_handling;
    wire                                    first_sect;
    wire                                    last_sect;
    wire                                    next_sect;
    // R channel
    wire    [BUS_DATA_WIDTH + 1:0]          fifo_rresp_rdata;
    wire    [BUS_DATA_WIDTH + 1:0]          data_pack;
    wire    [BUS_DATA_WIDTH - 1:0]          tmp_data;
    reg     [7:0]                           len_cnt;
    wire    [1:0]                           tmp_resp;
    reg     [1:0]                           resp_buf;
    wire                                    beat_valid;
    wire                                    next_beat;
    wire                                    burst_valid;
    wire                                    fifo_burst_ready;
    wire                                    next_burst;
    reg                                     rdata_valid_t;

//------------------------AR channel begin---------------
//------------------------Instantiation------------------
    neural_network_gmem_m_axi_fifo #(
        .DATA_BITS(USER_AW + 32),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_rreq (
        .sclk(ACLK),
        .reset_n(ARESETN),
        .sclk_en(ACLK_EN),
        .empty_n(fifo_rreq_valid),
        .full_n(rreq_ack),
        .rdreq(fifo_rreq_read),
        .wrreq(rreq_valid),
        .q(fifo_rreq_data),
        .data(rreq_data));

//------------------------Body---------------------------
    assign rreq_data   = {rreq_length, rreq_addr};
    assign tmp_addr    = fifo_rreq_data[USER_AW - 1:0];
    assign tmp_len     = fifo_rreq_data[USER_AW + 31:USER_AW];

    assign align_len   = (tmp_len << USER_ADDR_ALIGN) - 1;
    assign start_addr  = TARGET_ADDR + (tmp_addr << USER_ADDR_ALIGN);
    assign end_addr    = start_addr + align_len;

    assign next_rreq      = fifo_rreq_valid && ready_for_rreq;
    assign ready_for_rreq = ~(rreq_handling && ~(last_sect && next_sect));
    assign fifo_rreq_read = next_rreq;

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                rreq_handling <= 1'b0;
            else if (fifo_rreq_valid && ~rreq_handling)
                rreq_handling <= 1'b1;
            else if (~fifo_rreq_valid && last_sect && next_sect)
                rreq_handling <= 1'b0;
        end
    end

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                start_addr_buf <= 0;
            else if (next_rreq)
                start_addr_buf <= start_addr;
        end
    end

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                end_addr_buf <= 0;
            else if (next_rreq)
                end_addr_buf <= end_addr;
        end
    end

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                beat_len_buf <= 0;
            else if (next_rreq)
                beat_len_buf <= (align_len[11:0] + start_addr[BUS_ADDR_ALIGN-1:0]) >> BUS_ADDR_ALIGN;
        end
    end

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                sect_cnt <= 0;
            else if (next_rreq)
                sect_cnt <= start_addr[31:12];
            else if (next_sect)
                sect_cnt <= sect_cnt + 1;
        end
    end

    assign first_sect = (sect_cnt == start_addr_buf[C_ADDR_WIDTH-1:12]);
    assign last_sect  = (sect_cnt == end_addr_buf[C_ADDR_WIDTH-1:12]);
    assign next_sect  = rreq_handling && ready_for_sect;

    assign sect_addr  = (first_sect)? start_addr_buf : {sect_cnt, {12{1'b0}}};
    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                sect_addr_buf <= 0;
            else if (next_sect)
                sect_addr_buf <= sect_addr;
        end
    end

    assign start_to_4k = BOUNDARY_BEATS - start_addr_buf[11:BUS_ADDR_ALIGN];
    assign sect_len    = ( first_sect &&  last_sect)? beat_len_buf :
                         ( first_sect && ~last_sect)? start_to_4k:
                         (~first_sect &&  last_sect)? end_addr_buf[11:BUS_ADDR_ALIGN] : 
                                                      BOUNDARY_BEATS;

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                sect_len_buf <= 0;
            else if (next_sect)
                sect_len_buf <= sect_len;
        end
    end

    assign sect_end = (last_sect)? end_addr_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                sect_end_buf <= 0;
            else if (next_sect)
                sect_end_buf <= sect_end;
        end
    end

    assign ARID    = 0;
    assign ARSIZE  = BUS_ADDR_ALIGN;
    assign ARBURST = 2'b01;
    assign ARLOCK  = 2'b00;
    assign ARCACHE = C_CACHE_VALUE;
    assign ARPROT  = C_PROT_VALUE;
    assign ARUSER  = C_USER_VALUE;
    assign ARQOS   = rreq_qos;

    // if BUS_DATA_BYTES >= 16, then a 256 length burst is 4096 bytes(reach boundary).
    generate
    if (BUS_DATA_BYTES >= 16) begin : must_one_burst
        assign ARADDR  = {sect_addr_buf[C_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
        assign ARLEN   = sect_len_buf;
        assign ARVALID = ARVALID_T;

        assign ready_for_sect = ~(ARVALID_T && ~ARREADY) && fifo_burst_ready;

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    ARVALID_T <= 1'b0;
                else if (next_sect)
                    ARVALID_T <= 1'b1;
                else if (~next_sect && ARREADY)
                    ARVALID_T <= 1'b0;
            end
        end

        assign fifo_burst_w = next_sect;
        assign araddr_tmp   = sect_addr[C_ADDR_WIDTH - 1:0];
        assign arlen_tmp    = sect_len;
        assign burst_end    = sect_end;
    end
    else begin : could_multi_bursts
        reg  [C_ADDR_WIDTH - 1:0]           araddr_buf;
        reg  [7:0]                          arlen_buf;
        reg  [3 - BUS_ADDR_ALIGN:0]         loop_cnt;
        reg                                 sect_handling;
        wire                                last_loop;
        wire                                next_loop;
        wire                                ready_for_loop;

        assign ARADDR  = araddr_buf;
        assign ARLEN   = arlen_buf;
        assign ARVALID = ARVALID_T;

        assign last_loop      = (loop_cnt == sect_len_buf[11 - BUS_ADDR_ALIGN:8]);
        assign next_loop      = sect_handling && ready_for_loop;
        assign ready_for_loop = ~(ARVALID_T && ~ARREADY) && fifo_burst_ready;
        assign ready_for_sect = ~(sect_handling && ~(last_loop && next_loop));

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    sect_handling <= 1'b0;
                else if (rreq_handling && ~sect_handling)
                    sect_handling <= 1'b1;
                else if (~rreq_handling && last_loop && next_loop)
                    sect_handling <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    loop_cnt <= 0;
                else if (next_sect)
                    loop_cnt <= 0;
                else if (next_loop)
                    loop_cnt <= loop_cnt + 1;
            end
        end

        assign araddr_tmp = (loop_cnt == 0)? sect_addr_buf[C_ADDR_WIDTH - 1:0] : (araddr_buf + ((arlen_buf + 1) << BUS_ADDR_ALIGN));
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    araddr_buf <= 0;
                else if (next_loop)
                    araddr_buf <= {araddr_tmp[C_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
            end
        end

        assign arlen_tmp  = (last_loop)? sect_len_buf[7:0] : 16'hff;
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    arlen_buf <= 0;
                else if (next_loop)
                    arlen_buf <= arlen_tmp;
            end
        end
                    
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    ARVALID_T <= 1'b0;
                else if (next_loop)
                    ARVALID_T <= 1'b1;
                else if (~next_loop && ARREADY)
                    ARVALID_T <= 1'b0;
            end
        end

        assign fifo_burst_w = next_loop;
        assign burst_end    = (last_loop)? sect_end_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    end
    endgenerate
//------------------------AR channel end-----------------

//------------------------R channel begin----------------
//------------------------Instantiation------------------
    neural_network_gmem_m_axi_fifo #(
        .DATA_BITS(BUS_DATA_WIDTH + 2),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_rdata (
        .sclk(ACLK),
        .reset_n(ARESETN),
        .sclk_en(ACLK_EN),
        .empty_n(beat_valid),
        .full_n(RREADY),
        .rdreq(next_beat),
        .wrreq(RVALID),
        .q(data_pack),
        .data(fifo_rresp_rdata)
    );

    assign fifo_rresp_rdata = {RRESP, RDATA};
    assign tmp_data         = data_pack[BUS_DATA_WIDTH - 1:0];
    assign tmp_resp         = data_pack[BUS_DATA_WIDTH + 1:BUS_DATA_WIDTH];

    generate
    if (USER_DATA_WIDTH == BUS_DATA_WIDTH) begin : bus_equal_gen
        reg  [BUS_DATA_WIDTH - 1:0]         data_buf;
        wire                                ready_for_data;

        assign rrsp        = resp_buf;
        assign rdata_data  = data_buf;
        assign rdata_valid = rdata_valid_t;

        assign fifo_burst_ready = 1'b1;
        assign next_beat        = beat_valid && ready_for_data;
        assign ready_for_data   = ~(rdata_valid_t && ~rdata_ack);

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    data_buf <= 0;
                else if (next_beat)
                    data_buf <= tmp_data;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    resp_buf <= 2'b00;
                else if (next_beat)
                    resp_buf <= tmp_resp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    rdata_valid_t <= 1'b0;
                else if (next_beat)
                    rdata_valid_t <= 1'b1;
                else if (ready_for_data)
                    rdata_valid_t <= 1'b0;
            end
        end
    end
    else if (USER_DATA_WIDTH < BUS_DATA_WIDTH) begin : bus_wide_gen
        localparam
            TOTAL_SPLIT     = BUS_DATA_WIDTH / USER_DATA_WIDTH,
            SPLIT_ALIGN     = log2(TOTAL_SPLIT);

        wire [2*SPLIT_ALIGN + 7:0]      tmp_burst_info;
        wire [2*SPLIT_ALIGN + 7:0]      burst_pack;
        reg  [BUS_DATA_WIDTH - 1:0]     data_buf;
        wire [SPLIT_ALIGN - 1:0]        split_cnt;
        reg  [SPLIT_ALIGN - 1:0]        split_cnt_buf;
        wire [SPLIT_ALIGN - 1:0]        head_split;
        wire [SPLIT_ALIGN - 1:0]        tail_split;
        wire [7:0]                      arlen_tmp_t;
        wire [7:0]                      burst_len;
        wire                            first_beat;
        wire                            last_beat;
        wire                            first_split;
        wire                            next_split;
        wire                            last_split;
        wire                            ready_for_data;

        neural_network_gmem_m_axi_fifo #(
            .DATA_BITS(2*SPLIT_ALIGN + 8),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset_n(ARESETN),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_pack),
            .data(tmp_burst_info));

        assign rrsp        = resp_buf;
        assign rdata_data  = data_buf[USER_DATA_WIDTH - 1:0];
        assign rdata_valid = rdata_valid_t;

        assign arlen_tmp_t    = arlen_tmp;
        assign tmp_burst_info = {araddr_tmp[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], burst_end[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], arlen_tmp_t};
        assign head_split     = burst_pack[2*SPLIT_ALIGN + 7:8 + SPLIT_ALIGN];
        assign tail_split     = burst_pack[SPLIT_ALIGN + 7:8];
        assign burst_len      = burst_pack[7:0];

        assign next_beat        = last_split;
        assign next_burst       = last_beat && last_split;
        assign ready_for_data   = ~(rdata_valid_t && ~rdata_ack);

        assign first_beat = (len_cnt == 0) && burst_valid && beat_valid;
        assign last_beat  = (len_cnt == burst_len) && burst_valid && beat_valid;

        assign first_split = (~first_beat)? (split_cnt == 0 && beat_valid && ready_for_data) : ((split_cnt == head_split) && ready_for_data);
        assign last_split  = (~last_beat)? (split_cnt == (TOTAL_SPLIT - 1) && ready_for_data) : ((split_cnt == tail_split) && ready_for_data);
        assign next_split  = (~first_beat)? ((split_cnt != 0) && ready_for_data) : ((split_cnt != head_split) && ready_for_data);

        assign split_cnt = (first_beat && (split_cnt_buf == 0))? head_split : split_cnt_buf;
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    split_cnt_buf <= 0;
                else if (last_split)
                    split_cnt_buf <= 0;
                else if (first_split || next_split)
                    split_cnt_buf <= split_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    len_cnt <= 0;
                else if (last_beat && last_split)
                    len_cnt <= 0;
                else if (last_split)
                    len_cnt <= len_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    data_buf <= 0;
                else if (first_split && first_beat)
                    data_buf <= tmp_data >> (head_split * USER_DATA_WIDTH);
                else if (first_split)
                    data_buf <= tmp_data;
                else if (next_split)
                    data_buf <= data_buf >> USER_DATA_WIDTH;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    resp_buf <= 2'b00;
                else if (first_split)
                    resp_buf <= tmp_resp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    rdata_valid_t <= 0;
                else if (first_split)
                    rdata_valid_t <= 1;
                else if (~(first_split || next_split) && ready_for_data)
                    rdata_valid_t <= 0;
            end
        end

    end
    else begin: bus_narrow_gen
        localparam
            TOTAL_PADS      = USER_DATA_WIDTH / BUS_DATA_WIDTH,
            PAD_ALIGN       = log2(TOTAL_PADS);

        reg  [USER_DATA_WIDTH - 1:0]        data_buf;
        wire [TOTAL_PADS - 1:0]		        pad_oh;
        reg  [TOTAL_PADS - 1:0]		        pad_oh_reg;
        wire 						        ready_for_data;
        wire 						        next_pad;
        reg  						        first_pad;
        wire 						        last_pad;
        wire 						        next_data;

        assign rrsp        = resp_buf;
        assign rdata_data  = data_buf;
        assign rdata_valid = rdata_valid_t;

        assign fifo_burst_ready = 1'b1;
        assign next_beat        = next_pad;
        assign ready_for_data   = ~(rdata_valid_t && ~rdata_ack);

        assign next_pad  = beat_valid && ready_for_data;
        assign last_pad  = pad_oh[TOTAL_PADS - 1];
        assign next_data = last_pad && ready_for_data;

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    first_pad <= 1;
                else if (next_pad && ~last_pad)
                    first_pad <= 0;
                else if (next_pad && last_pad)
                    first_pad <= 1;
            end
        end

        assign pad_oh = (beat_valid == 0)?  0 :
                        (first_pad)?        1 : 
                                            pad_oh_reg;
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    pad_oh_reg <= 0;
                else if (next_pad)
                    pad_oh_reg <= {pad_oh[TOTAL_PADS - 2:0], 1'b0};
            end
        end

        genvar  i;
        for (i = 1; i <= TOTAL_PADS; i = i + 1) begin : data_gen
            always @(posedge ACLK)
            begin
                if (ACLK_EN) begin
                    if (~ARESETN)
                        data_buf[i*BUS_DATA_WIDTH - 1:(i-1)*BUS_DATA_WIDTH] <= 0;
                    else if (pad_oh[i-1] == 1'b1 && ready_for_data)
                        data_buf[i*BUS_DATA_WIDTH - 1:(i-1)*BUS_DATA_WIDTH] <= tmp_data;
                end
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    resp_buf <= 2'b00;
                else if (next_beat && (resp_buf[0] ==1'b0))
                    resp_buf <= tmp_resp;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    rdata_valid_t <= 0;
                else if (next_data)
                    rdata_valid_t <= 1;
                else if (ready_for_data)
                    rdata_valid_t <= 0;
            end
        end
    end
    endgenerate

//------------------------Body---------------------------
//------------------------R channel end------------------
endmodule

module neural_network_gmem_m_axi_write
#(parameter
    C_ID_WIDTH        = 1,
    C_ADDR_WIDTH      = 32,
    C_TARGET_ADDR     = 32'h00000000,
    C_DATA_WIDTH      = 32,
    C_AWUSER_WIDTH    = 1,
    C_WUSER_WIDTH     = 1,
    C_BUSER_WIDTH     = 1,
    C_USER_VALUE      = 1'b0,
    C_PROT_VALUE      = 3'b000,
    C_CACHE_VALUE     = 4'b0011,
    USER_DW           = 16,
    USER_AW           = 32,
    USER_MAXREQS      = 16
)(
    // system signal
    input  wire                         ACLK,
    input  wire                         ARESETN,
    input  wire                         ACLK_EN,
    // write address channel
    output wire [C_ID_WIDTH-1:0]        AWID,
    output wire [C_ADDR_WIDTH-1:0]      AWADDR,
    output wire [7:0]                   AWLEN,
    output wire [2:0]                   AWSIZE,
    output wire [1:0]                   AWBURST,
    output wire [1:0]                   AWLOCK,
    output wire [3:0]                   AWCACHE,
    output wire [2:0]                   AWPROT,
    output wire [3:0]                   AWQOS,
    output wire [3:0]                   AWREGION,
    output wire [C_AWUSER_WIDTH-1:0]    AWUSER,
    output wire                         AWVALID,
    input  wire                         AWREADY,
    // write data channel
    output wire [C_ID_WIDTH-1:0]        WID,
    output wire [C_DATA_WIDTH-1:0]      WDATA,
    output wire [C_DATA_WIDTH/8-1:0]    WSTRB,
    output wire                         WLAST,
    output wire [C_WUSER_WIDTH-1:0]     WUSER,
    output wire                         WVALID,
    input  wire                         WREADY,
    // write response channel
    input  wire [C_ID_WIDTH-1:0]        BID,
    input  wire [1:0]                   BRESP,
    input  wire [C_BUSER_WIDTH-1:0]     BUSER,
    input  wire                         BVALID,
    output wire                         BREADY,
    // write request
    input  wire                         wreq_valid,
    output wire                         wreq_ack,
    input  wire [USER_AW-1:0]           wreq_addr,
    input  wire [31:0]                  wreq_length,
    input  wire [3:0]                   wreq_cache,
    input  wire [2:0]                   wreq_prot,
    input  wire [3:0]                   wreq_qos,
    input  wire [C_AWUSER_WIDTH-1:0]    wreq_user,
    input  wire                         wdata_valid,
    output wire                         wdata_ack,
    input  wire [USER_DW/8-1:0]         wdata_strb,
    input  wire [C_WUSER_WIDTH-1:0]     wdata_user,
    input  wire [USER_DW-1:0]           wdata_data,
    output wire                         wrsp_valid,
    input  wire                         wrsp_ack,
    output wire [1:0]                   wrsp
);

//------------------------Parameter----------------------
localparam
    USER_DATA_WIDTH = calc_data_width(USER_DW),
    USER_DATA_BYTES = USER_DATA_WIDTH / 8,
    USER_ADDR_ALIGN = log2(USER_DATA_BYTES),
    BUS_DATA_WIDTH  = C_DATA_WIDTH,
    BUS_DATA_BYTES  = BUS_DATA_WIDTH / 8,
    BUS_ADDR_ALIGN  = log2(BUS_DATA_BYTES),
    TARGET_ADDR     = C_TARGET_ADDR & (32'hffffffff << USER_ADDR_ALIGN),
    BOUNDARY_BEATS  = {12-BUS_ADDR_ALIGN{1'b1}};

//------------------------Task and function--------------
function integer calc_data_width;
    input integer x;
    integer y;
begin
    y = 8;
    while (y < x) y = y * 2;
    calc_data_width = y;
end
endfunction

function integer log2;
    input integer x;
    integer n, m;
begin
    n = 0;
    m = 1;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction

//------------------------Local signal-------------------
    // AW channel
    wire [USER_AW + 31:0]                   wreq_data;
    wire [USER_AW + 31:0]                   fifo_wreq_data;
    wire [USER_AW - 1:0]                    tmp_addr;
    wire [31:0]                             tmp_len;
    wire [31:0]                             align_len;
    wire [7:0]                              awlen_tmp;
    wire [C_ADDR_WIDTH - 1:0]               awaddr_tmp;
    wire [C_ADDR_WIDTH - 1:0]               start_addr;
    reg  [C_ADDR_WIDTH - 1:0]               start_addr_buf;
    wire [C_ADDR_WIDTH - 1:0]               end_addr;
    reg  [C_ADDR_WIDTH - 1:0]               end_addr_buf;
    wire [C_ADDR_WIDTH - 1:0]               sect_addr;
    reg  [C_ADDR_WIDTH - 1:0]               sect_addr_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             sect_end;
    reg  [BUS_ADDR_ALIGN - 1:0]             sect_end_buf;
    wire [BUS_ADDR_ALIGN - 1:0]             burst_end;
    wire [11 - BUS_ADDR_ALIGN:0]            start_to_4k;
    wire [11 - BUS_ADDR_ALIGN:0]            sect_len;
    reg  [11 - BUS_ADDR_ALIGN:0]            sect_len_buf;
    reg  [11 - BUS_ADDR_ALIGN:0]            beat_len_buf;
    reg  [C_ADDR_WIDTH - 13:0]              burst_cnt;
    reg  [19:0]                             sect_cnt;
    wire                                    fifo_wreq_valid;
    wire                                    fifo_wreq_read;
    wire                                    fifo_burst_w;
    wire                                    fifo_resp_w;
    reg                                     AWVALID_T;
    reg                                     last_sect_buf;
    wire                                    ready_for_sect;
    wire                                    next_wreq;
    wire                                    ready_for_wreq;
    reg                                     wreq_handling;
    wire                                    first_sect;
    wire                                    last_sect;
    wire                                    next_sect;
    // W channel
    wire    [USER_DW + USER_DW/8 - 1:0]     fifo_wdata_wstrb;
    wire    [USER_DW + USER_DW/8 - 1:0]     data_pack;
    wire    [USER_DATA_WIDTH - 1:0]         tmp_data;
    wire    [USER_DATA_BYTES - 1:0]         tmp_strb;
    reg     [7:0]                           len_cnt;
    wire    [7:0]                           burst_len;
    wire                                    beat_valid;
    wire                                    next_data;
    wire                                    burst_valid;
    wire                                    fifo_burst_ready;
    wire                                    next_burst;
    reg                                     WVALID_T;
    reg                                     WLAST_T;
    //B channel
    wire    [C_ADDR_WIDTH - 13:0]           resp_total;
    reg     [C_ADDR_WIDTH - 13:0]           resp_cnt;
    reg     [1:0]                           bresp_tmp;
    wire                                    next_resp;
    wire 								    fifo_resp_ready;
    wire                                    need_wrsp;
    wire                                    resp_match;
    wire                                    resp_ready;

//------------------------AW channel begin---------------
//------------------------Instantiation------------------
    neural_network_gmem_m_axi_fifo #(
        .DATA_BITS(USER_AW + 32),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_wreq (
        .sclk(ACLK),
        .reset_n(ARESETN),
        .sclk_en(ACLK_EN),
        .empty_n(fifo_wreq_valid),
        .full_n(wreq_ack),
        .rdreq(fifo_wreq_read),
        .wrreq(wreq_valid),
        .q(fifo_wreq_data),
        .data(wreq_data));

//------------------------Body---------------------------
    assign wreq_data   = {wreq_length, wreq_addr};
    assign tmp_addr    = fifo_wreq_data[USER_AW - 1:0];
    assign tmp_len     = fifo_wreq_data[USER_AW + 31:USER_AW];

    assign align_len   = (tmp_len << USER_ADDR_ALIGN) - 1;
    assign start_addr  = TARGET_ADDR + (tmp_addr << USER_ADDR_ALIGN);
    assign end_addr    = start_addr + align_len;

    assign next_wreq      = fifo_wreq_valid && ready_for_wreq;
    assign ready_for_wreq = ~(wreq_handling && ~(last_sect && next_sect));
    assign fifo_wreq_read = next_wreq;

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                wreq_handling <= 1'b0;
            else if (fifo_wreq_valid && ~wreq_handling)
                wreq_handling <= 1'b1;
            else if (~fifo_wreq_valid && last_sect && next_sect)
                wreq_handling <= 1'b0;
        end
    end

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                start_addr_buf <= 0;
            else if (next_wreq)
                start_addr_buf <= start_addr;
        end
    end

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                end_addr_buf <= 0;
            else if (next_wreq)
                end_addr_buf <= end_addr;
        end
    end

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                beat_len_buf <= 0;
            else if (next_wreq)
                beat_len_buf <= (align_len[11:0] + start_addr[BUS_ADDR_ALIGN-1:0]) >> BUS_ADDR_ALIGN;
        end
    end

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                sect_cnt <= 0;
            else if (next_wreq)
                sect_cnt <= start_addr[31:12];
            else if (next_sect)
                sect_cnt <= sect_cnt + 1;
        end
    end

    assign first_sect = (sect_cnt == start_addr_buf[C_ADDR_WIDTH-1:12]);
    assign last_sect  = (sect_cnt == end_addr_buf[C_ADDR_WIDTH-1:12]);
    assign next_sect  = wreq_handling && ready_for_sect;

    assign sect_addr  = (first_sect)? start_addr_buf : {sect_cnt, {12{1'b0}}};
    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                sect_addr_buf <= 0;
            else if (next_sect)
                sect_addr_buf <= sect_addr;
        end
    end

    assign start_to_4k = BOUNDARY_BEATS - start_addr_buf[11:BUS_ADDR_ALIGN];
    assign sect_len    = ( first_sect &&  last_sect)? beat_len_buf :
                         ( first_sect && ~last_sect)? start_to_4k:
                         (~first_sect &&  last_sect)? end_addr_buf[11:BUS_ADDR_ALIGN] : 
                                                      BOUNDARY_BEATS;

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                sect_len_buf <= 0;
            else if (next_sect)
                sect_len_buf <= sect_len;
        end
    end

    assign sect_end = (last_sect)? end_addr_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                sect_end_buf <= 0;
            else if (next_sect)
                sect_end_buf <= sect_end;
        end
    end

    assign AWID    = 0;
    assign AWSIZE  = BUS_ADDR_ALIGN;
    assign AWBURST = 2'b01;
    assign AWLOCK  = 2'b00;
    assign AWCACHE = C_CACHE_VALUE;
    assign AWPROT  = C_PROT_VALUE;
    assign AWUSER  = C_USER_VALUE;
    assign AWQOS   = wreq_qos;

    // if BUS_DATA_BYTES >= 16, then a 256 length burst is 4096 bytes(reach boundary).
    generate
    if (BUS_DATA_BYTES >= 16) begin : must_one_burst
        assign AWADDR  = {sect_addr_buf[C_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
        assign AWLEN   = sect_len_buf;
        assign AWVALID = AWVALID_T;

        assign ready_for_sect = ~(AWVALID_T && ~AWREADY) && fifo_burst_ready && fifo_resp_ready;

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    AWVALID_T <= 1'b0;
                else if (next_sect)
                    AWVALID_T <= 1'b1;
                else if (~next_sect && AWREADY)
                    AWVALID_T <= 1'b0;
            end
        end

        assign fifo_resp_w = last_sect && next_sect;
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    burst_cnt <= 0;
                else if (next_wreq)
                    burst_cnt <= 1'b1;
                else if (next_sect)
                    burst_cnt <= burst_cnt + 1;
            end
        end

        assign fifo_burst_w = next_sect;
        assign awaddr_tmp   = sect_addr[C_ADDR_WIDTH - 1:0];
        assign awlen_tmp    = sect_len;
        assign burst_end    = sect_end;
    end
    else begin : could_multi_bursts
        reg  [C_ADDR_WIDTH - 1:0]           awaddr_buf;
        reg  [7:0]                          awlen_buf;
        reg  [3 - BUS_ADDR_ALIGN:0]         loop_cnt;
        reg                                 sect_handling;
        wire                                last_loop;
        wire                                next_loop;
        wire                                ready_for_loop;

        assign AWADDR  = awaddr_buf;
        assign AWLEN   = awlen_buf;
        assign AWVALID = AWVALID_T;

        assign last_loop      = (loop_cnt == sect_len_buf[11 - BUS_ADDR_ALIGN:8]);
        assign next_loop      = sect_handling && ready_for_loop;
        assign ready_for_loop = ~(AWVALID_T && ~AWREADY) && fifo_resp_ready && fifo_burst_ready;
        assign ready_for_sect = ~(sect_handling && ~(last_loop && next_loop));

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    sect_handling <= 1'b0;
                else if (wreq_handling && ~sect_handling)
                    sect_handling <= 1'b1;
                else if (~wreq_handling && last_loop && next_loop)
                    sect_handling <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    loop_cnt <= 0;
                else if (next_sect)
                    loop_cnt <= 0;
                else if (next_loop)
                    loop_cnt <= loop_cnt + 1;
            end
        end

        assign awaddr_tmp = (loop_cnt == 0)? sect_addr_buf[C_ADDR_WIDTH - 1:0] : (awaddr_buf + ((awlen_buf + 1) << BUS_ADDR_ALIGN));
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    awaddr_buf <= 0;
                else if (next_loop)
                    awaddr_buf <= {awaddr_tmp[C_ADDR_WIDTH - 1:BUS_ADDR_ALIGN], {BUS_ADDR_ALIGN{1'b0}}};
            end
        end

        assign awlen_tmp  = (last_loop)? sect_len_buf[7:0] : 16'hff;
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    awlen_buf <= 0;
                else if (next_loop)
                    awlen_buf <= awlen_tmp;
            end
        end
                    
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    AWVALID_T <= 1'b0;
                else if (next_loop)
                    AWVALID_T <= 1'b1;
                else if (~next_loop && AWREADY)
                    AWVALID_T <= 1'b0;
            end
        end

        assign fifo_resp_w = next_loop && last_loop && last_sect_buf;
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    last_sect_buf <= 0;
                else if (next_sect && last_sect)
                    last_sect_buf <= 1;
                else if (next_sect)
                    last_sect_buf <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    burst_cnt <= 0;
                else if (next_sect && first_sect)
                    burst_cnt <= 1;
                else if (next_loop)
                    burst_cnt <= burst_cnt + 1;
            end
        end

        assign fifo_burst_w = next_loop;
        assign burst_end    = (last_loop)? sect_end_buf[BUS_ADDR_ALIGN - 1:0] : {BUS_ADDR_ALIGN{1'b1}};
    end
    endgenerate
//------------------------AW channel end-----------------

//------------------------W channel begin----------------
//------------------------Instantiation------------------
    neural_network_gmem_m_axi_fifo #(
        .DATA_BITS(USER_DW + USER_DW/8),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_wdata (
        .sclk(ACLK),
        .reset_n(ARESETN),
        .sclk_en(ACLK_EN),
        .empty_n(data_valid),
        .full_n(wdata_ack),
        .rdreq(next_data),
        .wrreq(wdata_valid),
        .q(data_pack),
        .data(fifo_wdata_wstrb)
    );

//------------------------Body---------------------------
    assign fifo_wdata_wstrb = {wdata_strb, wdata_data};
    assign tmp_data         = data_pack[USER_DW - 1:0];
    assign tmp_strb         = data_pack[USER_DW + USER_DW/8 - 1:USER_DW];

    generate
    if (USER_DATA_WIDTH == BUS_DATA_WIDTH) begin : bus_equal_gen
        reg  [BUS_DATA_WIDTH - 1:0]         data_buf;
        reg  [BUS_DATA_BYTES - 1:0]         strb_buf;
        wire [7:0]                          tmp_burst_info;
        wire                                ready_for_data;

        neural_network_gmem_m_axi_fifo #(
            .DATA_BITS(8),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset_n(ARESETN),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_len),
            .data(tmp_burst_info));

        assign WDATA   = data_buf;
        assign WSTRB   = strb_buf;
        assign WLAST   = WLAST_T;
        assign WVALID  = WVALID_T;

        assign tmp_burst_info = awlen_tmp;

        assign next_data        = burst_valid && data_valid && ready_for_data;
        assign next_burst       = (len_cnt == burst_len) && next_data;
        assign ready_for_data   = ~(WVALID_T && ~WREADY);

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    data_buf <= 0;
                else if (next_data)
                    data_buf <= tmp_data;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    strb_buf <= 0;
                else if (next_data)
                    strb_buf <= tmp_strb;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    WVALID_T <= 1'b0;
                else if (next_data)
                    WVALID_T <= 1'b1;
                else if (ready_for_data)
                    WVALID_T <= 1'b0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    WLAST_T <= 0;
                else if (next_burst)
                    WLAST_T <= 1;
                else if (ready_for_data)
                    WLAST_T <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    len_cnt <= 0;
                else if (next_burst)
                    len_cnt <= 0;
                else if (next_data)
                    len_cnt <= len_cnt + 1;
            end
        end

    end
    else if (USER_DATA_WIDTH > BUS_DATA_WIDTH) begin : bus_narrow_gen
        localparam
            TOTAL_SPLIT     = USER_DATA_WIDTH / BUS_DATA_WIDTH,
            SPLIT_ALIGN     = log2(TOTAL_SPLIT);

        reg  [USER_DATA_WIDTH - 1:0]                data_buf;
        reg  [USER_DATA_BYTES - 1:0]                strb_buf;
        reg  [SPLIT_ALIGN - 1:0]                    split_cnt;
        wire [7:0]                                  tmp_burst_info;
        wire                                        first_split;
        wire                                        next_split;
        wire                                        last_split;
        wire                                        ready_for_data;

        neural_network_gmem_m_axi_fifo #(
            .DATA_BITS(8),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset_n(ARESETN),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_len),
            .data(tmp_burst_info));

        assign WDATA   = data_buf[BUS_DATA_WIDTH - 1:0];
        assign WSTRB   = strb_buf[BUS_DATA_BYTES - 1:0];
        assign WLAST   = WLAST_T;
        assign WVALID  = WVALID_T;

        assign tmp_burst_info = awlen_tmp;

        assign next_data        = first_split;
        assign next_burst       = (len_cnt == burst_len) && burst_valid && last_split;
        assign ready_for_data   = ~(WVALID_T && ~WREADY);

        assign first_split = (split_cnt == 0) && data_valid && burst_valid && ready_for_data;
        assign last_split  = (split_cnt == (TOTAL_SPLIT - 1)) && ready_for_data;
        assign next_split  = (split_cnt != 0) && ready_for_data;

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    split_cnt <= 0;
                else if (last_split)
                    split_cnt <= 0;
                else if (first_split || next_split)
                    split_cnt <= split_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    len_cnt <= 0;
                else if (next_burst)
                    len_cnt <= 0;
                else if (next_data || next_split)
                    len_cnt <= len_cnt + 1;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    data_buf <= 0;
                else if (next_data)
                    data_buf <= tmp_data;
                else if (next_split)
                    data_buf <= data_buf >> BUS_DATA_WIDTH;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    strb_buf <= 0;
                else if (next_data)
                    strb_buf <= tmp_strb;
                else if (next_split)
                    strb_buf <= strb_buf >> BUS_DATA_BYTES;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    WVALID_T <= 0;
                else if (next_data)
                    WVALID_T <= 1;
                else if (~(first_split || next_split) && ready_for_data)
                    WVALID_T <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    WLAST_T <= 0;
                else if (next_burst && last_split)
                    WLAST_T <= 1;
                else if (ready_for_data)
                    WLAST_T <= 0;
            end
        end

    end
    else begin: bus_wide_gen
        localparam
            TOTAL_PADS      = BUS_DATA_WIDTH / USER_DATA_WIDTH,
            PAD_ALIGN       = log2(TOTAL_PADS);

        reg  [BUS_DATA_WIDTH - 1:0]                 data_buf;
        reg  [BUS_DATA_BYTES - 1:0]                 strb_buf;
        wire [2*PAD_ALIGN + 7:0]                    burst_pack;
        wire [2*PAD_ALIGN + 7:0]                    tmp_burst_info;
        wire [PAD_ALIGN - 1:0]                      head_pads;
        wire [PAD_ALIGN - 1:0]                      tail_pads;
        wire [TOTAL_PADS - 1:0]                     add_head;
        wire [TOTAL_PADS - 1:0]                     add_tail;
        wire [TOTAL_PADS - 1:0]                     pad_oh;
        reg  [TOTAL_PADS - 1:0]                     pad_oh_reg;
        wire [TOTAL_PADS - 1:0]                     head_pad_sel;
        wire [0:TOTAL_PADS - 1]                     tail_pad_sel;
        wire [7:0]                                  awlen_tmp_t;
        wire                                        ready_for_data;
        wire                                        next_pad;
        reg                                         first_pad;
        wire                                        last_pad;
        wire                                        first_beat;
        wire                                        last_beat;
        wire                                        next_beat;

        neural_network_gmem_m_axi_fifo #(
            .DATA_BITS(8 + 2*PAD_ALIGN),
            .DEPTH(USER_MAXREQS),
            .DEPTH_BITS(log2(USER_MAXREQS))
        ) fifo_burst (
            .sclk(ACLK),
            .reset_n(ARESETN),
            .sclk_en(ACLK_EN),
            .empty_n(burst_valid),
            .full_n(fifo_burst_ready),
            .rdreq(next_burst),
            .wrreq(fifo_burst_w),
            .q(burst_pack),
            .data(tmp_burst_info));

        assign WDATA   = data_buf;
        assign WSTRB   = strb_buf;
        assign WLAST   = WLAST_T;
        assign WVALID  = WVALID_T;

        assign awlen_tmp_t = awlen_tmp;
        assign tmp_burst_info = {awaddr_tmp[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], burst_end[BUS_ADDR_ALIGN - 1:USER_ADDR_ALIGN], awlen_tmp_t};

        neural_network_gmem_m_axi_decoder #(
            .DIN_WIDTH(PAD_ALIGN)
        ) head_pad_decoder (
            .din(head_pads),
            .dout(head_pad_sel));

        neural_network_gmem_m_axi_decoder #(
            .DIN_WIDTH(PAD_ALIGN)
        ) tail_pad_decoder (
            .din(tail_pads),
            .dout(tail_pad_sel));

        assign head_pads = burst_pack[2*PAD_ALIGN + 7:8 + PAD_ALIGN];
        assign tail_pads = ~burst_pack[PAD_ALIGN + 7:8];
        assign burst_len = burst_pack[7:0];

        assign next_data        = next_pad;
        assign next_burst       = last_beat && next_beat;
        assign ready_for_data   = ~(WVALID_T && ~WREADY);

        assign first_beat = (len_cnt == 0) && burst_valid;
        assign last_beat  = (len_cnt == burst_len) && burst_valid;
        assign next_beat  = burst_valid && last_pad && ready_for_data;

        assign next_pad  = burst_valid && data_valid && ready_for_data;
        assign last_pad  = (last_beat)? pad_oh[TOTAL_PADS - tail_pads - 1] : pad_oh[TOTAL_PADS - 1];

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    first_pad <= 1;
                else if (next_pad && ~last_pad)
                    first_pad <= 0;
                else if (next_pad && last_pad)
                    first_pad <= 1;
            end
        end

        assign pad_oh = (data_valid == 0)?          0 :
                        (first_pad && first_beat)?  1 << head_pads : 
                        (first_pad)?                1 : 
                                                    pad_oh_reg;
        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    pad_oh_reg <= 0;
                else if (next_pad)
                    pad_oh_reg <= {pad_oh[TOTAL_PADS - 2:0], 1'b0};
            end
        end

        genvar  i;
        for (i = 1; i <= TOTAL_PADS; i = i + 1) begin : data_gen
            assign add_head[i-1] = head_pad_sel[i-1] && first_beat;
            assign add_tail[i-1] = tail_pad_sel[i-1] && last_beat;
            
            always @(posedge ACLK)
            begin
                if (ACLK_EN) begin
                    if (~ARESETN)
                        data_buf[i*USER_DATA_WIDTH - 1:(i-1)*USER_DATA_WIDTH] <= 0;
                    else if ((add_head[i-1] || add_tail[i-1]) && ready_for_data)
                        data_buf[i*USER_DATA_WIDTH - 1:(i-1)*USER_DATA_WIDTH] <= 0;
                    else if (pad_oh[i-1] == 1'b1 && ready_for_data)
                        data_buf[i*USER_DATA_WIDTH - 1:(i-1)*USER_DATA_WIDTH] <= tmp_data;
                end
            end

            always @(posedge ACLK)
            begin
                if (ACLK_EN) begin
                    if (~ARESETN)
                        strb_buf[i*USER_DATA_BYTES - 1:(i-1)*USER_DATA_BYTES] <= 0;
                    else if ((add_head[i-1] || add_tail[i-1]) && ready_for_data)
                        strb_buf[i*USER_DATA_BYTES - 1:(i-1)*USER_DATA_BYTES] <= 0;
                    else if (pad_oh[i-1] == 1'b1 && ready_for_data)
                        strb_buf[i*USER_DATA_BYTES - 1:(i-1)*USER_DATA_BYTES] <= tmp_strb;
                end
            end

        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    WVALID_T <= 0;
                else if (next_beat)
                    WVALID_T <= 1;
                else if (ready_for_data)
                    WVALID_T <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    WLAST_T <= 0;
                else if (next_burst)
                    WLAST_T <= 1;
                else if (next_data)
                    WLAST_T <= 0;
            end
        end

        always @(posedge ACLK)
        begin
            if (ACLK_EN) begin
                if (~ARESETN)
                    len_cnt <= 0;
                else if (next_burst)
                    len_cnt <= 0;
                else if (next_beat)
                    len_cnt <= len_cnt + 1;
            end
        end

    end
    endgenerate

//------------------------W channel end------------------

//------------------------B channel begin----------------
//------------------------Instantiation------------------
    neural_network_gmem_m_axi_fifo #(
        .DATA_BITS(C_ADDR_WIDTH - 12),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_resp (
        .sclk(ACLK),
        .reset_n(ARESETN),
        .sclk_en(ACLK_EN),
        .empty_n(need_wrsp),
        .full_n(fifo_resp_ready),
        .rdreq(resp_match),
        .wrreq(fifo_resp_w),
        .q(resp_total),
        .data(burst_cnt));

    neural_network_gmem_m_axi_fifo #(
        .DATA_BITS(2),
        .DEPTH(USER_MAXREQS),
        .DEPTH_BITS(log2(USER_MAXREQS))
    ) fifo_resp_to_user (
        .sclk(ACLK),
        .reset_n(ARESETN),
        .sclk_en(ACLK_EN),
        .empty_n(wrsp_valid),
        .full_n(resp_ready),
        .rdreq(wrsp_ack),
        .wrreq(resp_match),
        .q(wrsp),
        .data(bresp_tmp));

//------------------------Body---------------------------
    assign BREADY = resp_ready;

    assign resp_match = (resp_cnt == resp_total) && need_wrsp;
    assign next_resp  = BVALID && resp_ready;

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                resp_cnt <= 0;
            else if (resp_match && ~next_resp)
                resp_cnt <= 0;
            else if (resp_match && next_resp)
                resp_cnt <= 1;
            else if (next_resp)
                resp_cnt <= resp_cnt + 1;
        end
    end

    always @(posedge ACLK)
    begin
        if (ACLK_EN) begin
            if (~ARESETN)
                bresp_tmp <= 2'b00;
            else if (resp_match && ~next_resp)
                bresp_tmp <= 2'b00;
            else if (resp_match && next_resp)
                bresp_tmp <= BRESP;
            else if (BVALID && resp_ready && ~bresp_tmp[1])
                bresp_tmp <= BRESP;
        end
    end

//------------------------B channel end------------------
endmodule
