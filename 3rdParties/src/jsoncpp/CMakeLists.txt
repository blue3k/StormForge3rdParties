




project(jsoncpp)





set(SRC_FILES
	src/lib_json/json_reader.cpp
	src/lib_json/json_value.cpp
	src/lib_json/json_writer.cpp
	include/json/lib_json/autolink.h
	include/json/lib_json/config.h
	include/json/lib_json/features.h
	include/json/lib_json/forwards.h
	include/json/lib_json/json.h
	include/json/lib_json/reader.h
	include/json/lib_json/value.h
	include/json/lib_json/writer.h
)






add_library(jsoncpp ${SRC_FILES})




