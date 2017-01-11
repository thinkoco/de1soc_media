# DE1SOC_Linux_Media
## Clone the Hardware Project and Linux source code
1.Hardware

	git clone https://github.com/thinkoco/de1soc_media.git
or

	git clone https://git.oschina.net/thinkoco/de1soc_media.git
2.Linux

	git clone https://github.com/thinkoco/linux-socfpga.git
or

	git clone https://git.oschina.net/thinkoco/linux-socfpga.git
	cd linux-socfpga
	git checkout -b de1soc_audio origin/socfpga-3.17_audio

## Compile Hardware Project
Install Quartus II On Linux ,these may be help for you.
[USB Blaster II on Linux](https://rocketboards.org/foswiki/view/Documentation/UsingUSBBlasterUnderLinux)
[Installing DS-5 on "Unsupported" Linux Distros](https://rocketboards.org/foswiki/view/Documentation/InstallingDS5OnUnsupportedLinuxDistros)

1.add the 'ip/i2s' Path to the ip library in Qsys
Open the Hardware project in de1soc_media 

	Open Qsys-->Tools-->IP Search Path-->Add,add the 'xxxx/ip/i2s' path
2.Compile the Qsys 

	Open the soc_system.qsys,Click 'Generate HDL'	
3.Compile project

	Click the 'Start Compilation'
4.Convert programming files,in shell run the command

	quartus_cpf -c DE1_SOC_Linux_Audio.sof soc_system.rbf
	need the "quartus_cpf" path in PATH environment

## Generate uboot.img and PreloaderWithHeader.img
1.run altera embedded command shell

	~/altera/14.1/embedded/embedded_command_shell.sh
2.Generate Bsp and Uboot

	bsp-editor&
According to the steps [Generating and Compiling the Preloader](https://rocketboards.org/foswiki/view/Documentation/GSRD131Preloader#Compiling_the_Preloader)
3.make bsp and uboot

	cd to 'project path'/software/spl_bsp/
	make -j4
	cd to'project path'/software/spl_bsp/uboot-socfpga/
	make
4.generate preloader_with_header.img

	copy the u-boot-spl.bin form 'software/spl_bsp/uboot-socfpga/spl' to 'software/spl_bsp'
	cd to 'project path'/software/spl_bsp/
	mkpimage -o preloader_with_header.img u-boot-spl.bin -hv 0

| Image                     | path                           | Description   |
| :------------------------ |:------------------------------ | ------------- |
| preloader_with_header.img | software/spl_bsp               | preloader     |
| u-boot.img                | software/spl_bsp/uboot-socfpga | u-boot        |

## Write the uboot Image to SD Card
Write Terasic [de1soc\_ubuntu\_1604.img](http://www.terasic.com/downloads/cd-rom/de1-soc/linux_BSP/de1soc_ubuntu_1604.zip) to SD Card
on Linux PC,Check which disk is your SD card.Change the ***sdX*** according to your situation.

	sudo dd if=preloader_with_header.img of=/dev/sdX3 bs=64k seek=0
	sudo dd if=u-boot.img of=/dev/sdX3 bs=64k seek=4
	sudo sync

## add Tool Chain to Path 
about Path environment，Write the following to **env.sh** file,change paths for your situation.

	#!/bin/bash
	export ARCH=arm
	export CROSS_COMPILE=/home/tank/app/gcc-linaro-arm-linux-gnueabihf-4.9-xxxxxxxx/bin/arm-linux-gnueabihf-
	export LOADADDR=0x8000
	export QUARTUS_ROOTDIR=~/altera/14.1/quartus
	export ALTERAOCLSDKROOT=~/altera/14.1/hld
	export PATH=$PATH:${QUARTUS_ROOTDIR}/bin:${ALTERAOCLSDKROOT}/linux64/bin:${ALTERAOCLSDKROOT}/bin:~/altera/14.1/embedded/ds-5/bin
	export LD_LIBRARY_PATH=${ALTERAOCLSDKROOT}/linux64/lib
	export AOCL_BOARD_PACKAGE_ROOT=${ALTERAOCLSDKROOT}/board/terasic/de1soc
	export QUARTUS_64BIT=1
	export LM_LICENSE_FILE=~/altera/license.dat
	export PATH=$PATH:/home/tank/app/gcc-linaro-arm-linux-gnueabihf-4.9-xxxxxxxx/bin

## Build zImage and Device Tree

	source env.sh
	cd to linux-socfpga
	cp Linux_config .config
	make zImage
	make socfpga_audio.dtb

Also, you can build the zImage and dtb on Win 10 Linux Subsystem or Cygwin.

## Copy The rbf zImage dtb to SD Card FAT Partition
| Image                     | rename     | Description   |
| :----------------- |:----------------- | ------------- |
| zImage             | zImage            |               |
| socfpga_audio.dtb  | socfpga.dtb       |               |
| soc_system.rbf     | soc\_system.rbf   |               |

## use the alsamixer choose the Line out on DE1_SOC 
on DE1_SOC run 

	alsamixer

use "M" to change the Output Line to DE1_SOC HIFI ,then 

	aplay jouHisaishi.wav

