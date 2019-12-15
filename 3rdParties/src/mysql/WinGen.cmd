


set CMAKE_SYSTEM_NAME=Windows
set PROCESS_ARCHITECTUR=x64


if not exist build%CMAKE_SYSTEM_NAME% mkdir build%CMAKE_SYSTEM_NAME%
set BUILD_DIR=build%CMAKE_SYSTEM_NAME%\%PROCESS_ARCHITECTUR%


if not exist %BUILD_DIR% mkdir %BUILD_DIR%



cd %BUILD_DIR%

cmake ../../mysql-connector-c++-8.0.18-src -G "Visual Studio 15 2017" -A %PROCESS_ARCHITECTUR% ^
	-DCMAKE_INSTALL_PREFIX=../../build%CMAKE_SYSTEM_NAME%/%PROCESS_ARCHITECTUR% -DWITH_SSL=../../../openssl/buildWindows/openssl ^
	-DCMAKE_GENERATOR_PLATFORM=%PROCESS_ARCHITECTUR% -DBUILD_STATIC=ON





pause


