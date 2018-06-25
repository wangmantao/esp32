deps_config := \
	/home/wmt/myProj/esp32/esp-idf/components/app_trace/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/aws_iot/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/bt/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/esp32/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/esp_adc_cal/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/ethernet/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/fatfs/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/freertos/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/heap/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/libsodium/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/log/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/lwip/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/mbedtls/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/openssl/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/pthread/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/spi_flash/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/spiffs/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/tcpip_adapter/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/wear_levelling/Kconfig \
	/home/wmt/myProj/esp32/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/wmt/myProj/esp32/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/wmt/myProj/esp32/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/wmt/myProj/esp32/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
