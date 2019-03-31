
cmake_minimum_required(VERSION 3.10)


project(SF3rdParties C CXX)


message ( "Input system = ${CMAKE_SYSTEM_NAME}" )




set(CMAKE_CXX_STANDARD 17)
if(MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /std:c++17")
endif(MSVC)



set(CMAKE_C_COMPILER clang)
#set(CMAKE_CXX_COMPILER clang++)

set(CMAKE_USE_MBEDTLS ON)


add_definitions(-DNOMINMAX)
add_definitions(-DHAVE_CONFIG_H)
add_definitions(-DCURL_STATICLIB)
add_definitions(-DHAVE_STDDEF_H=1)
add_definitions(-DHAVE_SYS_TYPES_H=1)



include_directories(AFTER 
	src/curl/curl
	src/libiconv/libiconv-1.15/include
	src/mbedtls/mbedtls-2.16.0/include
	src/libpng/lpng1617
)



add_subdirectory(src/src/curl/curl)
add_subdirectory(src/freetype)
add_subdirectory(src/gtest)
add_subdirectory(src/jasper/jasper)
add_subdirectory(src/jsoncpp)
add_subdirectory(src/lcms)
add_subdirectory(src/src/libiconv)
add_subdirectory(src/libmng/libmng-2.0.3)
add_subdirectory(src/libxml)
add_subdirectory(src/libpng/libpng1617)
add_subdirectory(src/mbedtls/mbedtls-2.16.0)
add_subdirectory(src/rdkafka)
add_subdirectory(src/tinyxml)
add_subdirectory(src/zlib/zlib-1.2.8)
add_subdirectory(src/yaml/yaml-0.1.7)



