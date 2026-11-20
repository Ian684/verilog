module one_hot_fsm (
    input clk,
    input reset,
    input start,
    output reg busy,
    output reg done
);
    localparam IDLE = 3'b001, RUN = 3'b010, FINISH = 3'b100;
    reg [2:0] state;
    always @(posedge clk) begin
        if (reset) state <= IDLE;
        else case (state)
            IDLE:   if (start) state <= RUN;
            RUN:    state <= FINISH;
            FINISH: state <= IDLE;
            default: state <= IDLE;
        endcase
    end
    always @(*) begin
        busy = state == RUN;
        done = state == FINISH;
    end
endmodule
