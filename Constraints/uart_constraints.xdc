###############################################################################
# ZedBoard Zynq-7000 XDC Constraints
###############################################################################

# -----------------------------------------------------------------------------
# Clock Source (Main 100 MHz clock)
# -----------------------------------------------------------------------------
set_property PACKAGE_PIN Y9 [get_ports i_clk]
set_property IOSTANDARD LVCMOS33 [get_ports i_clk]
create_clock -period 10.000 -name i_clk [get_ports i_clk]
# Change period and name according to your top-level design

# -----------------------------------------------------------------------------
# Push Buttons (BTN0-BTN4)
# -----------------------------------------------------------------------------
set_property PACKAGE_PIN G18 [get_ports btn[0]]
set_property IOSTANDARD LVCMOS33 [get_ports btn[0]]
set_property PACKAGE_PIN P16 [get_ports btn[1]]
set_property IOSTANDARD LVCMOS33 [get_ports btn[1]]
set_property PACKAGE_PIN P15 [get_ports btn[2]]
set_property IOSTANDARD LVCMOS33 [get_ports btn[2]]
set_property PACKAGE_PIN W19 [get_ports btn[3]]
set_property IOSTANDARD LVCMOS33 [get_ports btn[3]]
set_property PACKAGE_PIN T18 [get_ports btn[4]]
set_property IOSTANDARD LVCMOS33 [get_ports btn[4]]

# -----------------------------------------------------------------------------
# User LEDs (LD0-LD7)
# -----------------------------------------------------------------------------
set_property PACKAGE_PIN T22 [get_ports led[0]]
set_property IOSTANDARD LVCMOS33 [get_ports led[0]]
set_property PACKAGE_PIN T21 [get_ports led[1]]
set_property IOSTANDARD LVCMOS33 [get_ports led[1]]
set_property PACKAGE_PIN U22 [get_ports led[2]]
set_property IOSTANDARD LVCMOS33 [get_ports led[2]]
set_property PACKAGE_PIN U21 [get_ports led[3]]
set_property IOSTANDARD LVCMOS33 [get_ports led[3]]
set_property PACKAGE_PIN V22 [get_ports led[4]]
set_property IOSTANDARD LVCMOS33 [get_ports led[4]]
set_property PACKAGE_PIN W22 [get_ports led[5]]
set_property IOSTANDARD LVCMOS33 [get_ports led[5]]
set_property PACKAGE_PIN U19 [get_ports led[6]]
set_property IOSTANDARD LVCMOS33 [get_ports led[6]]
set_property PACKAGE_PIN U14 [get_ports led[7]]
set_property IOSTANDARD LVCMOS33 [get_ports led[7]]

# -----------------------------------------------------------------------------
# User Switches (SW0-SW7)
# -----------------------------------------------------------------------------
set_property PACKAGE_PIN F22 [get_ports sw[0]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[0]]
set_property PACKAGE_PIN G22 [get_ports sw[1]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[1]]
set_property PACKAGE_PIN H22 [get_ports sw[2]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[2]]
set_property PACKAGE_PIN J22 [get_ports sw[3]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[3]]
set_property PACKAGE_PIN K22 [get_ports sw[4]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[4]]
set_property PACKAGE_PIN L22 [get_ports sw[5]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[5]]
set_property PACKAGE_PIN M22 [get_ports sw[6]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[6]]
set_property PACKAGE_PIN N22 [get_ports sw[7]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[7]]

# -----------------------------------------------------------------------------
# UART Connections (Change as needed for your design/top-level module)
# Example for PMOD JA (for routing UART signals to external header)
# -----------------------------------------------------------------------------
set_property PACKAGE_PIN V16 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]
set_property PACKAGE_PIN V17 [get_ports uart_rx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]

# -----------------------------------------------------------------------------
# Example Timing Constraints (Edit to match your ports/signals)
# -----------------------------------------------------------------------------
# These are typical for input signals
set_input_delay -clock [get_clocks i_clk] -min 0 -max 5 [get_ports sw[*]]
set_input_delay -clock [get_clocks i_clk] -min 0 -max 5 [get_ports btn[*]]

# And typical for output signals
set_output_delay -clock [get_clocks i_clk] -min 0 -max 5 [get_ports led[*]]

###############################################################################

