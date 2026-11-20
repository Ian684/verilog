`timescale 1ns/1ps
module practice_fifo #(parameter integer WIDTH=8, DEPTH=3)(
    input wire clk, input wire rst_n,
    input wire wr_valid, output wire wr_ready, input wire [WIDTH-1:0] wr_data,
    output wire rd_valid, input wire rd_ready, output wire [WIDTH-1:0] rd_data
);
    localparam integer PW = DEPTH > 1 ? $clog2(DEPTH) : 1;
    localparam integer CW = $clog2(DEPTH+1);
    reg [WIDTH-1:0] memory [0:DEPTH-1];
    reg [PW-1:0] read_ptr, write_ptr;
    reg [CW-1:0] count;
    wire pop = rd_valid && rd_ready;
    wire push = wr_valid && wr_ready;
    assign rd_valid = count != 0;
    assign wr_ready = count < DEPTH || pop;
    assign rd_data = memory[read_ptr];
    initial if (DEPTH < 1 || WIDTH < 1) $fatal(1, "positive FIFO dimensions required");
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin read_ptr<=0; write_ptr<=0; count<=0; end
        else begin
            if (push) begin
                memory[write_ptr] <= wr_data;
                write_ptr <= write_ptr == DEPTH-1 ? 0 : write_ptr+1'b1;
            end
            if (pop) read_ptr <= read_ptr == DEPTH-1 ? 0 : read_ptr+1'b1;
            case ({push,pop})
                2'b10: count <= count+1'b1;
                2'b01: count <= count-1'b1;
                default: count <= count;
            endcase
        end
    end
endmodule
