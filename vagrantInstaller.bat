@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n=allowGlobalConfirmation
choco install vagrant 
choco install virtualbox 
choco install powershell
choco install curl
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All"
set /p drive="Enter Drive Letter To Install files in : "

mkdir "%drive%:\vagrant\"
cd /d "%drive%:\vagrant\"
set /p password="Enter ftp password : "

curl ftp://ftp.mpenv.com/setup/VagrantFileMongo --user sre:%password% -o %drive%:\vagrant\Vagrantfile
vagrant up
