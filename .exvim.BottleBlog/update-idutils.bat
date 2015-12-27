@echo off
set DEST=.\.exvim.BottleBlog
set TOOLS=D:\exVim\vimfiles\tools\
set EXCLUDE_FOLDERS=
set TMP=%DEST%\_ID
set TARGET=%DEST%\ID
call %TOOLS%\shell\batch\update-idutils.bat
