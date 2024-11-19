SET TEXT_TILE_ADDR0=131088
SET TEXT_TILE_ADDR1=132112
SET TEXT_TILE_ADDR2=133136
SET TEXT_TILE_ADDR3=134160
SET TEXT_TILE_ADDR4=262160
SET TEXT_TILE_ADDR5=263184
SET TEXT_TILE_ADDR6=264208
SET TEXT_TILE_ADDR7=265232
SET TEXT_TILE_ADDR_P0=262160
SET TEXT_TILE_ADDR_P1=263184
SET TEXT_TILE_ADDR_P2=276496
SET TEXT_TILE_ADDR_P3=277520
SET TEXT_TILE_ADDR_INV0=274448
SET TEXT_TILE_ADDR_INV1=275472
SET MAP_TILE_ADDR=135184
SET TILE_ADDR_ALL=-a0 %TEXT_TILE_ADDR0% -a1 %TEXT_TILE_ADDR1% -a2 %TEXT_TILE_ADDR2% -a3 %TEXT_TILE_ADDR3%
SET TILE_ADDR_NEW_ALL=-a0 %TEXT_TILE_ADDR4% -a1 %TEXT_TILE_ADDR5% -a2 %TEXT_TILE_ADDR6% -a3 %TEXT_TILE_ADDR7%
SET TILE_ADDR_NEW_PILOT=-a0 %TEXT_TILE_ADDR_P0% -a1 %TEXT_TILE_ADDR_P1% -a2 %TEXT_TILE_ADDR_P2% -a3 %TEXT_TILE_ADDR_P3%
SET TILE_ADDR_NEW_CITY=-a0 %TEXT_TILE_ADDR4% -a1 %TEXT_TILE_ADDR5% -a2 %TEXT_TILE_ADDR_INV0% -a3 %TEXT_TILE_ADDR_INV1%
SET ROM_FILE_NAME=sdg5.nes
echo "Base tilemap"
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 134160 -i %ROM_FILE_NAME% -o -t
echo "Pilot"
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 70947 -i %ROM_FILE_NAME% -t
echo "Pilot FULL NAME"
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 71193 -i %ROM_FILE_NAME% -t
echo "Party"
tileview.exe -x 32 -y 16 %TILE_ADDR_ALL% -c 71749 -i %ROM_FILE_NAME% -t
echo "City"
tileview.exe -x 32 -y 16 %TILE_ADDR_ALL% -c 71963 -i %ROM_FILE_NAME% -t
echo "Unit"
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 72097 -i %ROM_FILE_NAME% -t
echo "Team color"
tileview.exe -x 32 -y 16 %TILE_ADDR_ALL% -c 72748 -i %ROM_FILE_NAME% -t
echo "Fleet 1 2 3 4"
tileview.exe -x 32 -y 16 %TILE_ADDR_ALL% -c 72769 -i %ROM_FILE_NAME% -t
echo "Base panel ( 14 x 6 )"
tileview.exe -x 14 -y 6 %TILE_ADDR_ALL% -c 115424 -i %ROM_FILE_NAME% -e -t
tileview.exe -x 14 -y 6 %TILE_ADDR_ALL% -c 115573 -i %ROM_FILE_NAME% -e -t
echo "Down panel ( 14 x 4 )"
tileview.exe -x 14 -y 24 %TILE_ADDR_ALL% -c 49168 -i %ROM_FILE_NAME% -t
tileview.exe -x 14 -y 24 %TILE_ADDR_ALL% -c 49504 -i %ROM_FILE_NAME% -t
tileview.exe -x 14 -y 24 %TILE_ADDR_ALL% -c 49840 -i %ROM_FILE_NAME% -t
tileview.exe -x 14 -y 24 %TILE_ADDR_ALL% -c 50176 -i %ROM_FILE_NAME% -t
tileview.exe -x 14 -y 24 %TILE_ADDR_ALL% -c 50512 -i %ROM_FILE_NAME% -t
tileview.exe -x 14 -y 24 %TILE_ADDR_ALL% -c 50848 -i %ROM_FILE_NAME% -t
tileview.exe -x 14 -y 24 %TILE_ADDR_ALL% -c 51184 -i %ROM_FILE_NAME% -t
tileview.exe -x 14 -y 24 %TILE_ADDR_ALL% -c 51520 -i %ROM_FILE_NAME% -t
tileview.exe -x 14 -y 24 %TILE_ADDR_ALL% -c 51856 -i %ROM_FILE_NAME% -t
tileview.exe -x 14 -y 24 %TILE_ADDR_ALL% -c 52192 -i %ROM_FILE_NAME% -t
echo "String tables 13"
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 52791 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 52960 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 57421 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 57587 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 57636 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 57681 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 59510 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 59554 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 59586 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 59616 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 100706 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 101135 -i %ROM_FILE_NAME% -t -l 79276
tileview.exe -x 32 -y 32 %TILE_ADDR_ALL% -c 101812 -i %ROM_FILE_NAME% -t -l 79276
PAUSE