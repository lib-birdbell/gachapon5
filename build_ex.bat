SET TEMP_ROM_FILE_NAME=sdg5_noheader

ca65 bank_00.asm -g
ca65 bank_01.asm -g
ca65 bank_02.asm -g
ca65 bank_03.asm -g
ca65 bank_04.asm -g 
ca65 bank_05.asm -g 
ca65 -D ORIGINAL=0 bank_06.asm -g
ca65 bank_07.asm -g
ca65 -D ORIGINAL=0 bank_08.asm -g
ca65 bank_09.asm -g
ca65 bank_0A.asm -g
ca65 -D ORIGINAL=0 bank_0B.asm -g
ca65 -D ORIGINAL=0 bank_0C.asm -g
ca65 -D ORIGINAL=0 bank_0D.asm -g
ca65 -D ORIGINAL=0 bank_0E.asm -g
ca65 -D ORIGINAL=0 bank_0F.asm -g

ld65 -C nes.cfg bank_00.o bank_01.o bank_02.o bank_03.o bank_04.o bank_05.o bank_06.o bank_07.o bank_08.o bank_09.o bank_0A.o bank_0B.o bank_0C.o bank_0D.o bank_0E.o bank_0F.o -m mapfile.txt -Ln labels.txt -o %TEMP_ROM_FILE_NAME%.nes --dbgfile sdg5.dbg

copy /B exheader.bin+%TEMP_ROM_FILE_NAME%.nes+chr_rom_ex.bin /b sdg5_ex.nes

del %TEMP_ROM_FILE_NAME%.nes

del *.o

echo off

pause
