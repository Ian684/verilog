module mealy_fsm (
    input clk,
    input reset_n,
    input start,
    input finish,
    output reg busy,
    output reg done
);

localparam IDLE = 2'b00;
localparam RUN = 2'b01;

reg [1:0] state;
reg [1:0] next_state;

always @(posedge clk or negedge reset_n) begin

    if (!reset_n)
        state <= IDLE;
    else
        state <= next_state;

end

always @(*) begin

    next_state = state;
    case (state) 
        
        IDLE:
            if (start)
                next_state = RUN;
        RUN:
            if (finish)
                next_state = IDLE;
        default:
            next_state = IDLE;

    endcase

end

always @(*) begin

    busy = 1'b0;
    done = 1'b0;

    case (state)

        IDLE: begin
            if (start) begin
                busy = 1'b1;
                done = 1'b0;
            end
            else begin
                busy = 1'b0;
                done = 1'b0;
            end
        end
        RUN: begin
            if (finish) begin
                busy = 1'b0;
                done = 1'b1;
            end
            else begin
                busy = 1'b1;
                done = 1'b0;
            end
        end

    endcase

end


function [31:0] exercise_0c8a3554;
    input [31:0] source;
    integer index;
    begin
        exercise_0c8a3554 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_0c8a3554 = (exercise_0c8a3554 << 1) ^ (exercise_0c8a3554 >> 3);
    end
endfunction

wire [31:0] exercise_0c8a3554_wire = exercise_0c8a3554(32'h0c8a3554);

endmodule
