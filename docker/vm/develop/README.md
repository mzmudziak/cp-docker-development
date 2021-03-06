Developing Zen with the Virtual Machine
=======================================

There is the option to [have a virtual machine run Zen and write the code in it](../../../). In contrast to that, the focus here is on having a virtual machine run Zen and working on the host system.

This should be as easy as

1. Make sure you have [VMWare Player](https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_workstation_player/12_0) or [Virtual Box](http://virtualbox.org/) or some other software installed that is able to run virtual machines.
2. [Download a VM](https://github.com/niccokunzmann/cp-docker-development/releases) "boot2zen". 
3. When starting the VM, you land in a linux shell. Here you execute the command `start_zen_bash`. This command takes a long time loading the images from [dockerhub](https://hub.docker.com/u/coderdojo/). 
4. After a long while, the IP addresses are printed to the screen. In the same moment you are in the shell in the `zen` docker container. 
5. To find out the right IP address, pick one that seems likely and open a Windows File Share "Samba".
    - Under Windows, open an explorer window and type into the address bar `\\`, then the IP address and press Enter. You should be able to see a folder with the contents that you have in the shell in the vm. You can also create a drive with this folder if you go to "Computer" and add click "Map network dive".
    - Under OSX
        1. Goto Go|Connect to Server in Finder.
        2. Enter "cifs://", then the IP address.
        3. Hit the "Connect" button.
        4. Select the volumes you want to mount.
        5. choose the "Guest" radiobox and connect.
    - On Linux you can use the command line `mount -t cifs //IPADDRESS/user_src_app_cp-local-development /mnt/code -o username=guest"` or navigate to the host similar to Windows and OSX in the file browser.

6. Now that you know the IP address, run `./localdev.js run zen` to start the zen service. Then, open a web browser and navigate to the IPAddress with Port 8000. If the IP address were `192.168.60.163`, you open the site `192.168.60.163:8000`. The [coder dojo website](http://zen.coderdojo.com) should look similar.

7. If you do not want to work on the virtual machine's command line, you can also use ssh.
    - Under Linux, you can use `ssh docker@192.168.60.163`.
    - Under Windows you can [download Putty](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) and connect to the IP at port 22 using SSH.
    
    Username: `docker`  
    Password: `tcuser`  
    See [boot2docker](https://github.com/boot2docker/boot2docker/#ssh-into-vm) for more infrmation on this.

How to Develop
--------------

You have the code mapped to a location on your host. You can change the source code. Also, you can run the zen service. `boot2zen` is based on `boot2docker` which is based on [Tiny Core Linux](http://www.tinycorelinux.net/) which is not persistent. The downloadable version of boot2zen as a virtual machine has a hard drive attached with a partition named "boot2docker-data" which is mounted and saves

- boot2docker information
- docker containers and images
- after you executed `start_zen_bash`, the /data/code directory with the source code

Changes to any other files and folders will be lost after reboot - either suspend or read about tinycorelinux' persistance.

Having the VM set up shortens setup time but still, you need to know what to do. This VM installation is based on the [Ubuntu Docker installation](../../ubuntu). Read further [here](../../ubuntu/develop).

Useful commands
---------------

- in boot2docker
  - `vi` is the editor [vim](http://vim.org) to edit files
  - you can install `nano` with `tce-load -wi nano`
  - `ip addr` to show the IP addresses
  - `udhcpc` to get a new IP address after the virtual machine is restored form sleep
  - `start_zen_bash` to start the docker image in the zen container and enter the bash
- zen bash
  - See [../../ubuntu/develop](../../ubuntu/develop/README.md#useful-commands)

What is going on
----------------

When you run `start_zen_bash` several thing happen:

- The [`coderdojo/zen`](https://hub.docker.com/r/coderdojo/zen/) image is pulled, along with its dependencies.
- The image contains a volume into which the [`cp-local-develoment`](https://github.com/CoderDojo/cp-local-development) repository is copied.
- Once the `zen` container runs, [`niccokunzmann/samba-share`](https://hub.docker.com/r/niccokunzmann/samba-share/) shares the content of the repository.
- You land in a bash shell in the repository folder, ready to go. Whenever you `exit` it, the content will be committed.


