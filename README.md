# Verilog Practice

Small RTL modules and Icarus Verilog testbenches.

## Run a testbench

```bash
iverilog -g2012 -o exercise.out exercise/exercise.v exercise/exercise_tb.v
vvp exercise.out
```

Replace `exercise` with the directory and filenames for the selected example. Simulation binaries and waveforms are not tracked.
