@echo off
set DEST=.\.exvim.BottleBlog
set TOOLS=D:\exVim\vimfiles\tools\
set FILE_SUFFIXS=*.TPL *.HTML *.CSS *.JS *.PY *.SQL *.EXVIM
set GAWK_SUFFIX=inc
set FILE_FILTER_PATTERN="\\\\.tpl$|\\\\.html$|\\\\.css$|\\\\.js$|\\\\.py$|\\\\.sql$|\\\\.exvim$"
set FOLDER_FILTER_PATTERN=""
set TMP=%DEST%\_files_gawk
set TMP2=%DEST%\_files
set TARGET=%DEST%\files
set ID_TARGET="%DEST%\idutils-files"
call %TOOLS%\shell\batch\update-filelist.bat
