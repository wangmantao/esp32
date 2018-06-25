项目概述：
	ESP32 mini 开发板，逐步测试它的功能，并完成预期的项目
	阶段１：
		运行demo完成了print.
		build 及　上传至硬件要重新做一下笔记
	阶段２：
		在教育孩子的作业中，人机交互效率低下的情况下，有用到esp32的吗？按需开发
		先前去忙用电脑显示作业吧。


预期的项目：
	利用该32位终端，与主机（Android 中ＰＣ）进行通讯（WiFi/蓝牙)
	完成测试应用的的人机交互。



--------------------------------------
rst:0xc (SW_CPU_RESET),boot:0x13 (SPI_FAST_FLASH_BOOT)
configsip: 0, SPIWP:0xee
clk_drv:0x00,q_drv:0x00,d_drv:0x00,cs0_drv:0x00,hd_drv:0x00,wp_drv:0x00
mode:DIO, clock div:2
load:0x3fff0018,len:4
load:0x3fff001c,len:5672
load:0x40078000,len:0
ho 12 tail 0 room 4
load:0x40078000,len:13924
entry 0x40078fd8
I (30) boot: ESP-IDF v3.1-dev-443-g17e8d49f 2nd stage bootloader
I (30) boot: compile time 13:40:41
I (30) boot: Enabling RNG early entropy source...
I (37) boot: SPI Speed      : 40MHz
I (41) boot: SPI Mode       : DIO
I (45) boot: SPI Flash Size : 4MB
I (49) boot: Partition Table:
I (52) boot: ## Label            Usage          Type ST Offset   Length
I (60) boot:  0 nvs              WiFi data        01 02 00009000 00006000
I (67) boot:  1 phy_init         RF data          01 01 0000f000 00001000
I (75) boot:  2 factory          factory app      00 00 00010000 00100000
I (82) boot: End of partition table
I (86) esp_image: segment 0: paddr=0x00010020 vaddr=0x3f400020 size=0x04600 ( 17920) map
I (101) esp_image: segment 1: paddr=0x00014628 vaddr=0x3ffb0000 size=0x02190 (  8592) load
I (107) esp_image: segment 2: paddr=0x000167c0 vaddr=0x40080000 size=0x00400 (  1024) load
I (113) esp_image: segment 3: paddr=0x00016bc8 vaddr=0x40080400 size=0x084e0 ( 34016) load
I (136) esp_image: segment 4: paddr=0x0001f0b0 vaddr=0x400c0000 size=0x00000 (     0) load
I (136) esp_image: segment 5: paddr=0x0001f0b8 vaddr=0x00000000 size=0x00f58 (  3928) 
I (144) esp_image: segment 6: paddr=0x00020018 vaddr=0x400d0018 size=0x114c4 ( 70852) map
I (181) boot: Loaded app from partition at offset 0x10000
I (181) boot: Disabling RNG early entropy source...
I (181) cpu_start: Pro cpu up.
I (185) cpu_start: Starting app cpu, entry point is 0x40080e24
I (177) cpu_start: App cpu up.
I (196) heap_init: Initializing. RAM available for dynamic allocation:
I (203) heap_init: At 3FFAE6E0 len 00001920 (6 KiB): DRAM
I (209) heap_init: At 3FFB2970 len 0002D690 (181 KiB): DRAM
I (215) heap_init: At 3FFE0440 len 00003BC0 (14 KiB): D/IRAM
I (221) heap_init: At 3FFE4350 len 0001BCB0 (111 KiB): D/IRAM
I (228) heap_init: At 400888E0 len 00017720 (93 KiB): IRAM
I (234) cpu_start: Pro cpu start user code
I (252) cpu_start: Starting scheduler on PRO CPU.
I (0) cpu_start: Starting scheduler on APP CPU.
----- hello world 开始 ---

