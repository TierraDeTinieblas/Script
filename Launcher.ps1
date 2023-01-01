# Things to do:
# 1. git pull from https://github.com/TierraDeTinieblas/Launcher.git
# 2. Launch Prism Launcher


# 0. Close "LauncherInstall.exe"
Stop-Process -Name LauncherInstall*


# 1. git pull
    echo "Obteniendo la última versión del launcher ..."
Set-Location "C:\Program Files\Launcher"
."C:\Program Files\Git\bin\git.exe" pull
    echo "Listo"

# 2. Launch Prism Launcher
.\prismlauncher.exe