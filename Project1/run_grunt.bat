@echo off

call npm.cmd install
if ERRORLEVEL 1 exit /b 1

call grunt.cmd
if ERRORLEVEL 1 exit /b 1
