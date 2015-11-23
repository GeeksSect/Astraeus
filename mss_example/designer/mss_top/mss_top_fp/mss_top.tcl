open_project -project {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\mss_top_fp\mss_top.pro}
set_programming_file -name {M2S010} -file {C:\Users\kruci_000\Desktop\SoC\git\Astraeus\mss_example\designer\mss_top\mss_top.ipd}
enable_device -name {M2S010} -enable 1
set_programming_action -action {PROGRAM} -name {M2S010} 
run_selected_actions
set_programming_file -name {M2S010} -no_file
save_project
close_project
