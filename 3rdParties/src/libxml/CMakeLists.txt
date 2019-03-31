




project(libxml)





set(SRC_FILES
	libmxl2/buf.c 
	libmxl2/c14n.c 
	libmxl2/catalog.c 
	libmxl2/chvalid.c 
	libmxl2/debugXML.c 
	libmxl2/dict.c 
	libmxl2/DOCBparser.c 
	libmxl2/encoding.c 
	libmxl2/entities.c 
	libmxl2/error.c 
	libmxl2/globals.c 
	libmxl2/hash.c 
	libmxl2/HTMLparser.c 
	libmxl2/HTMLtree.c 
	libmxl2/legacy.c 
	libmxl2/list.c 
	libmxl2/nanoftp.c 
	libmxl2/nanohttp.c 
	libmxl2/parser.c 
	libmxl2/parserInternals.c 
	libmxl2/pattern.c 
	libmxl2/relaxng.c 
	libmxl2/SAX2.c 
	libmxl2/SAX.c 
	libmxl2/schematron.c 
	libmxl2/threads.c 
	libmxl2/tree.c 
	libmxl2/uri.c 
	libmxl2/valid.c 
	libmxl2/xinclude.c 
	libmxl2/xlink.c 
	libmxl2/xmlIO.c 
	libmxl2/xmlmemory.c 
	libmxl2/xmlreader.c 
	libmxl2/xmlregexp.c 
	libmxl2/xmlmodule.c 
	libmxl2/xmlsave.c 
	libmxl2/xmlschemas.c 
	libmxl2/xmlschemastypes.c 
	libmxl2/xmlunicode.c 
	libmxl2/xmlwriter.c 
	libmxl2/xpath.c 
	libmxl2/xpointer.c 
	libmxl2/xmlstring.c
)






add_library(libxml ${SRC_FILES})




