

###################################################

ifndef TARGET_PLATFORM
	%error TARGET_PLATFORM need to be defined
endif

ifndef BUILD_CONFIGURATION
	%error BUILD_CONFIGURATION need to be defined
endif

###################################################

OUTPUT_NAME = gtest
LIB_SRC_PATH = gtest-1.7.0


include ../../build_config/make_config_$(TARGET_PLATFORM).mk


#from original makefile

LIBOBJECTS	= \
	gtest-all.cc \



OBJ_LIST = $(LIBOBJECTS)


OBJS = $(addprefix $(OBJOUT_PATH)/,$(OBJ_LIST:.cc=.obj))


INCLUDS += -I$(LIB_SRC_PATH) -I$(LIB_SRC_PATH)/include 



.PHONY: 


define buid_src
	createpath $(dir $(2))
	$(CC) -c $(1) $(CPPFLAGS) $(INCLUDS) $(DEFINES) -Fo$(2) -Fa$(2:.obj=.asm)
	
endef



$(OBJOUT_PATH)/%.obj: $(LIB_SRC_PATH)/src/%.cc
	$(call buid_src,$(<),$(@))


	
validatepath:
	createpath $(OBJOUT_PATH)
	createpath $(BINOUT_PATH)
	createpath $(LIBOUT_PATH)

	

$(LIBOUT_PATH)/$(OUTPUT_NAME).lib: $(OBJS)
	echo compile $(OUTPUT_NAME).....
	$(AR) $(ARFLAGS) -OUT:$@ $(OBJS)

	

build: validatepath  $(LIBOUT_PATH)/$(OUTPUT_NAME).lib
	echo $(OUTPUT_NAME) done.....
	copyfile +src:src/gtest/$(LIB_SRC_PATH)/include/*.h +dest:include/ +Recursive:true

	


