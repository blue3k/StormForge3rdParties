




include_directories(AFTER 
	include
)

set(SRC_FILES
	src/lib_json/json_reader.cpp
	src/lib_json/json_value.cpp
	src/lib_json/json_writer.cpp
)






add_library(jsoncpp ${SRC_FILES})


install (TARGETS jsoncpp
         ARCHIVE DESTINATION lib COMPONENT SF3rdParties
         LIBRARY DESTINATION lib COMPONENT SF3rdParties
         RUNTIME DESTINATION bin COMPONENT SF3rdParties)




