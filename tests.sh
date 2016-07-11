#!/bin/bash
# A bunch of different configurations to try to see which ones look the best.
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


mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=5:turbo:nochroma_me:vhq=0 -oac mp3lame -really-quiet -endpos 00:00:15 -o no_filters.avi

# This is the one I chose 
mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=5:turbo:nochroma_me:vhq=0 -oac mp3lame -vf pp=fd -endpos 00:00:15 -o vf_pp_fd.avi

mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=5:turbo:nochroma_me:vhq=0 -oac mp3lame -vf pp=lb -really-quiet -endpos 00:00:15 -o vf_pp_lb.avi

mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=5:turbo:nochroma_me:vhq=0:interlacing -oac mp3lame -endpos 00:0:15 -o interlaced.avi

mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=5:turbo:nochroma_me:vhq=0:trellis:interlacing -oac mp3lame -endpos 00:00:15 -o trellis_interlaced.avi

mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=5:turbo:trellis:interlacing:nochroma_me:vhq=0 -oac mp3lame -endpos 00:00:15 -o trellis_interlaced_reordered.avi

mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=5:trellis:interlacing:nochroma_me:vhq=0 -oac mp3lame -endpos 00:00:15 -o trellis_interlaced_reordered_no_turbo.avi

mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=1:turbo:nochroma_me:vhq=0:interlacing -oac mp3lame -endpos 00:0:15 -o interlaced1.avi

mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=2:turbo:nochroma_me:vhq=0:interlacing -oac mp3lame -endpos 00:0:15 -o interlaced2.avi

mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=3:turbo:nochroma_me:vhq=0:interlacing -oac mp3lame -endpos 00:0:15 -o interlaced3.avi

mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=4:turbo:nochroma_me:vhq=0:interlacing -oac mp3lame -endpos 00:0:15 -o interlaced4.avi

mencoder tv:// -tv driver=v4l2:norm=NTSC:width=720:height=480:outfmt=uyvy:device=/dev/video0:input=0:fps=30:buffersize=256:alsa:amode=1:forcechan=1:audiorate=48000:adevice=hw.0,0:forceaudio -msglevel mencoder=1 -ovc xvid -xvidencopts fixed_quant=5:turbo:nochroma_me:vhq=0:interlacing -oac mp3lame -endpos 00:0:15 -o interlaced5.avi
