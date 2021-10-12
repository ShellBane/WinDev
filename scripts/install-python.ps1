Invoke-WebRequest -uri https://www.python.org/ftp/python/2.7.18/python-2.7.18.msi -outfile c:\python-2.7.18.msi
msiexec /i "C:\python-2.7.18.msi"
[System.Environment]::SetEnvironmentVariable("PATH", "C:\Python27;" + $Env:Path, [System.EnvironmentVariableTarget]::Machine)