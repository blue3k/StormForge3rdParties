


set CMAKE_SYSTEM_NAME=Windows
set PROCESS_ARCHITECTUR=x64


set BUILD_DIR=build%CMAKE_SYSTEM_NAME%



set CMAKE_BUILD_TYPE=Debug
cd %BUILD_DIR%\%PROCESS_ARCHITECTUR%
cmake --build . --parallel --target install  -- /p:Configuration=%CMAKE_BUILD_TYPE% 



set CMAKE_BUILD_TYPE=RelWithDebInfo
cd %BUILD_DIR%\%PROCESS_ARCHITECTUR%
cmake --build . --parallel --target install  -- /p:Configuration=%CMAKE_BUILD_TYPE% 

mkdir lib64\vs14\Release
xcopy lib64\vs14\*.lib lib64\vs14\Release /d /y



