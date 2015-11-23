save
set has_violations {C:\Users\kruci_000\Desktop\SoC\i2c\Quadra\designer\top\top_pre_layout_has_violations}
set fp [open $has_violations w]
puts $fp [has_violations -short]
close $fp
report -type combinational_loops -format xml {C:\Users\kruci_000\Desktop\SoC\i2c\Quadra\designer\top\top_combinational_loops.xml}
if { [catch "file delete -force -- {C:\Users\kruci_000\Desktop\SoC\i2c\Quadra\designer\top\pinslacks.txt}"] } {
   ;
}
report -type slack {C:\Users\kruci_000\Desktop\SoC\i2c\Quadra\designer\top\pinslacks.txt}
