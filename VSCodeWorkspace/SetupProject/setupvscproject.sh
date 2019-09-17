#!/bin/sh
# Author:Timothy Tsui

# Enter the location of the folder where you store your projects, replace '~' with '.'
TMD_SVP_ABSPATH='/Users/timothy.tsui/GitRepo/VSCodeWorkspace'
TMD_SVP_PATH='./GitRepo/VSCodeWorkspace'


echo 'Here are the availiable projects'
TMD_SVP_FILE=$(ls $TMD_SVP_ABSPATH)
TMD_SVP_COUNT=1
TMD_SVP_OPEN='ha'
for filename in $TMD_SVP_FILE
do
   printf "%s\n" "$TMD_SVP_COUNT.$filename"
   TMD_SVP_COUNT+=1
done

echo 'Which project do you want to copy from?'
read TMD_SVP_LOCATION
TMD_SVP_COUNT=1
for filename in $TMD_SVP_FILE
do
   if [ $TMD_SVP_COUNT == $TMD_SVP_LOCATION ]; then
   #printf "The number you chose is %d" "$TMD_SVP_LOCATION"
   TMD_SVP_OPEN=$filename
   fi
   TMD_SVP_COUNT+=1
done
cp -rp $TMD_SVP_ABSPATH/$TMD_SVP_OPEN/.vscode ./