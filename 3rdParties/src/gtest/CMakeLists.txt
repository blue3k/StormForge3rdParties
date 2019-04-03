


include_directories(
	./
	gtest/googlemock/include
	gtest/googlemock
	gtest/googletest/include
	gtest/googletest
)



set(SRC_FILES
	gtest/googletest/src/gtest-all.cc
	gtest/googlemock/src/gmock-all.cc
)



add_library(gtest ${SRC_FILES})


