LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := 	\
	src/main.c	\
	src/testapp.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)	\
	$(LOCAL_PATH)/inc

LOCAL_MODULE := solsmp_test

include $(BUILD_EXECUTABLE)
