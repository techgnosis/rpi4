If you want headless Raspberry Pi OS, there are a few steps you need to do if you don't user the Imager tool. The Imager tool requires Rosetta on macOS and requires a lot of QT libraries on Linux, and that can turn some people off of using Imager, like myself.

1. Make a file called `ssh` in the root of the boot partition to enable SSH
2. Newer versions of Raspberry Pi OS do not have a default username and password anymore. You need to make a file called `userconf` in the root of the boot partition. Inside the file you need `username:<encrypted password>`. Look at userconf-setup.sh to see how to do this.