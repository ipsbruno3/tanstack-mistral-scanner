@echo off
title Compromised Package Scanner

echo.
echo [*] Scanning compromised packages...
echo.

set OUTPUT=%USERPROFILE%\Desktop\compromised_scan.txt

if exist "%OUTPUT%" del "%OUTPUT%"

echo [*] Searching node_modules folders...
echo.

for %%d in (
@tanstack
@mistralai
@uipath
@squawk
@tallyui
@beproduct
@draftauth
@draftlab
@supersurkhet
@taskflow-corp
@tolka
@mesadev
@ml-toolkit-ts
@dirigible-ai
@opensearch-project
agentwork-cli
cmux-agent-mcp
cross-stitch
git-branch-selector
git-git-git
ml-toolkit-ts
nextmove-mcp
safe-action
ts-dna
wot-api
guardrails-ai
mistralai
) do (

    echo Scanning %%d ...

    where /r C:\ "%%d" >> "%OUTPUT%" 2>nul
)

echo.
echo [*] Checking global npm packages...
echo.

for %%d in (
@tanstack/react-router
@mistralai/mistralai
@uipath/cli
@squawk/mcp
guardrails-ai
mistralai
) do (

    call npm ls -g %%d --depth=0 >> "%OUTPUT%" 2>nul
)

echo.
echo [DONE]
echo.
echo Results:
echo %OUTPUT%
echo.

pause
