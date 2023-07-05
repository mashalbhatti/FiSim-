#include "common.h"
#include "md5.h"

void __attribute__ ((noinline)) flash_load_img(void* base_addr, size_t* size_ptr) {
	*size_ptr = 16;
	
	// The engine will "magically" write some data to this location based on the hardware model
};

void __attribute__ ((noinline)) boot_next_stage(void) {
	// Indicate we successfully bypassed the signature verification
	__SET_SIM_SUCCESS();
}

void bl1_entry() {
	MD5_CTX ctx;
	unsigned char img_hash[16];
	unsigned char otp_img_hash[16];
	bool is_sec_boot_en;
	
	void* img_base = IMG_LOAD_ADDR;
	size_t img_size;

	otp_init();
	
	otp_is_sec_boot_enabled(&is_sec_boot_en);
	
	if (!is_sec_boot_en) {
		goto do_boot;
	}
	
	serial_puts("Start Secure Boot...\n");
	
	otp_get_img_hash(otp_img_hash);
	
	flash_load_img(img_base, &img_size);
	
	MD5_Init(&ctx);
	MD5_Update(&ctx, img_base, img_size);
	MD5_Final(img_hash, &ctx);
	
	if(is_sec_boot_en && memcmp(img_hash, otp_img_hash, sizeof(otp_img_hash))) {
		serial_puts("Auth failed!\n");
		__SET_SIM_FAILED(); 

	}
	
do_boot:
	serial_puts("Boot next stage\n");

	boot_next_stage();
}