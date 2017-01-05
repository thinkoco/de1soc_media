# DE1SOC_Linux_Media
## Compile Hardware Project
	quartus_cpf -c DE1_SOC_Linux_FB.sof soc_system.rbf
## Generate uboot.img and PreloaderWithHeader.img
	altera/14.1/embedded/embedded_command_shell.sh 
	bsp-editor&
	cd software/spl_bsp/
	make -j4
	cd uboot-socfpga/
	make
	mkpimage -o preloader_with_header.img u-boot-spl.bin -hv 0
## wirte the uboot Image to SD Card
	sudo dd if=preloader_with_header.img of=/dev/sdc3 bs=64k seek=0
	sudo dd if=u-boot.img of=/dev/sdc3 bs=64k seek=4
## Build zImage
## Build Device Tree
## Copy The rbf zImage dtb to SD Card
## use the aslamixer choose the Line out on Ubuntu

