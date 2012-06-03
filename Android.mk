LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE        	:= libtokyocabinet
LOCAL_SRC_FILES     	:= tcutil.c tchdb.c tcbdb.c tcfdb.c tctdb.c tcadb.c myconf.c md5.c glob.c
LOCAL_CFLAGS        	:= -std=c99 -D_MYNOBZIP
LOCAL_C_INCLUDES	+= external/zlib
LOCAL_SHARED_LIBRARIES	+= libz
LOCAL_MODULE_TAGS 	:= optional
include $(BUILD_SHARED_LIBRARY)
