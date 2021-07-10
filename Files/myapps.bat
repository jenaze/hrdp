@echo off

::curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://raw.githubusercontent.com/jenaze/hrdp/main/Files/FastConfigVPS_v5.1.exe > out.txt 2>&1
::curl -o "C:\Users\Public\Desktop\Everything.exe" https://raw.githubusercontent.com/jenaze/hrdp/main/Files/Everything.exe > out.txt 2>&1
::curl -o "C:\Users\Public\Desktop\BANDIZIP-SETUP.exe" https://raw.githubusercontent.com/jenaze/hrdp/main/Files/BANDIZIP-SETUP.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\UDP Unicorn.exe" https://raw.githubusercontent.com/jenaze/hrdp/main/Files/UDP_Unicorn.exe > out.txt 2>&1

mkdir "C:\Users\Public\setup"
curl -o "C:\Users\Public\setup\winrar.exe" https://www.rarlab.com/rar/winrar-x64-602.exe > out.txt 2>&1
curl -o "C:\Users\Public\setup\brave.exe" https://brave-browser-downloads.s3.brave.com/latest/brave_installer-x64.exe > out.txt 2>&1
curl -o "C:\Users\Public\setup\npp.exe" https://raw.githubusercontent.com/jenaze/hrdp/main/Files/npp.7.9.4.Installer.x64.exe > out.txt 2>&1
curl -o "C:\Users\Public\setup\pnn.zip" https://raw.githubusercontent.com/jenaze/hrdp/main/Files/pnn.zip > out.txt 2>&1
C:\Users\Public\setup\winrar.exe /S
C:\Users\Public\setup\brave.exe --install --silent --system-level
C:\Users\Public\setup\npp.exe /S
curl -o "C:\Program Files\WinRAR\rarreg.key" https://raw.githubusercontent.com/jenaze/hrdp/main/Files/rarreg.key > out.txt 2>&1
curl -o "C:\Users\Public\setup\7za.exe" https://raw.githubusercontent.com/jenaze/hrdp/main/Files/7za.exe > out.txt 2>&1
curl -o "C:\Users\Public\setup\nircmdc.exe" https://raw.githubusercontent.com/jenaze/hrdp/main/Files/nircmdc.exe > out.txt 2>&1

"C:\Users\Public\setup\7za.exe" x "C:\Users\Public\setup\pnn.zip" -oC:\Users\Public\setup


"C:\Users\Public\setup\nircmdc.exe" shortcut "C:\Users\Public\setup\npnAccountX\NordVpn Checker Account  By X-KILLER.exe" "C:\Users\Public\Desktop\" "nvpn1"
"C:\Users\Public\setup\nircmdc.exe" shortcut "C:\Users\Public\setup\nvpnMonacoa\NordVpn.exe" "C:\Users\Public\Desktop\" "nord2"
"C:\Users\Public\setup\nircmdc.exe" shortcut "C:\Users\Public\setup\Pgnarator\Proxy Generator 1.3.6 BETA.exe" "C:\Users\Public\Desktop\" "Proxy Generator"
