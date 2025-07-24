@echo off
set "PScommand=PowerShell -NoLogo -NoProfile -NonInteractive -InputFormat None -ExecutionPolicy Bypass"
set "exclude_file=.\install.bat"
echo.
echo ============================================================
echo Installing Microsoft Store
echo ============================================================
echo.
for %%i in (.\*) do (
REM	echo Current File: %%i
	echo. 
	if /i not "%%i"=="%exclude_file%" (
		echo Processing: %%i
		%PScommand% Add-AppxPackage -Path %%i
	)
)
pause
