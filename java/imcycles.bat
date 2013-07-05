@echo off
set jarName=%~dp0%cycles.jar
java -cp %jarName% im.apps.cycles.ImCycles %*
