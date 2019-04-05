

set(WITH_ZLIB ON)
set(WITH_LIBDL ON)
set(WITH_PLUGINS ON)
set(HAVE_REGEX OFF)


include_directories(AFTER 
	./
)


set(SRC_FILES
    rdkafka/src/crc32c.c
    rdkafka/src/rdaddr.c
    rdkafka/src/rdavl.c
    rdkafka/src/rdbuf.c
    rdkafka/src/rdcrc32.c
    rdkafka/src/rdkafka.c
    rdkafka/src/rdkafka_assignor.c
    rdkafka/src/rdkafka_broker.c
    rdkafka/src/rdkafka_buf.c
    rdkafka/src/rdkafka_cgrp.c
    rdkafka/src/rdkafka_conf.c
    rdkafka/src/rdkafka_event.c
    rdkafka/src/rdkafka_feature.c
    rdkafka/src/rdkafka_lz4.c
    rdkafka/src/rdkafka_metadata.c
    rdkafka/src/rdkafka_metadata_cache.c
    rdkafka/src/rdkafka_msg.c
    rdkafka/src/rdkafka_msgset_reader.c
    rdkafka/src/rdkafka_msgset_writer.c
    rdkafka/src/rdkafka_offset.c
    rdkafka/src/rdkafka_op.c
    rdkafka/src/rdkafka_partition.c
    rdkafka/src/rdkafka_pattern.c
    rdkafka/src/rdkafka_queue.c
    rdkafka/src/rdkafka_range_assignor.c
    rdkafka/src/rdkafka_request.c
    rdkafka/src/rdkafka_roundrobin_assignor.c
    rdkafka/src/rdkafka_sasl.c
    rdkafka/src/rdkafka_sasl_plain.c
    rdkafka/src/rdkafka_subscription.c
    rdkafka/src/rdkafka_timer.c
    rdkafka/src/rdkafka_topic.c
    rdkafka/src/rdkafka_transport.c
    rdkafka/src/rdkafka_interceptor.c
    rdkafka/src/rdlist.c
    rdkafka/src/rdlog.c
    rdkafka/src/rdports.c
    rdkafka/src/rdrand.c
    rdkafka/src/rdregex.c
    rdkafka/src/rdstring.c
    rdkafka/src/rdunittest.c
    rdkafka/src/rdvarint.c
    rdkafka/src/snappy.c
    rdkafka/src/tinycthread.c
    rdkafka/src/xxhash.c
    rdkafka/src/lz4.c
    rdkafka/src/lz4frame.c
    rdkafka/src/lz4hc.c
	rdkafka/src-cpp/ConfImpl.cpp
    rdkafka/src-cpp/ConsumerImpl.cpp
    rdkafka/src-cpp/HandleImpl.cpp
    rdkafka/src-cpp/KafkaConsumerImpl.cpp
    rdkafka/src-cpp/MessageImpl.cpp
    rdkafka/src-cpp/MetadataImpl.cpp
    rdkafka/src-cpp/ProducerImpl.cpp
    rdkafka/src-cpp/QueueImpl.cpp
    rdkafka/src-cpp/RdKafka.cpp
    rdkafka/src-cpp/TopicImpl.cpp
    rdkafka/src-cpp/TopicPartitionImpl.cpp

)

if(WITH_LIBDL)
    list(APPEND SRC_FILES rdkafka/src/rddl.c)
endif()

if(WITH_PLUGINS)
    list(APPEND SRC_FILES rdkafka/src/rdkafka_plugin.c)
endif()

if(WITH_SASL_SCRAM)
  list(APPEND SRC_FILES rdkafka/src/rdkafka_sasl_win32.c)
elseif(WITH_SASL_CYRUS)
  list(APPEND SRC_FILES rdkafka/src/rdkafka_sasl_cyrus.c)
endif()

if(WITH_ZLIB)
  list(APPEND SRC_FILES rdkafka/src/rdgz.c)
endif()

if(NOT HAVE_REGEX)
  list(APPEND SRC_FILES rdkafka/src/regexp.c)
endif()

add_library(rdkafka ${SRC_FILES})


add_definitions(-DLIBRDKAFKA_STATICLIB)


# add_subdirectory(rdkafka/src)
# add_subdirectory(rdkafka/src-cpp)

#add_library(rdkafka ${SRC_FILES})




