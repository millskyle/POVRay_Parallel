##Script Skeleton directory


This directory contains the "submit script" for executing POVRay.  Think of this as a template, where the tile-specific commands will be inserted for each individual tile.

There are three special tags that you can use in this file which will be replaced when make_jobs sources this file:

###!!!COUNT!!!  (optional)
This will be replaced with a number indicating which tile this is.  Since there are 100 tiles, any instances of !!!COUNT!!! will be replaced with a number between 1 and 100, inclusively.  This means that !!!COUNT!!! could be 1, 2 or three digits long.


###!!!INPUTFILE!!! (optional)
This will be replaced with the input file (or more correctly, the parameter passed to the make_jobs script).  This is useful when submitting multiple renders to a cluster, to keep track of which renders belong to which image.


###!!!POVRAY_COMMAND!!!
This is a mandatory tag that will be replaced with the command to actually execute povray.  Without this tag, POVRay will never be executed.  Include this where ever you would naturally execute POVRay in the template.




