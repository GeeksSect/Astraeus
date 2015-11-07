module BT_module //
(
input clk,
input rstn,
input rxrdy,
input txrdy,

input [7:0]data_rx,
output reg [7:0] data_tx,
output reg wr,
output reg oen //
);

reg [7:0]data_buf;
reg flag_rx;
reg[1:0]TX_RX_repiter;
parameter idle = 0, rx = 1, tx = 2, endc = 3;
always @(posedge clk, negedge rstn)
begin
    if(!rstn)
        begin
            wr <= 1;
            oen <= 1;
            data_tx <= 0;
            flag_rx <= 0;
            data_buf <= 0;
            TX_RX_repiter <= idle;
        end
    else
        begin
            case(TX_RX_repiter)
                idle:
                    begin
                        if(rxrdy)
                            TX_RX_repiter <= rx;
                        else if(flag_rx && txrdy)
                            begin
                                TX_RX_repiter <= tx;
                                data_tx <= data_buf;
                            end
                        else
                            TX_RX_repiter <= idle;
                    end
                rx:
                    begin
                        oen <= 1'b0;
                        flag_rx <= 1'b1;
                        data_buf <= data_rx;
                        TX_RX_repiter <= endc;
                    end
                tx:
                    begin
                        wr <= 1'b0;
                        flag_rx <= 1'b0;
                        TX_RX_repiter <= endc;
                    end
                endc:
                    begin
                        wr <= 1'b1;
                        oen <= 1'b1;
                        TX_RX_repiter <= idle;
                    end
            endcase
        end
end
endmodule

