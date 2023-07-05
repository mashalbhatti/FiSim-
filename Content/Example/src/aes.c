#include <stdint.h>
#include <stdio.h>
#include <string.h>
// key scheduling- generate 11 round key
// Round function, 9 round func are same but in 10th round function will be based on (1,2)
// 1. subbyte
// 2. shiftrows
// 3. mixcol
uint8_t roundkey[4][4][11];
uint32_t rotword(uint32_t w){
    uint32_t temp = w>>24;
    w<<=8;
    w|=temp;
    return w;
}

uint32_t subword(uint32_t w){
    uint8_t subbyte_lookup[16][16] = {
        {0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76},
        {0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0},
        {0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15},
        {0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75},
        {0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84},
        {0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf},
        {0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8},
        {0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2},
        {0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73},
        {0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb},
        {0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79},
        {0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08},
        {0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a},
        {0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e},
        {0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf},
        {0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16}};

        uint32_t retme=0;
        for(int i=0;i<4;i++){
            retme<<=8;
            uint8_t temp = (w>>(8*(3-i)))& 0xff;
            uint8_t r = temp >> 4;
            uint8_t c = temp & 15;
            retme |= subbyte_lookup[r][c];
        }
        return retme;
}



void subbyte(uint8_t matrix[4][4])
{
    uint8_t subbyte_lookup[16][16] = {
        {0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76},
        {0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0},
        {0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15},
        {0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75},
        {0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84},
        {0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf},
        {0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8},
        {0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2},
        {0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73},
        {0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb},
        {0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79},
        {0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08},
        {0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a},
        {0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e},
        {0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf},
        {0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16}};

    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            uint8_t temp = matrix[i][j];
            uint8_t r = temp >> 4;
            uint8_t c = temp & 15;
            matrix[i][j] = subbyte_lookup[r][c];
        }
    }
}

void shiftrows(uint8_t matrix[4][4])
{
    for (int i = 1; i < 4; i++)
    {
        int arr[4];
        for (int k = i; k < 4; k++)
        {
            arr[k - i] = matrix[i][k];
        }
        for (int j = 0; j < i; j++)
        {
            arr[4 - i + j] = matrix[i][j];
        }
        for (int j = 0; j < 4; j++)
        {
            matrix[i][j] = arr[j];
        }
    }
}

// 0000 0000
uint8_t fun(uint8_t x) 
{ 
    uint8_t god = 27;
    if (x >> 7)
    {
        return (x << 1) ^ god;
    }
    return (x << 1);
}

void mixcol(uint8_t matrix[4][4])
{
    uint8_t G[4][4] = {
        {2, 3, 1, 1},
        {1, 2, 3, 1},
        {1, 1, 2, 3},
        {3, 1, 1, 2}};
    int8_t temp[4][4];
    
    for (int row = 0; row < 4; row++)
    {
        for (int col = 0; col < 4; col++)
        {
            temp[row][col] = 0;
        }
    }
    // simple matrix multiplication
    for (int row = 0; row < 4; row++)
    {
        for (int col = 0; col < 4; col++)
        {
            for (int r = 0; r < 4; r++)
            {
                if (G[row][r] == 2)
                {
                    temp[row][col] ^= fun(matrix[r][col]);
                }
                else if (G[row][r] == 3)
                {
                    temp[row][col] ^= (fun(matrix[r][col]) ^ matrix[r][col]);
                }
                else
                {
                    temp[row][col] ^= matrix[r][col];
                }
            }
        }
    }

    for (int row = 0; row < 4; row++)
    {
        for (int col = 0; col < 4; col++)
        {
            matrix[row][col] = temp[row][col];
        }
    }
}

void GenRoundkey(uint8_t k[16]){
    uint32_t Rcon[10] = {(uint32_t) 0x01000000, (uint32_t) 0x02000000, (uint32_t) 0x04000000, (uint32_t) 0x08000000, (uint32_t) 0x10000000, (uint32_t) 0x20000000, (uint32_t) 0x40000000, (uint32_t) 0x80000000, (uint32_t) 0x1B000000, (uint32_t) 0x36000000};


    uint32_t W[44];
    for(int i=0;i<4;i++)
    {
        uint32_t k1 = k[4*i],k2=k[4*i+1],k3 = k[4*i+2],k4 = k[4*i+3];
        W[i]=(k1<<24)|(k2<<16)|(k3<<8)|(k4);
    }
    for(int i=4;i<44;i++)
    {
        uint32_t temp=W[i-1];
        if(i%4==0)
        {
            temp=subword(rotword(temp))^Rcon[i/4-1];
        }
        W[i]=W[i-4]^temp;
    }
    for (int i = 0; i < 44; i++)
    {
        printf("%x ",W[i]);
    }
    printf("\n");
    for(int k=0;k<11;k++){
        for(int i=k*4;i<(k+1)*4;i++){
            uint32_t tnum = W[i];
            for(int j=0;j<4;j++){
                uint8_t carr;
                carr = (uint8_t)(tnum&255);
                tnum>>=8;
                roundkey[3-j][i-4*k][k] = carr;
            }
        }
    }
}

int main()
{
    uint8_t plaintext_temp[16];
	uint8_t cipherkey_temp[16];

	//Read in message
	//printf("PlainText: \n");
	//scanf("%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx", &plaintext_temp[0], &plaintext_temp[1], &plaintext_temp[2], &plaintext_temp[3], &plaintext_temp[4], &plaintext_temp[5], &plaintext_temp[6], &plaintext_temp[7], &plaintext_temp[8], &plaintext_temp[9], &plaintext_temp[10], &plaintext_temp[11], &plaintext_temp[12], &plaintext_temp[13], &plaintext_temp[14], &plaintext_temp[15]); 
	
	// Hardcoded user input
const char* plaininput = "00112233445566778899AABBCCDDEEFF";

// Convert input to binary representation
for (int i = 0; i < 16; i++) {
    sscanf(&plaininput[i * 2], "%2hhx", &plaintext_temp[i]);
} 



	//printf("\n");

		uint8_t matrix[4][4] = 
	{
		{plaintext_temp[0], plaintext_temp[4], plaintext_temp[8], plaintext_temp[12]},
		{plaintext_temp[1], plaintext_temp[5], plaintext_temp[9], plaintext_temp[13]},
		{plaintext_temp[2], plaintext_temp[6], plaintext_temp[10], plaintext_temp[14]},
		{plaintext_temp[3], plaintext_temp[7], plaintext_temp[11], plaintext_temp[15]}
	};


	// Hardcoded user input
const char* cipherinput = "7625e224dc0f0ec91ad28c1ee67b1eb96d1a5459533c5c950f44aae1e32f2da3"; 

// Convert input to binary representation
for (int i = 0; i < 16; i++) {
    sscanf(&cipherinput[i * 2], "%2hhx", &cipherkey_temp[i]);
} 




	//printf("\n");



	//printf("CipherText: \n");
	//scanf("%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx", &cipherkey_temp[0], &cipherkey_temp[1], &cipherkey_temp[2], &cipherkey_temp[3], &cipherkey_temp[4], &cipherkey_temp[5], &cipherkey_temp[6], &cipherkey_temp[7], &cipherkey_temp[8], &cipherkey_temp[9], &cipherkey_temp[10], &cipherkey_temp[11], &cipherkey_temp[12], &cipherkey_temp[13], &cipherkey_temp[14], &cipherkey_temp[15]);

	uint8_t K[] = 
	{
		cipherkey_temp[0], cipherkey_temp[1], cipherkey_temp[2], cipherkey_temp[3],
		cipherkey_temp[4], cipherkey_temp[5], cipherkey_temp[6], cipherkey_temp[7],
		cipherkey_temp[8], cipherkey_temp[9], cipherkey_temp[10], cipherkey_temp[11],
		cipherkey_temp[12], cipherkey_temp[13], cipherkey_temp[14], cipherkey_temp[15]
	};
    GenRoundkey(K);
    for(int k=0;k<11;k++){
        printf("round key for %d :\n",k);
        for(int i=0;i<4;i++){
            for(int j=0;j<4;j++){
                printf("%x ",roundkey[i][j][k]);
            }
            printf("\n");
        }
    }
    printf("Plaintext Text: \n");
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            printf("%x ",matrix[i][j]);
         }
         printf("\n");
    }

    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            matrix[i][j] ^= roundkey[i][j][0];
         }
    }
    for(int k=1;k<10;k++){
        subbyte(matrix);
        shiftrows(matrix);
        mixcol(matrix);
        for(int i=0;i<4;i++){
            for(int j=0;j<4;j++){
                matrix[i][j] ^= roundkey[i][j][k];
            }
        }
    }
    
    subbyte(matrix);
    shiftrows(matrix);
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            matrix[i][j] ^= roundkey[i][j][10];
         }
    }
    
    printf("Encrypted Text: \n");
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++){
            printf("%x ",matrix[i][j]);
         }
         printf("\n");
    }
    return 0;
}
