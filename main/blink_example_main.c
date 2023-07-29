/* Blink Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "esp_log.h"
#include "led_strip.h"
#include "sdkconfig.h"



void app_main(void)
{
    /* Configure the peripheral according to the LED type */

    gpio_reset_pin(4);                          // Default state
    gpio_set_direction(4, GPIO_MODE_OUTPUT);    // Configure output
    printf("Started\n");

    while (1) {
        uint32_t delay = 10;
        
        gpio_set_level(4, 1);
        printf("ON \n");
        vTaskDelay(delay);

        gpio_set_level(4, 0);
        printf("OFF \n");
        vTaskDelay(delay*3);
    }
}
