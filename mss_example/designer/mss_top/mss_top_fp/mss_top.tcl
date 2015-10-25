open_project -project {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\mss_top_fp\mss_top.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2S010} \
    -fpga {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\mss_top.map} \
    -dca {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\mss_top.dca} \
    -header {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\mss_top.hdr }  \
    -spm {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\mss_top.spm} 
set_programming_file -name {M2S010} -no_file
save_project
close_project
