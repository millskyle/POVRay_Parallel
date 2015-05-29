



#Script to compose the image into a single image

files=''

first=$(ls tiles/tile*.tga | head -1)

cp $first output.tga
convert -transparent black output.tga output_tmp.tga
mv output_tmp.tga output.tga

echo -n "Merging:"

for i in $(ls tiles/tile*.tga); do
   echo -n " "$( sed 's|.tga||' <<< "$i" | sed 's|\/tile_||' | sed 's|tiles||')
   convert -transparent black $i ${i}_tmp.tga 
   composite -compose lighten output.tga ${i}_tmp.tga output.tga 
   rm ${i}_tmp.tga
done

echo ""

