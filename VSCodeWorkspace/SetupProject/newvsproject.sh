#!/bin/sh
# Author:Timothy Tsui

# Enter the location of the folder where you store your projects, replace '~' with '.'
TMD_NVP_PATH='./GitRepo/VSCodeWorkspace'


echo 'Here are the availiable projects'
cd ~
TMD_NVP_FILE=$(ls $TMD_NVP_PATH)
TMD_NVP_COUNT=1
TMD_NVP_OPEN='ha'
for filename in $TMD_NVP_FILE
do
   printf "%s\n" "$TMD_NVP_COUNT.$filename"
   TMD_NVP_COUNT+=1
done

echo 'Which project do you want to copy from?'
read TMD_NVP_LOCATION
TMD_NVP_COUNT=1
for filename in $TMD_NVP_FILE
do
   if [ $TMD_NVP_COUNT == $TMD_NVP_LOCATION ]; then
   #printf "The number you chose is %d" "$TMD_NVP_LOCATION"
   TMD_NVP_OPEN=$filename
   fi
   TMD_NVP_COUNT+=1
done
echo 'Please Name Your new Project'
read TMD_NVP_NNAME
cd $TMD_NVP_PATH
mkdir $TMD_NVP_NNAME
cp -rp ./$TMD_NVP_OPEN/.vscode ./$TMD_NVP_NNAME/