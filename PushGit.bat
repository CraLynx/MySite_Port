@echo off
cd /d d:\github\mysite_port
git status
:again
	SET /P COM=Enter your comment:
	ECHO Your comment is - %COM%
	Echo Are you sure? y/n
	set /p res=And your answer:

	if "%res%"=="y" then (
		git add -A
		git commit -m "%COM%"
		git push
			) else (
		echo %res%
		goto again
		)
Pause
