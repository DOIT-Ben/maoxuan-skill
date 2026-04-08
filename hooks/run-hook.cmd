@echo off
REM 毛选Skill Hook Runner - Windows CMD
REM 根据参数调用对应的hook脚本

setlocal enabledelayedexpansion

set "HOOK_DIR=%~dp0"
set "HOOK_NAME=%1"

if "%HOOK_NAME%"=="session-start" (
    if exist "%HOOK_DIR%session-start.ps1" (
        powershell -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%HOOK_DIR%session-start.ps1"
    ) else (
        echo [毛选Skill] 警告：未找到session-start.ps1
    )
) else (
    echo [毛选Skill] 未知hook类型：%HOOK_NAME%
)

endlocal