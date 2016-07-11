#!/bin/bash
# Records directly to an AVI file.
# Copyright (C) 2017 Ray Canzanese
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>. 

if [ $# -lt 2 ] ; then
    echo "./record.sh time output"
    echo " - time should be in format HH:MM:SS"
    echo " - output should be avi"
    exit 0 
fi

TIME=$1
OUTPUT=$2

# Mencoder
mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=1024:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=5:turbo:nochroma_me:vhq=0 -oac mp3lame -vf pp=fd -endpos $1 -o "$2"

