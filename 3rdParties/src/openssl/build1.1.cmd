
%~d0
cd %~dp0


set BUILD_DIR=%~dp0..\..\..\Intermediate\%1\openssl\%2
set OUTPUT_DIR=%~dp0..\..\..\Bin\%1\%2

call "%VS140COMNTOOLS%..\..\VC\vcvarsall.bat" %2


@if not "%1" == "Win" goto endWin
@if "%2" == "x64" set CONFIG_TARGET=VC-WIN64A
@if "%2" == "x86" set CONFIG_TARGET=VC-WIN32
:endWin

rem TODO: add handling for android: android android-armeabi android-mips android-x86 android64 android64-aarch64
@if not "%1" == "Android" goto endAndroid
@if "%2" == "x64" set CONFIG_TARGET=android64
@if "%2" == "x86" set CONFIG_TARGET=android-x86
@if "%2" == "arm" set CONFIG_TARGET=android-armeabi
@if "%2" == "arm64" set CONFIG_TARGET=a Winndroid64
:endAndroid

@set PATH=%PATH%;"%~dp0..\..\tool\bin\NASM";



@echo CONFIG_TARGET=%CONFIG_TARGET%
@echo BUILD_DIR=%BUILD_DIR%

:build

	@if not exist %BUILD_DIR% mkdir %BUILD_DIR%
	cd %BUILD_DIR%

	call perl %~dp0openssl-1.1.0f\Configure %CONFIG_TARGET% enable-egd enable-ssl3 enable-ssl3-method no-threads --openssldir=%OUTPUT_DIR%\openssl --prefix=%OUTPUT_DIR%\openssl -DNOCRYPT

	nmake
	
	@if not exist %OUTPUT_DIR%\openssl\bin\libcrypto-1_1-%2.dll nmake install

	@echo Copy compiled files
	xcopy %OUTPUT_DIR%\openssl\bin\*.dll %OUTPUT_DIR%\..\%2Debug\* /S /R /Y
	xcopy %OUTPUT_DIR%\openssl\bin\*.pdb %OUTPUT_DIR%\..\%2Debug\* /S /R /Y
	xcopy %OUTPUT_DIR%\openssl\bin\*.dll %OUTPUT_DIR%\..\%2Release\* /S /R /Y
	xcopy %OUTPUT_DIR%\openssl\bin\*.pdb %OUTPUT_DIR%\..\%2Release\* /S /R /Y


:exit



