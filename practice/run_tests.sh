#!/bin/sh
set -eu
cd "$(dirname "$0")"
temporary=$(mktemp -d)
trap 'rm -rf -- "$temporary"' EXIT HUP INT TERM
for cpb in 1 3; do
    iverilog -g2012 -Wall -s tb_uart -Ptb_uart.CPB="$cpb" -o "$temporary/uart" uart_tx.v tb_uart.v
    vvp "$temporary/uart"
done
iverilog -g2012 -Wall -s tb_fifo -o "$temporary/fifo" fifo.v tb_fifo.v
vvp "$temporary/fifo"
iverilog -g2012 -Wall -s tb_control -o "$temporary/control" debounce.v saturating_counter.v tb_control.v
vvp "$temporary/control"
