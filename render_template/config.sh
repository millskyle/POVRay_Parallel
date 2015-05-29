#!/bin/bash


#Image output properties
export img_height=1080
export img_width=1920

#Skeleton for the 'submit script' that EACH render will run.
export submit_script_skeleton='script_skeletons/grex_on_demand.sh'




export script_run_command='bash '
#script_run_command='qsub '
export povray_command='/home/kmills/bin/povray-compat '
export povray_flags=' +FT -D '









