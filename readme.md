If you want headless Raspberry Pi OS, there are a few steps you need to do if you don't user the Imager tool. The Imager tool requires Rosetta on macOS and requires a lot of Qt libraries on Linux, and that can turn some people off of using Imager, like myself.

1. Make a file called `ssh` in the root of the boot partition to enable SSH
2. Newer versions of Raspberry Pi OS do not have a default username and password anymore. You need to make a file called `userconf` in the root of the boot partition. Inside the file you need `username:<encrypted password>`. Look at userconf-setup.sh to see how to do this.
3. Add `cgroup_memory=1 cgroup_enable=memory` to the end of `/boot/cmdline.txt`
    * If you try and install K3s without modifying `/boot/cmdline.txt` you will hit the following error:  
`[INFO]  Failed to find memory cgroup, you may need to add "cgroup_memory=1 cgroup_enable=memory" to your linux cmdline (/boot/cmdline.txt on a Raspberry Pi)`
