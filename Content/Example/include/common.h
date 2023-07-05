#ifndef H_COMMON
#define H_COMMON

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#define IMG_LOAD_ADDR ((void*)0x32000000)
#define UART_OUT_BUF_ADDR ((void*)0x11000000)

/** otp.c **/
bool otp_init();
void otp_get_img_hash(unsigned char* img_hash);
void otp_burn_img_hash(unsigned char* img_hash);
void otp_is_sec_boot_enabled(bool* is_enabled);
bool otp_sec_boot_enable();

#define __SET_SIM_SUCCESS() \
	do { *((volatile unsigned int *)(0xAA01000)) = 0x1; } while (1);

#define __SET_SIM_FAILED() \
	do { *((volatile unsigned int *)(0xAA01000)) = 0x2; } while (1);

#endif