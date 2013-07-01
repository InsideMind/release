@echo off
set jarName=%~dp0%cycles.jar
java -jar %jarName% im.apps.cycles.ImCycles %*
