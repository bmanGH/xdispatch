LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := pthread_workqueue_static

LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libpthread_workqueue.a

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(PREBUILT_STATIC_LIBRARY)
