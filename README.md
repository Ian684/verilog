# Verilog practice

The repository contains small RTL and testbench exercises. Existing examples
cover gates, adders, multiplexers, registers, counters, ALUs, and FSMs.

Additional exercises now cover:

- `priority_encoder`: combinational priority selection
- `edge_detector`: synchronous rising/falling edge detection
- `debounce`: stable-input filtering
- `one_hot_fsm`: one-hot state-machine sequencing
- `pulse_stretcher`: extending a one-cycle event

Each exercise keeps its module and testbench in the same directory. With
Icarus Verilog installed, run an individual testbench with:

```bash
iverilog -g2012 -o /tmp/exercise.out module.v module_tb.v
vvp /tmp/exercise.out
```

The existing `sim` files remain untouched; they document the original
simulation commands for the earlier exercises.
