@echo off
cd /d d:\github\mysite_port
git status
:renamecome
	SET /P COM=Enter your comment:
	ECHO Your comment is - %COM%
	Echo Are you sure? y/n
	SET /p chekanswer=And your answer:

	if "%checkanswer%" == "y" (
		git add -A
		git commit -m "%COM%"
		git push
		pause
	) else (
echo %checkanswer%
ECHO Your comment is - %COM%
		goto :renamecome

		)
Pause
