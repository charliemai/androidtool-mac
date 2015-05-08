#!/bin/sh

#  convertMovieFiletoGif.sh
#  AndroidTool
#
#  Created by Morten Just Petersen on 5/7/15.
#  Copyright (c) 2015 Morten Just Petersen. All rights reserved.

thisdir=$1
inputFile=$3
outputFile=$4


TakeScreenshot(){
    $thisdir/ffmpeg -i $inputFile -vf scale=320:-1 $outputFile
}

mkdir -p ~/Desktop/AndroidTool
cd ~/Desktop/AndroidTool
TakeScreenshot