@echo off
echo "Running git bat script..."

REM Check if Argument 1 is passed
  if "%1"=="" (
      set arg1="---"
  ) else (
      set arg1=%*
  )

::Commands
(
  echo "================= Status =================="
  git status --short
  echo "==========================================="
  git add .
  echo "================= Added! =================="
  git commit -m "%arg1%"
  echo [commit: "%arg1%"]
  echo "================ Commited! ================"
  git push
  echo "================= Pushed! ================="
)

REM NOTE(Pavel): Can't make pause optional, maybe later... Probably, to make it possible the first arg should be surrounded with qutes by a user.
REM Flag to prevent terminal closing
REM if "%2"=="p" (
  pause
REM )

