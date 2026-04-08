# 毛选Skill Session Start Hook - Windows PowerShell
# 读取并注入毛选武装思想入口Skill

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillFile = Join-Path $ScriptDir "..\skills\arming-thought\SKILL.md"

if (Test-Path $SkillFile) {
    Write-Host "[毛选Skill] 武装思想已就绪" -ForegroundColor Cyan
    Write-Host "[毛选Skill] 总原则：实事求是" -ForegroundColor Cyan
    Write-Host ""
    Get-Content $SkillFile -Raw
} else {
    Write-Host "[毛选Skill] 警告：未找到武装思想入口Skill文件" -ForegroundColor Yellow
}