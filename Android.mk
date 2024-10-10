LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := GmsCore
LOCAL_SRC_FILES := GmsCore/play-services-core-mapbox-default-release.apk
LOCAL_CERTIFICATE := $(LOCAL_PATH)/certs/microg
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
#LOCAL_PRODUCT_MODULE := true
LOCAL_SYSTEM_MODULE := true
LOCAL_REQUIRED_MODULES := privapp-permissions-microg.xml whitelist-microg.xml
LOCAL_USES_LIBRARIES := com.android.location.provider
LOCAL_OPTIONAL_USES_LIBRARIES := org.apache.http.legacy androidx.window.extensions androidx.window.sidecar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := FakeStore
LOCAL_SRC_FILES := GmsCore/vending-app-default-release-unsigned.apk
LOCAL_CERTIFICATE := $(LOCAL_PATH)/certs/microg
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
#LOCAL_PRODUCT_MODULE := true
LOCAL_SYSTEM_MODULE := true
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := GsfProxy
LOCAL_SRC_FILES := GsfProxy/services-framework-proxy-release-unsigned.apk
LOCAL_CERTIFICATE := $(LOCAL_PATH)/certs/microg
LOCAL_MODULE_CLASS := APPS
#LOCAL_PRODUCT_MODULE := true
LOCAL_SYSTEM_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-microg.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions  # Point to system/etc
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := whitelist-microg.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/sysconfig  # Point to system/etc
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)
