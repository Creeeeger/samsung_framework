.class public abstract Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/application/IApplicationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/application/IApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addAppNotificationBlackList:I = 0x3c

.field public static final TRANSACTION_addAppNotificationWhiteList:I = 0x3f

.field public static final TRANSACTION_addAppPackageNameToBlackList:I = 0x2d

.field public static final TRANSACTION_addAppPackageNameToWhiteList:I = 0x30

.field public static final TRANSACTION_addAppPermissionToBlackList:I = 0x22

.field public static final TRANSACTION_addAppSignatureToBlackList:I = 0x25

.field public static final TRANSACTION_addAppSignatureToWhiteList:I = 0x58

.field public static final TRANSACTION_addApplicationToCameraAllowList:I = 0xb5

.field public static final TRANSACTION_addHomeShortcut:I = 0x46

.field public static final TRANSACTION_addPackageToBatteryOptimizationWhiteList:I = 0x9d

.field public static final TRANSACTION_addPackageToBlackList:I = 0xa8

.field public static final TRANSACTION_addPackageToWhiteList:I = 0xa5

.field public static final TRANSACTION_addPackagesToClearCacheBlackList:I = 0x64

.field public static final TRANSACTION_addPackagesToClearCacheWhiteList:I = 0x67

.field public static final TRANSACTION_addPackagesToClearDataBlackList:I = 0x5d

.field public static final TRANSACTION_addPackagesToClearDataWhiteList:I = 0x60

.field public static final TRANSACTION_addPackagesToDisableClipboardBlackList:I = 0x7e

.field public static final TRANSACTION_addPackagesToDisableClipboardWhiteList:I = 0x82

.field public static final TRANSACTION_addPackagesToDisableUpdateBlackList:I = 0x70

.field public static final TRANSACTION_addPackagesToDisableUpdateWhiteList:I = 0x73

.field public static final TRANSACTION_addPackagesToFocusMonitoringList:I = 0x89

.field public static final TRANSACTION_addPackagesToForceStopBlackList:I = 0x38

.field public static final TRANSACTION_addPackagesToForceStopWhiteList:I = 0x4b

.field public static final TRANSACTION_addPackagesToPreventStartBlackList:I = 0x79

.field public static final TRANSACTION_addPackagesToWidgetBlackList:I = 0x50

.field public static final TRANSACTION_addPackagesToWidgetWhiteList:I = 0x4e

.field public static final TRANSACTION_addUsbDevicesForDefaultAccess:I = 0x92

.field public static final TRANSACTION_applicationUsageAppLaunchCount:I = 0xbf

.field public static final TRANSACTION_applicationUsageAppPauseTime:I = 0xc0

.field public static final TRANSACTION_applyRuntimePermissions:I = 0x98

.field public static final TRANSACTION_changeApplicationIcon:I = 0x1f

.field public static final TRANSACTION_changeApplicationName:I = 0x6b

.field public static final TRANSACTION_clearDisableClipboardBlackList:I = 0x86

.field public static final TRANSACTION_clearDisableClipboardWhiteList:I = 0x87

.field public static final TRANSACTION_clearDisableUpdateBlackList:I = 0x77

.field public static final TRANSACTION_clearDisableUpdateWhiteList:I = 0x78

.field public static final TRANSACTION_clearFocusMonitoringList:I = 0x8c

.field public static final TRANSACTION_clearPackagesFromExternalStorageWhiteList:I = 0xa4

.field public static final TRANSACTION_clearPreventStartBlackList:I = 0x7c

.field public static final TRANSACTION_clearUsbDevicesForDefaultAccess:I = 0x93

.field public static final TRANSACTION_createIntentFilter:I = 0xc7

.field public static final TRANSACTION_deleteHomeShortcut:I = 0x47

.field public static final TRANSACTION_deleteManagedAppInfo:I = 0xaf

.field public static final TRANSACTION_doSelfUninstall:I = 0xca

.field public static final TRANSACTION_enableOcspCheck:I = 0x56

.field public static final TRANSACTION_enableRevocationCheck:I = 0x54

.field public static final TRANSACTION_getAddHomeShorcutRequested:I = 0x97

.field public static final TRANSACTION_getAllAppLastUsage:I = 0x1c

.field public static final TRANSACTION_getAllDefaultApplications:I = 0xc4

.field public static final TRANSACTION_getAllDefaultApplicationsInternal:I = 0xba

.field public static final TRANSACTION_getAllPackagesFromBatteryOptimizationWhiteList:I = 0xa0

.field public static final TRANSACTION_getAllWidgets:I = 0x48

.field public static final TRANSACTION_getAppInstallToSdCard:I = 0xb1

.field public static final TRANSACTION_getAppInstallationMode:I = 0x36

.field public static final TRANSACTION_getAppNotificationBlackList:I = 0x3e

.field public static final TRANSACTION_getAppNotificationWhiteList:I = 0x41

.field public static final TRANSACTION_getAppPackageNamesAllBlackLists:I = 0x2f

.field public static final TRANSACTION_getAppPackageNamesAllWhiteLists:I = 0x32

.field public static final TRANSACTION_getAppPermissionsAllBlackLists:I = 0x33

.field public static final TRANSACTION_getAppPermissionsBlackList:I = 0x24

.field public static final TRANSACTION_getAppSignatureBlackList:I = 0x27

.field public static final TRANSACTION_getAppSignaturesAllBlackLists:I = 0x34

.field public static final TRANSACTION_getAppSignaturesAllWhiteLists:I = 0x5b

.field public static final TRANSACTION_getAppSignaturesWhiteList:I = 0x5a

.field public static final TRANSACTION_getApplicationCacheSize:I = 0x15

.field public static final TRANSACTION_getApplicationCodeSize:I = 0x13

.field public static final TRANSACTION_getApplicationComponentState:I = 0x6f

.field public static final TRANSACTION_getApplicationCpuUsage:I = 0x17

.field public static final TRANSACTION_getApplicationDataSize:I = 0x14

.field public static final TRANSACTION_getApplicationGrantedPermissions:I = 0xa1

.field public static final TRANSACTION_getApplicationIconFromDb:I = 0x20

.field public static final TRANSACTION_getApplicationInstallationEnabled:I = 0xb

.field public static final TRANSACTION_getApplicationMemoryUsage:I = 0x16

.field public static final TRANSACTION_getApplicationName:I = 0xe

.field public static final TRANSACTION_getApplicationNameFromDb:I = 0x6c

.field public static final TRANSACTION_getApplicationNotificationMode:I = 0x43

.field public static final TRANSACTION_getApplicationNotificationModeAsUser:I = 0x44

.field public static final TRANSACTION_getApplicationPackagesFromCameraAllowList:I = 0xb6

.field public static final TRANSACTION_getApplicationStateEnabled:I = 0xa

.field public static final TRANSACTION_getApplicationStateEnabledAsUser:I = 0xbb

.field public static final TRANSACTION_getApplicationStateList:I = 0x2a

.field public static final TRANSACTION_getApplicationTotalSize:I = 0x12

.field public static final TRANSACTION_getApplicationUid:I = 0xf

.field public static final TRANSACTION_getApplicationUninstallationEnabled:I = 0xc

.field public static final TRANSACTION_getApplicationUninstallationEnabledAsUser:I = 0xbe

.field public static final TRANSACTION_getApplicationUninstallationMode:I = 0x49

.field public static final TRANSACTION_getApplicationVersion:I = 0x10

.field public static final TRANSACTION_getApplicationVersionCode:I = 0x11

.field public static final TRANSACTION_getApplicationsList:I = 0xb3

.field public static final TRANSACTION_getAvgNoAppUsagePerMonth:I = 0x1b

.field public static final TRANSACTION_getConcentrationMode:I = 0xc9

.field public static final TRANSACTION_getDefaultApplication:I = 0xc2

.field public static final TRANSACTION_getDefaultApplicationInternal:I = 0xc3

.field public static final TRANSACTION_getDisabledPackages:I = 0x96

.field public static final TRANSACTION_getHomeShortcuts:I = 0x8e

.field public static final TRANSACTION_getInstalledApplicationsIDList:I = 0xd

.field public static final TRANSACTION_getInstalledManagedApplicationsList:I = 0xb2

.field public static final TRANSACTION_getNetworkStats:I = 0x1d

.field public static final TRANSACTION_getPackageSignaturesFromExternalStorageWhiteList:I = 0xa3

.field public static final TRANSACTION_getPackagesFromBatteryOptimizationWhiteList:I = 0x9f

.field public static final TRANSACTION_getPackagesFromBlackList:I = 0xa9

.field public static final TRANSACTION_getPackagesFromClearCacheBlackList:I = 0x66

.field public static final TRANSACTION_getPackagesFromClearCacheWhiteList:I = 0x68

.field public static final TRANSACTION_getPackagesFromClearDataBlackList:I = 0x5f

.field public static final TRANSACTION_getPackagesFromClearDataWhiteList:I = 0x61

.field public static final TRANSACTION_getPackagesFromDisableClipboardBlackList:I = 0x80

.field public static final TRANSACTION_getPackagesFromDisableClipboardBlackListAsUserInternal:I = 0x81

.field public static final TRANSACTION_getPackagesFromDisableClipboardWhiteList:I = 0x84

.field public static final TRANSACTION_getPackagesFromDisableClipboardWhiteListAsUserInternal:I = 0x85

.field public static final TRANSACTION_getPackagesFromDisableUpdateBlackList:I = 0x72

.field public static final TRANSACTION_getPackagesFromDisableUpdateWhiteList:I = 0x74

.field public static final TRANSACTION_getPackagesFromFocusMonitoringList:I = 0x8a

.field public static final TRANSACTION_getPackagesFromForceStopBlackList:I = 0x4a

.field public static final TRANSACTION_getPackagesFromForceStopWhiteList:I = 0x4c

.field public static final TRANSACTION_getPackagesFromPreventStartBlackList:I = 0x7a

.field public static final TRANSACTION_getPackagesFromWhiteList:I = 0xa6

.field public static final TRANSACTION_getPackagesFromWidgetBlackList:I = 0x4d

.field public static final TRANSACTION_getPackagesFromWidgetWhiteList:I = 0x3a

.field public static final TRANSACTION_getRuntimePermissions:I = 0x9c

.field public static final TRANSACTION_getRuntimePermissionsEnforced:I = 0x99

.field public static final TRANSACTION_getTopNCPUUsageApp:I = 0x1a

.field public static final TRANSACTION_getTopNDataUsageApp:I = 0x19

.field public static final TRANSACTION_getTopNMemoryUsageApp:I = 0x18

.field public static final TRANSACTION_getUsbDevicesForDefaultAccess:I = 0x90

.field public static final TRANSACTION_handleStatusBarNotificationNotAllowedAsUser:I = 0xb9

.field public static final TRANSACTION_installApplication:I = 0x5

.field public static final TRANSACTION_installExistingApplication:I = 0x94

.field public static final TRANSACTION_isAnyApplicationIconChangedAsUser:I = 0x21

.field public static final TRANSACTION_isAnyApplicationNameChangedAsUser:I = 0x6d

.field public static final TRANSACTION_isApplicationClearCacheDisabled:I = 0x6a

.field public static final TRANSACTION_isApplicationClearDataDisabled:I = 0x63

.field public static final TRANSACTION_isApplicationExternalStorageBlacklisted:I = 0xae

.field public static final TRANSACTION_isApplicationExternalStorageWhitelisted:I = 0xad

.field public static final TRANSACTION_isApplicationFocusMonitoredAsUser:I = 0x8d

.field public static final TRANSACTION_isApplicationForceStopDisabled:I = 0x39

.field public static final TRANSACTION_isApplicationInstallationEnabled:I = 0xbc

.field public static final TRANSACTION_isApplicationInstalled:I = 0x3

.field public static final TRANSACTION_isApplicationRunning:I = 0x4

.field public static final TRANSACTION_isApplicationSetToDefault:I = 0xc6

.field public static final TRANSACTION_isApplicationStartDisabledAsUser:I = 0x7d

.field public static final TRANSACTION_isCameraAllowlistedApp:I = 0xb8

.field public static final TRANSACTION_isFromApprovedInstaller:I = 0xbd

.field public static final TRANSACTION_isIntentDisabled:I = 0x2c

.field public static final TRANSACTION_isOcspCheckEnabled:I = 0x57

.field public static final TRANSACTION_isPackageClipboardAllowed:I = 0x88

.field public static final TRANSACTION_isPackageInApprovedInstallerWhiteList:I = 0x5c

.field public static final TRANSACTION_isPackageInBlacklistInternal:I = 0xac

.field public static final TRANSACTION_isPackageInWhitelistInternal:I = 0xab

.field public static final TRANSACTION_isPackageUpdateAllowed:I = 0x76

.field public static final TRANSACTION_isRevocationCheckEnabled:I = 0x55

.field public static final TRANSACTION_isStatusBarNotificationAllowedAsUser:I = 0x45

.field public static final TRANSACTION_isUsbDevicePermittedForPackage:I = 0x91

.field public static final TRANSACTION_isWidgetAllowed:I = 0x3b

.field public static final TRANSACTION_reapplyRuntimePermissions:I = 0x9b

.field public static final TRANSACTION_removeAppNotificationBlackList:I = 0x3d

.field public static final TRANSACTION_removeAppNotificationWhiteList:I = 0x40

.field public static final TRANSACTION_removeAppPackageNameFromBlackList:I = 0x2e

.field public static final TRANSACTION_removeAppPackageNameFromWhiteList:I = 0x31

.field public static final TRANSACTION_removeAppPermissionFromBlackList:I = 0x23

.field public static final TRANSACTION_removeAppSignatureFromBlackList:I = 0x26

.field public static final TRANSACTION_removeAppSignatureFromWhiteList:I = 0x59

.field public static final TRANSACTION_removeApplicationFromCameraAllowList:I = 0xb7

.field public static final TRANSACTION_removeDefaultApplication:I = 0xc5

.field public static final TRANSACTION_removeManagedApplications:I = 0x1

.field public static final TRANSACTION_removePackageFromBatteryOptimizationWhiteList:I = 0x9e

.field public static final TRANSACTION_removePackageFromBlackList:I = 0xaa

.field public static final TRANSACTION_removePackageFromWhiteList:I = 0xa7

.field public static final TRANSACTION_removePackagesFromClearCacheBlackList:I = 0x65

.field public static final TRANSACTION_removePackagesFromClearCacheWhiteList:I = 0x69

.field public static final TRANSACTION_removePackagesFromClearDataBlackList:I = 0x5e

.field public static final TRANSACTION_removePackagesFromClearDataWhiteList:I = 0x62

.field public static final TRANSACTION_removePackagesFromDisableClipboardBlackList:I = 0x7f

.field public static final TRANSACTION_removePackagesFromDisableClipboardWhiteList:I = 0x83

.field public static final TRANSACTION_removePackagesFromDisableUpdateBlackList:I = 0x71

.field public static final TRANSACTION_removePackagesFromDisableUpdateWhiteList:I = 0x75

.field public static final TRANSACTION_removePackagesFromFocusMonitoringList:I = 0x8b

.field public static final TRANSACTION_removePackagesFromForceStopBlackList:I = 0x53

.field public static final TRANSACTION_removePackagesFromForceStopWhiteList:I = 0x52

.field public static final TRANSACTION_removePackagesFromPreventStartBlackList:I = 0x7b

.field public static final TRANSACTION_removePackagesFromWidgetBlackList:I = 0x51

.field public static final TRANSACTION_removePackagesFromWidgetWhiteList:I = 0x4f

.field public static final TRANSACTION_setAndroidMarketState:I = 0xa2

.field public static final TRANSACTION_setAppInstallToSdCard:I = 0xb0

.field public static final TRANSACTION_setAppInstallationMode:I = 0x35

.field public static final TRANSACTION_setApplicationComponentState:I = 0x6e

.field public static final TRANSACTION_setApplicationInstallationDisabled:I = 0x8

.field public static final TRANSACTION_setApplicationNotificationMode:I = 0x42

.field public static final TRANSACTION_setApplicationState:I = 0x7

.field public static final TRANSACTION_setApplicationStateList:I = 0x2b

.field public static final TRANSACTION_setApplicationUninstallationDisabled:I = 0x9

.field public static final TRANSACTION_setApplicationUninstallationMode:I = 0x37

.field public static final TRANSACTION_setAsManagedApp:I = 0xb4

.field public static final TRANSACTION_setConcentrationMode:I = 0xc8

.field public static final TRANSACTION_setDefaultApplication:I = 0xc1

.field public static final TRANSACTION_startApp:I = 0x29

.field public static final TRANSACTION_stopApp:I = 0x28

.field public static final TRANSACTION_uninstallApplication:I = 0x6

.field public static final TRANSACTION_updateApplicationTable:I = 0x95

.field public static final TRANSACTION_updateDataUsageDb:I = 0x1e

.field public static final TRANSACTION_updateWidgetStatus:I = 0x8f

.field public static final TRANSACTION_verifyRuntimePermissionPackageSignature:I = 0x9a

.field public static final TRANSACTION_wipeApplicationData:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.application.IApplicationPolicy"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.samsung.android.knox.application.IApplicationPolicy"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    const-string p0, "doSelfUninstall"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "getConcentrationMode"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "setConcentrationMode"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "createIntentFilter"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "isApplicationSetToDefault"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "removeDefaultApplication"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "getAllDefaultApplications"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "getDefaultApplicationInternal"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "getDefaultApplication"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "setDefaultApplication"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "applicationUsageAppPauseTime"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "applicationUsageAppLaunchCount"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    const-string p0, "getApplicationUninstallationEnabledAsUser"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    const-string p0, "isFromApprovedInstaller"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    const-string p0, "isApplicationInstallationEnabled"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    const-string p0, "getApplicationStateEnabledAsUser"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    const-string p0, "getAllDefaultApplicationsInternal"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    const-string p0, "handleStatusBarNotificationNotAllowedAsUser"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    const-string p0, "isCameraAllowlistedApp"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_13
    const-string p0, "removeApplicationFromCameraAllowList"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_14
    const-string p0, "getApplicationPackagesFromCameraAllowList"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_15
    const-string p0, "addApplicationToCameraAllowList"

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_16
    const-string p0, "setAsManagedApp"

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_17
    const-string p0, "getApplicationsList"

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_18
    const-string p0, "getInstalledManagedApplicationsList"

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_19
    const-string p0, "getAppInstallToSdCard"

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_1a
    const-string p0, "setAppInstallToSdCard"

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1b
    const-string p0, "deleteManagedAppInfo"

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1c
    const-string p0, "isApplicationExternalStorageBlacklisted"

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1d
    const-string p0, "isApplicationExternalStorageWhitelisted"

    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_1e
    const-string p0, "isPackageInBlacklistInternal"

    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_1f
    const-string p0, "isPackageInWhitelistInternal"

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_20
    const-string p0, "removePackageFromBlackList"

    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_21
    const-string p0, "getPackagesFromBlackList"

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_22
    const-string p0, "addPackageToBlackList"

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_23
    const-string p0, "removePackageFromWhiteList"

    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_24
    const-string p0, "getPackagesFromWhiteList"

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_25
    const-string p0, "addPackageToWhiteList"

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_26
    const-string p0, "clearPackagesFromExternalStorageWhiteList"

    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_27
    const-string p0, "getPackageSignaturesFromExternalStorageWhiteList"

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_28
    const-string p0, "setAndroidMarketState"

    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_29
    const-string p0, "getApplicationGrantedPermissions"

    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_2a
    const-string p0, "getAllPackagesFromBatteryOptimizationWhiteList"

    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_2b
    const-string p0, "getPackagesFromBatteryOptimizationWhiteList"

    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_2c
    const-string p0, "removePackageFromBatteryOptimizationWhiteList"

    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_2d
    const-string p0, "addPackageToBatteryOptimizationWhiteList"

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_2e
    const-string p0, "getRuntimePermissions"

    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_2f
    const-string p0, "reapplyRuntimePermissions"

    .line 148
    .line 149
    return-object p0

    .line 150
    :pswitch_30
    const-string p0, "verifyRuntimePermissionPackageSignature"

    .line 151
    .line 152
    return-object p0

    .line 153
    :pswitch_31
    const-string p0, "getRuntimePermissionsEnforced"

    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_32
    const-string p0, "applyRuntimePermissions"

    .line 157
    .line 158
    return-object p0

    .line 159
    :pswitch_33
    const-string p0, "getAddHomeShorcutRequested"

    .line 160
    .line 161
    return-object p0

    .line 162
    :pswitch_34
    const-string p0, "getDisabledPackages"

    .line 163
    .line 164
    return-object p0

    .line 165
    :pswitch_35
    const-string p0, "updateApplicationTable"

    .line 166
    .line 167
    return-object p0

    .line 168
    :pswitch_36
    const-string p0, "installExistingApplication"

    .line 169
    .line 170
    return-object p0

    .line 171
    :pswitch_37
    const-string p0, "clearUsbDevicesForDefaultAccess"

    .line 172
    .line 173
    return-object p0

    .line 174
    :pswitch_38
    const-string p0, "addUsbDevicesForDefaultAccess"

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_39
    const-string p0, "isUsbDevicePermittedForPackage"

    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_3a
    const-string p0, "getUsbDevicesForDefaultAccess"

    .line 181
    .line 182
    return-object p0

    .line 183
    :pswitch_3b
    const-string p0, "updateWidgetStatus"

    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_3c
    const-string p0, "getHomeShortcuts"

    .line 187
    .line 188
    return-object p0

    .line 189
    :pswitch_3d
    const-string p0, "isApplicationFocusMonitoredAsUser"

    .line 190
    .line 191
    return-object p0

    .line 192
    :pswitch_3e
    const-string p0, "clearFocusMonitoringList"

    .line 193
    .line 194
    return-object p0

    .line 195
    :pswitch_3f
    const-string p0, "removePackagesFromFocusMonitoringList"

    .line 196
    .line 197
    return-object p0

    .line 198
    :pswitch_40
    const-string p0, "getPackagesFromFocusMonitoringList"

    .line 199
    .line 200
    return-object p0

    .line 201
    :pswitch_41
    const-string p0, "addPackagesToFocusMonitoringList"

    .line 202
    .line 203
    return-object p0

    .line 204
    :pswitch_42
    const-string p0, "isPackageClipboardAllowed"

    .line 205
    .line 206
    return-object p0

    .line 207
    :pswitch_43
    const-string p0, "clearDisableClipboardWhiteList"

    .line 208
    .line 209
    return-object p0

    .line 210
    :pswitch_44
    const-string p0, "clearDisableClipboardBlackList"

    .line 211
    .line 212
    return-object p0

    .line 213
    :pswitch_45
    const-string p0, "getPackagesFromDisableClipboardWhiteListAsUserInternal"

    .line 214
    .line 215
    return-object p0

    .line 216
    :pswitch_46
    const-string p0, "getPackagesFromDisableClipboardWhiteList"

    .line 217
    .line 218
    return-object p0

    .line 219
    :pswitch_47
    const-string p0, "removePackagesFromDisableClipboardWhiteList"

    .line 220
    .line 221
    return-object p0

    .line 222
    :pswitch_48
    const-string p0, "addPackagesToDisableClipboardWhiteList"

    .line 223
    .line 224
    return-object p0

    .line 225
    :pswitch_49
    const-string p0, "getPackagesFromDisableClipboardBlackListAsUserInternal"

    .line 226
    .line 227
    return-object p0

    .line 228
    :pswitch_4a
    const-string p0, "getPackagesFromDisableClipboardBlackList"

    .line 229
    .line 230
    return-object p0

    .line 231
    :pswitch_4b
    const-string p0, "removePackagesFromDisableClipboardBlackList"

    .line 232
    .line 233
    return-object p0

    .line 234
    :pswitch_4c
    const-string p0, "addPackagesToDisableClipboardBlackList"

    .line 235
    .line 236
    return-object p0

    .line 237
    :pswitch_4d
    const-string p0, "isApplicationStartDisabledAsUser"

    .line 238
    .line 239
    return-object p0

    .line 240
    :pswitch_4e
    const-string p0, "clearPreventStartBlackList"

    .line 241
    .line 242
    return-object p0

    .line 243
    :pswitch_4f
    const-string p0, "removePackagesFromPreventStartBlackList"

    .line 244
    .line 245
    return-object p0

    .line 246
    :pswitch_50
    const-string p0, "getPackagesFromPreventStartBlackList"

    .line 247
    .line 248
    return-object p0

    .line 249
    :pswitch_51
    const-string p0, "addPackagesToPreventStartBlackList"

    .line 250
    .line 251
    return-object p0

    .line 252
    :pswitch_52
    const-string p0, "clearDisableUpdateWhiteList"

    .line 253
    .line 254
    return-object p0

    .line 255
    :pswitch_53
    const-string p0, "clearDisableUpdateBlackList"

    .line 256
    .line 257
    return-object p0

    .line 258
    :pswitch_54
    const-string p0, "isPackageUpdateAllowed"

    .line 259
    .line 260
    return-object p0

    .line 261
    :pswitch_55
    const-string p0, "removePackagesFromDisableUpdateWhiteList"

    .line 262
    .line 263
    return-object p0

    .line 264
    :pswitch_56
    const-string p0, "getPackagesFromDisableUpdateWhiteList"

    .line 265
    .line 266
    return-object p0

    .line 267
    :pswitch_57
    const-string p0, "addPackagesToDisableUpdateWhiteList"

    .line 268
    .line 269
    return-object p0

    .line 270
    :pswitch_58
    const-string p0, "getPackagesFromDisableUpdateBlackList"

    .line 271
    .line 272
    return-object p0

    .line 273
    :pswitch_59
    const-string p0, "removePackagesFromDisableUpdateBlackList"

    .line 274
    .line 275
    return-object p0

    .line 276
    :pswitch_5a
    const-string p0, "addPackagesToDisableUpdateBlackList"

    .line 277
    .line 278
    return-object p0

    .line 279
    :pswitch_5b
    const-string p0, "getApplicationComponentState"

    .line 280
    .line 281
    return-object p0

    .line 282
    :pswitch_5c
    const-string p0, "setApplicationComponentState"

    .line 283
    .line 284
    return-object p0

    .line 285
    :pswitch_5d
    const-string p0, "isAnyApplicationNameChangedAsUser"

    .line 286
    .line 287
    return-object p0

    .line 288
    :pswitch_5e
    const-string p0, "getApplicationNameFromDb"

    .line 289
    .line 290
    return-object p0

    .line 291
    :pswitch_5f
    const-string p0, "changeApplicationName"

    .line 292
    .line 293
    return-object p0

    .line 294
    :pswitch_60
    const-string p0, "isApplicationClearCacheDisabled"

    .line 295
    .line 296
    return-object p0

    .line 297
    :pswitch_61
    const-string p0, "removePackagesFromClearCacheWhiteList"

    .line 298
    .line 299
    return-object p0

    .line 300
    :pswitch_62
    const-string p0, "getPackagesFromClearCacheWhiteList"

    .line 301
    .line 302
    return-object p0

    .line 303
    :pswitch_63
    const-string p0, "addPackagesToClearCacheWhiteList"

    .line 304
    .line 305
    return-object p0

    .line 306
    :pswitch_64
    const-string p0, "getPackagesFromClearCacheBlackList"

    .line 307
    .line 308
    return-object p0

    .line 309
    :pswitch_65
    const-string p0, "removePackagesFromClearCacheBlackList"

    .line 310
    .line 311
    return-object p0

    .line 312
    :pswitch_66
    const-string p0, "addPackagesToClearCacheBlackList"

    .line 313
    .line 314
    return-object p0

    .line 315
    :pswitch_67
    const-string p0, "isApplicationClearDataDisabled"

    .line 316
    .line 317
    return-object p0

    .line 318
    :pswitch_68
    const-string p0, "removePackagesFromClearDataWhiteList"

    .line 319
    .line 320
    return-object p0

    .line 321
    :pswitch_69
    const-string p0, "getPackagesFromClearDataWhiteList"

    .line 322
    .line 323
    return-object p0

    .line 324
    :pswitch_6a
    const-string p0, "addPackagesToClearDataWhiteList"

    .line 325
    .line 326
    return-object p0

    .line 327
    :pswitch_6b
    const-string p0, "getPackagesFromClearDataBlackList"

    .line 328
    .line 329
    return-object p0

    .line 330
    :pswitch_6c
    const-string p0, "removePackagesFromClearDataBlackList"

    .line 331
    .line 332
    return-object p0

    .line 333
    :pswitch_6d
    const-string p0, "addPackagesToClearDataBlackList"

    .line 334
    .line 335
    return-object p0

    .line 336
    :pswitch_6e
    const-string p0, "isPackageInApprovedInstallerWhiteList"

    .line 337
    .line 338
    return-object p0

    .line 339
    :pswitch_6f
    const-string p0, "getAppSignaturesAllWhiteLists"

    .line 340
    .line 341
    return-object p0

    .line 342
    :pswitch_70
    const-string p0, "getAppSignaturesWhiteList"

    .line 343
    .line 344
    return-object p0

    .line 345
    :pswitch_71
    const-string p0, "removeAppSignatureFromWhiteList"

    .line 346
    .line 347
    return-object p0

    .line 348
    :pswitch_72
    const-string p0, "addAppSignatureToWhiteList"

    .line 349
    .line 350
    return-object p0

    .line 351
    :pswitch_73
    const-string p0, "isOcspCheckEnabled"

    .line 352
    .line 353
    return-object p0

    .line 354
    :pswitch_74
    const-string p0, "enableOcspCheck"

    .line 355
    .line 356
    return-object p0

    .line 357
    :pswitch_75
    const-string p0, "isRevocationCheckEnabled"

    .line 358
    .line 359
    return-object p0

    .line 360
    :pswitch_76
    const-string p0, "enableRevocationCheck"

    .line 361
    .line 362
    return-object p0

    .line 363
    :pswitch_77
    const-string p0, "removePackagesFromForceStopBlackList"

    .line 364
    .line 365
    return-object p0

    .line 366
    :pswitch_78
    const-string p0, "removePackagesFromForceStopWhiteList"

    .line 367
    .line 368
    return-object p0

    .line 369
    :pswitch_79
    const-string p0, "removePackagesFromWidgetBlackList"

    .line 370
    .line 371
    return-object p0

    .line 372
    :pswitch_7a
    const-string p0, "addPackagesToWidgetBlackList"

    .line 373
    .line 374
    return-object p0

    .line 375
    :pswitch_7b
    const-string p0, "removePackagesFromWidgetWhiteList"

    .line 376
    .line 377
    return-object p0

    .line 378
    :pswitch_7c
    const-string p0, "addPackagesToWidgetWhiteList"

    .line 379
    .line 380
    return-object p0

    .line 381
    :pswitch_7d
    const-string p0, "getPackagesFromWidgetBlackList"

    .line 382
    .line 383
    return-object p0

    .line 384
    :pswitch_7e
    const-string p0, "getPackagesFromForceStopWhiteList"

    .line 385
    .line 386
    return-object p0

    .line 387
    :pswitch_7f
    const-string p0, "addPackagesToForceStopWhiteList"

    .line 388
    .line 389
    return-object p0

    .line 390
    :pswitch_80
    const-string p0, "getPackagesFromForceStopBlackList"

    .line 391
    .line 392
    return-object p0

    .line 393
    :pswitch_81
    const-string p0, "getApplicationUninstallationMode"

    .line 394
    .line 395
    return-object p0

    .line 396
    :pswitch_82
    const-string p0, "getAllWidgets"

    .line 397
    .line 398
    return-object p0

    .line 399
    :pswitch_83
    const-string p0, "deleteHomeShortcut"

    .line 400
    .line 401
    return-object p0

    .line 402
    :pswitch_84
    const-string p0, "addHomeShortcut"

    .line 403
    .line 404
    return-object p0

    .line 405
    :pswitch_85
    const-string p0, "isStatusBarNotificationAllowedAsUser"

    .line 406
    .line 407
    return-object p0

    .line 408
    :pswitch_86
    const-string p0, "getApplicationNotificationModeAsUser"

    .line 409
    .line 410
    return-object p0

    .line 411
    :pswitch_87
    const-string p0, "getApplicationNotificationMode"

    .line 412
    .line 413
    return-object p0

    .line 414
    :pswitch_88
    const-string p0, "setApplicationNotificationMode"

    .line 415
    .line 416
    return-object p0

    .line 417
    :pswitch_89
    const-string p0, "getAppNotificationWhiteList"

    .line 418
    .line 419
    return-object p0

    .line 420
    :pswitch_8a
    const-string p0, "removeAppNotificationWhiteList"

    .line 421
    .line 422
    return-object p0

    .line 423
    :pswitch_8b
    const-string p0, "addAppNotificationWhiteList"

    .line 424
    .line 425
    return-object p0

    .line 426
    :pswitch_8c
    const-string p0, "getAppNotificationBlackList"

    .line 427
    .line 428
    return-object p0

    .line 429
    :pswitch_8d
    const-string p0, "removeAppNotificationBlackList"

    .line 430
    .line 431
    return-object p0

    .line 432
    :pswitch_8e
    const-string p0, "addAppNotificationBlackList"

    .line 433
    .line 434
    return-object p0

    .line 435
    :pswitch_8f
    const-string p0, "isWidgetAllowed"

    .line 436
    .line 437
    return-object p0

    .line 438
    :pswitch_90
    const-string p0, "getPackagesFromWidgetWhiteList"

    .line 439
    .line 440
    return-object p0

    .line 441
    :pswitch_91
    const-string p0, "isApplicationForceStopDisabled"

    .line 442
    .line 443
    return-object p0

    .line 444
    :pswitch_92
    const-string p0, "addPackagesToForceStopBlackList"

    .line 445
    .line 446
    return-object p0

    .line 447
    :pswitch_93
    const-string p0, "setApplicationUninstallationMode"

    .line 448
    .line 449
    return-object p0

    .line 450
    :pswitch_94
    const-string p0, "getAppInstallationMode"

    .line 451
    .line 452
    return-object p0

    .line 453
    :pswitch_95
    const-string p0, "setAppInstallationMode"

    .line 454
    .line 455
    return-object p0

    .line 456
    :pswitch_96
    const-string p0, "getAppSignaturesAllBlackLists"

    .line 457
    .line 458
    return-object p0

    .line 459
    :pswitch_97
    const-string p0, "getAppPermissionsAllBlackLists"

    .line 460
    .line 461
    return-object p0

    .line 462
    :pswitch_98
    const-string p0, "getAppPackageNamesAllWhiteLists"

    .line 463
    .line 464
    return-object p0

    .line 465
    :pswitch_99
    const-string p0, "removeAppPackageNameFromWhiteList"

    .line 466
    .line 467
    return-object p0

    .line 468
    :pswitch_9a
    const-string p0, "addAppPackageNameToWhiteList"

    .line 469
    .line 470
    return-object p0

    .line 471
    :pswitch_9b
    const-string p0, "getAppPackageNamesAllBlackLists"

    .line 472
    .line 473
    return-object p0

    .line 474
    :pswitch_9c
    const-string p0, "removeAppPackageNameFromBlackList"

    .line 475
    .line 476
    return-object p0

    .line 477
    :pswitch_9d
    const-string p0, "addAppPackageNameToBlackList"

    .line 478
    .line 479
    return-object p0

    .line 480
    :pswitch_9e
    const-string p0, "isIntentDisabled"

    .line 481
    .line 482
    return-object p0

    .line 483
    :pswitch_9f
    const-string p0, "setApplicationStateList"

    .line 484
    .line 485
    return-object p0

    .line 486
    :pswitch_a0
    const-string p0, "getApplicationStateList"

    .line 487
    .line 488
    return-object p0

    .line 489
    :pswitch_a1
    const-string p0, "startApp"

    .line 490
    .line 491
    return-object p0

    .line 492
    :pswitch_a2
    const-string p0, "stopApp"

    .line 493
    .line 494
    return-object p0

    .line 495
    :pswitch_a3
    const-string p0, "getAppSignatureBlackList"

    .line 496
    .line 497
    return-object p0

    .line 498
    :pswitch_a4
    const-string p0, "removeAppSignatureFromBlackList"

    .line 499
    .line 500
    return-object p0

    .line 501
    :pswitch_a5
    const-string p0, "addAppSignatureToBlackList"

    .line 502
    .line 503
    return-object p0

    .line 504
    :pswitch_a6
    const-string p0, "getAppPermissionsBlackList"

    .line 505
    .line 506
    return-object p0

    .line 507
    :pswitch_a7
    const-string p0, "removeAppPermissionFromBlackList"

    .line 508
    .line 509
    return-object p0

    .line 510
    :pswitch_a8
    const-string p0, "addAppPermissionToBlackList"

    .line 511
    .line 512
    return-object p0

    .line 513
    :pswitch_a9
    const-string p0, "isAnyApplicationIconChangedAsUser"

    .line 514
    .line 515
    return-object p0

    .line 516
    :pswitch_aa
    const-string p0, "getApplicationIconFromDb"

    .line 517
    .line 518
    return-object p0

    .line 519
    :pswitch_ab
    const-string p0, "changeApplicationIcon"

    .line 520
    .line 521
    return-object p0

    .line 522
    :pswitch_ac
    const-string p0, "updateDataUsageDb"

    .line 523
    .line 524
    return-object p0

    .line 525
    :pswitch_ad
    const-string p0, "getNetworkStats"

    .line 526
    .line 527
    return-object p0

    .line 528
    :pswitch_ae
    const-string p0, "getAllAppLastUsage"

    .line 529
    .line 530
    return-object p0

    .line 531
    :pswitch_af
    const-string p0, "getAvgNoAppUsagePerMonth"

    .line 532
    .line 533
    return-object p0

    .line 534
    :pswitch_b0
    const-string p0, "getTopNCPUUsageApp"

    .line 535
    .line 536
    return-object p0

    .line 537
    :pswitch_b1
    const-string p0, "getTopNDataUsageApp"

    .line 538
    .line 539
    return-object p0

    .line 540
    :pswitch_b2
    const-string p0, "getTopNMemoryUsageApp"

    .line 541
    .line 542
    return-object p0

    .line 543
    :pswitch_b3
    const-string p0, "getApplicationCpuUsage"

    .line 544
    .line 545
    return-object p0

    .line 546
    :pswitch_b4
    const-string p0, "getApplicationMemoryUsage"

    .line 547
    .line 548
    return-object p0

    .line 549
    :pswitch_b5
    const-string p0, "getApplicationCacheSize"

    .line 550
    .line 551
    return-object p0

    .line 552
    :pswitch_b6
    const-string p0, "getApplicationDataSize"

    .line 553
    .line 554
    return-object p0

    .line 555
    :pswitch_b7
    const-string p0, "getApplicationCodeSize"

    .line 556
    .line 557
    return-object p0

    .line 558
    :pswitch_b8
    const-string p0, "getApplicationTotalSize"

    .line 559
    .line 560
    return-object p0

    .line 561
    :pswitch_b9
    const-string p0, "getApplicationVersionCode"

    .line 562
    .line 563
    return-object p0

    .line 564
    :pswitch_ba
    const-string p0, "getApplicationVersion"

    .line 565
    .line 566
    return-object p0

    .line 567
    :pswitch_bb
    const-string p0, "getApplicationUid"

    .line 568
    .line 569
    return-object p0

    .line 570
    :pswitch_bc
    const-string p0, "getApplicationName"

    .line 571
    .line 572
    return-object p0

    .line 573
    :pswitch_bd
    const-string p0, "getInstalledApplicationsIDList"

    .line 574
    .line 575
    return-object p0

    .line 576
    :pswitch_be
    const-string p0, "getApplicationUninstallationEnabled"

    .line 577
    .line 578
    return-object p0

    .line 579
    :pswitch_bf
    const-string p0, "getApplicationInstallationEnabled"

    .line 580
    .line 581
    return-object p0

    .line 582
    :pswitch_c0
    const-string p0, "getApplicationStateEnabled"

    .line 583
    .line 584
    return-object p0

    .line 585
    :pswitch_c1
    const-string p0, "setApplicationUninstallationDisabled"

    .line 586
    .line 587
    return-object p0

    .line 588
    :pswitch_c2
    const-string p0, "setApplicationInstallationDisabled"

    .line 589
    .line 590
    return-object p0

    .line 591
    :pswitch_c3
    const-string p0, "setApplicationState"

    .line 592
    .line 593
    return-object p0

    .line 594
    :pswitch_c4
    const-string p0, "uninstallApplication"

    .line 595
    .line 596
    return-object p0

    .line 597
    :pswitch_c5
    const-string p0, "installApplication"

    .line 598
    .line 599
    return-object p0

    .line 600
    :pswitch_c6
    const-string p0, "isApplicationRunning"

    .line 601
    .line 602
    return-object p0

    .line 603
    :pswitch_c7
    const-string p0, "isApplicationInstalled"

    .line 604
    .line 605
    return-object p0

    .line 606
    :pswitch_c8
    const-string p0, "wipeApplicationData"

    .line 607
    .line 608
    return-object p0

    .line 609
    :pswitch_c9
    const-string p0, "removeManagedApplications"

    .line 610
    .line 611
    return-object p0

    .line 612
    nop

    .line 613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    .line 1
    const/16 p0, 0xc9

    .line 2
    .line 3
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    .line 1
    const-string v0, "com.samsung.android.knox.application.IApplicationPolicy"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_1

    .line 18
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_0
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->doSelfUninstall(Lcom/samsung/android/knox/ContextInfo;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :pswitch_1
    invoke-interface {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getConcentrationMode()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :pswitch_2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setConcentrationMode(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :pswitch_3
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/content/Intent;

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->createIntentFilter(Landroid/content/Intent;)Landroid/content/IntentFilter;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result p4

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    .line 122
    .line 123
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :pswitch_5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 136
    .line 137
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 142
    .line 143
    sget-object p4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    .line 145
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p4

    .line 149
    check-cast p4, Landroid/content/Intent;

    .line 150
    .line 151
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/content/ComponentName;

    .line 158
    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    .line 161
    .line 162
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :pswitch_6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 175
    .line 176
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 181
    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    .line 184
    .line 185
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllDefaultApplications(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :pswitch_7
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 198
    .line 199
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Landroid/content/Intent;

    .line 204
    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 206
    .line 207
    .line 208
    move-result p4

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    .line 211
    .line 212
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :pswitch_8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 225
    .line 226
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 231
    .line 232
    sget-object p4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 233
    .line 234
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p4

    .line 238
    check-cast p4, Landroid/content/Intent;

    .line 239
    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    .line 242
    .line 243
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 256
    .line 257
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 262
    .line 263
    sget-object p4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 264
    .line 265
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p4

    .line 269
    check-cast p4, Landroid/content/Intent;

    .line 270
    .line 271
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 272
    .line 273
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Landroid/content/ComponentName;

    .line 278
    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    .line 281
    .line 282
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    .line 283
    .line 284
    .line 285
    move-result p0

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 299
    .line 300
    .line 301
    move-result p4

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    .line 304
    .line 305
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->applicationUsageAppPauseTime(Ljava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 318
    .line 319
    .line 320
    move-result p4

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    .line 323
    .line 324
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->applicationUsageAppLaunchCount(Ljava/lang/String;I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 337
    .line 338
    .line 339
    move-result p4

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    .line 342
    .line 343
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabledAsUser(Ljava/lang/String;I)Z

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 360
    .line 361
    .line 362
    move-result p4

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    .line 365
    .line 366
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isFromApprovedInstaller(II)Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_0

    .line 377
    .line 378
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    sget-object p4, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 383
    .line 384
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object p4

    .line 388
    check-cast p4, [Landroid/content/pm/Signature;

    .line 389
    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    .line 400
    .line 401
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/util/List;I)Z

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 418
    .line 419
    .line 420
    move-result p4

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    .line 427
    .line 428
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    .line 429
    .line 430
    .line 431
    move-result p0

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    .line 446
    .line 447
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllDefaultApplicationsInternal(I)Ljava/util/List;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 464
    .line 465
    .line 466
    move-result p4

    .line 467
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 468
    .line 469
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, Landroid/app/Notification;

    .line 474
    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    .line 477
    .line 478
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->handleStatusBarNotificationNotAllowedAsUser(Ljava/lang/String;ILandroid/app/Notification;)Z

    .line 479
    .line 480
    .line 481
    move-result p0

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_0

    .line 489
    .line 490
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 495
    .line 496
    .line 497
    move-result p4

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    .line 500
    .line 501
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isCameraAllowlistedApp(II)Z

    .line 502
    .line 503
    .line 504
    move-result p0

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_0

    .line 512
    .line 513
    :pswitch_13
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 514
    .line 515
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 520
    .line 521
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 522
    .line 523
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object p4

    .line 527
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 528
    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    .line 531
    .line 532
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeApplicationFromCameraAllowList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 533
    .line 534
    .line 535
    move-result p0

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_0

    .line 543
    .line 544
    :pswitch_14
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 545
    .line 546
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 551
    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    .line 554
    .line 555
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationPackagesFromCameraAllowList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 556
    .line 557
    .line 558
    move-result-object p0

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    .line 561
    .line 562
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_0

    .line 566
    .line 567
    :pswitch_15
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 568
    .line 569
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 574
    .line 575
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 576
    .line 577
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object p4

    .line 581
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 582
    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    .line 585
    .line 586
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addApplicationToCameraAllowList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 587
    .line 588
    .line 589
    move-result p0

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    .line 592
    .line 593
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_0

    .line 597
    .line 598
    :pswitch_16
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 599
    .line 600
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 605
    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object p4

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    .line 612
    .line 613
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAsManagedApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 614
    .line 615
    .line 616
    move-result p0

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 621
    .line 622
    .line 623
    goto/16 :goto_0

    .line 624
    .line 625
    :pswitch_17
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 626
    .line 627
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object p1

    .line 631
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 632
    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object p4

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    .line 639
    .line 640
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationsList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/application/ManagedAppInfo;

    .line 641
    .line 642
    .line 643
    move-result-object p0

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_0

    .line 651
    .line 652
    :pswitch_18
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 653
    .line 654
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 659
    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    .line 662
    .line 663
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getInstalledManagedApplicationsList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object p0

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    .line 669
    .line 670
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    goto/16 :goto_0

    .line 674
    .line 675
    :pswitch_19
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 676
    .line 677
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object p1

    .line 681
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 682
    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    .line 685
    .line 686
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppInstallToSdCard(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 687
    .line 688
    .line 689
    move-result p0

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    .line 692
    .line 693
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_0

    .line 697
    .line 698
    :pswitch_1a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 699
    .line 700
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 705
    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 707
    .line 708
    .line 709
    move-result p4

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    .line 712
    .line 713
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAppInstallToSdCard(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 714
    .line 715
    .line 716
    move-result p0

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    .line 719
    .line 720
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_0

    .line 724
    .line 725
    :pswitch_1b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 726
    .line 727
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object p1

    .line 731
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 732
    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object p4

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    .line 739
    .line 740
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->deleteManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 741
    .line 742
    .line 743
    move-result p0

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    .line 746
    .line 747
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 748
    .line 749
    .line 750
    goto/16 :goto_0

    .line 751
    .line 752
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 753
    .line 754
    .line 755
    move-result p1

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object p4

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    .line 762
    .line 763
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationExternalStorageBlacklisted(ILjava/lang/String;)Z

    .line 764
    .line 765
    .line 766
    move-result p0

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    .line 769
    .line 770
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 771
    .line 772
    .line 773
    goto/16 :goto_0

    .line 774
    .line 775
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 776
    .line 777
    .line 778
    move-result p1

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object p4

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    .line 785
    .line 786
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationExternalStorageWhitelisted(ILjava/lang/String;)Z

    .line 787
    .line 788
    .line 789
    move-result p0

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    .line 792
    .line 793
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 794
    .line 795
    .line 796
    goto/16 :goto_0

    .line 797
    .line 798
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 799
    .line 800
    .line 801
    move-result p1

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 803
    .line 804
    .line 805
    move-result p4

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 807
    .line 808
    .line 809
    move-result v0

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    .line 812
    .line 813
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInBlacklistInternal(III)Z

    .line 814
    .line 815
    .line 816
    move-result p0

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    .line 819
    .line 820
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 821
    .line 822
    .line 823
    goto/16 :goto_0

    .line 824
    .line 825
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 826
    .line 827
    .line 828
    move-result p1

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 830
    .line 831
    .line 832
    move-result p4

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 834
    .line 835
    .line 836
    move-result v0

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    .line 839
    .line 840
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInWhitelistInternal(III)Z

    .line 841
    .line 842
    .line 843
    move-result p0

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    .line 846
    .line 847
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 848
    .line 849
    .line 850
    goto/16 :goto_0

    .line 851
    .line 852
    :pswitch_20
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 853
    .line 854
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object p1

    .line 858
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 859
    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 861
    .line 862
    .line 863
    move-result p4

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    .line 870
    .line 871
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromBlackList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    .line 872
    .line 873
    .line 874
    move-result p0

    .line 875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    .line 877
    .line 878
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    .line 880
    .line 881
    goto/16 :goto_0

    .line 882
    .line 883
    :pswitch_21
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 884
    .line 885
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object p1

    .line 889
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 890
    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 892
    .line 893
    .line 894
    move-result p4

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    .line 897
    .line 898
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromBlackList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 899
    .line 900
    .line 901
    move-result-object p0

    .line 902
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    .line 904
    .line 905
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 906
    .line 907
    .line 908
    goto/16 :goto_0

    .line 909
    .line 910
    :pswitch_22
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 911
    .line 912
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object p1

    .line 916
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 917
    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 919
    .line 920
    .line 921
    move-result p4

    .line 922
    sget-object v0, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 923
    .line 924
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    .line 929
    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    .line 932
    .line 933
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBlackList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    .line 934
    .line 935
    .line 936
    move-result p0

    .line 937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    .line 939
    .line 940
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    .line 942
    .line 943
    goto/16 :goto_0

    .line 944
    .line 945
    :pswitch_23
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 946
    .line 947
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object p1

    .line 951
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 952
    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 954
    .line 955
    .line 956
    move-result p4

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    .line 963
    .line 964
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    .line 965
    .line 966
    .line 967
    move-result p0

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    .line 970
    .line 971
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    .line 973
    .line 974
    goto/16 :goto_0

    .line 975
    .line 976
    :pswitch_24
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 977
    .line 978
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object p1

    .line 982
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 983
    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 985
    .line 986
    .line 987
    move-result p4

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    .line 990
    .line 991
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 992
    .line 993
    .line 994
    move-result-object p0

    .line 995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    .line 997
    .line 998
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 999
    .line 1000
    .line 1001
    goto/16 :goto_0

    .line 1002
    .line 1003
    :pswitch_25
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1004
    .line 1005
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object p1

    .line 1009
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1010
    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1012
    .line 1013
    .line 1014
    move-result p4

    .line 1015
    sget-object v0, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1016
    .line 1017
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    .line 1022
    .line 1023
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    .line 1025
    .line 1026
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    .line 1027
    .line 1028
    .line 1029
    move-result p0

    .line 1030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    .line 1035
    .line 1036
    goto/16 :goto_0

    .line 1037
    .line 1038
    :pswitch_26
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1039
    .line 1040
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object p1

    .line 1044
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1045
    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    .line 1048
    .line 1049
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1050
    .line 1051
    .line 1052
    move-result p0

    .line 1053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    .line 1058
    .line 1059
    goto/16 :goto_0

    .line 1060
    .line 1061
    :pswitch_27
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1062
    .line 1063
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    move-result-object p1

    .line 1067
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1068
    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object p4

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    .line 1075
    .line 1076
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 1077
    .line 1078
    .line 1079
    move-result-object p0

    .line 1080
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1084
    .line 1085
    .line 1086
    goto/16 :goto_0

    .line 1087
    .line 1088
    :pswitch_28
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1089
    .line 1090
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-result-object p1

    .line 1094
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1095
    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1097
    .line 1098
    .line 1099
    move-result p4

    .line 1100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    .line 1102
    .line 1103
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAndroidMarketState(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    .line 1108
    .line 1109
    goto/16 :goto_0

    .line 1110
    .line 1111
    :pswitch_29
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1112
    .line 1113
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object p1

    .line 1117
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1118
    .line 1119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object p4

    .line 1123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1124
    .line 1125
    .line 1126
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationGrantedPermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 1127
    .line 1128
    .line 1129
    move-result-object p0

    .line 1130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1134
    .line 1135
    .line 1136
    goto/16 :goto_0

    .line 1137
    .line 1138
    :pswitch_2a
    invoke-interface {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    .line 1139
    .line 1140
    .line 1141
    move-result-object p0

    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1146
    .line 1147
    .line 1148
    goto/16 :goto_0

    .line 1149
    .line 1150
    :pswitch_2b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1151
    .line 1152
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object p1

    .line 1156
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1157
    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    .line 1160
    .line 1161
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1162
    .line 1163
    .line 1164
    move-result-object p0

    .line 1165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1169
    .line 1170
    .line 1171
    goto/16 :goto_0

    .line 1172
    .line 1173
    :pswitch_2c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1174
    .line 1175
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object p1

    .line 1179
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1180
    .line 1181
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1182
    .line 1183
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object p4

    .line 1187
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 1188
    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    .line 1191
    .line 1192
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 1193
    .line 1194
    .line 1195
    move-result p0

    .line 1196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    .line 1201
    .line 1202
    goto/16 :goto_0

    .line 1203
    .line 1204
    :pswitch_2d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1205
    .line 1206
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1207
    .line 1208
    .line 1209
    move-result-object p1

    .line 1210
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1211
    .line 1212
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1213
    .line 1214
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    move-result-object p4

    .line 1218
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 1219
    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1221
    .line 1222
    .line 1223
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 1224
    .line 1225
    .line 1226
    move-result p0

    .line 1227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    .line 1232
    .line 1233
    goto/16 :goto_0

    .line 1234
    .line 1235
    :pswitch_2e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1236
    .line 1237
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object p1

    .line 1241
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1242
    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object p4

    .line 1247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1248
    .line 1249
    .line 1250
    move-result v0

    .line 1251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    .line 1253
    .line 1254
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getRuntimePermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    .line 1255
    .line 1256
    .line 1257
    move-result-object p0

    .line 1258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1262
    .line 1263
    .line 1264
    goto/16 :goto_0

    .line 1265
    .line 1266
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1267
    .line 1268
    .line 1269
    move-result p1

    .line 1270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1271
    .line 1272
    .line 1273
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->reapplyRuntimePermissions(I)V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    .line 1278
    .line 1279
    goto/16 :goto_0

    .line 1280
    .line 1281
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object p1

    .line 1285
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    .line 1287
    .line 1288
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->verifyRuntimePermissionPackageSignature(Ljava/lang/String;)Z

    .line 1289
    .line 1290
    .line 1291
    move-result p0

    .line 1292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1296
    .line 1297
    .line 1298
    goto/16 :goto_0

    .line 1299
    .line 1300
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1301
    .line 1302
    .line 1303
    move-result p1

    .line 1304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object p4

    .line 1308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1309
    .line 1310
    .line 1311
    move-result v0

    .line 1312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    .line 1314
    .line 1315
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    .line 1316
    .line 1317
    .line 1318
    move-result-object p0

    .line 1319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1323
    .line 1324
    .line 1325
    goto/16 :goto_0

    .line 1326
    .line 1327
    :pswitch_32
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1328
    .line 1329
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object p1

    .line 1333
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1334
    .line 1335
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1336
    .line 1337
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    move-result-object p4

    .line 1341
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 1342
    .line 1343
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v0

    .line 1347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1348
    .line 1349
    .line 1350
    move-result v2

    .line 1351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1352
    .line 1353
    .line 1354
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->applyRuntimePermissions(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;I)I

    .line 1355
    .line 1356
    .line 1357
    move-result p0

    .line 1358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1362
    .line 1363
    .line 1364
    goto/16 :goto_0

    .line 1365
    .line 1366
    :pswitch_33
    invoke-interface {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAddHomeShorcutRequested()Z

    .line 1367
    .line 1368
    .line 1369
    move-result p0

    .line 1370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1374
    .line 1375
    .line 1376
    goto/16 :goto_0

    .line 1377
    .line 1378
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1379
    .line 1380
    .line 1381
    move-result p1

    .line 1382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1383
    .line 1384
    .line 1385
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    .line 1386
    .line 1387
    .line 1388
    move-result-object p0

    .line 1389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1393
    .line 1394
    .line 1395
    goto/16 :goto_0

    .line 1396
    .line 1397
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1398
    .line 1399
    .line 1400
    move-result p1

    .line 1401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1402
    .line 1403
    .line 1404
    move-result p4

    .line 1405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1406
    .line 1407
    .line 1408
    move-result v0

    .line 1409
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1410
    .line 1411
    .line 1412
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->updateApplicationTable(III)Z

    .line 1413
    .line 1414
    .line 1415
    move-result p0

    .line 1416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1420
    .line 1421
    .line 1422
    goto/16 :goto_0

    .line 1423
    .line 1424
    :pswitch_36
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1425
    .line 1426
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1427
    .line 1428
    .line 1429
    move-result-object p1

    .line 1430
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1431
    .line 1432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1433
    .line 1434
    .line 1435
    move-result-object p4

    .line 1436
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1437
    .line 1438
    .line 1439
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installExistingApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 1440
    .line 1441
    .line 1442
    move-result p0

    .line 1443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1447
    .line 1448
    .line 1449
    goto/16 :goto_0

    .line 1450
    .line 1451
    :pswitch_37
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1452
    .line 1453
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1454
    .line 1455
    .line 1456
    move-result-object p1

    .line 1457
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1458
    .line 1459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object p4

    .line 1463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    .line 1465
    .line 1466
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 1467
    .line 1468
    .line 1469
    move-result p0

    .line 1470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1474
    .line 1475
    .line 1476
    goto/16 :goto_0

    .line 1477
    .line 1478
    :pswitch_38
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1479
    .line 1480
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1481
    .line 1482
    .line 1483
    move-result-object p1

    .line 1484
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1485
    .line 1486
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1487
    .line 1488
    .line 1489
    move-result-object p4

    .line 1490
    sget-object v0, Lcom/samsung/android/knox/application/UsbDeviceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1491
    .line 1492
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v0

    .line 1496
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1497
    .line 1498
    .line 1499
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    .line 1500
    .line 1501
    .line 1502
    move-result p0

    .line 1503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1507
    .line 1508
    .line 1509
    goto/16 :goto_0

    .line 1510
    .line 1511
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1512
    .line 1513
    .line 1514
    move-result p1

    .line 1515
    sget-object p4, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1516
    .line 1517
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1518
    .line 1519
    .line 1520
    move-result-object p4

    .line 1521
    check-cast p4, Landroid/hardware/usb/UsbDevice;

    .line 1522
    .line 1523
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v0

    .line 1527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1528
    .line 1529
    .line 1530
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    .line 1531
    .line 1532
    .line 1533
    move-result p0

    .line 1534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    .line 1536
    .line 1537
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1538
    .line 1539
    .line 1540
    goto/16 :goto_0

    .line 1541
    .line 1542
    :pswitch_3a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1543
    .line 1544
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object p1

    .line 1548
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1549
    .line 1550
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1551
    .line 1552
    .line 1553
    move-result-object p4

    .line 1554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1555
    .line 1556
    .line 1557
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 1558
    .line 1559
    .line 1560
    move-result-object p0

    .line 1561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1565
    .line 1566
    .line 1567
    goto/16 :goto_0

    .line 1568
    .line 1569
    :pswitch_3b
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1570
    .line 1571
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1572
    .line 1573
    .line 1574
    move-result-object p1

    .line 1575
    check-cast p1, Landroid/content/ComponentName;

    .line 1576
    .line 1577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1578
    .line 1579
    .line 1580
    move-result p4

    .line 1581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1582
    .line 1583
    .line 1584
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->updateWidgetStatus(Landroid/content/ComponentName;I)V

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    .line 1589
    .line 1590
    goto/16 :goto_0

    .line 1591
    .line 1592
    :pswitch_3c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1593
    .line 1594
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1595
    .line 1596
    .line 1597
    move-result-object p1

    .line 1598
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1599
    .line 1600
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1601
    .line 1602
    .line 1603
    move-result-object p4

    .line 1604
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1605
    .line 1606
    .line 1607
    move-result v0

    .line 1608
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1609
    .line 1610
    .line 1611
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getHomeShortcuts(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;

    .line 1612
    .line 1613
    .line 1614
    move-result-object p0

    .line 1615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1616
    .line 1617
    .line 1618
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1619
    .line 1620
    .line 1621
    goto/16 :goto_0

    .line 1622
    .line 1623
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object p1

    .line 1627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1628
    .line 1629
    .line 1630
    move-result p4

    .line 1631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1632
    .line 1633
    .line 1634
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationFocusMonitoredAsUser(Ljava/lang/String;I)Z

    .line 1635
    .line 1636
    .line 1637
    move-result p0

    .line 1638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1642
    .line 1643
    .line 1644
    goto/16 :goto_0

    .line 1645
    .line 1646
    :pswitch_3e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1647
    .line 1648
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    move-result-object p1

    .line 1652
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1653
    .line 1654
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1655
    .line 1656
    .line 1657
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1658
    .line 1659
    .line 1660
    move-result p0

    .line 1661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1665
    .line 1666
    .line 1667
    goto/16 :goto_0

    .line 1668
    .line 1669
    :pswitch_3f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1670
    .line 1671
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1672
    .line 1673
    .line 1674
    move-result-object p1

    .line 1675
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1676
    .line 1677
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1678
    .line 1679
    .line 1680
    move-result-object p4

    .line 1681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1682
    .line 1683
    .line 1684
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1685
    .line 1686
    .line 1687
    move-result p0

    .line 1688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1692
    .line 1693
    .line 1694
    goto/16 :goto_0

    .line 1695
    .line 1696
    :pswitch_40
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1697
    .line 1698
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1699
    .line 1700
    .line 1701
    move-result-object p1

    .line 1702
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1703
    .line 1704
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1705
    .line 1706
    .line 1707
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1708
    .line 1709
    .line 1710
    move-result-object p0

    .line 1711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    .line 1713
    .line 1714
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1715
    .line 1716
    .line 1717
    goto/16 :goto_0

    .line 1718
    .line 1719
    :pswitch_41
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1720
    .line 1721
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1722
    .line 1723
    .line 1724
    move-result-object p1

    .line 1725
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1726
    .line 1727
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1728
    .line 1729
    .line 1730
    move-result-object p4

    .line 1731
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1732
    .line 1733
    .line 1734
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1735
    .line 1736
    .line 1737
    move-result p0

    .line 1738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    .line 1740
    .line 1741
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1742
    .line 1743
    .line 1744
    goto/16 :goto_0

    .line 1745
    .line 1746
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1747
    .line 1748
    .line 1749
    move-result-object p1

    .line 1750
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1751
    .line 1752
    .line 1753
    move-result p4

    .line 1754
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1755
    .line 1756
    .line 1757
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageClipboardAllowed(Ljava/lang/String;I)Z

    .line 1758
    .line 1759
    .line 1760
    move-result p0

    .line 1761
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1762
    .line 1763
    .line 1764
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1765
    .line 1766
    .line 1767
    goto/16 :goto_0

    .line 1768
    .line 1769
    :pswitch_43
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1770
    .line 1771
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1772
    .line 1773
    .line 1774
    move-result-object p1

    .line 1775
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1776
    .line 1777
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1778
    .line 1779
    .line 1780
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1781
    .line 1782
    .line 1783
    move-result p0

    .line 1784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    .line 1786
    .line 1787
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1788
    .line 1789
    .line 1790
    goto/16 :goto_0

    .line 1791
    .line 1792
    :pswitch_44
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1793
    .line 1794
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1795
    .line 1796
    .line 1797
    move-result-object p1

    .line 1798
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1799
    .line 1800
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1801
    .line 1802
    .line 1803
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1804
    .line 1805
    .line 1806
    move-result p0

    .line 1807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1811
    .line 1812
    .line 1813
    goto/16 :goto_0

    .line 1814
    .line 1815
    :pswitch_45
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1816
    .line 1817
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1818
    .line 1819
    .line 1820
    move-result-object p1

    .line 1821
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1822
    .line 1823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1824
    .line 1825
    .line 1826
    move-result p4

    .line 1827
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1828
    .line 1829
    .line 1830
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 1831
    .line 1832
    .line 1833
    move-result-object p0

    .line 1834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1835
    .line 1836
    .line 1837
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1838
    .line 1839
    .line 1840
    goto/16 :goto_0

    .line 1841
    .line 1842
    :pswitch_46
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1843
    .line 1844
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1845
    .line 1846
    .line 1847
    move-result-object p1

    .line 1848
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1849
    .line 1850
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1851
    .line 1852
    .line 1853
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1854
    .line 1855
    .line 1856
    move-result-object p0

    .line 1857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    .line 1859
    .line 1860
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1861
    .line 1862
    .line 1863
    goto/16 :goto_0

    .line 1864
    .line 1865
    :pswitch_47
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1866
    .line 1867
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1868
    .line 1869
    .line 1870
    move-result-object p1

    .line 1871
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1872
    .line 1873
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1874
    .line 1875
    .line 1876
    move-result-object p4

    .line 1877
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1878
    .line 1879
    .line 1880
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1881
    .line 1882
    .line 1883
    move-result p0

    .line 1884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1888
    .line 1889
    .line 1890
    goto/16 :goto_0

    .line 1891
    .line 1892
    :pswitch_48
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1893
    .line 1894
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1895
    .line 1896
    .line 1897
    move-result-object p1

    .line 1898
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1899
    .line 1900
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1901
    .line 1902
    .line 1903
    move-result-object p4

    .line 1904
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1905
    .line 1906
    .line 1907
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1908
    .line 1909
    .line 1910
    move-result p0

    .line 1911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1912
    .line 1913
    .line 1914
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1915
    .line 1916
    .line 1917
    goto/16 :goto_0

    .line 1918
    .line 1919
    :pswitch_49
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1920
    .line 1921
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1922
    .line 1923
    .line 1924
    move-result-object p1

    .line 1925
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1926
    .line 1927
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1928
    .line 1929
    .line 1930
    move-result p4

    .line 1931
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1932
    .line 1933
    .line 1934
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 1935
    .line 1936
    .line 1937
    move-result-object p0

    .line 1938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1939
    .line 1940
    .line 1941
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1942
    .line 1943
    .line 1944
    goto/16 :goto_0

    .line 1945
    .line 1946
    :pswitch_4a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1947
    .line 1948
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1949
    .line 1950
    .line 1951
    move-result-object p1

    .line 1952
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1953
    .line 1954
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1955
    .line 1956
    .line 1957
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1958
    .line 1959
    .line 1960
    move-result-object p0

    .line 1961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    .line 1963
    .line 1964
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1965
    .line 1966
    .line 1967
    goto/16 :goto_0

    .line 1968
    .line 1969
    :pswitch_4b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1970
    .line 1971
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1972
    .line 1973
    .line 1974
    move-result-object p1

    .line 1975
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1976
    .line 1977
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1978
    .line 1979
    .line 1980
    move-result-object p4

    .line 1981
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1982
    .line 1983
    .line 1984
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1985
    .line 1986
    .line 1987
    move-result p0

    .line 1988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1989
    .line 1990
    .line 1991
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1992
    .line 1993
    .line 1994
    goto/16 :goto_0

    .line 1995
    .line 1996
    :pswitch_4c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1997
    .line 1998
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1999
    .line 2000
    .line 2001
    move-result-object p1

    .line 2002
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2003
    .line 2004
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2005
    .line 2006
    .line 2007
    move-result-object p4

    .line 2008
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2009
    .line 2010
    .line 2011
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2012
    .line 2013
    .line 2014
    move-result p0

    .line 2015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2016
    .line 2017
    .line 2018
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2019
    .line 2020
    .line 2021
    goto/16 :goto_0

    .line 2022
    .line 2023
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2024
    .line 2025
    .line 2026
    move-result-object p1

    .line 2027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2028
    .line 2029
    .line 2030
    move-result p4

    .line 2031
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2032
    .line 2033
    .line 2034
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    .line 2035
    .line 2036
    .line 2037
    move-result p0

    .line 2038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2039
    .line 2040
    .line 2041
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2042
    .line 2043
    .line 2044
    goto/16 :goto_0

    .line 2045
    .line 2046
    :pswitch_4e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2047
    .line 2048
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2049
    .line 2050
    .line 2051
    move-result-object p1

    .line 2052
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2053
    .line 2054
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2055
    .line 2056
    .line 2057
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2058
    .line 2059
    .line 2060
    move-result p0

    .line 2061
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2062
    .line 2063
    .line 2064
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2065
    .line 2066
    .line 2067
    goto/16 :goto_0

    .line 2068
    .line 2069
    :pswitch_4f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2070
    .line 2071
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2072
    .line 2073
    .line 2074
    move-result-object p1

    .line 2075
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2076
    .line 2077
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2078
    .line 2079
    .line 2080
    move-result-object p4

    .line 2081
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2082
    .line 2083
    .line 2084
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2085
    .line 2086
    .line 2087
    move-result p0

    .line 2088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    .line 2090
    .line 2091
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2092
    .line 2093
    .line 2094
    goto/16 :goto_0

    .line 2095
    .line 2096
    :pswitch_50
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2097
    .line 2098
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2099
    .line 2100
    .line 2101
    move-result-object p1

    .line 2102
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2103
    .line 2104
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2105
    .line 2106
    .line 2107
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2108
    .line 2109
    .line 2110
    move-result-object p0

    .line 2111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2112
    .line 2113
    .line 2114
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2115
    .line 2116
    .line 2117
    goto/16 :goto_0

    .line 2118
    .line 2119
    :pswitch_51
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2120
    .line 2121
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2122
    .line 2123
    .line 2124
    move-result-object p1

    .line 2125
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2126
    .line 2127
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2128
    .line 2129
    .line 2130
    move-result-object p4

    .line 2131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2132
    .line 2133
    .line 2134
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    .line 2135
    .line 2136
    .line 2137
    move-result-object p0

    .line 2138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2139
    .line 2140
    .line 2141
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2142
    .line 2143
    .line 2144
    goto/16 :goto_0

    .line 2145
    .line 2146
    :pswitch_52
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2147
    .line 2148
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2149
    .line 2150
    .line 2151
    move-result-object p1

    .line 2152
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2153
    .line 2154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2155
    .line 2156
    .line 2157
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2158
    .line 2159
    .line 2160
    move-result p0

    .line 2161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2162
    .line 2163
    .line 2164
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2165
    .line 2166
    .line 2167
    goto/16 :goto_0

    .line 2168
    .line 2169
    :pswitch_53
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2170
    .line 2171
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2172
    .line 2173
    .line 2174
    move-result-object p1

    .line 2175
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2176
    .line 2177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2178
    .line 2179
    .line 2180
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2181
    .line 2182
    .line 2183
    move-result p0

    .line 2184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2185
    .line 2186
    .line 2187
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2188
    .line 2189
    .line 2190
    goto/16 :goto_0

    .line 2191
    .line 2192
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2193
    .line 2194
    .line 2195
    move-result-object p1

    .line 2196
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2197
    .line 2198
    .line 2199
    move-result p4

    .line 2200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2201
    .line 2202
    .line 2203
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    .line 2204
    .line 2205
    .line 2206
    move-result p0

    .line 2207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2208
    .line 2209
    .line 2210
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2211
    .line 2212
    .line 2213
    goto/16 :goto_0

    .line 2214
    .line 2215
    :pswitch_55
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2216
    .line 2217
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2218
    .line 2219
    .line 2220
    move-result-object p1

    .line 2221
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2222
    .line 2223
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2224
    .line 2225
    .line 2226
    move-result-object p4

    .line 2227
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2228
    .line 2229
    .line 2230
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2231
    .line 2232
    .line 2233
    move-result p0

    .line 2234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2235
    .line 2236
    .line 2237
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2238
    .line 2239
    .line 2240
    goto/16 :goto_0

    .line 2241
    .line 2242
    :pswitch_56
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2243
    .line 2244
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2245
    .line 2246
    .line 2247
    move-result-object p1

    .line 2248
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2249
    .line 2250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2251
    .line 2252
    .line 2253
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2254
    .line 2255
    .line 2256
    move-result-object p0

    .line 2257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2258
    .line 2259
    .line 2260
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2261
    .line 2262
    .line 2263
    goto/16 :goto_0

    .line 2264
    .line 2265
    :pswitch_57
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2266
    .line 2267
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2268
    .line 2269
    .line 2270
    move-result-object p1

    .line 2271
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2272
    .line 2273
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2274
    .line 2275
    .line 2276
    move-result-object p4

    .line 2277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2278
    .line 2279
    .line 2280
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2281
    .line 2282
    .line 2283
    move-result p0

    .line 2284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2285
    .line 2286
    .line 2287
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2288
    .line 2289
    .line 2290
    goto/16 :goto_0

    .line 2291
    .line 2292
    :pswitch_58
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2293
    .line 2294
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2295
    .line 2296
    .line 2297
    move-result-object p1

    .line 2298
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2299
    .line 2300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2301
    .line 2302
    .line 2303
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2304
    .line 2305
    .line 2306
    move-result-object p0

    .line 2307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2308
    .line 2309
    .line 2310
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2311
    .line 2312
    .line 2313
    goto/16 :goto_0

    .line 2314
    .line 2315
    :pswitch_59
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2316
    .line 2317
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2318
    .line 2319
    .line 2320
    move-result-object p1

    .line 2321
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2322
    .line 2323
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2324
    .line 2325
    .line 2326
    move-result-object p4

    .line 2327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2328
    .line 2329
    .line 2330
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2331
    .line 2332
    .line 2333
    move-result p0

    .line 2334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    .line 2336
    .line 2337
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2338
    .line 2339
    .line 2340
    goto/16 :goto_0

    .line 2341
    .line 2342
    :pswitch_5a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2343
    .line 2344
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2345
    .line 2346
    .line 2347
    move-result-object p1

    .line 2348
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2349
    .line 2350
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2351
    .line 2352
    .line 2353
    move-result-object p4

    .line 2354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2355
    .line 2356
    .line 2357
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2358
    .line 2359
    .line 2360
    move-result p0

    .line 2361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2362
    .line 2363
    .line 2364
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2365
    .line 2366
    .line 2367
    goto/16 :goto_0

    .line 2368
    .line 2369
    :pswitch_5b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2370
    .line 2371
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2372
    .line 2373
    .line 2374
    move-result-object p1

    .line 2375
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2376
    .line 2377
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2378
    .line 2379
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2380
    .line 2381
    .line 2382
    move-result-object p4

    .line 2383
    check-cast p4, Landroid/content/ComponentName;

    .line 2384
    .line 2385
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2386
    .line 2387
    .line 2388
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    .line 2389
    .line 2390
    .line 2391
    move-result p0

    .line 2392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    .line 2394
    .line 2395
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2396
    .line 2397
    .line 2398
    goto/16 :goto_0

    .line 2399
    .line 2400
    :pswitch_5c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2401
    .line 2402
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2403
    .line 2404
    .line 2405
    move-result-object p1

    .line 2406
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2407
    .line 2408
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2409
    .line 2410
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2411
    .line 2412
    .line 2413
    move-result-object p4

    .line 2414
    check-cast p4, Landroid/content/ComponentName;

    .line 2415
    .line 2416
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2417
    .line 2418
    .line 2419
    move-result v0

    .line 2420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2421
    .line 2422
    .line 2423
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)Z

    .line 2424
    .line 2425
    .line 2426
    move-result p0

    .line 2427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2428
    .line 2429
    .line 2430
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2431
    .line 2432
    .line 2433
    goto/16 :goto_0

    .line 2434
    .line 2435
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2436
    .line 2437
    .line 2438
    move-result p1

    .line 2439
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2440
    .line 2441
    .line 2442
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isAnyApplicationNameChangedAsUser(I)Z

    .line 2443
    .line 2444
    .line 2445
    move-result p0

    .line 2446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2447
    .line 2448
    .line 2449
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2450
    .line 2451
    .line 2452
    goto/16 :goto_0

    .line 2453
    .line 2454
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2455
    .line 2456
    .line 2457
    move-result-object p1

    .line 2458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2459
    .line 2460
    .line 2461
    move-result p4

    .line 2462
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2463
    .line 2464
    .line 2465
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    .line 2466
    .line 2467
    .line 2468
    move-result-object p0

    .line 2469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2470
    .line 2471
    .line 2472
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2473
    .line 2474
    .line 2475
    goto/16 :goto_0

    .line 2476
    .line 2477
    :pswitch_5f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2478
    .line 2479
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2480
    .line 2481
    .line 2482
    move-result-object p1

    .line 2483
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2484
    .line 2485
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2486
    .line 2487
    .line 2488
    move-result-object p4

    .line 2489
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2490
    .line 2491
    .line 2492
    move-result-object v0

    .line 2493
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2494
    .line 2495
    .line 2496
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->changeApplicationName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2497
    .line 2498
    .line 2499
    move-result p0

    .line 2500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2501
    .line 2502
    .line 2503
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2504
    .line 2505
    .line 2506
    goto/16 :goto_0

    .line 2507
    .line 2508
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2509
    .line 2510
    .line 2511
    move-result-object p1

    .line 2512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2513
    .line 2514
    .line 2515
    move-result p4

    .line 2516
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2517
    .line 2518
    .line 2519
    move-result v0

    .line 2520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2521
    .line 2522
    .line 2523
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    .line 2524
    .line 2525
    .line 2526
    move-result p0

    .line 2527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2528
    .line 2529
    .line 2530
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2531
    .line 2532
    .line 2533
    goto/16 :goto_0

    .line 2534
    .line 2535
    :pswitch_61
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2536
    .line 2537
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2538
    .line 2539
    .line 2540
    move-result-object p1

    .line 2541
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2542
    .line 2543
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2544
    .line 2545
    .line 2546
    move-result-object p4

    .line 2547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2548
    .line 2549
    .line 2550
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2551
    .line 2552
    .line 2553
    move-result p0

    .line 2554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2555
    .line 2556
    .line 2557
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2558
    .line 2559
    .line 2560
    goto/16 :goto_0

    .line 2561
    .line 2562
    :pswitch_62
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2563
    .line 2564
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2565
    .line 2566
    .line 2567
    move-result-object p1

    .line 2568
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2569
    .line 2570
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2571
    .line 2572
    .line 2573
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2574
    .line 2575
    .line 2576
    move-result-object p0

    .line 2577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2578
    .line 2579
    .line 2580
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2581
    .line 2582
    .line 2583
    goto/16 :goto_0

    .line 2584
    .line 2585
    :pswitch_63
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2586
    .line 2587
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2588
    .line 2589
    .line 2590
    move-result-object p1

    .line 2591
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2592
    .line 2593
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2594
    .line 2595
    .line 2596
    move-result-object p4

    .line 2597
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2598
    .line 2599
    .line 2600
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2601
    .line 2602
    .line 2603
    move-result p0

    .line 2604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2605
    .line 2606
    .line 2607
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2608
    .line 2609
    .line 2610
    goto/16 :goto_0

    .line 2611
    .line 2612
    :pswitch_64
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2613
    .line 2614
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2615
    .line 2616
    .line 2617
    move-result-object p1

    .line 2618
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2619
    .line 2620
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2621
    .line 2622
    .line 2623
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2624
    .line 2625
    .line 2626
    move-result-object p0

    .line 2627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2628
    .line 2629
    .line 2630
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2631
    .line 2632
    .line 2633
    goto/16 :goto_0

    .line 2634
    .line 2635
    :pswitch_65
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2636
    .line 2637
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2638
    .line 2639
    .line 2640
    move-result-object p1

    .line 2641
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2642
    .line 2643
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2644
    .line 2645
    .line 2646
    move-result-object p4

    .line 2647
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2648
    .line 2649
    .line 2650
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2651
    .line 2652
    .line 2653
    move-result p0

    .line 2654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2655
    .line 2656
    .line 2657
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2658
    .line 2659
    .line 2660
    goto/16 :goto_0

    .line 2661
    .line 2662
    :pswitch_66
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2663
    .line 2664
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2665
    .line 2666
    .line 2667
    move-result-object p1

    .line 2668
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2669
    .line 2670
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2671
    .line 2672
    .line 2673
    move-result-object p4

    .line 2674
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2675
    .line 2676
    .line 2677
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2678
    .line 2679
    .line 2680
    move-result p0

    .line 2681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2682
    .line 2683
    .line 2684
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2685
    .line 2686
    .line 2687
    goto/16 :goto_0

    .line 2688
    .line 2689
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2690
    .line 2691
    .line 2692
    move-result-object p1

    .line 2693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2694
    .line 2695
    .line 2696
    move-result p4

    .line 2697
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2698
    .line 2699
    .line 2700
    move-result v0

    .line 2701
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2702
    .line 2703
    .line 2704
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    .line 2705
    .line 2706
    .line 2707
    move-result p0

    .line 2708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2709
    .line 2710
    .line 2711
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2712
    .line 2713
    .line 2714
    goto/16 :goto_0

    .line 2715
    .line 2716
    :pswitch_68
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2717
    .line 2718
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2719
    .line 2720
    .line 2721
    move-result-object p1

    .line 2722
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2723
    .line 2724
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2725
    .line 2726
    .line 2727
    move-result-object p4

    .line 2728
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2729
    .line 2730
    .line 2731
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2732
    .line 2733
    .line 2734
    move-result p0

    .line 2735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2736
    .line 2737
    .line 2738
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2739
    .line 2740
    .line 2741
    goto/16 :goto_0

    .line 2742
    .line 2743
    :pswitch_69
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2744
    .line 2745
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2746
    .line 2747
    .line 2748
    move-result-object p1

    .line 2749
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2750
    .line 2751
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2752
    .line 2753
    .line 2754
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2755
    .line 2756
    .line 2757
    move-result-object p0

    .line 2758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2759
    .line 2760
    .line 2761
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2762
    .line 2763
    .line 2764
    goto/16 :goto_0

    .line 2765
    .line 2766
    :pswitch_6a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2767
    .line 2768
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2769
    .line 2770
    .line 2771
    move-result-object p1

    .line 2772
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2773
    .line 2774
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2775
    .line 2776
    .line 2777
    move-result-object p4

    .line 2778
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2779
    .line 2780
    .line 2781
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2782
    .line 2783
    .line 2784
    move-result p0

    .line 2785
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2786
    .line 2787
    .line 2788
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2789
    .line 2790
    .line 2791
    goto/16 :goto_0

    .line 2792
    .line 2793
    :pswitch_6b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2794
    .line 2795
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2796
    .line 2797
    .line 2798
    move-result-object p1

    .line 2799
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2800
    .line 2801
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2802
    .line 2803
    .line 2804
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2805
    .line 2806
    .line 2807
    move-result-object p0

    .line 2808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2809
    .line 2810
    .line 2811
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2812
    .line 2813
    .line 2814
    goto/16 :goto_0

    .line 2815
    .line 2816
    :pswitch_6c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2817
    .line 2818
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2819
    .line 2820
    .line 2821
    move-result-object p1

    .line 2822
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2823
    .line 2824
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2825
    .line 2826
    .line 2827
    move-result-object p4

    .line 2828
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2829
    .line 2830
    .line 2831
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2832
    .line 2833
    .line 2834
    move-result p0

    .line 2835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2836
    .line 2837
    .line 2838
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2839
    .line 2840
    .line 2841
    goto/16 :goto_0

    .line 2842
    .line 2843
    :pswitch_6d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2844
    .line 2845
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2846
    .line 2847
    .line 2848
    move-result-object p1

    .line 2849
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2850
    .line 2851
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2852
    .line 2853
    .line 2854
    move-result-object p4

    .line 2855
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2856
    .line 2857
    .line 2858
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 2859
    .line 2860
    .line 2861
    move-result p0

    .line 2862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2863
    .line 2864
    .line 2865
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2866
    .line 2867
    .line 2868
    goto/16 :goto_0

    .line 2869
    .line 2870
    :pswitch_6e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2871
    .line 2872
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2873
    .line 2874
    .line 2875
    move-result-object p1

    .line 2876
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2877
    .line 2878
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2879
    .line 2880
    .line 2881
    move-result-object p4

    .line 2882
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2883
    .line 2884
    .line 2885
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInApprovedInstallerWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2886
    .line 2887
    .line 2888
    move-result p0

    .line 2889
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2890
    .line 2891
    .line 2892
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2893
    .line 2894
    .line 2895
    goto/16 :goto_0

    .line 2896
    .line 2897
    :pswitch_6f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2898
    .line 2899
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2900
    .line 2901
    .line 2902
    move-result-object p1

    .line 2903
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2904
    .line 2905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2906
    .line 2907
    .line 2908
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesAllWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2909
    .line 2910
    .line 2911
    move-result-object p0

    .line 2912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2913
    .line 2914
    .line 2915
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2916
    .line 2917
    .line 2918
    goto/16 :goto_0

    .line 2919
    .line 2920
    :pswitch_70
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2921
    .line 2922
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2923
    .line 2924
    .line 2925
    move-result-object p1

    .line 2926
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2927
    .line 2928
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2929
    .line 2930
    .line 2931
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesWhiteList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 2932
    .line 2933
    .line 2934
    move-result-object p0

    .line 2935
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2936
    .line 2937
    .line 2938
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2939
    .line 2940
    .line 2941
    goto/16 :goto_0

    .line 2942
    .line 2943
    :pswitch_71
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2944
    .line 2945
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2946
    .line 2947
    .line 2948
    move-result-object p1

    .line 2949
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2950
    .line 2951
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2952
    .line 2953
    .line 2954
    move-result-object p4

    .line 2955
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2956
    .line 2957
    .line 2958
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppSignatureFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2959
    .line 2960
    .line 2961
    move-result p0

    .line 2962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2963
    .line 2964
    .line 2965
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2966
    .line 2967
    .line 2968
    goto/16 :goto_0

    .line 2969
    .line 2970
    :pswitch_72
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2971
    .line 2972
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2973
    .line 2974
    .line 2975
    move-result-object p1

    .line 2976
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2977
    .line 2978
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2979
    .line 2980
    .line 2981
    move-result-object p4

    .line 2982
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2983
    .line 2984
    .line 2985
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppSignatureToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2986
    .line 2987
    .line 2988
    move-result p0

    .line 2989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2990
    .line 2991
    .line 2992
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2993
    .line 2994
    .line 2995
    goto/16 :goto_0

    .line 2996
    .line 2997
    :pswitch_73
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2998
    .line 2999
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3000
    .line 3001
    .line 3002
    move-result-object p1

    .line 3003
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3004
    .line 3005
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3006
    .line 3007
    .line 3008
    move-result-object p4

    .line 3009
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3010
    .line 3011
    .line 3012
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 3013
    .line 3014
    .line 3015
    move-result p0

    .line 3016
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3017
    .line 3018
    .line 3019
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3020
    .line 3021
    .line 3022
    goto/16 :goto_0

    .line 3023
    .line 3024
    :pswitch_74
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3025
    .line 3026
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3027
    .line 3028
    .line 3029
    move-result-object p1

    .line 3030
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3031
    .line 3032
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3033
    .line 3034
    .line 3035
    move-result-object p4

    .line 3036
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3037
    .line 3038
    .line 3039
    move-result v0

    .line 3040
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3041
    .line 3042
    .line 3043
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->enableOcspCheck(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 3044
    .line 3045
    .line 3046
    move-result p0

    .line 3047
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3048
    .line 3049
    .line 3050
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3051
    .line 3052
    .line 3053
    goto/16 :goto_0

    .line 3054
    .line 3055
    :pswitch_75
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3056
    .line 3057
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3058
    .line 3059
    .line 3060
    move-result-object p1

    .line 3061
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3062
    .line 3063
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3064
    .line 3065
    .line 3066
    move-result-object p4

    .line 3067
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3068
    .line 3069
    .line 3070
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 3071
    .line 3072
    .line 3073
    move-result p0

    .line 3074
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3075
    .line 3076
    .line 3077
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3078
    .line 3079
    .line 3080
    goto/16 :goto_0

    .line 3081
    .line 3082
    :pswitch_76
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3083
    .line 3084
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3085
    .line 3086
    .line 3087
    move-result-object p1

    .line 3088
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3089
    .line 3090
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3091
    .line 3092
    .line 3093
    move-result-object p4

    .line 3094
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3095
    .line 3096
    .line 3097
    move-result v0

    .line 3098
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3099
    .line 3100
    .line 3101
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->enableRevocationCheck(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 3102
    .line 3103
    .line 3104
    move-result p0

    .line 3105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3106
    .line 3107
    .line 3108
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3109
    .line 3110
    .line 3111
    goto/16 :goto_0

    .line 3112
    .line 3113
    :pswitch_77
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3114
    .line 3115
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3116
    .line 3117
    .line 3118
    move-result-object p1

    .line 3119
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3120
    .line 3121
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3122
    .line 3123
    .line 3124
    move-result-object p4

    .line 3125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3126
    .line 3127
    .line 3128
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3129
    .line 3130
    .line 3131
    move-result p0

    .line 3132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3133
    .line 3134
    .line 3135
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3136
    .line 3137
    .line 3138
    goto/16 :goto_0

    .line 3139
    .line 3140
    :pswitch_78
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3141
    .line 3142
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3143
    .line 3144
    .line 3145
    move-result-object p1

    .line 3146
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3147
    .line 3148
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3149
    .line 3150
    .line 3151
    move-result-object p4

    .line 3152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3153
    .line 3154
    .line 3155
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3156
    .line 3157
    .line 3158
    move-result p0

    .line 3159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3160
    .line 3161
    .line 3162
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3163
    .line 3164
    .line 3165
    goto/16 :goto_0

    .line 3166
    .line 3167
    :pswitch_79
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3168
    .line 3169
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3170
    .line 3171
    .line 3172
    move-result-object p1

    .line 3173
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3174
    .line 3175
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3176
    .line 3177
    .line 3178
    move-result-object p4

    .line 3179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3180
    .line 3181
    .line 3182
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3183
    .line 3184
    .line 3185
    move-result p0

    .line 3186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3187
    .line 3188
    .line 3189
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3190
    .line 3191
    .line 3192
    goto/16 :goto_0

    .line 3193
    .line 3194
    :pswitch_7a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3195
    .line 3196
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3197
    .line 3198
    .line 3199
    move-result-object p1

    .line 3200
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3201
    .line 3202
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3203
    .line 3204
    .line 3205
    move-result-object p4

    .line 3206
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3207
    .line 3208
    .line 3209
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3210
    .line 3211
    .line 3212
    move-result p0

    .line 3213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3214
    .line 3215
    .line 3216
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3217
    .line 3218
    .line 3219
    goto/16 :goto_0

    .line 3220
    .line 3221
    :pswitch_7b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3222
    .line 3223
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3224
    .line 3225
    .line 3226
    move-result-object p1

    .line 3227
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3228
    .line 3229
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3230
    .line 3231
    .line 3232
    move-result-object p4

    .line 3233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3234
    .line 3235
    .line 3236
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3237
    .line 3238
    .line 3239
    move-result p0

    .line 3240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3241
    .line 3242
    .line 3243
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3244
    .line 3245
    .line 3246
    goto/16 :goto_0

    .line 3247
    .line 3248
    :pswitch_7c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3249
    .line 3250
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3251
    .line 3252
    .line 3253
    move-result-object p1

    .line 3254
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3255
    .line 3256
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3257
    .line 3258
    .line 3259
    move-result-object p4

    .line 3260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3261
    .line 3262
    .line 3263
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3264
    .line 3265
    .line 3266
    move-result p0

    .line 3267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3268
    .line 3269
    .line 3270
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3271
    .line 3272
    .line 3273
    goto/16 :goto_0

    .line 3274
    .line 3275
    :pswitch_7d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3276
    .line 3277
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3278
    .line 3279
    .line 3280
    move-result-object p1

    .line 3281
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3282
    .line 3283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3284
    .line 3285
    .line 3286
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3287
    .line 3288
    .line 3289
    move-result-object p0

    .line 3290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3291
    .line 3292
    .line 3293
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3294
    .line 3295
    .line 3296
    goto/16 :goto_0

    .line 3297
    .line 3298
    :pswitch_7e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3299
    .line 3300
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3301
    .line 3302
    .line 3303
    move-result-object p1

    .line 3304
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3305
    .line 3306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3307
    .line 3308
    .line 3309
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3310
    .line 3311
    .line 3312
    move-result-object p0

    .line 3313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3314
    .line 3315
    .line 3316
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3317
    .line 3318
    .line 3319
    goto/16 :goto_0

    .line 3320
    .line 3321
    :pswitch_7f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3322
    .line 3323
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3324
    .line 3325
    .line 3326
    move-result-object p1

    .line 3327
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3328
    .line 3329
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3330
    .line 3331
    .line 3332
    move-result-object p4

    .line 3333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3334
    .line 3335
    .line 3336
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3337
    .line 3338
    .line 3339
    move-result p0

    .line 3340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3341
    .line 3342
    .line 3343
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3344
    .line 3345
    .line 3346
    goto/16 :goto_0

    .line 3347
    .line 3348
    :pswitch_80
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3349
    .line 3350
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3351
    .line 3352
    .line 3353
    move-result-object p1

    .line 3354
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3355
    .line 3356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3357
    .line 3358
    .line 3359
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3360
    .line 3361
    .line 3362
    move-result-object p0

    .line 3363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3364
    .line 3365
    .line 3366
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3367
    .line 3368
    .line 3369
    goto/16 :goto_0

    .line 3370
    .line 3371
    :pswitch_81
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3372
    .line 3373
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3374
    .line 3375
    .line 3376
    move-result-object p1

    .line 3377
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3378
    .line 3379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3380
    .line 3381
    .line 3382
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    .line 3383
    .line 3384
    .line 3385
    move-result p0

    .line 3386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3387
    .line 3388
    .line 3389
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3390
    .line 3391
    .line 3392
    goto/16 :goto_0

    .line 3393
    .line 3394
    :pswitch_82
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3395
    .line 3396
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3397
    .line 3398
    .line 3399
    move-result-object p1

    .line 3400
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3401
    .line 3402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3403
    .line 3404
    .line 3405
    move-result-object p4

    .line 3406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3407
    .line 3408
    .line 3409
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllWidgets(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/Map;

    .line 3410
    .line 3411
    .line 3412
    move-result-object p0

    .line 3413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3414
    .line 3415
    .line 3416
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3417
    .line 3418
    .line 3419
    goto/16 :goto_0

    .line 3420
    .line 3421
    :pswitch_83
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3422
    .line 3423
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3424
    .line 3425
    .line 3426
    move-result-object p1

    .line 3427
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3428
    .line 3429
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3430
    .line 3431
    .line 3432
    move-result-object p4

    .line 3433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3434
    .line 3435
    .line 3436
    move-result-object v0

    .line 3437
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3438
    .line 3439
    .line 3440
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->deleteHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3441
    .line 3442
    .line 3443
    move-result p0

    .line 3444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3445
    .line 3446
    .line 3447
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3448
    .line 3449
    .line 3450
    goto/16 :goto_0

    .line 3451
    .line 3452
    :pswitch_84
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3453
    .line 3454
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3455
    .line 3456
    .line 3457
    move-result-object p1

    .line 3458
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3459
    .line 3460
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3461
    .line 3462
    .line 3463
    move-result-object p4

    .line 3464
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3465
    .line 3466
    .line 3467
    move-result-object v0

    .line 3468
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3469
    .line 3470
    .line 3471
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3472
    .line 3473
    .line 3474
    move-result p0

    .line 3475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3476
    .line 3477
    .line 3478
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3479
    .line 3480
    .line 3481
    goto/16 :goto_0

    .line 3482
    .line 3483
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3484
    .line 3485
    .line 3486
    move-result-object p1

    .line 3487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3488
    .line 3489
    .line 3490
    move-result p4

    .line 3491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3492
    .line 3493
    .line 3494
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z

    .line 3495
    .line 3496
    .line 3497
    move-result p0

    .line 3498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3499
    .line 3500
    .line 3501
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3502
    .line 3503
    .line 3504
    goto/16 :goto_0

    .line 3505
    .line 3506
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3507
    .line 3508
    .line 3509
    move-result p1

    .line 3510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3511
    .line 3512
    .line 3513
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNotificationModeAsUser(I)I

    .line 3514
    .line 3515
    .line 3516
    move-result p0

    .line 3517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3518
    .line 3519
    .line 3520
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3521
    .line 3522
    .line 3523
    goto/16 :goto_0

    .line 3524
    .line 3525
    :pswitch_87
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3526
    .line 3527
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3528
    .line 3529
    .line 3530
    move-result-object p1

    .line 3531
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3532
    .line 3533
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3534
    .line 3535
    .line 3536
    move-result p4

    .line 3537
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3538
    .line 3539
    .line 3540
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    .line 3541
    .line 3542
    .line 3543
    move-result p0

    .line 3544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3545
    .line 3546
    .line 3547
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3548
    .line 3549
    .line 3550
    goto/16 :goto_0

    .line 3551
    .line 3552
    :pswitch_88
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3553
    .line 3554
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3555
    .line 3556
    .line 3557
    move-result-object p1

    .line 3558
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3559
    .line 3560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3561
    .line 3562
    .line 3563
    move-result p4

    .line 3564
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3565
    .line 3566
    .line 3567
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 3568
    .line 3569
    .line 3570
    move-result p0

    .line 3571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3572
    .line 3573
    .line 3574
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3575
    .line 3576
    .line 3577
    goto/16 :goto_0

    .line 3578
    .line 3579
    :pswitch_89
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3580
    .line 3581
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3582
    .line 3583
    .line 3584
    move-result-object p1

    .line 3585
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3586
    .line 3587
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3588
    .line 3589
    .line 3590
    move-result p4

    .line 3591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3592
    .line 3593
    .line 3594
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 3595
    .line 3596
    .line 3597
    move-result-object p0

    .line 3598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3599
    .line 3600
    .line 3601
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3602
    .line 3603
    .line 3604
    goto/16 :goto_0

    .line 3605
    .line 3606
    :pswitch_8a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3607
    .line 3608
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3609
    .line 3610
    .line 3611
    move-result-object p1

    .line 3612
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3613
    .line 3614
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3615
    .line 3616
    .line 3617
    move-result-object p4

    .line 3618
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3619
    .line 3620
    .line 3621
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3622
    .line 3623
    .line 3624
    move-result p0

    .line 3625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3626
    .line 3627
    .line 3628
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3629
    .line 3630
    .line 3631
    goto/16 :goto_0

    .line 3632
    .line 3633
    :pswitch_8b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3634
    .line 3635
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3636
    .line 3637
    .line 3638
    move-result-object p1

    .line 3639
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3640
    .line 3641
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3642
    .line 3643
    .line 3644
    move-result-object p4

    .line 3645
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3646
    .line 3647
    .line 3648
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3649
    .line 3650
    .line 3651
    move-result p0

    .line 3652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3653
    .line 3654
    .line 3655
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3656
    .line 3657
    .line 3658
    goto/16 :goto_0

    .line 3659
    .line 3660
    :pswitch_8c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3661
    .line 3662
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3663
    .line 3664
    .line 3665
    move-result-object p1

    .line 3666
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3667
    .line 3668
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3669
    .line 3670
    .line 3671
    move-result p4

    .line 3672
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3673
    .line 3674
    .line 3675
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 3676
    .line 3677
    .line 3678
    move-result-object p0

    .line 3679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3680
    .line 3681
    .line 3682
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3683
    .line 3684
    .line 3685
    goto/16 :goto_0

    .line 3686
    .line 3687
    :pswitch_8d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3688
    .line 3689
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3690
    .line 3691
    .line 3692
    move-result-object p1

    .line 3693
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3694
    .line 3695
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3696
    .line 3697
    .line 3698
    move-result-object p4

    .line 3699
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3700
    .line 3701
    .line 3702
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3703
    .line 3704
    .line 3705
    move-result p0

    .line 3706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3707
    .line 3708
    .line 3709
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3710
    .line 3711
    .line 3712
    goto/16 :goto_0

    .line 3713
    .line 3714
    :pswitch_8e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3715
    .line 3716
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3717
    .line 3718
    .line 3719
    move-result-object p1

    .line 3720
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3721
    .line 3722
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3723
    .line 3724
    .line 3725
    move-result-object p4

    .line 3726
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3727
    .line 3728
    .line 3729
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3730
    .line 3731
    .line 3732
    move-result p0

    .line 3733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3734
    .line 3735
    .line 3736
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3737
    .line 3738
    .line 3739
    goto/16 :goto_0

    .line 3740
    .line 3741
    :pswitch_8f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3742
    .line 3743
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3744
    .line 3745
    .line 3746
    move-result-object p1

    .line 3747
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3748
    .line 3749
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3750
    .line 3751
    .line 3752
    move-result-object p4

    .line 3753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3754
    .line 3755
    .line 3756
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isWidgetAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 3757
    .line 3758
    .line 3759
    move-result p0

    .line 3760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3761
    .line 3762
    .line 3763
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3764
    .line 3765
    .line 3766
    goto/16 :goto_0

    .line 3767
    .line 3768
    :pswitch_90
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3769
    .line 3770
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3771
    .line 3772
    .line 3773
    move-result-object p1

    .line 3774
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3775
    .line 3776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3777
    .line 3778
    .line 3779
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3780
    .line 3781
    .line 3782
    move-result-object p0

    .line 3783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3784
    .line 3785
    .line 3786
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3787
    .line 3788
    .line 3789
    goto/16 :goto_0

    .line 3790
    .line 3791
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3792
    .line 3793
    .line 3794
    move-result-object v3

    .line 3795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3796
    .line 3797
    .line 3798
    move-result v4

    .line 3799
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3800
    .line 3801
    .line 3802
    move-result-object v5

    .line 3803
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3804
    .line 3805
    .line 3806
    move-result-object v6

    .line 3807
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3808
    .line 3809
    .line 3810
    move-result-object v7

    .line 3811
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3812
    .line 3813
    .line 3814
    move-result v8

    .line 3815
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3816
    .line 3817
    .line 3818
    move-object v2, p0

    .line 3819
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 3820
    .line 3821
    .line 3822
    move-result p0

    .line 3823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3824
    .line 3825
    .line 3826
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3827
    .line 3828
    .line 3829
    goto/16 :goto_0

    .line 3830
    .line 3831
    :pswitch_92
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3832
    .line 3833
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3834
    .line 3835
    .line 3836
    move-result-object p1

    .line 3837
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3838
    .line 3839
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3840
    .line 3841
    .line 3842
    move-result-object p4

    .line 3843
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3844
    .line 3845
    .line 3846
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 3847
    .line 3848
    .line 3849
    move-result p0

    .line 3850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3851
    .line 3852
    .line 3853
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3854
    .line 3855
    .line 3856
    goto/16 :goto_0

    .line 3857
    .line 3858
    :pswitch_93
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3859
    .line 3860
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3861
    .line 3862
    .line 3863
    move-result-object p1

    .line 3864
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3865
    .line 3866
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3867
    .line 3868
    .line 3869
    move-result p4

    .line 3870
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3871
    .line 3872
    .line 3873
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 3874
    .line 3875
    .line 3876
    move-result p0

    .line 3877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3878
    .line 3879
    .line 3880
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3881
    .line 3882
    .line 3883
    goto/16 :goto_0

    .line 3884
    .line 3885
    :pswitch_94
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3886
    .line 3887
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3888
    .line 3889
    .line 3890
    move-result-object p1

    .line 3891
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3892
    .line 3893
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3894
    .line 3895
    .line 3896
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    .line 3897
    .line 3898
    .line 3899
    move-result p0

    .line 3900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3901
    .line 3902
    .line 3903
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3904
    .line 3905
    .line 3906
    goto/16 :goto_0

    .line 3907
    .line 3908
    :pswitch_95
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3909
    .line 3910
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3911
    .line 3912
    .line 3913
    move-result-object p1

    .line 3914
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3915
    .line 3916
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3917
    .line 3918
    .line 3919
    move-result p4

    .line 3920
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3921
    .line 3922
    .line 3923
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 3924
    .line 3925
    .line 3926
    move-result p0

    .line 3927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3928
    .line 3929
    .line 3930
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3931
    .line 3932
    .line 3933
    goto/16 :goto_0

    .line 3934
    .line 3935
    :pswitch_96
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3936
    .line 3937
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3938
    .line 3939
    .line 3940
    move-result-object p1

    .line 3941
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3942
    .line 3943
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3944
    .line 3945
    .line 3946
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3947
    .line 3948
    .line 3949
    move-result-object p0

    .line 3950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3951
    .line 3952
    .line 3953
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3954
    .line 3955
    .line 3956
    goto/16 :goto_0

    .line 3957
    .line 3958
    :pswitch_97
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3959
    .line 3960
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3961
    .line 3962
    .line 3963
    move-result-object p1

    .line 3964
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3965
    .line 3966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3967
    .line 3968
    .line 3969
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPermissionsAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3970
    .line 3971
    .line 3972
    move-result-object p0

    .line 3973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3974
    .line 3975
    .line 3976
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3977
    .line 3978
    .line 3979
    goto/16 :goto_0

    .line 3980
    .line 3981
    :pswitch_98
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3982
    .line 3983
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3984
    .line 3985
    .line 3986
    move-result-object p1

    .line 3987
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3988
    .line 3989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3990
    .line 3991
    .line 3992
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 3993
    .line 3994
    .line 3995
    move-result-object p0

    .line 3996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3997
    .line 3998
    .line 3999
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4000
    .line 4001
    .line 4002
    goto/16 :goto_0

    .line 4003
    .line 4004
    :pswitch_99
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4005
    .line 4006
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4007
    .line 4008
    .line 4009
    move-result-object p1

    .line 4010
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4011
    .line 4012
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4013
    .line 4014
    .line 4015
    move-result-object p4

    .line 4016
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4017
    .line 4018
    .line 4019
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4020
    .line 4021
    .line 4022
    move-result p0

    .line 4023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4024
    .line 4025
    .line 4026
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4027
    .line 4028
    .line 4029
    goto/16 :goto_0

    .line 4030
    .line 4031
    :pswitch_9a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4032
    .line 4033
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4034
    .line 4035
    .line 4036
    move-result-object p1

    .line 4037
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4038
    .line 4039
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4040
    .line 4041
    .line 4042
    move-result-object p4

    .line 4043
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4044
    .line 4045
    .line 4046
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4047
    .line 4048
    .line 4049
    move-result p0

    .line 4050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4051
    .line 4052
    .line 4053
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4054
    .line 4055
    .line 4056
    goto/16 :goto_0

    .line 4057
    .line 4058
    :pswitch_9b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4059
    .line 4060
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4061
    .line 4062
    .line 4063
    move-result-object p1

    .line 4064
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4065
    .line 4066
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4067
    .line 4068
    .line 4069
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 4070
    .line 4071
    .line 4072
    move-result-object p0

    .line 4073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4074
    .line 4075
    .line 4076
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4077
    .line 4078
    .line 4079
    goto/16 :goto_0

    .line 4080
    .line 4081
    :pswitch_9c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4082
    .line 4083
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4084
    .line 4085
    .line 4086
    move-result-object p1

    .line 4087
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4088
    .line 4089
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4090
    .line 4091
    .line 4092
    move-result-object p4

    .line 4093
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4094
    .line 4095
    .line 4096
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4097
    .line 4098
    .line 4099
    move-result p0

    .line 4100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4101
    .line 4102
    .line 4103
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4104
    .line 4105
    .line 4106
    goto/16 :goto_0

    .line 4107
    .line 4108
    :pswitch_9d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4109
    .line 4110
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4111
    .line 4112
    .line 4113
    move-result-object p1

    .line 4114
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4115
    .line 4116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4117
    .line 4118
    .line 4119
    move-result-object p4

    .line 4120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4121
    .line 4122
    .line 4123
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4124
    .line 4125
    .line 4126
    move-result p0

    .line 4127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4128
    .line 4129
    .line 4130
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4131
    .line 4132
    .line 4133
    goto/16 :goto_0

    .line 4134
    .line 4135
    :pswitch_9e
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4136
    .line 4137
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4138
    .line 4139
    .line 4140
    move-result-object p1

    .line 4141
    check-cast p1, Landroid/content/Intent;

    .line 4142
    .line 4143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4144
    .line 4145
    .line 4146
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    .line 4147
    .line 4148
    .line 4149
    move-result p0

    .line 4150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4151
    .line 4152
    .line 4153
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4154
    .line 4155
    .line 4156
    goto/16 :goto_0

    .line 4157
    .line 4158
    :pswitch_9f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4159
    .line 4160
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4161
    .line 4162
    .line 4163
    move-result-object p1

    .line 4164
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4165
    .line 4166
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 4167
    .line 4168
    .line 4169
    move-result-object p4

    .line 4170
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4171
    .line 4172
    .line 4173
    move-result v0

    .line 4174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4175
    .line 4176
    .line 4177
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationStateList(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;Z)[Ljava/lang/String;

    .line 4178
    .line 4179
    .line 4180
    move-result-object p0

    .line 4181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4182
    .line 4183
    .line 4184
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4185
    .line 4186
    .line 4187
    goto/16 :goto_0

    .line 4188
    .line 4189
    :pswitch_a0
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4190
    .line 4191
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4192
    .line 4193
    .line 4194
    move-result-object p1

    .line 4195
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4196
    .line 4197
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4198
    .line 4199
    .line 4200
    move-result p4

    .line 4201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4202
    .line 4203
    .line 4204
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateList(Lcom/samsung/android/knox/ContextInfo;Z)[Ljava/lang/String;

    .line 4205
    .line 4206
    .line 4207
    move-result-object p0

    .line 4208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4209
    .line 4210
    .line 4211
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4212
    .line 4213
    .line 4214
    goto/16 :goto_0

    .line 4215
    .line 4216
    :pswitch_a1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4217
    .line 4218
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4219
    .line 4220
    .line 4221
    move-result-object p1

    .line 4222
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4223
    .line 4224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4225
    .line 4226
    .line 4227
    move-result-object p4

    .line 4228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4229
    .line 4230
    .line 4231
    move-result-object v0

    .line 4232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4233
    .line 4234
    .line 4235
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->startApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4236
    .line 4237
    .line 4238
    move-result p0

    .line 4239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4240
    .line 4241
    .line 4242
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4243
    .line 4244
    .line 4245
    goto/16 :goto_0

    .line 4246
    .line 4247
    :pswitch_a2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4248
    .line 4249
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4250
    .line 4251
    .line 4252
    move-result-object p1

    .line 4253
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4254
    .line 4255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4256
    .line 4257
    .line 4258
    move-result-object p4

    .line 4259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4260
    .line 4261
    .line 4262
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4263
    .line 4264
    .line 4265
    move-result p0

    .line 4266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4267
    .line 4268
    .line 4269
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4270
    .line 4271
    .line 4272
    goto/16 :goto_0

    .line 4273
    .line 4274
    :pswitch_a3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4275
    .line 4276
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4277
    .line 4278
    .line 4279
    move-result-object p1

    .line 4280
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4281
    .line 4282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4283
    .line 4284
    .line 4285
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignatureBlackList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 4286
    .line 4287
    .line 4288
    move-result-object p0

    .line 4289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4290
    .line 4291
    .line 4292
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4293
    .line 4294
    .line 4295
    goto/16 :goto_0

    .line 4296
    .line 4297
    :pswitch_a4
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4298
    .line 4299
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4300
    .line 4301
    .line 4302
    move-result-object p1

    .line 4303
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4304
    .line 4305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4306
    .line 4307
    .line 4308
    move-result-object p4

    .line 4309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4310
    .line 4311
    .line 4312
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppSignatureFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4313
    .line 4314
    .line 4315
    move-result p0

    .line 4316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4317
    .line 4318
    .line 4319
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4320
    .line 4321
    .line 4322
    goto/16 :goto_0

    .line 4323
    .line 4324
    :pswitch_a5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4325
    .line 4326
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4327
    .line 4328
    .line 4329
    move-result-object p1

    .line 4330
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4331
    .line 4332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4333
    .line 4334
    .line 4335
    move-result-object p4

    .line 4336
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4337
    .line 4338
    .line 4339
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppSignatureToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4340
    .line 4341
    .line 4342
    move-result p0

    .line 4343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4344
    .line 4345
    .line 4346
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4347
    .line 4348
    .line 4349
    goto/16 :goto_0

    .line 4350
    .line 4351
    :pswitch_a6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4352
    .line 4353
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4354
    .line 4355
    .line 4356
    move-result-object p1

    .line 4357
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4358
    .line 4359
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4360
    .line 4361
    .line 4362
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPermissionsBlackList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 4363
    .line 4364
    .line 4365
    move-result-object p0

    .line 4366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4367
    .line 4368
    .line 4369
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4370
    .line 4371
    .line 4372
    goto/16 :goto_0

    .line 4373
    .line 4374
    :pswitch_a7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4375
    .line 4376
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4377
    .line 4378
    .line 4379
    move-result-object p1

    .line 4380
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4381
    .line 4382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4383
    .line 4384
    .line 4385
    move-result-object p4

    .line 4386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4387
    .line 4388
    .line 4389
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPermissionFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4390
    .line 4391
    .line 4392
    move-result p0

    .line 4393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4394
    .line 4395
    .line 4396
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4397
    .line 4398
    .line 4399
    goto/16 :goto_0

    .line 4400
    .line 4401
    :pswitch_a8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4402
    .line 4403
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4404
    .line 4405
    .line 4406
    move-result-object p1

    .line 4407
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4408
    .line 4409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4410
    .line 4411
    .line 4412
    move-result-object p4

    .line 4413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4414
    .line 4415
    .line 4416
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPermissionToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4417
    .line 4418
    .line 4419
    move-result p0

    .line 4420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4421
    .line 4422
    .line 4423
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4424
    .line 4425
    .line 4426
    goto/16 :goto_0

    .line 4427
    .line 4428
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4429
    .line 4430
    .line 4431
    move-result p1

    .line 4432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4433
    .line 4434
    .line 4435
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isAnyApplicationIconChangedAsUser(I)Z

    .line 4436
    .line 4437
    .line 4438
    move-result p0

    .line 4439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4440
    .line 4441
    .line 4442
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4443
    .line 4444
    .line 4445
    goto/16 :goto_0

    .line 4446
    .line 4447
    :pswitch_aa
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4448
    .line 4449
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4450
    .line 4451
    .line 4452
    move-result-object p1

    .line 4453
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4454
    .line 4455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4456
    .line 4457
    .line 4458
    move-result-object p4

    .line 4459
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4460
    .line 4461
    .line 4462
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    .line 4463
    .line 4464
    .line 4465
    move-result-object p0

    .line 4466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4467
    .line 4468
    .line 4469
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4470
    .line 4471
    .line 4472
    goto/16 :goto_0

    .line 4473
    .line 4474
    :pswitch_ab
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4475
    .line 4476
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4477
    .line 4478
    .line 4479
    move-result-object p1

    .line 4480
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4481
    .line 4482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4483
    .line 4484
    .line 4485
    move-result-object p4

    .line 4486
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 4487
    .line 4488
    .line 4489
    move-result-object v0

    .line 4490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4491
    .line 4492
    .line 4493
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->changeApplicationIcon(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)Z

    .line 4494
    .line 4495
    .line 4496
    move-result p0

    .line 4497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4498
    .line 4499
    .line 4500
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4501
    .line 4502
    .line 4503
    goto/16 :goto_0

    .line 4504
    .line 4505
    :pswitch_ac
    invoke-interface {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->updateDataUsageDb()V

    .line 4506
    .line 4507
    .line 4508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4509
    .line 4510
    .line 4511
    goto/16 :goto_0

    .line 4512
    .line 4513
    :pswitch_ad
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4514
    .line 4515
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4516
    .line 4517
    .line 4518
    move-result-object p1

    .line 4519
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4520
    .line 4521
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4522
    .line 4523
    .line 4524
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getNetworkStats(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 4525
    .line 4526
    .line 4527
    move-result-object p0

    .line 4528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4529
    .line 4530
    .line 4531
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4532
    .line 4533
    .line 4534
    goto/16 :goto_0

    .line 4535
    .line 4536
    :pswitch_ae
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4537
    .line 4538
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4539
    .line 4540
    .line 4541
    move-result-object p1

    .line 4542
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4543
    .line 4544
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4545
    .line 4546
    .line 4547
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllAppLastUsage(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    .line 4548
    .line 4549
    .line 4550
    move-result-object p0

    .line 4551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4552
    .line 4553
    .line 4554
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4555
    .line 4556
    .line 4557
    goto/16 :goto_0

    .line 4558
    .line 4559
    :pswitch_af
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4560
    .line 4561
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4562
    .line 4563
    .line 4564
    move-result-object p1

    .line 4565
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4566
    .line 4567
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4568
    .line 4569
    .line 4570
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAvgNoAppUsagePerMonth(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    .line 4571
    .line 4572
    .line 4573
    move-result-object p0

    .line 4574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4575
    .line 4576
    .line 4577
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4578
    .line 4579
    .line 4580
    goto/16 :goto_0

    .line 4581
    .line 4582
    :pswitch_b0
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4583
    .line 4584
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4585
    .line 4586
    .line 4587
    move-result-object p1

    .line 4588
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4589
    .line 4590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4591
    .line 4592
    .line 4593
    move-result p4

    .line 4594
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4595
    .line 4596
    .line 4597
    move-result v0

    .line 4598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4599
    .line 4600
    .line 4601
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNCPUUsageApp(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/List;

    .line 4602
    .line 4603
    .line 4604
    move-result-object p0

    .line 4605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4606
    .line 4607
    .line 4608
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4609
    .line 4610
    .line 4611
    goto/16 :goto_0

    .line 4612
    .line 4613
    :pswitch_b1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4614
    .line 4615
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4616
    .line 4617
    .line 4618
    move-result-object p1

    .line 4619
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4620
    .line 4621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4622
    .line 4623
    .line 4624
    move-result p4

    .line 4625
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4626
    .line 4627
    .line 4628
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNDataUsageApp(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 4629
    .line 4630
    .line 4631
    move-result-object p0

    .line 4632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4633
    .line 4634
    .line 4635
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4636
    .line 4637
    .line 4638
    goto/16 :goto_0

    .line 4639
    .line 4640
    :pswitch_b2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4641
    .line 4642
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4643
    .line 4644
    .line 4645
    move-result-object p1

    .line 4646
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4647
    .line 4648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4649
    .line 4650
    .line 4651
    move-result p4

    .line 4652
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4653
    .line 4654
    .line 4655
    move-result v0

    .line 4656
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4657
    .line 4658
    .line 4659
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNMemoryUsageApp(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/List;

    .line 4660
    .line 4661
    .line 4662
    move-result-object p0

    .line 4663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4664
    .line 4665
    .line 4666
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4667
    .line 4668
    .line 4669
    goto/16 :goto_0

    .line 4670
    .line 4671
    :pswitch_b3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4672
    .line 4673
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4674
    .line 4675
    .line 4676
    move-result-object p1

    .line 4677
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4678
    .line 4679
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4680
    .line 4681
    .line 4682
    move-result-object p4

    .line 4683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4684
    .line 4685
    .line 4686
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCpuUsage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4687
    .line 4688
    .line 4689
    move-result-wide p0

    .line 4690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4691
    .line 4692
    .line 4693
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4694
    .line 4695
    .line 4696
    goto/16 :goto_0

    .line 4697
    .line 4698
    :pswitch_b4
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4699
    .line 4700
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4701
    .line 4702
    .line 4703
    move-result-object p1

    .line 4704
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4705
    .line 4706
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4707
    .line 4708
    .line 4709
    move-result-object p4

    .line 4710
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4711
    .line 4712
    .line 4713
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationMemoryUsage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4714
    .line 4715
    .line 4716
    move-result-wide p0

    .line 4717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4718
    .line 4719
    .line 4720
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4721
    .line 4722
    .line 4723
    goto/16 :goto_0

    .line 4724
    .line 4725
    :pswitch_b5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4726
    .line 4727
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4728
    .line 4729
    .line 4730
    move-result-object p1

    .line 4731
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4732
    .line 4733
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4734
    .line 4735
    .line 4736
    move-result-object p4

    .line 4737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4738
    .line 4739
    .line 4740
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCacheSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4741
    .line 4742
    .line 4743
    move-result-wide p0

    .line 4744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4745
    .line 4746
    .line 4747
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4748
    .line 4749
    .line 4750
    goto/16 :goto_0

    .line 4751
    .line 4752
    :pswitch_b6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4753
    .line 4754
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4755
    .line 4756
    .line 4757
    move-result-object p1

    .line 4758
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4759
    .line 4760
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4761
    .line 4762
    .line 4763
    move-result-object p4

    .line 4764
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4765
    .line 4766
    .line 4767
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationDataSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4768
    .line 4769
    .line 4770
    move-result-wide p0

    .line 4771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4772
    .line 4773
    .line 4774
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4775
    .line 4776
    .line 4777
    goto/16 :goto_0

    .line 4778
    .line 4779
    :pswitch_b7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4780
    .line 4781
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4782
    .line 4783
    .line 4784
    move-result-object p1

    .line 4785
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4786
    .line 4787
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4788
    .line 4789
    .line 4790
    move-result-object p4

    .line 4791
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4792
    .line 4793
    .line 4794
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCodeSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4795
    .line 4796
    .line 4797
    move-result-wide p0

    .line 4798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4799
    .line 4800
    .line 4801
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4802
    .line 4803
    .line 4804
    goto/16 :goto_0

    .line 4805
    .line 4806
    :pswitch_b8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4807
    .line 4808
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4809
    .line 4810
    .line 4811
    move-result-object p1

    .line 4812
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4813
    .line 4814
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4815
    .line 4816
    .line 4817
    move-result-object p4

    .line 4818
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4819
    .line 4820
    .line 4821
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationTotalSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 4822
    .line 4823
    .line 4824
    move-result-wide p0

    .line 4825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4826
    .line 4827
    .line 4828
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4829
    .line 4830
    .line 4831
    goto/16 :goto_0

    .line 4832
    .line 4833
    :pswitch_b9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4834
    .line 4835
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4836
    .line 4837
    .line 4838
    move-result-object p1

    .line 4839
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4840
    .line 4841
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4842
    .line 4843
    .line 4844
    move-result-object p4

    .line 4845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4846
    .line 4847
    .line 4848
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationVersionCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 4849
    .line 4850
    .line 4851
    move-result p0

    .line 4852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4853
    .line 4854
    .line 4855
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4856
    .line 4857
    .line 4858
    goto/16 :goto_0

    .line 4859
    .line 4860
    :pswitch_ba
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4861
    .line 4862
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4863
    .line 4864
    .line 4865
    move-result-object p1

    .line 4866
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4867
    .line 4868
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4869
    .line 4870
    .line 4871
    move-result-object p4

    .line 4872
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4873
    .line 4874
    .line 4875
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4876
    .line 4877
    .line 4878
    move-result-object p0

    .line 4879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4880
    .line 4881
    .line 4882
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4883
    .line 4884
    .line 4885
    goto/16 :goto_0

    .line 4886
    .line 4887
    :pswitch_bb
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4888
    .line 4889
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4890
    .line 4891
    .line 4892
    move-result-object p1

    .line 4893
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4894
    .line 4895
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4896
    .line 4897
    .line 4898
    move-result-object p4

    .line 4899
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4900
    .line 4901
    .line 4902
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUid(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 4903
    .line 4904
    .line 4905
    move-result p0

    .line 4906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4907
    .line 4908
    .line 4909
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4910
    .line 4911
    .line 4912
    goto/16 :goto_0

    .line 4913
    .line 4914
    :pswitch_bc
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4915
    .line 4916
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4917
    .line 4918
    .line 4919
    move-result-object p1

    .line 4920
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4921
    .line 4922
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4923
    .line 4924
    .line 4925
    move-result-object p4

    .line 4926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4927
    .line 4928
    .line 4929
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4930
    .line 4931
    .line 4932
    move-result-object p0

    .line 4933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4934
    .line 4935
    .line 4936
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4937
    .line 4938
    .line 4939
    goto/16 :goto_0

    .line 4940
    .line 4941
    :pswitch_bd
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4942
    .line 4943
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4944
    .line 4945
    .line 4946
    move-result-object p1

    .line 4947
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4948
    .line 4949
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4950
    .line 4951
    .line 4952
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getInstalledApplicationsIDList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 4953
    .line 4954
    .line 4955
    move-result-object p0

    .line 4956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4957
    .line 4958
    .line 4959
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4960
    .line 4961
    .line 4962
    goto/16 :goto_0

    .line 4963
    .line 4964
    :pswitch_be
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4965
    .line 4966
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4967
    .line 4968
    .line 4969
    move-result-object p1

    .line 4970
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4971
    .line 4972
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4973
    .line 4974
    .line 4975
    move-result-object p4

    .line 4976
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4977
    .line 4978
    .line 4979
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4980
    .line 4981
    .line 4982
    move-result p0

    .line 4983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4984
    .line 4985
    .line 4986
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4987
    .line 4988
    .line 4989
    goto/16 :goto_0

    .line 4990
    .line 4991
    :pswitch_bf
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4992
    .line 4993
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4994
    .line 4995
    .line 4996
    move-result-object p1

    .line 4997
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4998
    .line 4999
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5000
    .line 5001
    .line 5002
    move-result-object p4

    .line 5003
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5004
    .line 5005
    .line 5006
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 5007
    .line 5008
    .line 5009
    move-result p0

    .line 5010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5011
    .line 5012
    .line 5013
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5014
    .line 5015
    .line 5016
    goto/16 :goto_0

    .line 5017
    .line 5018
    :pswitch_c0
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5019
    .line 5020
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5021
    .line 5022
    .line 5023
    move-result-object p1

    .line 5024
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5025
    .line 5026
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5027
    .line 5028
    .line 5029
    move-result-object p4

    .line 5030
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5031
    .line 5032
    .line 5033
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 5034
    .line 5035
    .line 5036
    move-result p0

    .line 5037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5038
    .line 5039
    .line 5040
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5041
    .line 5042
    .line 5043
    goto/16 :goto_0

    .line 5044
    .line 5045
    :pswitch_c1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5046
    .line 5047
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5048
    .line 5049
    .line 5050
    move-result-object p1

    .line 5051
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5052
    .line 5053
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5054
    .line 5055
    .line 5056
    move-result-object p4

    .line 5057
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 5058
    .line 5059
    .line 5060
    move-result v0

    .line 5061
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5062
    .line 5063
    .line 5064
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 5065
    .line 5066
    .line 5067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5068
    .line 5069
    .line 5070
    goto/16 :goto_0

    .line 5071
    .line 5072
    :pswitch_c2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5073
    .line 5074
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5075
    .line 5076
    .line 5077
    move-result-object p1

    .line 5078
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5079
    .line 5080
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5081
    .line 5082
    .line 5083
    move-result-object p4

    .line 5084
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 5085
    .line 5086
    .line 5087
    move-result v0

    .line 5088
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5089
    .line 5090
    .line 5091
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationInstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 5092
    .line 5093
    .line 5094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5095
    .line 5096
    .line 5097
    goto/16 :goto_0

    .line 5098
    .line 5099
    :pswitch_c3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5100
    .line 5101
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5102
    .line 5103
    .line 5104
    move-result-object p1

    .line 5105
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5106
    .line 5107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5108
    .line 5109
    .line 5110
    move-result-object p4

    .line 5111
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 5112
    .line 5113
    .line 5114
    move-result v0

    .line 5115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5116
    .line 5117
    .line 5118
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 5119
    .line 5120
    .line 5121
    move-result p0

    .line 5122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5123
    .line 5124
    .line 5125
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5126
    .line 5127
    .line 5128
    goto/16 :goto_0

    .line 5129
    .line 5130
    :pswitch_c4
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5131
    .line 5132
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5133
    .line 5134
    .line 5135
    move-result-object p1

    .line 5136
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5137
    .line 5138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5139
    .line 5140
    .line 5141
    move-result-object p4

    .line 5142
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 5143
    .line 5144
    .line 5145
    move-result v0

    .line 5146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5147
    .line 5148
    .line 5149
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->uninstallApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 5150
    .line 5151
    .line 5152
    move-result p0

    .line 5153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5154
    .line 5155
    .line 5156
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5157
    .line 5158
    .line 5159
    goto/16 :goto_0

    .line 5160
    .line 5161
    :pswitch_c5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5162
    .line 5163
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5164
    .line 5165
    .line 5166
    move-result-object p1

    .line 5167
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5168
    .line 5169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5170
    .line 5171
    .line 5172
    move-result-object p4

    .line 5173
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 5174
    .line 5175
    .line 5176
    move-result v0

    .line 5177
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5178
    .line 5179
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5180
    .line 5181
    .line 5182
    move-result-object v2

    .line 5183
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 5184
    .line 5185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5186
    .line 5187
    .line 5188
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLandroid/os/ParcelFileDescriptor;)Z

    .line 5189
    .line 5190
    .line 5191
    move-result p0

    .line 5192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5193
    .line 5194
    .line 5195
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5196
    .line 5197
    .line 5198
    goto :goto_0

    .line 5199
    :pswitch_c6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5200
    .line 5201
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5202
    .line 5203
    .line 5204
    move-result-object p1

    .line 5205
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5206
    .line 5207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5208
    .line 5209
    .line 5210
    move-result-object p4

    .line 5211
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5212
    .line 5213
    .line 5214
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationRunning(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 5215
    .line 5216
    .line 5217
    move-result p0

    .line 5218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5219
    .line 5220
    .line 5221
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5222
    .line 5223
    .line 5224
    goto :goto_0

    .line 5225
    :pswitch_c7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5226
    .line 5227
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5228
    .line 5229
    .line 5230
    move-result-object p1

    .line 5231
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5232
    .line 5233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5234
    .line 5235
    .line 5236
    move-result-object p4

    .line 5237
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5238
    .line 5239
    .line 5240
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 5241
    .line 5242
    .line 5243
    move-result p0

    .line 5244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5245
    .line 5246
    .line 5247
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5248
    .line 5249
    .line 5250
    goto :goto_0

    .line 5251
    :pswitch_c8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5252
    .line 5253
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5254
    .line 5255
    .line 5256
    move-result-object p1

    .line 5257
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5258
    .line 5259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5260
    .line 5261
    .line 5262
    move-result-object p4

    .line 5263
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5264
    .line 5265
    .line 5266
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->wipeApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 5267
    .line 5268
    .line 5269
    move-result p0

    .line 5270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5271
    .line 5272
    .line 5273
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5274
    .line 5275
    .line 5276
    goto :goto_0

    .line 5277
    :pswitch_c9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5278
    .line 5279
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 5280
    .line 5281
    .line 5282
    move-result-object p1

    .line 5283
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5284
    .line 5285
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 5286
    .line 5287
    .line 5288
    move-result-object p4

    .line 5289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5290
    .line 5291
    .line 5292
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeManagedApplications(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    .line 5293
    .line 5294
    .line 5295
    move-result-object p0

    .line 5296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5297
    .line 5298
    .line 5299
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5300
    .line 5301
    .line 5302
    :goto_0
    return v1

    .line 5303
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5304
    .line 5305
    .line 5306
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
