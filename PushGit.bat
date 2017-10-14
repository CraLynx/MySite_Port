@echo off
cd /d d:\github\mysite_port
git status
:again
	SET /P COM=Enter your comment:
	echo Your comment is - %COM%
	echo Are you sure? y/n
	set /p res=And your answer:

	if "%res%"=="y" (
		git add -A
		git commit -m "%COM%"
		git push
			) else (
		echo %res%
		goto again
		)
Pause
