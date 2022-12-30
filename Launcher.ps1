# Things to do:
# 1. git pull from https://github.com/TierraDeTinieblas/Launcher.git
# 2. Launch Prism Launcher


# 0. Close "LauncherInstall.exe"
Stop-Process -Name LauncherInstall.exe


# 1. git pull
Set-Location ~\Launcher
."C:\Program Files\Git\bin\git.exe" pull


# 2. Launch MultiMC
.\prismlauncher.exe