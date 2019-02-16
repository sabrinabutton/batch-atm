@echo off
title ATM
color 7C
:login
cls
echo ---========////// A T M \\\\\========---
echo.
echo        Hello, welcome to SBANK ATM.
echo  Please enter your name below to access
echo                your account. 
echo.
set /a bal=0
set /p name=USERNAME:
goto menu             
:menu
cls
echo ---========////// A T M \\\\\========---
echo.
echo Hello, %name%, what would you like to do?
echo.
echo                1. Deposit
echo                2. Withdraw
echo                3. Close ATM
echo                4. Logout
echo.
echo          Current Balance: $%bal%
set /p answer=(press option number and press enter)
if %answer%==1 goto d
if %answer%==2 goto w
if %answer%==3 goto x
if %answer%==4 goto login
:d
cls
echo ---========////// A T M \\\\\========---
echo.
echo    How much would you like to deposit?
echo.
echo                  1. $50
echo                  2. $100
echo                  3. $250
echo                  4. $500
echo                  5. $1000
echo.
echo           Current Balance: $%bal%
set /p answer=(press option number and press enter)
if %answer%==1 goto t1
if %answer%==2 goto t2
if %answer%==3 goto t3
if %answer%==4 goto t4
if %answer%==5 goto t5
:t1
set /a bal=%bal%+50
goto tc
:t2
set /a bal=%bal%+100
goto tc
:t3
set /a bal=%bal%+250
goto tc
:t4
set /a bal=%bal%+500
goto tc
:t5
set /a bal=%bal%+1000
goto tc
:w
cls
echo ---========////// A T M \\\\\========---
echo.
echo    How much would you like to withdrawl?
echo                  1. $50
echo                  2. $100
echo                  3. $250
echo                  4. $500
echo                  5. $1000
echo.
echo          Current Balance: $%bal%
set /p answer=(press option number and press enter)
if %answer%==1 goto t10
if %answer%==2 goto t20
if %answer%==3 goto t30
if %answer%==4 goto t40
if %answer%==5 goto t50
:t10
set /a bal=%bal%-50
goto tc
:t20
set /a bal=%bal%-100
goto tc
:t30
set /a bal=%bal%-250
goto tc
:t40
set /a bal=%bal%-500
goto tc
:t50
set /a bal=%bal%-1000
goto tc
:x
exit/b
:tc
cls
echo ---========////// A T M \\\\\========---
echo.
echo           Transaction Completed!
echo.
echo               1. Main Menu
echo               2. Exit
echo               3. Logout
echo.
echo          Current Balance: $%bal%
set /p answer=(press option number and press enter)
if %answer%==1 goto menu
if %answer%==2 goto x
if %answer%==3 goto login
              


