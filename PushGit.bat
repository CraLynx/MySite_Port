@echo off
cd /d d:\github\mysite_port
git status
:renamecom
	SET /P COM=Enter your comment:
	ECHO Your comment is - %COM%
	Echo Are you sure? y/n
		SET /p cheking=And your answer:
	if "%checking%" == "y" (
		git add -A
		git commit -m "%COM%"
		git push
		pause
	) else (
		goto renamecom
		)
Pause
