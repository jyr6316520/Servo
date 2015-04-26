# TCL File Generated by Component Editor 14.1
# Sun Apr 26 14:42:50 BST 2015
# DO NOT MODIFY


# 
# ST_ch_data_demux_and_swap "ST channel and data demux and swap" v1.0
#  2015.04.26.14:42:50
# Demultiplexes data and ch, and swaps them. Needs width parameterisation
# 

# 
# request TCL package from ACDS 14.1
# 
package require -exact qsys 14.1


# 
# module ST_ch_data_demux_and_swap
# 
set_module_property DESCRIPTION "Demultiplexes data and ch, and swaps them. Needs width parameterisation"
set_module_property NAME ST_ch_data_demux_and_swap
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "ST channel and data demux and swap"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL ST_ch_data_demux_and_swap
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file ST_ch_data_demux_and_swap.v VERILOG PATH ST_ch_data_demux_and_swap.v TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink reset_n reset_n Input 1


# 
# connection point input
# 
add_interface input avalon_streaming end
set_interface_property input associatedClock clock_sink
set_interface_property input associatedReset reset_sink
set_interface_property input dataBitsPerSymbol 5
set_interface_property input errorDescriptor ""
set_interface_property input firstSymbolInHighOrderBits true
set_interface_property input maxChannel 3
set_interface_property input readyLatency 0
set_interface_property input ENABLED true
set_interface_property input EXPORT_OF ""
set_interface_property input PORT_NAME_MAP ""
set_interface_property input CMSIS_SVD_VARIABLES ""
set_interface_property input SVD_ADDRESS_GROUP ""

add_interface_port input STin_valid valid Input 1
add_interface_port input STin_ready ready Output 1
add_interface_port input STin_startofpacket startofpacket Input 1
add_interface_port input STin_endofpacket endofpacket Input 1
add_interface_port input STin_data data Input 5
add_interface_port input STin_channel channel Input 2


# 
# connection point data_in_ch_out
# 
add_interface data_in_ch_out avalon_streaming start
set_interface_property data_in_ch_out associatedClock clock_sink
set_interface_property data_in_ch_out associatedReset reset_sink
set_interface_property data_in_ch_out dataBitsPerSymbol 8
set_interface_property data_in_ch_out errorDescriptor ""
set_interface_property data_in_ch_out firstSymbolInHighOrderBits true
set_interface_property data_in_ch_out maxChannel 31
set_interface_property data_in_ch_out readyLatency 0
set_interface_property data_in_ch_out ENABLED true
set_interface_property data_in_ch_out EXPORT_OF ""
set_interface_property data_in_ch_out PORT_NAME_MAP ""
set_interface_property data_in_ch_out CMSIS_SVD_VARIABLES ""
set_interface_property data_in_ch_out SVD_ADDRESS_GROUP ""

add_interface_port data_in_ch_out dico_valid valid Output 1
add_interface_port data_in_ch_out dico_ready ready Input 1
add_interface_port data_in_ch_out dico_startofpacket startofpacket Output 1
add_interface_port data_in_ch_out dico_endofpacket endofpacket Output 1
add_interface_port data_in_ch_out dico_channel channel Output 5


# 
# connection point ch_in_data_out
# 
add_interface ch_in_data_out avalon_streaming start
set_interface_property ch_in_data_out associatedClock clock_sink
set_interface_property ch_in_data_out associatedReset reset_sink
set_interface_property ch_in_data_out dataBitsPerSymbol 2
set_interface_property ch_in_data_out errorDescriptor ""
set_interface_property ch_in_data_out firstSymbolInHighOrderBits true
set_interface_property ch_in_data_out maxChannel 0
set_interface_property ch_in_data_out readyLatency 0
set_interface_property ch_in_data_out ENABLED true
set_interface_property ch_in_data_out EXPORT_OF ""
set_interface_property ch_in_data_out PORT_NAME_MAP ""
set_interface_property ch_in_data_out CMSIS_SVD_VARIABLES ""
set_interface_property ch_in_data_out SVD_ADDRESS_GROUP ""

add_interface_port ch_in_data_out cido_ready ready Input 1
add_interface_port ch_in_data_out cido_data data Output 2
add_interface_port ch_in_data_out cido_valid valid Output 1

