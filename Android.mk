LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
src_dirs:= src/org/codeaurora/bluetooth/btcservice \
           src/org/codeaurora/bluetooth/map \
           src/org/codeaurora/bluetooth/ftp \
           src/org/codeaurora/bluetooth/sap

LOCAL_SRC_FILES := \
        $(call all-java-files-under, $(src_dirs))

LOCAL_PACKAGE_NAME := BluetoothExt
LOCAL_CERTIFICATE := platform
LOCAL_JAVA_LIBRARIES := javax.obex
LOCAL_JAVA_LIBRARIES += mms-common
LOCAL_JAVA_LIBRARIES += telephony-common
LOCAL_STATIC_JAVA_LIBRARIES := com.android.vcard

LOCAL_REQUIRED_MODULES := libbluetooth_jni bluetooth.default

LOCAL_PROGUARD_ENABLED := disabled

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)

src_dirs:=  src/org/codeaurora/bluetooth/mapclient

LOCAL_SRC_FILES := \
        $(call all-java-files-under, $(src_dirs))

LOCAL_MODULE:= org.codeaurora.bluetooth.mapclient
LOCAL_JAVA_LIBRARIES := javax.obex
LOCAL_STATIC_JAVA_LIBRARIES := com.android.vcard

LOCAL_PROGUARD_ENABLED := disabled

include $(BUILD_STATIC_JAVA_LIBRARY)
include $(call all-makefiles-under,$(LOCAL_PATH))
