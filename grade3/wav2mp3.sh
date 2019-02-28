#!/bin/sh 
# 
# file : wav2mp3.sh 

# this is for debugging 
#PATH="."

#dest dir
#YEAR=`date +%y`
#MON=`date +%m`
#DAY=`date +%d`

#cd $PATH 
# Transfer the files that been made 2 min ago. 
for WAV in `ls ./wav | tr " " "\?"`
do 
echo "Encoding MP3 file from $WAV ..." 
#OUT=${WAV%.*} 
lame --silent -b 16 -m m -q 9-resample --tt wav/$WAV --add-id3v2 wav/$WAV mp3/$WAV.mp3 
#test -s ./$YEAR-$MON/$DAY/$OUT.mp3 && rm -f $OUT.wav 
done 
#end


