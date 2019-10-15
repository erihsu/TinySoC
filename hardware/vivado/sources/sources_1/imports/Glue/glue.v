module glue(
    input [23:0] tdata_i,
    input tlast_i,tuser_i,tvalid_i,
    output tready_i,
    output [31:0] tdata_o,
    output tlast_o,tuser_o,tvalid_o,
    input tready_o,
    input clk,rstn

);

reg[31:0] tdata;
reg tready,tlast,tuser,tvalid; 

assign tlast_o = tlast;
assign tuser_o = tuser;
assign tvalid_o = tvalid;
assign tready_i = tready;
assign tdata_o = tdata;

always@(posedge clk or negedge rstn) begin
    if (~rstn) begin
        tdata <= {32{1'b0}};
        tready <= 1'b0;
        tlast <= 1'b0;
        tuser  <= 1'b0;
        tvalid <= 1'b0;
        
    end    
    else begin
        tdata [23:0] <= tdata_i [23:0];
        tready <= tready_o;
        tlast <= tlast_i;
        tuser <= tuser_i;
        tvalid <= tvalid_i;
       
    end

end

endmodule