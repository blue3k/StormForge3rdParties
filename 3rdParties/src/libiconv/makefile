



###################################################


###################################################

OUTPUT_NAME = libiconv
ICONV_SRC_PATH = libiconv-1.14


include ../../build_config/make_config_$(TARGET_PLATFORM).mk


.PHONY: build



#files in libcharset/lib
LIBCHARSET_OBJ = localcharset.o
#files in lib
ICONV_OBJ = relocatable.o iconv.o

LIBCHARSET_PATH=$(ICONV_SRC_PATH)/libcharset/lib
ICONV_PATH=$(ICONV_SRC_PATH)/lib

#For dll build
#CPPFLAGS += -DBUILDING_LIBICONV -DBUILDING_LIBCHARSET -DLIBDIR="./"

CPPFLAGS += -DLIBDIR=./


LIBCHARSET_OBJS = $(addprefix $(OBJOUT_PATH)/,$(LIBCHARSET_OBJ:.o=.obj))
ICONV_OBJS = $(addprefix $(OBJOUT_PATH)/,$(ICONV_OBJ:.o=.obj))

OBJS = $(LIBCHARSET_OBJS) $(ICONV_OBJS)


$(OBJOUT_PATH)/%.obj: $(LIBCHARSET_PATH)/%.c
	$(CC) -c $< $(CPPFLAGS) $(INCLUDS) $(DEFINES) -Fo$@  -Fa$(@:.obj=.asm)  -I$(ICONV_SRC_PATH)/libcharset -I$(ICONV_SRC_PATH)/libcharset/include 


$(OBJOUT_PATH)/%.obj: $(ICONV_PATH)/%.c
	$(CC) -c $< $(CPPFLAGS) $(INCLUDS) $(DEFINES) -Fo$@ -Fa$(@:.obj=.asm) -I $(ICONV_SRC_PATH) -I $(ICONV_SRC_PATH)/include


.PHONY: build $(ICONV_SRC_PATH)/config.h

.ONESHELL:

$(ICONV_SRC_PATH)/config.h :
	copyfile +src:src/$(OUTPUT_NAME)/configs-1.14/*.h +dest:src/$(OUTPUT_NAME)/$(ICONV_SRC_PATH)/ +Recursive:true



$(LIBOUT_PATH)/$(OUTPUT_NAME).lib: validatepath
	echo compile $(OUTPUT_NAME).....
	$(foreach TARGETOBJ,$(LIBCHARSET_OBJ), \
		$(eval SRC = $$(TARGETOBJ:.o=.c)) \
		$(eval DEST = $(OBJOUT_PATH)/$$(TARGETOBJ:.o=.obj)) \
		$(eval ARGUMENT = -c $(LIBCHARSET_PATH)/$(SRC) $(CPPFLAGS) $(INCLUDS) $(DEFINES) -Fo$(DEST) -Fa$(DEST:.obj=.asm) -I$(ICONV_SRC_PATH)/libcharset -I$(ICONV_SRC_PATH)/libcharset/include) \
		shellbridge +cmd:$(CC) +arg:"$(ARGUMENT)"; \
	)
	$(foreach TARGETOBJ,$(ICONV_OBJ), \
		$(eval SRC = $$(TARGETOBJ:.o=.c)) \
		$(eval DEST = $(OBJOUT_PATH)/$$(TARGETOBJ:.o=.obj)) \
		$(eval ARGUMENT = -c $(ICONV_PATH)/$(SRC) $(CPPFLAGS) $(INCLUDS) $(DEFINES) -Fo$(DEST) -Fa$(DEST:.obj=.asm) -I$(ICONV_SRC_PATH) -I$(ICONV_SRC_PATH)/include -I$(ICONV_SRC_PATH)/libcharset/include) \
		shellbridge +cmd:$(CC) +arg:"$(ARGUMENT)"; \
	)
	$(AR) $(ARFLAGS) -OUT:$@ $(OBJS)


config : 
	echo %OUTPUT_NAME% done.....
	cd $(ICONV_SRC_PATH) && ./configure --prefix=$(PWD)/../../ --disable-nls
	cd $(ICONV_SRC_PATH) && $(MAKE)


	
validatepath:
	createpath $(OBJOUT_PATH)
	createpath $(BINOUT_PATH)
	createpath $(LIBOUT_PATH)

	
build :  $(ICONV_SRC_PATH)/config.h $(LIBOUT_PATH)/$(OUTPUT_NAME).lib 
	echo $(OUTPUT_NAME) done.....
	copyfile +src:src/$(OUTPUT_NAME)/$(ICONV_SRC_PATH)/include/*.h +dest:include/$(OUTPUT_NAME)/




