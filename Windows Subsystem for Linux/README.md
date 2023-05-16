# WSL
## In order to use WSL as your build environment you will need to follow these steps:
In a PowerShell or cmd console ( as Admin ) run the following commands: 
**
1 ) Enable the Windows Subsystem for Linux:
  - dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

2 ) Enable Virtual Machine feature:
  - dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

3 ) Download & install the Linux kernel update package:
  - The latest release can be found here: https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi

4 ) Set WSL 2 as your default version:
  - wsl --set-default-version 2

5 ) Install Ubuntu 18.04 Linux distro:
  - run the "setup-wsl-ubuntu.bat" script that can be found in *"Android-Development-Tools/Windows Subsystem for Linux/Scripts/"
**
