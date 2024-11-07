set TABLE_NAME=galmurim.tbl
set INPUT_FILE_NAME=input.txt
set OUTPUT_FILE_NAME=output.txt
if exist %OUTPUT_FILE_NAME% (
del %OUTPUT_FILE_NAME%
)
font_table.exe -t %TABLE_NAME% -o %OUTPUT_FILE_NAME% -i %INPUT_FILE_NAME%
PAUSE