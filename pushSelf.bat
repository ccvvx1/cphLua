chcp 65001

@echo off
echo 用法：
echo pushSelf.bat [1:git pull] [2:git push]
echo
set /p var=请输入备注---
echo 您输入的备注内容为%var%

REM 获取第一个参数并输出
echo 第一个参数：%~1
REM 获取第一个参数并赋值给变量a
set a=%~1

REM 判断a是否等于"1"
if "%a%"=="1" (
    git pull origin master
) else if "%a%"=="2" (
    git pull origin master
)
git pull origin master
git add sseTotal.rar
git add pushSelf.bat
git add luaScript/*
git add srcScript/*
@echo off
echo %var%
git commit -m "%var%"
if "%a%"=="2" (
    git push origin master:master
)
git push origin master:master

set PWD=%~dp0
cd ..\create_script_python
git pull
cd ..\createScriptRust
git pull
cd ..\create_scrip_vue
git pull
cd %PWD%