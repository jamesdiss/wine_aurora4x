#!/bin/bash
export WINEPREFIX=~/.wine/aurora4x/
export WINEARCH=win32
FILE=Aurora_latest.exe

winetricks -q vb6run ole32 mdac27 jet40 comdlg32ocx comctl32ocx
test -f $FILE || curl http://aurora.iosphe.re/Aurora_latest.exe > $FILE
wine $FILE
