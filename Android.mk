LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE        	:= tokyocabinet
LOCAL_SRC_FILES     	:= tcutil.c tchdb.c tcbdb.c tcfdb.c tctdb.c tcadb.c myconf.c md5.c glob.c
LOCAL_LDLIBS        	:= -lz -lm
LOCAL_CFLAGS        	:= -std=c99 -Wall -fPIC -fsigned-char -O2 -lz -lm
LOCAL_SHARED_LIBRARIES	+= bz

include $(BUILD_SHARED_LIBRARY)

