@echo off
title Configurador de Git - Instituto
echo Configurando Git para el usuario actual...

:: --- CONFIGURA TUS DATOS AQUÍ ---
set GIT_USER=Tomás Canales
set GIT_EMAIL=tomas.canales.mella@gmail.com
:: -------------------------------

:: Comandos de configuración
git config --global user.name "%GIT_USER%"
git config --global user.email "%GIT_EMAIL%"

:: Opcional: Configuraciones de comodidad
git config --global core.editor "code --wait"
git config --global init.defaultBranch main
git config --global color.ui auto

echo.
echo [OK] Git configurado con exito:
echo Nombre: %GIT_USER%
echo Email:  %GIT_EMAIL%
echo.
echo Verificando configuracion actual:
git config --list --global	
pause
