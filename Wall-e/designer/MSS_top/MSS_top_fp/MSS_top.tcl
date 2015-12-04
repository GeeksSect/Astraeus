open_project -project {C:\Users\kruci_000\Desktop\SoC\git\Wall-e\Wall-e\designer\MSS_top\MSS_top_fp\MSS_top.pro}
set_programming_file -name {M2S010} -file {C:\Users\kruci_000\Desktop\SoC\git\Wall-e\Wall-e\designer\MSS_top\MSS_top.ipd}
enable_device -name {M2S010} -enable 1
set_programming_action -action {PROGRAM} -name {M2S010} 
run_selected_actions
set_programming_file -name {M2S010} -no_file
save_project
close_project
