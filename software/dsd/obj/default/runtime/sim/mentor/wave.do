onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/sdram_0/za_data
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/sdram_0/za_valid
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/sdram_0/za_waitrequest
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/sdram_0/zs_addr
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/sdram_0/zs_ba
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/sdram_0/zs_dq
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/sdram_0/az_addr
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/sdram_0/az_data
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/sdram_0/az_rd_n
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/sdram_0/az_wr_n
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/sdram_0/clk
add wave -noupdate -divider -height 30 {New Divider}
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/address
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/readdata
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/readdatavalid
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/waitrequest
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/burstcount
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/read
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/clk
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/reset
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/slave_address
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/slave_waitrequest
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/slave_writedata
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/slave_write
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/slave_read
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/slave_readdata
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/irq
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/ptr
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/isrunning
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/mxsize
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/nummxentries
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/done
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/result
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/status
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/timingtestctr
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/dma_matrix_addr
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/dma_matrix_data
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/dma_matrix_we
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/start_dma_pulse
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/dma_done
add wave -noupdate -radix hexadecimal /first_nios2_system_tb/first_nios2_system_inst/determinant_0/dma_currptr
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/dma_currrow
add wave -noupdate /first_nios2_system_tb/first_nios2_system_inst/determinant_0/dma_currcol
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {557370000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {556465597 ps} {562205113 ps}
