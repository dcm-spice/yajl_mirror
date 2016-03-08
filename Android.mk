LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_FILENAME := libyajl
LOCAL_MODULE := yajl_mirror_static
LOCAL_CFLAGS := -Wall -std=c99 -pedantic -Wpointer-arith -Wno-format-y2k -Wmissing-declarations -Wextra -Wundef -Wwrite-strings -Wredundant-decls -Wno-unused-parameter -Wno-sign-compare -DNDEBUG -O2 -Wuninitialized
LOCAL_C_INCLUDES := $(LOCAL_PATH)/yajl/src \
                    $(LOCAL_PATH)/include
C_FILES := $(shell find $(LOCAL_PATH)/yajl/src -name *.c)
LOCAL_SRC_FILES := $(C_FILES:$(LOCAL_PATH)/%=%)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(BUILD_STATIC_LIBRARY)
