LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := libgl2jni

LOCAL_SRC_FILES := gl_code.cpp

LOCAL_LDLIBS    := -llog -lGLESv2

LOCAL_WHOLE_STATIC_LIBRARIES 	:= kqueue_static pthread_workqueue_static

LOCAL_SHARED_LIBRARIES 			:= dispatch_shared xdispatch_shared

include $(BUILD_SHARED_LIBRARY)
include libdispatch/Android.mk
include libkqueue/Android.mk
include libpthread_workqueue/Android.mk
include libxdispatch/Android.mk
