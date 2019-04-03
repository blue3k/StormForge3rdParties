




include_directories(AFTER 
	include
)

set(SRC_FILES
	src/lib_json/json_reader.cpp
	src/lib_json/json_value.cpp
	src/lib_json/json_writer.cpp
)






add_library(jsoncpp ${SRC_FILES})




