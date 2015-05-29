#!/bin/bash

if [[ -a found.list ]] ; then
   for i in  $(cat found.list) ; do
     cd render_scripts/job$i &&
     qsub  run_$i.sh   &&
     cd ../..
   done
fi


