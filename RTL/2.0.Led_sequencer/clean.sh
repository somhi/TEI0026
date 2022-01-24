find output_files/  -type f -not -name '*.sof' -delete
find software/spl_bsp/ -type f -not -name '*.bin' -delete
#rm -rf output_files
#rm -rf software
rm -rf soc_hps
rm -rf soc_system
rm -rf db
rm -rf incremental_db
rm -rf hps_isw_handoff
rm -rf .qsys_edit
rm -f *.rpt
rm -f *.tcl~
rm -f *.csv
rm -f *.qws
rm -f *.rbf
rm -f *.sopcinfo
rm -f c5_pin*.txt
rm -f hps_sdram_p0*.*
rm -f *.bak
rm -f rtl/*.bak
rm -f V/*.bak

