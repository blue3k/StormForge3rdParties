

set OUTPUT_NAME=openssl
set TARGET_MACHINE=x64

set OBJOUT_PATH=%BASE_PATH%intermediate/%TARGET_MACHINE%%BUILD_CONFIGURATION%/%OUTPUT_NAME%
set BINOUT_PATH=%BASE_PATH%bin/%TARGET_MACHINE%%BUILD_CONFIGURATION%
set LIBOUT_PATH=%BASE_PATH%lib/%TARGET_MACHINE%%BUILD_CONFIGURATION%

echo %OBJOUT_PATH%
echo %BINOUT_PATH%
echo %LIBOUT_PATH%

set CONFIG_PREFIX=
if %BUILD_CONFIGURATION% == DEBUG (
	set CONFIG_PREFIX=debug-
)



if NOT EXIST "%LIBOUT_PATH%/libeay32.lib" (goto build)
if NOT EXIST "%LIBOUT_PATH%/ssleay32.lib" (goto build)


goto exit


:build
	cd openssl-1.0.2a
	
	call perl Configure %CONFIG_PREFIX%VC-WIN64A --openssldir=%BINOUT_PATH% --prefix=%OBJOUT_PATH%
	call ms\do_win64a
	nmake -f ms\nt.mak
	nmake -f ms\nt.mak install

	del /f /q tmp32\*
	del /f /q tmp32.dbg\*
	del /f /q out32\*
	del /f /q out32.dbg\*

	echo Copy compiled files
	xcopy %OBJOUT_PATH:/=\%\include\* %BASE_PATH:/=\%\Include\* /S /R /Y
	xcopy %OBJOUT_PATH:/=\%\lib\* %LIBOUT_PATH:/=\%\* /S /R /Y 

	cd ..

:exit



