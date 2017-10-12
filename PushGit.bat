@echo off
cd /d d:\github\mysite_port
git status
SET /P COM=Enter your comment:
ECHO Your comment is - %COM%
PAUSE
git add -A
git commit -m "%COM%"
git push
pause