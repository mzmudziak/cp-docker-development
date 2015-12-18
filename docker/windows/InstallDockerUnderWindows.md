Installing Docker under Windows
===============================

1. Remove all existing Host-Only Adapters in the GUI of VirtualBox
2. Uninstall VirtualBox
- Reboot
- Install most recent release of VirtualBox
- Install Docker Toolbox(without installing VirtualBox, which is included)
- Open PowerShhttps://github.com/niccokunzmann/cp-docker-development/edit/master/docker/windows/InstallDockerUnderWindows.md#ell or cmd 
- Run `docker-machine -D create <name_of_your_machine> -d virtualbox`
- If you get this error: VBoxManage.exe: error: Code E_INVALIDARG (0x80070057) - One or more arguments are invalid (extended info not available)
    1. go to Network and Sharing Center
    2. go to change adapter settings
    - rightclick the Host-Only adapter that was created for your vm recently
    - go to Properties
    - check the checkbox for VirtualBox NDIS6 Bridged Networking Driver
    - go back to your shell and try running: `docker-machine -D start <name_of_your_machine>`
- run `docker-machine env <name_of_your_machine> --shell powershell|cmd`
- copy paste the commands or paste the command printed
- run `docker version`
- If you get information for docker server and client everything is fine 


For example my output of `docker version`:

     Client:
      Version:      1.9.1
      API version:  1.21
      Go version:   go1.4.3
      Git commit:   a34a1d5
      Built:        Fri Nov 20 17:56:04 UTC 2015
      OS/Arch:      windows/amd64

     Server:
      Version:      1.9.1
      API version:  1.21
      Go version:   go1.4.3
      Git commit:   a34a1d5
      Built:        Fri Nov 20 17:56:04 UTC 2015
      OS/Arch:      linux/amd64
      
      
Each time you restart the VM, its ip may change. Therefore rerun Steps 9.-12. to set environment variables again.
