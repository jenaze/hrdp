@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Google Cloud SDK Shell.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Microsoft Edge.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Firefox.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > out.txt 2>&1

net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1

REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator @#Hsh123456 /add >nul
net localgroup administrators administrator /add >nul
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && For /F "Delims=" %%A In ('"curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url"') Do Set "test=%%~A" || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels "

set word=bitspy.ir
call set str=%%test:tcp.ngrok.io=%word%%%
call set str=%%str:tcp://=%%

echo sv%str%
echo User: Administrator
echo Pass: @#Hsh123456
curl -O https://raw.githubusercontent.com/jenaze/hrdp/main/Files/DisablePasswordComplexity.ps1 > out.txt 2>&1

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

"C:\Users\Public\setup\7za.exe" x "C:\Users\Public\setup\pnn.zip" -oC:\Users\Public\setup  > out.txt 2>&1

timeout 1
"C:\Users\Public\setup\nircmdc.exe" shortcut "C:\Users\Public\setup\npnAccountX\NordVpn Checker Account  By X-KILLER.exe" "C:\Users\Public\Desktop\" "nvpn1"
"C:\Users\Public\setup\nircmdc.exe" shortcut "C:\Users\Public\setup\nvpnMonacoa\NordVpn.exe" "C:\Users\Public\Desktop\" "nord2"
"C:\Users\Public\setup\nircmdc.exe" shortcut "C:\Users\Public\setup\Pgnarator\Proxy Generator 1.3.6 BETA.exe" "C:\Users\Public\Desktop\" "Proxy Generator"

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
ping -n 10 127.0.0.1 >nul
