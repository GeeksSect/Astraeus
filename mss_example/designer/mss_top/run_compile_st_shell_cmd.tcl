save
set has_violations {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\mss_top_pre_layout_has_violations}
set fp [open $has_violations w]
puts $fp [has_violations -short]
close $fp
report -type combinational_loops -format xml {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\mss_top_combinational_loops.xml}
if { [catch "file delete -force -- {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\pinslacks.txt}"] } {
   ;
}
report -type slack {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\pinslacks.txt}
