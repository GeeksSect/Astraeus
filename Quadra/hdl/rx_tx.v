module tx_rx
(
input tx_rdy,
input rx_rdy,

output [1:0]tx_rx
);
assign tx_rx[0] = rx_rdy;
assign tx_rx[1] = tx_rdy;

endmodule

