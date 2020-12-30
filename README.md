# Realtek RTL88x2B USB Software Package - Linux Driver #

This is the driver source code of the Realtek 88x2bu linux driver, adapted for Debian 10. 

Software Version: RTL88x2B USB Linux Driver Version: v5.3.1_27678.20180430_COEX20180427-5959

I fixed some minor compile issues, to get it working for a Carantee WiFi
adapter USB 3.0 from Shenzhan Yichenglia Technology Co. Ltd on a Debian
10.7 system. 

The software is under copyright(c) 2007 - 2017 Realtek Corporation:

    /******************************************************************************
    *
    * Copyright(c) 2007 - 2017 Realtek Corporation.
    *
    * This program is free software; you can redistribute it and/or modify it
    * under the terms of version 2 of the GNU General Public License as
    * published by the Free Software Foundation.
    *
    * This program is distributed in the hope that it will be useful, but WITHOUT
    * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
    * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
    * more details.
    *
    *****************************************************************************/
    
This version of the driver came on a CDROM with the Carantee WiFi adapter USB 3.0 from
Shenzhan Yichenglia Technology Co. Ltd.

Unfortunately the code didn't build for my Debian 10.7. So I fixed a minor compile issue and added a simple `install.sh` .

## Installation ##

After cloning the git repository run:

    ./install.sh
    
That should perform a build and installation. Or you can call the single steps:

    make
    sudo make install
    sudo modprobe 88x2bu

To clean up:

    make clean
    
If you had already installed the driver, before the next installation you want to run:

    modprobe -r 88x2bu
    
That will remove the already installed firmware from the kernel and
make sure, the new firmware will be loaded.

After installation, you can see your WiFi USB device:

    sudo iw dev
    
    phy#3
	    Interface wlx0013eff21d2f
		    ifindex 9
		    wdev 0x300000001
		    addr c6:60:9e:2f:1a:9f
		    type managed
		    txpower 12.00 dBm

