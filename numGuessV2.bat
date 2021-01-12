@echo off
set /a num=%random% %%100 +1
cls
title Number Guess
:loop
REM cls
set /p geuss="Guess a number "
echo -----------------

if %geuss% == stop (
goto exitloop
REM pause
)

if %geuss% LSS %num% (
echo -----------------
echo Higher
REM pause
)

if %geuss% GTR %num% (
echo -----------------
echo Lower
REM pause
)

if %geuss% EQU %num% (
echo -----------------
echo You guessed correctly
goto exitloop
)

goto loop
:exitloop
set /p yin="Play again. y/n "
if %yin%==y (
cls
set /a num=%random% %%100 +1
goto loop
)