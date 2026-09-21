module simple_fsm (
    input clk,
    input reset_n,
    input start,
    input finish,
    output reg busy,
    output reg done
);


// 記住狀態
localparam IDLE = 2'b00;
localparam RUN = 2'b01;
localparam DONE = 2'b10;

reg [1:0] state;
reg [1:0] next_state;

always @(posedge clk or negedge reset_n) begin
    
    if (!reset_n)
        state <= IDLE;
    else
        state <= next_state;

end

// 決定下一個狀態
always @(*) begin

    next_state = state;
    case (state) 
        
        IDLE:   
            if (start)
                next_state = RUN;
        RUN:
            if (finish)
                next_state = DONE;
        DONE:   
            next_state = IDLE;

    endcase

end

// 根據 state 決定輸出
always @(*) begin

    busy = 1'b0;
    done = 1'b0;
    
    case (state)
        IDLE: begin
            busy = 1'b0;
            done = 1'b0;
        end
        RUN: begin
            busy = 1'b1;
            done = 1'b0;
        end
        DONE: begin
            busy = 1'b0;
            done = 1'b1;
        end
    endcase

end






endmodule 
