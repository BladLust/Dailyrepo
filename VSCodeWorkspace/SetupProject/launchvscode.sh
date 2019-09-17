#!/bin/sh

# Enter the location of the folder where you store your projects, replace '~' with '.'
TMD_LVC_PATH='./GitRepo/VSCodeWorkspace'
TMD_LVC_OUTNAME='default'

# Author: Timothy Tsui
echo 'Here are the availiable projects'
cd ~
TMD_LVC_FILE=$(ls $TMD_LVC_PATH)
TMD_LVC_COUNT=1
TMD_LVC_OPEN='ha'
for filename in $TMD_LVC_FILE
do
   printf "%s\n" "$TMD_LVC_COUNT.$filename"
   TMD_LVC_COUNT=$[$TMD_LVC_COUNT+1]
done

echo "Which project do you want to open? Input the list number:"
read TMD_LVC_LOCATION
TMD_LVC_COUNT=1
for filename in $TMD_LVC_FILE
do
   if [ $TMD_LVC_COUNT == $TMD_LVC_LOCATION ]; then
   #printf "The number you chose is %d" "$TMD_LVC_LOCATION"
   TMD_LVC_OPEN=$filename
   fi
   TMD_LVC_COUNT=$[$TMD_LVC_COUNT+1]
done
echo 'Opening Project at...'
printf "%s" $TMD_LVC_PATH/$TMD_LVC_OPEN
cd $TMD_LVC_PATH/$TMD_LVC_OPEN
code .
