set_device \
    -family  SmartFusion2 \
    -die     PA4M1000_N \
    -package tq144 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def NETLIST_TYPE EDIF
set_name top
set_workdir {C:\Users\kruci_000\Desktop\SoC\i2c\Quadra\designer\top}
set_log     {C:\Users\kruci_000\Desktop\SoC\i2c\Quadra\designer\top\top_sdc.log}
set_design_state pre_layout
