# DE1SOC_Linux_Media
## Clone the Hardware Project and Linux source code
1.Hardware
	git clone https://github.com/thinkoco/de1soc_media.git
or
	https://git.oschina.net/thinkoco/de1soc_media.git
2.Linux
	git clone https://github.com/thinkoco/linux-socfpga.git
or
	git clone https://git.oschina.net/thinkoco/linux-socfpga.git

	cd linux-socfpga
	git checkout -b de1soc_audio origin/socfpga-3.17_audio
	
## Compile Hardware Project
1.add the 'ip/i2s' Path to the library in Qsys
	Open Qsys-->Tools-->IP Search Path-->Add,add the 'xxxx/ip/i2s' path
2.Compile the Qsys 
	Open the soc_system.qsys,Click 'Generate HDL'	
3.Compile project
	Click the 'Start Compilation'
4.Convert programming files,in shell run the command
	quartus_cpf -c DE1_SOC_Linux_Audio.sof soc_system.rbf
## Generate uboot.img and PreloaderWithHeader.img
1.run altera command shell
	~/altera/14.1/embedded/embedded_command_shell.sh
2.Generate Bsp and Uboot
	bsp-editor&
	according to the steps [Generating and Compiling the Preloader](https://rocketboards.org/foswiki/view/Documentation/GSRD131Preloader#Compiling_the_Preloader)
	
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
| preloader_with_header.img | software/spl_bsp               |               |
| u-boot.img                | software/spl_bsp/uboot-socfpga |               |

## Write the uboot Image to SD Card
	Burn Terasic [de1soc_ubuntu_1604.img](http://www.terasic.com/downloads/cd-rom/de1-soc/linux_BSP/de1soc_ubuntu_1604.zip) to SD Card
Change the **sdX** to your card
	sudo dd if=preloader_with_header.img of=/dev/sdX3 bs=64k seek=0
	sudo dd if=u-boot.img of=/dev/sdX3 bs=64k seek=4
## add Tool Chain tp Path 
## Build zImage and Device Tree
	cd to linux-socfpga
	cp Linux_config .config
	make zImage
	make socfpga_audio.dtb
## Copy The rbf zImage dtb to SD Card
| Image                     | rename     | Description   |
| :----------------- |:----------------- | ------------- |
| zImage             | zImage            |               |
| socfpga_audio.dtb  | socfpga.dtb       |               |
| soc_system.rbf     | soc\_system.rbf   |               |

## use the aslamixer choose the Line out on Ubuntu
on DE1_SOC run 
	alsamixer
change the Output Line to DE1_SOC HIFI 

