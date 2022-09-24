LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AmbientSensePrebuilt \
    arcore \
    Chrome-Stub \
    ConnMO \
    ConnMetrics \
    DCMO \
    DevicePolicyPrebuilt \
    DMService \
    Drive \
    GCS \
    GoogleCameraGo \
    GrapheneOS-Camera \
    Maps \
    Music \
    MyVerizonServices \
    OBDM_Permissions \
    obdm_stub \
    OdadPrebuilt \
    OemDmTrigger \
    OPScreenRecord \
    Ornament \
    PixelLiveWallpaperPrebuilt \
    Photos \
    PlayAutoInstallConfig \
    RecorderPrebuilt \
    SafetyHubPrebuilt \
    SCONE \
    ScribePrebuilt \
    Showcase \
    Snap \
    Snap2 \
    SnapdragonCamera \
    SoundAmplifierPrebuilt \
    SprintDM \
    SprintHM \
    Tycho \
    USCCDM \
    Videos \
    VZWAPNLib \
    VzwOmaTrigger \
Velvet
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
