#!/bin/bash

rm found.list


for i in {1..100} ; do
   if [[ -a "tiles/tile_${i}.tga" ]] || [[ -a "tiles/tile_${i}.pov-state" ]] ; then
      echo -n ""
   else
      echo "$i"
      echo -n "$i " >> found.list
   fi
done


