#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>



#define VERSION "font_table V0.01 20241106"

#define	FILE_NAME_SIZE	256
#define	FILE_LINE_SIZE	256



void Show_version(void);
void Show_how_to_use(void);
int Find_HANGUL_line(FILE *fp, char* hangul);
int SaveFile(char *outputFileName, char *compareChar);





int main(int argc, char **argv){
	FILE *pTableFile = NULL;
	FILE *pInputFile = NULL;
	FILE *pInFile = NULL;
	FILE *pOutFile = NULL;
	unsigned char *pHTable = NULL;
	char compareChar[FILE_LINE_SIZE+7];
	char tableFileName[FILE_NAME_SIZE];
	char inputFileName[FILE_NAME_SIZE];
	char outputFileName[FILE_NAME_SIZE];
	char systemChar[FILE_NAME_SIZE];
	char charInFile[FILE_LINE_SIZE];
	char charInputText[FILE_LINE_SIZE];
	char charOutputText[FILE_LINE_SIZE];
	int i;
	int matchNumber;
	int ret = -EINVAL;

	Show_version();
	
	if(argc < 7){
		Show_how_to_use();
		return -EINVAL;
	}
	
	memset(tableFileName, 0, FILE_NAME_SIZE);
	memset(inputFileName, 0, FILE_NAME_SIZE);
	memset(outputFileName, 0, FILE_NAME_SIZE);
	
	for(i=1;i<argc;i++){
		if(strcmp(argv[i], "-t") == 0){
			i++;
			strcpy(tableFileName, argv[i]);
		}
		if(strcmp(argv[i], "-i") == 0){
			i++;
			strcpy(inputFileName, argv[i]);
		}
		if(strcmp(argv[i], "-o") == 0){
			i++;
			strcpy(outputFileName, argv[i]);
		}
	}
	
	// Open table file
	pTableFile = fopen(tableFileName, "r");
	if(pTableFile == NULL){
		Show_how_to_use();
		printf("E> table file not found [%s]\n", tableFileName);
		return -EINVAL;
	}
	
	// Open input file
	pInputFile = fopen(inputFileName, "r");
	if(pInputFile == NULL){
		Show_how_to_use();
		printf("E> input file not found [%s]\n", inputFileName);
		ret = -EINVAL;
		goto PROC_INPUT_ERROR_END;
	}

	i = 0;
	memset(charInputText, 0, FILE_LINE_SIZE);
	//while(!feof(pInFile)){
	while(fgets(charInputText, FILE_LINE_SIZE, pInputFile) != NULL){
		memset(compareChar, 0, FILE_LINE_SIZE+7);
		
		compareChar[0] = charInputText[0];
		compareChar[1] = charInputText[1];
		if(charInputText[2] == ':'){		// 2 bytes HANGUL
			// Set NULL
			compareChar[2] = 0x00;
			matchNumber = Find_HANGUL_line(pTableFile, compareChar);
		}else if(charInputText[1] == ':'){	// ASCII
			// Set NULL
			compareChar[1] = 0x00;
			matchNumber = Find_HANGUL_line(pTableFile, compareChar);
		}else{								// 3 bytes HANGUL
			// Set NULL
			compareChar[2] = charInputText[2];
			compareChar[3] = 0x00;
			matchNumber = Find_HANGUL_line(pTableFile, compareChar);
		}
		
		
		
		//printf("matchNumber = %d, %02xh, %02xh\n", matchNumber, charInputText[0]&0xFF, charInputText[1]&0xFF);
		
		memset(systemChar, 0, FILE_NAME_SIZE);
		sprintf(systemChar, "main.exe -c %d", matchNumber);
		
		//fflush(STDIO);
		//ret = system(systemChar);
		pInFile = _popen(systemChar, "r");
		if(pInFile == NULL){
			printf("[%s] cannot executed!\n", systemChar);
			goto PROC_END;
		}
	
		memset(charInFile, 0, FILE_LINE_SIZE);
		fgets(charInFile, FILE_LINE_SIZE, pInFile);
		pclose(pInFile);

		memset(charOutputText, 0, FILE_LINE_SIZE);
		//strcat(charOutputText, "$00,$00,$00,$00,$00,$00,$00,$00,");
		sprintf(charOutputText, "$00,$00,$00,$00,$00,$00,$00,$00,");
		strcat(charOutputText, charInFile);
		strcat(charOutputText, ";");
		strcat(charOutputText, compareChar);
		//strcat(compareChar, "\r\n");

		ret = SaveFile(outputFileName, charOutputText);

		//printf("%s\n", charInFile);
		memset(charInputText, 0, FILE_LINE_SIZE);
		
		printf("\rprocess : %03d", i++);
	}
	printf("\n");

	ret = 0;
PROC_END:
	// Close input file
	fclose(pInputFile);

PROC_INPUT_ERROR_END:
	// Close table file
	fclose(pTableFile);

	return ret;
}



void Show_version(void){
	printf("%s\n", VERSION);
}



void Show_how_to_use(void){
	printf("font_table is make HANGUL font table\n");
	printf(" -t [file name] : HANGUL font table for make new table\n");
	printf(" -o [file name] : Output file. It is consist of HANGUL, FONT bytes\n");
	printf(" -i [file name] : Input file. (HANGUL table)\n");
}



// Return matched HANGUL line
int Find_HANGUL_line(FILE *fp, char* hangul){
	char line[FILE_LINE_SIZE];
	int ret = 0;
	
	if(fp == NULL){
		return -EINVAL;
	}
	
	fseek(fp, 0, SEEK_SET);

	memset(line, 0, FILE_LINE_SIZE);
	
	while(fgets(line, sizeof(line), fp) != NULL){
		if(line[5] == hangul[0]){
			if(line[6] == hangul[1]){
				if(line[7] == hangul[2]){
					break;
				}
			}
		}
		ret++;
		memset(line, 0, FILE_LINE_SIZE);
	}

	return ret;
}



int SaveFile(char *outputFileName, char *compareChar){
	FILE *fp;
	int ret;
	
	fp = fopen(outputFileName, "a+");
	if(fp == NULL){
		printf("SaveFile() NULL error\n");
		return -EINVAL;
	}
	
	fseek(fp, 0, SEEK_END);
	
	fprintf(fp, "%s\n", compareChar);
	//fwrite(compareChar, strlen(compareChar), sizeof(compareChar), fp);
	
	ret = fclose(fp);

	return 0;
}
