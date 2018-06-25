# 目标
## 怎样写入程序到CPU，和MCU有什么区别
	- 从 hello Wrold中学到什么？
 		include $(IDF_PATH)/make/project.mk 它引用了SDK的make文件
 		产生了 build 目录及hello-world.elf (该文件1.13MB):
			 ELF 32-bit LSB executable, Tensilica Xtensa, version 1 (SYSV), statically linked, with debug_info, not stripped
			LSB --- linux 标准基础，为了各发行版的兼容。elf可用于linux的可执行文件.not stripped  是没有剔除符号信息表，利于调试。	
		Build 出很多文件，可能是各个功能模块，可能很多用不到，但一定用到了串口这个功能，它是怎么开启的。
	- Hello World项目，有README说：
		这个项目是，启动一个FreeRTOS任务，来print "hellow world"
		还可以看example中的Ｒeadme
	- Hello World项目，由SDK中的MENUCONFIG会产生一个CONFIG文件，用来BUILD当前项目。
	- Hello World项目，有main目录，内含本组件的make文件，及ｃ主文件	
		make 文件为空，即default编译本目录所有的源文件。
	- Hello World项目，解读ｍａｉｎ.ｃ
	　　	include gcc 标准头文件用<>,　ＳＤＫ的头文件用“”
	    	它用的RTOS的两个头文件，是FreeRTOS.h / task.h
		两个esp SDK 的两个头文件，是system.h / spi_flash.h
		printf()直接输出信息，怎么会从串口出来。－－ 可与fflush(stdout)	无关

## 现在可以把ESP CPU当做电脑和单片机来编程了
	主要就是写程序，引用头文件，然后复制demo的make file进行make flash就可以运行了

## 现在可以把ESP CPU当做电脑和单片机来编程了
	
## 请上用ＣＰＵ声音录制，和蓝牙传输，能否找到案例直接用
# 命令 把程序写入CPU
	- make flash 等同
	 python /home/wmt/myProj/esp32/esp-idf/components/esptool_py/esptool/esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect 0x1000 /home/wmt/myProj/esp32/myApp/build/bootloader/bootloader.bin 0x10000 /home/wmt/myProj/esp32/myApp/build/hello-world.bin 0x8000 /home/wmt/myProj/esp32/myApp/build/partitions_singleapp.bin
