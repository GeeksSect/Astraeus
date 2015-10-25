set_defvar -name {SPEED}   -value {STD}
set_defvar -name {VOLTAGE} -value {1.2}
set_defvar -name {TEMPR}   -value {COM}
set_defvar -name {PART_RANGE}   -value {COM}
set_defvar -name {IO_DEFT_STD} -value {LVCMOS33}
set_defvar -name {PACOMP_PARPT_MAX_NET} -value {10}
set_defvar -name {RESTRICTPROBEPINS} -value {1}
set_defvar -name {PDC_IMPORT_HARDERROR} -value {1}
set_defvar -name {PA4_IDDQ_FF_FIX} -value {1}
set_defvar -name {BLOCK_PLACEMENT_CONFLICTS} -value {ERROR}
set_defvar -name {BLOCK_ROUTING_CONFLICTS} -value {LOCK}

set_compile_info \
    -category {"Device Selection"} \
    -name {"Family"} \
    -value {"SmartFusion2"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Device"} \
    -value {"M2S010"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Package"} \
    -value {"144 TQ"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Speed Grade"} \
    -value {"STD"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Temp"} \
    -value {"0:25:85"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Voltage"} \
    -value {"1.26:1.20:1.14"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Core Voltage"} \
    -value {"1.2V"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Ramp Rate"} \
    -value {"100ms Minimum"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"System Controller Suspend Mode"} \
    -value {"No"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"PLL Supply Voltage"} \
    -value {"3.3V"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Default I/O technology"} \
    -value {"LVCMOS 3.3V"}
set_compile_info \
    -category {"Device Selection"} \
    -name {"Restrict Probe Pins"} \
    -value {"Yes"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Topcell"} \
    -value {"mss_top"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Format"} \
    -value {"EDIF"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Source"} \
    -value {"C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\synthesis\mss_top.edn"}
set_compile_info \
    -category {"Source Files"} \
    -name {"Source"} \
    -value {"C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\constraint\io\mss_top.io.pdc"}
set_compile_info \
    -category {"Options"} \
    -name {"Merge User SDC file(s) with Existing Timing Constraints"} \
    -value {"true"}
set_compile_info \
    -category {"Options"} \
    -name {"Abort Compile if errors are found in PDC file(s)"} \
    -value {"true"}
set_compile_info \
    -category {"Options"} \
    -name {"Enable Design Separation Methodology"} \
    -value {"false"}
set_compile_info \
    -category {"Options"} \
    -name {"Limit the number of high fanout nets to display to"} \
    -value {"10"}
compile \
    -desdir {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top} \
    -design mss_top \
    -fam SmartFusion2 \
    -die PA4M1000_N \
    -pkg tq144 \
    -pdc_file {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\constraint\io\mss_top.io.pdc} \
    -merge_pdc 0
