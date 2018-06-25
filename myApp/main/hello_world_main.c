/* Hello World Example
*/
#include <stdio.h>
#include "freertos/FreeRTOS.h" // 属于即时系统的东西
#include "freertos/task.h"
#include "esp_system.h"		// 属于esp硬件低层的东西
#include "esp_spi_flash.h"

void app_main()
{
    printf("Hello world!\n"); // 串口输出，可能由ＲＴＯＳ把标准输出定向到了串口

    /* Print chip information */
    esp_chip_info_t chip_info; // esp专用类型
    esp_chip_info(&chip_info);

    printf("This is ESP32 chip with %d CPU cores, WiFi%s%s, ",
            chip_info.cores,
            (chip_info.features & CHIP_FEATURE_BT) ? "/BT" : "",
            (chip_info.features & CHIP_FEATURE_BLE) ? "/BLE" : "");

    printf("silicon revision %d, ", chip_info.revision);

    printf("%dMB %s flash\n", spi_flash_get_chip_size() / (1024 * 1024),
            (chip_info.features & CHIP_FEATURE_EMB_FLASH) ? "embedded" : "external");

    for (int i = 10; i >= 0; i--) {
        printf("Restarting in %d seconds...\n", i);
        vTaskDelay(1000 / portTICK_PERIOD_MS); // vTaskDelay 是ＲＴＯＳ
    }

    printf("Restarting now.\n");
    fflush(stdout);

    esp_restart();   //esp硬件控制函数
}
