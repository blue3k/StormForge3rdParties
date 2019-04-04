

# configure_file(	zlib-1.2.8/zconf.h.cmakein
		# zlib-1.2.8/zconf.h @ONLY)

include_directories(AFTER 
	zookeeperConnector/include
)

add_definitions(-D_WINDOWS)

set(SRC_FILES
    zookeeperConnector/generated/zookeeper.jute.c
	zookeeperConnector/src/hashtable/hashtable.c
	zookeeperConnector/src/hashtable/hashtable_itr.c
	zookeeperConnector/src/cli.c
	#zookeeperConnector/src/mt_adaptor.c
	zookeeperConnector/src/recordio.c
	zookeeperConnector/src/st_adaptor.c
	zookeeperConnector/src/winport.c
	zookeeperConnector/src/zk_hashtable.c
	zookeeperConnector/src/zk_log.c
	zookeeperConnector/src/zookeeper.c
)



add_library(zookeeper ${SRC_FILES})




