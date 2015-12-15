Create a bootable Zen VM for development
========================================

Building the virtual machine has several steps. First, you need to create the iso file, secondly, you need a virtual machine. This is done under **Ubuntu**. Make sure you [installed docker](../../ubuntu).

Creating the ISO File
---------------------

1. Building the iso file is done via the [coderdojo/boot2zen](https://hub.docker.com/r/coderdojo/boot2zen/) container.

    - If you changed files in [../../docker/boot2zen](../../docker/boot2zen) you need to run [`01_build_boot2zen.sh`](./01_build_boot2zen.sh). 
        It creates the boot2zen container.
    - Else, if you did not change anything since the last upload to [coderdojo/boot2zen](https://hub.docker.com/r/coderdojo/boot2zen/), you can pull the image using [`01_pull_boot2zen.sh`](./01_pull_boot2zen.sh)

2. [`02_create_iso.sh`](./02_create_iso.sh) creates the iso file `boot2zen.iso`. If you want to transfer it to another computer you can do `python -m SimpleHTTPServer`, which starts a Website at your IP and port 8000.

3. If you want to upload the new `coderdojo/boot2zen` container, you can do that via `03_push_boot2zen.sh`. This allows others to skip the build step in 1.

Creating the VM
---------------

Creating a virtual machine reduces the setup time of developers.

### Modifying the virtual Machine

This will spare you the steps from the following section.

1. Download the VM from [previous releases](https://github.com/niccokunzmann/cp-docker-development/releases).
2. Replace the `boot2zen.iso` file.
3. Create a release using `git tag VERSION` and `git push origin VERSION`. Upload the files as compressed archive.

### Creating the Virtual Machine From Scratch

Creating the new virtual machine means formatting a virtual hard drive for boot2docker and after this adding `boot2docker.iso` as 

1. You can create a new virtual machine using [Virtual Box](http://virtualbox.org/) or [VMWare Player](https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_workstation_player/12_0) or any other tool.
2. Add an [Ubuntu iso](http://www.ubuntu.com/download/desktop) file to boot from or anything else with the [`gparted`](http://gparted.sourceforge.net/) program. And, add a hard-drive of at least 4 GB.
3. When you go through the dialogs, make sure that Ubuntu is not getting installed. VMWare does this automatically. Instead choose a not to install Ubuntu. We only need `gparted`.
4. When booting choose to try out Ubuntu.
5. Open a [Terminal Window](https://help.ubuntu.com/community/UsingTheTerminal).
6. Execute `sudo gparted`.
7. Since the disk is empty, create a new partition table. Device→...
8. Create a `linux-swap` partition.
9. Create an `ext4` partition with label `boot2docker-data`. ([Explanation](https://github.com/boot2docker/boot2docker#persist-data))
10. Write the changes to disk.
11. Shutdown.
12. Copy the `boot2zen.iso` to the VM. Change to content of the virtual CD-drive to the `boot2zen.iso`.
13. When rebooting it may not boot. Try rebooting until you can enter the BIOS setup and change the boot order to prefer CD over hard drive.
14. When this VM boots, it is really small. Turn it off and make a copy before you it gets bigger by running docker commands.
15. Create a release using `git tag VERSION` and `git push origin VERSION`. Upload the files as compressed archive.

Sources
-------

- build: https://github.com/boot2docker/boot2docker/blob/master/doc/BUILD.md
- sharing files: https://github.com/boot2docker/boot2docker#folder-sharing
- persisting data: https://github.com/boot2docker/boot2docker#persist-data

