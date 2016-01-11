save
set has_violations {C:\Users\kruci_000\Desktop\SoC\git\Wall-e\Wall-e\designer\MSS_top\MSS_top_pre_layout_has_violations}
set fp [open $has_violations w]
puts $fp [has_violations -short]
close $fp
report -type combinational_loops -format xml {C:\Users\kruci_000\Desktop\SoC\git\Wall-e\Wall-e\designer\MSS_top\MSS_top_combinational_loops.xml}
if { [catch "file delete -force -- {C:\Users\kruci_000\Desktop\SoC\git\Wall-e\Wall-e\designer\MSS_top\pinslacks.txt}"] } {
   ;
}
report -type slack {C:\Users\kruci_000\Desktop\SoC\git\Wall-e\Wall-e\designer\MSS_top\pinslacks.txt}
