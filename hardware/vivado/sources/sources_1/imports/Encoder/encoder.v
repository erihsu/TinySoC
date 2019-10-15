//module widen(
//    input clk,
//    input rst_n,
//    input [9:0] data_in,
//    input enable,
//    output [9:0] data_out
//    );
//    wire [9:0] data_temp;
//    reg [9:0] temp1,temp2,temp3;
//   assign data_temp[9:0] = enable ? data_in[9:0]:10'b0;
//    always@(posedge clk or negedge rst_n)begin
//        if(!rst_n)begin
//            temp1<=10'b0;
//            temp2<=10'b0;
//            temp3<=10'b0;
//            end
//        else
//        begin
//            temp1<=data_temp;
//            temp2<=temp1;
//            temp3<=temp2;
//        end
//        end
//    assign data_out = temp1 | temp2 |temp3 ;
    
//endmodule

module widen(
    input clk,
    input rst_n,
    input [3:0] data_in,
    input enable,
    output [9:0] data_out
    );
    reg [9:0] data_temp;
    reg [9:0] temp1,temp2,temp3;
    
   always@(data_in or enable)begin
   if (!enable)begin
        data_temp={10{1'b0}};
   end
   else begin
       case(data_in)
        4'd0:data_temp={{9{1'b0}},1'b1};
        4'd1:data_temp={{8{1'b0}},1'b1,{1{1'b0}}};
        4'd2:data_temp={{7{1'b0}},1'b1,{2{1'b0}}};
        4'd3:data_temp={{6{1'b0}},1'b1,{3{1'b0}}};
        4'd4:data_temp={{5{1'b0}},1'b1,{4{1'b0}}};
        4'd5:data_temp={{4{1'b0}},1'b1,{5{1'b0}}};
        4'd6:data_temp={{3{1'b0}},1'b1,{6{1'b0}}};
        4'd7:data_temp={{2{1'b0}},1'b1,{7{1'b0}}};
        4'd8:data_temp={{1{1'b0}},1'b1,{8{1'b0}}};
        4'd9:data_temp={1'b1,{9{1'b0}}};
        default:data_temp={10{1'b0}}; 
    endcase
    end
   end 
   
    always@(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            data_temp<=10'b0;
            temp1<=10'b0;
            temp2<=10'b0;
            temp3<=10'b0;
            end
        else
        begin
            temp1<=data_temp;
            temp2<=temp1;
            temp3<=temp2;
        end
        end
    assign data_out = temp1 | temp2 |temp3 ;
    
endmodule
