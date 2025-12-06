LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := sl.c
LOCAL_C_INCLUDES := device/devtitans/kraken/external/libncurses/include
LOCAL_SHARED_LIBRARIES := libncurses
LOCAL_MODULE := sl
LOCAL_VENDOR_MODULE := true

include $(BUILD_EXECUTABLE)
