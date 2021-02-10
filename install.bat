@echo off

rem verify admin
net session >nul 2>&1 || (
    echo Please run this script with Administrator permissions.
    exit
)

mkdir C:\tools
setx /M path "%path%;C:\tools"
echo #!python3 > C:\tools\tcs
type .\tcs C:\tools\tcs >> C:\tools\tcs

pip install selenium

choco version >nul 2>&1 || (
    echo Either install chocolatey as seen in https://chocolatey.org/install
    echo or install clang, clang-format and chromedriver manually.
)

choco install llvm selenium-chrome-driver