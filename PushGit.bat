@echo off
cd /d d:\github\mysite_port
git status
SET /P COM=������� ����������:
ECHO ��� ���������� - %COM%
PAUSE
git add -A
git commit -m "%COM%"
git push
pause