new_project \
         -name {MSS_top} \
         -location {C:\Users\kruci_000\Desktop\SoC\git\Wall-e\Wall-e\designer\MSS_top\MSS_top_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S010} \
         -name {M2S010}
enable_device \
         -name {M2S010} \
         -enable {TRUE}
save_project
close_project
