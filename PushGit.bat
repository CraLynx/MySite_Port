@echo off
cd /d d:\github\mysite_port
git status
SET /P COM=Введите коментарий:
ECHO Ваш коментарий - %COM%
PAUSE
git add -A
git commit -m "%COM%"
git push
pause