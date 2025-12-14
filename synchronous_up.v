module synchronous_up (
    input wire clk,        // clock input
    input wire rst,        // synchronous reset
    output reg [2:0] q     // 3-bit counter output
);

always @(posedge clk) begin
    if (rst)
        q <= 3'b000;       // reset counter to 0
    else
        q <= q + 1'b1;     // increment counter
end

endmodule