#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>	// read/write/open
#include <time.h>


#define VERSION	"V0.13 20241101\0"
const unsigned char bmp_header[54] = {0x42,0x4D,0x36,0x1A,0x04,0x00,0x00,0x00,0x00,0x00,	\
							 		  0x36,0x00,0x00,0x00,0x28,0x00,0x00,0x00,0x40,0x01,	\
							 		  0x00,0x00,0x18,0x01,0x00,0x00,0x01,0x00,0x18,0x00,	\
							 		  0x00,0x00,0x00,0x00,0x00,0x1A,0x04,0x00,0x00,0x00,	\
							 		  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,	\
							 		  0x00,0x00,0x00,0x00};

//									 0	   1	 2	   3	 4	   5	 6	   7	 8	   9	 A	   B	 C	   D	 E	   F
const unsigned char table[256] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,	\
								  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,	\
								  0x40, 0xAF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x4F, 0x4D,	\
								  0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x00, 0x00, 0x00, 0x00, 0xAE,	\
								  0x50, 0x00, 0x00, 0x51, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x53, 0x6D, 0x36,	\
								  0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x55, 0x00, 0x79, 0x00, 0x60, 0x00,	\
								  0x00, 0x70, 0x71, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBC, 0xBD, 0xBE, 0xBF,	\
								  0x00, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B, 0x8C, 0x8D, 0x8E, 0x8F,	\
								  0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0x9B, 0x9C, 0x9D, 0x9E, 0x9F,	\
								  0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xAB, 0xAC, 0xAD, 0x00, 0x00,	\
								  0x00, 0x33, 0x00, 0x00, 0x00, 0x4E, 0xB6, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F,	\
								  0x32, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,	\
								  0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F,	\
								  0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x30, 0x31,	\
								  0xD0, 0xD1, 0xD2, 0xD3, 0xE0, 0xE1, 0xE2, 0xE3, 0x2F, 0x2E, 0x6B, 0x6C, 0x00, 0x00, 0x00, 0x35,	\
								  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7A, 0x7B, 0x7C, 0x7D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};





void Show_how_to_use(void);
void Bmp_save(unsigned char *pBmp, int seed);
unsigned char* Get_bmp_p(unsigned char *bmp, int x, int y, int line);
unsigned char Get_tile(unsigned char *tile_map, int tile_num, int tile_line, int even);
void Swap_updown(unsigned char *bmp);
void Convert_tile(unsigned char *bmp, unsigned char *tile_map, int tileX, int tileY, unsigned char *checkRom, int use);
void Write_tile_to_bmp(unsigned char *bmp, unsigned char *tile_map, unsigned char tileNum, int x, int y);
void Decompress_tile(unsigned char *bmp, unsigned char *tile_map, unsigned char *checkRom);
void Decompress_side_tile(unsigned char *bmp, unsigned char *tile_map, unsigned char *checkRom, int useTable);





int main(int argc, char** argv){
	int fd;
	int i;
	int tileX, tileY;
	int tileA, tileA1, tileA2, tileA3;
	int checkA;
	unsigned char bmp[(320*280*3)];
	char tempCh[256];
	char fileName[256];
	unsigned char tile_map[8*2*256];
	unsigned char rom[8*2*256*8];
	int useTable;
	int useDecode2;

	printf("%s %s\n", argv[0], VERSION);

	if(argc < 17){
		printf("This program makes a BMP file for tile map.\n");
		printf("Currently 320 x 280 fixed size serve.\n");
		Show_how_to_use();
		return 0;
	}
	
	tileX = -1;
	tileY = -1;
	tileA = -1;
	useDecode2 = -1;
	memset(fileName, 0, 256);
	useTable = -1;
	
	// Check mode
	for(i=1;i<argc;i++){
		if(strcmp(argv[i], "-x") == 0){
			i++;
			tileX = atoi(argv[i]);
		}
		if(strcmp(argv[i], "-y") == 0){
			i++;
			tileY = atoi(argv[i]);
		}
		if(strcmp(argv[i], "-a0") == 0){
			i++;
			tileA = atoi(argv[i]);
		}
		if(strcmp(argv[i], "-a1") == 0){
			i++;
			tileA1 = atoi(argv[i]);
		}
		if(strcmp(argv[i], "-a2") == 0){
			i++;
			tileA2 = atoi(argv[i]);
		}
		if(strcmp(argv[i], "-a3") == 0){
			i++;
			tileA3 = atoi(argv[i]);
		}
		if(strcmp(argv[i], "-i") == 0){
			i++;
			strcpy(fileName, argv[i]);
		}
		if(strcmp(argv[i], "-c") == 0){
			i++;
			checkA = atoi(argv[i]);
		}
		if(strcmp(argv[i], "-t") == 0){
			useTable = 1;
		}
		if(strcmp(argv[i], "-d") == 0){
			useTable = 2;
		}
		if(strcmp(argv[i], "-e") == 0){
			useDecode2 = 1;
		}
	}
	
	if(tileX == -1){
		Show_how_to_use();
		return -EINVAL;
	}
	if(tileY == -1){
		Show_how_to_use();
		return -EINVAL;
	}
	if(tileA == -1){
		Show_how_to_use();
		return -EINVAL;
	}
	if(checkA == -1){
		Show_how_to_use();
		return -EINVAL;
	}

	printf("x=%d, y=%d, a=%d, argc=%d\n", tileX, tileY, tileA, argc);
	printf("input file name =%s (check address = %xh)\n", fileName, checkA);

	// File open
	fd = open(fileName, O_RDWR);
	if(fd <= 0){
		printf("File open failed! [%s] %d\n", fileName, fd);
		return fd;
	}

	lseek(fd, tileA, SEEK_SET);

	// Read file (tile map)
	//read(fd, tile_map, 8*2*16*16);
	read(fd, tile_map, 0x400);
	
	// 0x0400-0x07FF
	lseek(fd, tileA1, SEEK_SET);
	read(fd, &tile_map[0x400], 0x400);

	// 0x0800-0x0BFF	
	lseek(fd, tileA2, SEEK_SET);
	read(fd, &tile_map[0x800], 0x400);

	// 0x0C00-0x0FFF	
	lseek(fd, tileA3, SEEK_SET);
	read(fd, &tile_map[0xC00], 0x400);
	
	// Read file (strings)
	lseek(fd, checkA, SEEK_SET);
	read(fd, rom, 8*2*tileX*tileY);
	
	close(fd);
	
	// Convert tile map to BMP
	memset(bmp, 0, (320*280*3));
	if(useDecode2 == 1){
		Decompress_side_tile(bmp, tile_map, rom, useTable);
	}else if(useTable == 2){
		Decompress_tile(bmp, tile_map, rom);
	}else{
		Convert_tile(bmp, tile_map, tileX, tileY, rom, useTable);
	}
	
	Swap_updown(bmp);
	
	Bmp_save(bmp, checkA);

	return 0;
}





void Show_how_to_use(void){
		printf("How to use.\n");
		printf(" -a0 : tile address 0 (decimal)\n");
		printf(" -a1 : tile address 1 (decimal)\n");
		printf(" -a2 : tile address 2 (decimal)\n");
		printf(" -a3 : tile address 3 (decimal)\n");
		printf(" -x : x offset size(from tile map)\n");
		printf(" -y : y offset size(from tile map)\n");
		printf(" -i : input rom file name\n");
		printf(" -c : check string table address 0(decimal)\n");
		printf(" -t : use table(option)\n");
		printf(" -d : decompress(option))\n");
		printf(" -e : decompress side screen(option))\n");
		printf("Output file name is [time+minute+second_random(5digit).bmp]\n");
		printf(" 320x280 size\n");
}



void Bmp_save(unsigned char *pBmp, int seed){
	int fd;
	struct tm *now;
	time_t now_t;
	char fileName[256];
	int count = 0;
	int fileExist;
	
	srand(seed);

RETRY:
	// Get time
	time(&now_t);
	now = localtime(&now_t);

	memset(fileName, 0, 256);
	//sprintf(fileName, "%04d%02d%02d_%02d%02d%02d.bmp", now->tm_year+1900, now->tm_mon+1, now->tm_mday, now->tm_hour, now->tm_min, now->tm_sec);
	sprintf(fileName, "%02d%02d%02d_%05d.bmp", now->tm_hour, now->tm_min, now->tm_sec, rand());
	
	// Chekc file name(cannot be same)
	fileExist = access(fileName, 00);
	if(fileExist == 0){
		goto RETRY;
	}
	
	_fmode = O_BINARY;
	
	fd = creat(fileName, S_IWRITE);
	if(fd <= 0){
		printf("File create failed! [%s]\n", fileName);
		return;
	}
	//close(fd);
	/*
	//fd = open(fileName, O_RDWR);
	if(fd <= 0){
		printf("File read failed! [%s] %d\n", fileName, fd);
		return;
	}*/
	lseek(fd, 0, SEEK_SET);
	write(fd, bmp_header, 54);
	count = write(fd, pBmp, 320*280*3);
	close(fd);
	
	//printf("write count = %d\n", count);
}



unsigned char* Get_bmp_p(unsigned char *bmp, int x, int y, int line){
	//printf("get tile p = %d\n", (320*3)*(y*8)+(3*8*x)+(320*3*line) );
	return &bmp[(320*3)*(y*8)+(3*8*x)+(320*3*line)];
	//return NULL;
}



unsigned char Get_tile(unsigned char *tile_map, int tile_num, int tile_line, int even){
	if(even){
		return tile_map[tile_num*16+tile_line+8];
	}
	return tile_map[tile_num*16+tile_line];
}



void Swap_updown(unsigned char *bmp){
	unsigned char lineTmp[320*3];
	unsigned char *upTmp;
	unsigned char *downTmp;
	int i, j;
	
	//for(i=0;i<8;i++){
	for(i=0;i<17;i++){
		for(j=0;j<8;j++){
			upTmp = Get_bmp_p(bmp, 0, i, j);
			memcpy(lineTmp, upTmp, 320*3);
			//downTmp = Get_bmp_p(bmp, 0, 15-i, 7-j);
			downTmp = Get_bmp_p(bmp, 0, 34-i, 7-j);
			memcpy(upTmp, downTmp, 320*3);
			memcpy(downTmp, lineTmp, 320*3);
		}
	}
	for(j=0;j<4;j++){
		upTmp = Get_bmp_p(bmp, 0, 17, j);
		memcpy(lineTmp, upTmp, 320*3);
		downTmp = Get_bmp_p(bmp, 0, 17, 7-j);
		memcpy(upTmp, downTmp, 320*3);
		memcpy(downTmp, lineTmp, 320*3);
	}
}


void Convert_tile(unsigned char *bmp, unsigned char *tile_map, int tileX, int tileY, unsigned char *checkRom, int use){
	unsigned char *tmp;
	unsigned char r, g, b;
	unsigned char lbyte, rbyte, tileNum;
	int i, j, k, q, bmp_count;

	for(j=0;j<tileY;j++){
		for(i=0;i<tileX;i++){
			// 8 line
			for(k=0;k<8;k++){
				tmp = Get_bmp_p(bmp, i, j, k);

				for(q=0;q<8;q++){
					tileNum = checkRom[i+(j*tileX)];
					if(use == 1){
						tileNum = table[tileNum];
					}
					lbyte = (Get_tile(tile_map, tileNum, k, 0) << q) & 0x80;
					rbyte = (Get_tile(tile_map, tileNum, k, 1) << q) & 0x80;
					/*
					lbyte = (Get_tile(tile_map, i+(j*tileX), k, 0) << q) & 0x80;
					rbyte = (Get_tile(tile_map, i+(j*tileX), k, 1) << q) & 0x80;
					*/
					/*
					lbyte = (tile_map[(j*256)+(i*16)+k+0] << q) & 0x80;
					rbyte = (tile_map[(j*256)+(i*16)+k+8] << q) & 0x80;*/
					rbyte = rbyte >> 6;
					lbyte = lbyte >> 7;
					rbyte = lbyte | rbyte;
					if(rbyte == 0){
						r = 0x00;
						g = 0x00;
						b = 0x1F;
					}else if(rbyte == 1){
						r = 136;
						g = 42;
						b = 0x00;
					}else if(rbyte == 2){
						r = 0x00;
						g = 0xFF;
						b = 0x00;
					}else{
						r = 0xFF;
						g = 0xFF;
						b = 0xFF;
					}
					tmp[(q*3)+0] = r;
					tmp[(q*3)+1] = g;
					tmp[(q*3)+2] = b;
				}
			}
		}
	}
	
	return;
}



void Write_tile_to_bmp(unsigned char *bmp, unsigned char *tile_map, unsigned char tileNum, int x, int y){
	unsigned char *tmp;
	unsigned char lbyte, rbyte;
	unsigned char r, g, b;
	int k, q;

	// 8 line
	for(k=0;k<8;k++){
		tmp = Get_bmp_p(bmp, x, y, k);

		for(q=0;q<8;q++){
			lbyte = (Get_tile(tile_map, tileNum, k, 0) << q) & 0x80;
			rbyte = (Get_tile(tile_map, tileNum, k, 1) << q) & 0x80;

			rbyte = rbyte >> 6;
			lbyte = lbyte >> 7;
			rbyte = lbyte | rbyte;
			if(rbyte == 0){
				r = 0x00;
				g = 0x00;
				b = 0x1F;
			}else if(rbyte == 1){
				r = 136;
				g = 42;
				b = 0x00;
			}else if(rbyte == 2){
				r = 0x00;
				g = 0xFF;
				b = 0x00;
			}else{
				r = 0xFF;
				g = 0xFF;
				b = 0xFF;
			}
			tmp[(q*3)+0] = r;
			tmp[(q*3)+1] = g;
			tmp[(q*3)+2] = b;
		}
	}
}

void Decompress_tile(unsigned char *bmp, unsigned char *tile_map, unsigned char *checkRom){
	unsigned char r, g, b;
	unsigned char lbyte, rbyte, tileNum, tileA, tileB;
	int x, y, k, i;
	int tile_count = 0;
	int text_count;
	
	x = 0;
	y = 0;
	
	for(i=0;i<10;i++){
		//printf("%02x,", checkRom[i]);
	}//printf("\n");
	
	while(tile_count < (32*32)){
		tileNum = checkRom[tile_count++];
		//printf("%02x(%d)_", tileNum, tile_count);
		if(tileNum == 0xFF){
			break;
		}
		text_count = tileNum & 0x3F;
		
		if(tileNum & 0x80){
			if(tileNum & 0x40){
				tileA = checkRom[tile_count++];
				tileB = checkRom[tile_count++];
				for(i=0;i<text_count;i++){
					Write_tile_to_bmp(bmp, tile_map, tileA, x, y);
					x++;
					if(x >= 32){
						x = 0;
						y++;
					}
					Write_tile_to_bmp(bmp, tile_map, tileB, x, y);
					x++;
					if(x >= 32){
						x = 0;
						y++;
					}
				}
			}else{
				tileA = checkRom[tile_count++];
				for(i=0;i<text_count;i++){
					Write_tile_to_bmp(bmp, tile_map, tileA, x, y);
					x++;
					if(x >= 32){
						x = 0;
						y++;
					}
				}
			}
		}else{
			if(tileNum & 0x40){
				tileA = checkRom[tile_count++];
				for(i=0;i<text_count;i++){
					Write_tile_to_bmp(bmp, tile_map, tileA++, x, y);
					x++;
					if(x >= 32){
						x = 0;
						y++;
					}
				}
			}else{
				for(i=0;i<text_count;i++){
					tileA = checkRom[tile_count++];
					Write_tile_to_bmp(bmp, tile_map, tileA, x, y);
					x++;
					if(x >= 32){
						x = 0;
						y++;
					}
				}
			}
		}
	}
}

void Decompress_side_tile(unsigned char *bmp, unsigned char *tile_map, unsigned char *checkRom, int useTable){
	unsigned char r, g, b;
	unsigned char lbyte, rbyte, tileNum, tileA, tileB;
	int x, y, k, i;
	int tile_count = 2;
	int text_count;
	unsigned char temp[0x100];
	
	x = 0;
	y = 0;
	
	for(i=0;i<0x100;i++){
		temp[i] = 0x20;
	}
	for(i=0;i<14;i++){
		temp[i] = 0x62;
	}
	
	printf("ADDR = %02x,%02x\n", checkRom[0], checkRom[1]);
	
	while(tile_count < 0x100){
		tileNum = checkRom[tile_count++];
		//printf("%02x(%d)_", tileNum, tile_count);
		if(tileNum == 0xFF){
			break;
		}
		text_count = tileNum;
		
		tileNum = checkRom[tile_count];
		tile_count++;
		temp[text_count] = tileNum;
	}
	
	if(useTable){
		for(i=0;i<0x100;i++){
			tileNum = table[temp[i]];
			temp[i] = tileNum;
		}
	}
	
	text_count = 0;
	for(y=0;y<7;y++){
		for(x=0;x<14;x++){
			Write_tile_to_bmp(bmp, tile_map, temp[text_count++], x, y);
		}
	}
			#if 0
		if(tileNum & 0x80){
			if(tileNum & 0x40){
				tileA = checkRom[tile_count++];
				tileB = checkRom[tile_count++];
				for(i=0;i<text_count;i++){
					Write_tile_to_bmp(bmp, tile_map, tileA, x, y);
					x++;
					if(x >= 32){
						x = 0;
						y++;
					}
					Write_tile_to_bmp(bmp, tile_map, tileB, x, y);
					x++;
					if(x >= 32){
						x = 0;
						y++;
					}
				}
			}else{
				tileA = checkRom[tile_count++];
				for(i=0;i<text_count;i++){
					Write_tile_to_bmp(bmp, tile_map, tileA, x, y);
					x++;
					if(x >= 32){
						x = 0;
						y++;
					}
				}
			}
		}else{
			if(tileNum & 0x40){
				tileA = checkRom[tile_count++];
				for(i=0;i<text_count;i++){
					Write_tile_to_bmp(bmp, tile_map, tileA++, x, y);
					x++;
					if(x >= 32){
						x = 0;
						y++;
					}
				}
			}else{
				for(i=0;i<text_count;i++){
					tileA = checkRom[tile_count++];
					Write_tile_to_bmp(bmp, tile_map, tileA, x, y);
					x++;
					if(x >= 32){
						x = 0;
						y++;
					}
				}
			}
		}
		#endif
}
