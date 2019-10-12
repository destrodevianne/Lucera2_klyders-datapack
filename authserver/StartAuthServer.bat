@echo off
:start
echo Starting AuthServer.
echo.
java -server -Dfile.encoding=UTF-8 -Xmx256m -cp config;./* l2.authserver.AuthServer
if ERRORLEVEL 2 goto restart
if ERRORLEVEL 1 goto error
goto end
:restart
echo.
echo Server restarted ...
echo.
goto start
:error
echo.
echo Server terminated abnormaly ...
echo.
:end
echo.
echo Server terminated ...
echo.

pause
