# vhs_digitizer
Scripts for digitizing VHS tapes originally written for F23

Make sure you cutomise the script to make sure it is pointing at the right video and audio devices.  To determine which video device is mounted at which mount point, try 

```
for d in /sys/class/video4linux/video* ; do echo "/dev/$(basename $d) -- $(cat $d/name)" ; done
```

To get the device and input numbers, try 

```
arecord -l
``` 

Also, make sure you have installed all the prerequsites. In Ubuntu 19.10:

```
sudo apt-get install -y ubuntu-restricted-extras
```

Finally, if you get 

```
Selected input hasn't got a tuner!
Error opening audio: Device or resource busy
```

Check to make sure pulseaudio isn't using that input as the primary input device. Check the ubuntu sound settings or pavucontrol to make sure that the device you want to use isn't selected there.
