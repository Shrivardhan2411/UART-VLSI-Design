# -------------------------------
# 1. Design name
# -------------------------------
set design uart_top

# -------------------------------
# 2. Search paths
# -------------------------------
set_attribute hdl_search_path {/home/buet/Desktop/UART}
set_attribute lib_search_path {/home/buet/Desktop/UART/library}
# -------------------------------
# 3. Libraries
# -------------------------------
set_attribute library {fast.lib typical.lib slow.lib}
# -------------------------------
# 4. Read RTL
# -------------------------------
read_hdl -v2001 {
  uart_top.v
  transmitter.v
  uart_reciver.v
  baud_rate_generator.v
}

elaborate $design

# -------------------------------
# 5. Clock Definition
# -------------------------------
define_clock -name clk -period 800 clk

# -------------------------------
# 6. Synthesis
# -------------------------------
synthesize -to_generic
synthesize -to_mapped

# -------------------------------
# 7. Reports
# -------------------------------
report timing   > timing.rpt
report area     > area.rpt
report power    > power.rpt
report gates    > gates.rpt
report summary  > summary.rpt

# -------------------------------
# 8. Write netlist
# -------------------------------
write_hdl > uart_netlist.v

puts "=========================================="
puts "UART synthesis completed successfully 🔥"
puts "=========================================="
