#!/bin/bash

source config.sh


if [[ -a found.list ]] ; then
   for i in  $(cat found.list) ; do
     cd render_scripts/job$i &&
     $script_run_command  run_$i.sh   &&
     cd ../..
   done
fi


