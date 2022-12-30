# List of things to do:
# 1. Install the Latest Java
# 2. Install vcredist 2022 x64
# 3. Install Git
# 4. Get a Prism Launcher configuration from Git w/ Forge 1.16.5 and the mods already on it
# 5. Get the launcher script from Git that will launch Prism Launcher and update everything



# 0. Init
	echo "Script de Instalación"
	echo "_____________________________"
	echo "Eliminando carpeta C:\Temp\LauncherTemp ..."
Remove-Item C:\Temp\LauncherTemp -Recurse -Force
	echo "Listo"
	echo "Creando carpeta C:\Temp\LauncherTemp ..." 
New-Item -Path "C:\Temp\" -Name "LauncherTemp" -ItemType "directory"
	echo "Listo"
Set-Location C:\Temp\LauncherTemp\


# 1. Get Java Version 8.0.325.8
	echo "Instalando Java 8.0.325.8 ..."
winget install EclipseAdoptium.Temurin.8.JRE -v 8.0.352.8 --accept-package-agreements --accept-source-agreements
	echo "Listo"


# 2. Install vcredist 2022 x64
	echo "Obteniendo vcredist 2022 x64 ..." 
Invoke-WebRequest https://aka.ms/vs/17/release/vc_redist.x64.exe -OutFile vc_redist.x64.exe
	echo "Listo"
	echo "Instalando vcredist 2022 x64 ..."
.\vc_redist.x64.exe -s
	echo "Listo"


# 3. Install Git
	echo "Instalando Git ..."
winget install Git.Git --accept-package-agreements --accept-source-agreements
	echo "Listo"


# 4 Install Prism Launcher
Set-Location ~
	echo "Instalando Launcher ..."
."C:\Program Files\Git\bin\git.exe" clone https://github.com/TierraDeTinieblas/Launcher.git
	echo "Listo"
	echo "Añadiendo excepción de carpeta segura ..."
."C:\Program Files\Git\bin\git.exe" config --global --add safe.directory ~\Launcher
	echo "Listo"


# 5. Get launcher script
Set-Location ~\Desktop
	echo "Descargando Script de Inicialización ..."
Invoke-WebRequest https://github.com/TierraDeTinieblas/Script/raw/main/Launcher.exe -OutFile Launcher.exe
	echo "Listo"
.\Launcher.exe
    echo "Cerrando LauncherInstall ..."
StopProcess -Name Stop-Process -Name LauncherInstall*