
#POVRay Parallel

##What is this?
This set of scripts aids in speeding up large, computationally intense POVRay renders by splitting the rendering up into 100 separate tiles which can then be rendered by separate processes, either on entirely different computers, or on separate nodes in a cluster.  


##Workflow:

The actual configuration is explained in the README within the render_template/ directory, so here I will summarize the workflow that I use:

1. Create a "script skeleton" which is the script that will be executed to initiate the rendering of each tile.  Include in this script any environment variables that need initiated, or any submit script content for clusters.

2. Edit configuration file (config.sh).  Set options that apply to all tiles, such as (total) image height, path to povray executable, which script skeleton to use, the command to be used to execute the script skeleton, etc.

3. Run the make_jobs script to generate the 100 separate jobs.

4. Run the runAll.sh script to run all of the selected jobs.

5. After rendering, run the compose.sh script to combine the 100 separate output images (in tiles/ directory) into one image called output.tga.  This is your output image.









