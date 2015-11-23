new_project \
         -name {mss_top} \
         -location {C:\Users\kruci_000\Desktop\SoC\mss_cemetery\mss_example\designer\mss_top\mss_top_fp} \
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
