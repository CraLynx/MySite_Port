@echo off
cd /d d:\github\mysite_port
git status
:renamecom
SET /P COM=Enter your comment:
ECHO Your comment is - %COM%
Echo Are you sure? Y/N
SET /p Cheking= And your ansewer:
if "%cheking%" == "Y" or "y" or "yes" or "YES"(
git add -A
git commit -m "%COM%"
git push
pause
) else (
goto renamecom
)
