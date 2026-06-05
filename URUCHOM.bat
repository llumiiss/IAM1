@echo off
chcp 65001 >nul
cd /d "%~dp0"

title Pac-Man 3D

echo.
echo  ========================================
echo    PAC-MAN 3D
echo  ========================================
echo.

if not exist "index.html" (
    echo BLAD: Brak pliku index.html w tym folderze.
    echo Folder: %~dp0
    pause
    exit /b 1
)

if not exist "three.min.js" (
    echo BLAD: Brak pliku three.min.js
    echo Oba pliki musza byc w folderze: %~dp0
    pause
    exit /b 1
)

echo Uruchamiam serwer i otwieram gre...
echo.
echo Adres gry:  http://localhost:8765/index.html
echo.
echo Aby ZATRZYMAC serwer - zamknij to okno lub wcisnij Ctrl+C
echo.

start "" "http://localhost:8765/index.html"

where py >nul 2>&1
if %errorlevel%==0 (
    py -m http.server 8765
    goto :end
)

where python >nul 2>&1
if %errorlevel%==0 (
    python -m http.server 8765
    goto :end
)

echo BLAD: Nie znaleziono Pythona.
echo Zainstaluj Python z python.org lub wpisz recznie w CMD:
echo   cd /d "%~dp0"
echo   python -m http.server 8765
pause
exit /b 1

:end
pause
