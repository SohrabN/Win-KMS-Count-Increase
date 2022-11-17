@echo off
set skms=<KMS_Host>
for %%i in (. . . . . . . . . . . . . . . . . . . . . . . . . .) do call :Act %skms%
slmgr /ato
sc stop sppsvc
goto :end
:Act
sc stop sppsvc
xcopy "7B296FB0-376B-497e-B012-9C450E1B7327-5P-0.C7483456-A289-439d-8115-601632D005A0" "%systemroot%\system32\*" /H /R /K /Y
xcopy "7B296FB0-376B-497e-B012-9C450E1B7327-5P-1.C7483456-A289-439d-8115-601632D005A0" "%systemroot%\system32\*" /H /R /K /Y
sc start sppsvc
cscript.exe "%systemroot%\system32\slmgr.vbs" /skms %1
cscript.exe "%systemroot%\system32\slmgr.vbs" /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
cscript.exe "%systemroot%\system32\slmgr.vbs" /ato
sc stop sppsvc
:end