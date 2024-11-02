.class public abstract Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/IKnoxCustomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addAutoCallNumber:I = 0xd5

.field public static final TRANSACTION_addDexShortcut:I = 0xf7

.field public static final TRANSACTION_addDexURLShortcut:I = 0xf9

.field public static final TRANSACTION_addDexURLShortcutExtend:I = 0xfa

.field public static final TRANSACTION_addPackagesToUltraPowerSaving:I = 0x8b

.field public static final TRANSACTION_addRoleHolder:I = 0x12d

.field public static final TRANSACTION_addShortcut:I = 0xe6

.field public static final TRANSACTION_addWidget:I = 0xe8

.field public static final TRANSACTION_allowDexAutoOpenLastApp:I = 0x104

.field public static final TRANSACTION_checkEnterprisePermission:I = 0x1

.field public static final TRANSACTION_clearAnimation:I = 0xc0

.field public static final TRANSACTION_clearDexLoadingLogo:I = 0xff

.field public static final TRANSACTION_clearForcedDisplaySizeDensity:I = 0x115

.field public static final TRANSACTION_deleteHomeScreenPage:I = 0xea

.field public static final TRANSACTION_dialEmergencyNumber:I = 0x2

.field public static final TRANSACTION_getAccessibilitySettingsItems:I = 0xbd

.field public static final TRANSACTION_getAirGestureOptionState:I = 0x90

.field public static final TRANSACTION_getAppBlockDownloadNamespaces:I = 0x49

.field public static final TRANSACTION_getAppBlockDownloadState:I = 0x4b

.field public static final TRANSACTION_getApplicationRestrictionsInternal:I = 0x129

.field public static final TRANSACTION_getAppsButtonState:I = 0xec

.field public static final TRANSACTION_getAsoc:I = 0x120

.field public static final TRANSACTION_getAutoCallNumberAnswerMode:I = 0xd8

.field public static final TRANSACTION_getAutoCallNumberDelay:I = 0xd7

.field public static final TRANSACTION_getAutoCallNumberList:I = 0xd9

.field public static final TRANSACTION_getAutoCallPickupState:I = 0xdb

.field public static final TRANSACTION_getAutoRotationState:I = 0x7

.field public static final TRANSACTION_getBackupRestoreState:I = 0x3c

.field public static final TRANSACTION_getBatteryLevelColourItem:I = 0x4d

.field public static final TRANSACTION_getBsoh:I = 0x122

.field public static final TRANSACTION_getBsohUnbiased:I = 0x123

.field public static final TRANSACTION_getCallScreenDisabledItems:I = 0x4f

.field public static final TRANSACTION_getChargerConnectionSoundEnabledState:I = 0x93

.field public static final TRANSACTION_getChargingLEDState:I = 0x51

.field public static final TRANSACTION_getDeviceSpeakerEnabledState:I = 0x95

.field public static final TRANSACTION_getDexForegroundModePackageList:I = 0xfd

.field public static final TRANSACTION_getDexHDMIAutoEnterState:I = 0x107

.field public static final TRANSACTION_getDexHomeAlignment:I = 0x103

.field public static final TRANSACTION_getDexScreenTimeout:I = 0x101

.field public static final TRANSACTION_getDisplayMirroringState:I = 0x97

.field public static final TRANSACTION_getEthernetConfigurationType:I = 0x53

.field public static final TRANSACTION_getEthernetState:I = 0x55

.field public static final TRANSACTION_getExitUI:I = 0xc

.field public static final TRANSACTION_getExtendedCallInfoState:I = 0xe

.field public static final TRANSACTION_getFavoriteApp:I = 0xf0

.field public static final TRANSACTION_getFavoriteAppsMaxCount:I = 0xef

.field public static final TRANSACTION_getForceAutoShutDownState:I = 0xe4

.field public static final TRANSACTION_getForceAutoStartUpState:I = 0xc3

.field public static final TRANSACTION_getForceSingleView:I = 0x118

.field public static final TRANSACTION_getGearNotificationState:I = 0x57

.field public static final TRANSACTION_getHardKeyBlockState:I = 0x10f

.field public static final TRANSACTION_getHardKeyIntentBroadcast:I = 0x113

.field public static final TRANSACTION_getHardKeyIntentMode:I = 0xf4

.field public static final TRANSACTION_getHardKeyIntentState:I = 0x59

.field public static final TRANSACTION_getHardKeyReportState:I = 0x10e

.field public static final TRANSACTION_getHideNotificationMessages:I = 0x3e

.field public static final TRANSACTION_getHomeActivity:I = 0x10

.field public static final TRANSACTION_getHomeScreenMode:I = 0xf6

.field public static final TRANSACTION_getInfraredState:I = 0x5b

.field public static final TRANSACTION_getInputMethodRestrictionState:I = 0x13

.field public static final TRANSACTION_getKeyboardMode:I = 0x99

.field public static final TRANSACTION_getKeyboardModeOverriden:I = 0x9a

.field public static final TRANSACTION_getLTESettingState:I = 0x60

.field public static final TRANSACTION_getLcdBacklightState:I = 0x9c

.field public static final TRANSACTION_getLoadingLogoPath:I = 0x11b

.field public static final TRANSACTION_getLockScreenHiddenItems:I = 0x5d

.field public static final TRANSACTION_getLockScreenOverrideMode:I = 0x9e

.field public static final TRANSACTION_getLockScreenShortcut:I = 0xdf

.field public static final TRANSACTION_getMacAddress:I = 0xdc

.field public static final TRANSACTION_getMobileNetworkType:I = 0xc6

.field public static final TRANSACTION_getMotionControlState:I = 0x41

.field public static final TRANSACTION_getPowerDialogCustomItems:I = 0xa0

.field public static final TRANSACTION_getPowerDialogCustomItemsState:I = 0xa2

.field public static final TRANSACTION_getPowerDialogItems:I = 0x18

.field public static final TRANSACTION_getPowerDialogOptionMode:I = 0x1a

.field public static final TRANSACTION_getPowerMenuLockedState:I = 0x62

.field public static final TRANSACTION_getPowerSavingMode:I = 0x64

.field public static final TRANSACTION_getProKioskNotificationMessagesState:I = 0x1c

.field public static final TRANSACTION_getProKioskPowerDialogCustomItems:I = 0x1e

.field public static final TRANSACTION_getProKioskPowerDialogCustomItemsState:I = 0x20

.field public static final TRANSACTION_getProKioskState:I = 0x22

.field public static final TRANSACTION_getProKioskStatusBarClockState:I = 0x24

.field public static final TRANSACTION_getProKioskStatusBarIconsState:I = 0x26

.field public static final TRANSACTION_getProKioskStatusBarMode:I = 0x28

.field public static final TRANSACTION_getProKioskString:I = 0x2a

.field public static final TRANSACTION_getProKioskUsbMassStorageState:I = 0x2c

.field public static final TRANSACTION_getProKioskUsbNetAddress:I = 0x2e

.field public static final TRANSACTION_getProKioskUsbNetState:I = 0x30

.field public static final TRANSACTION_getProtectBatteryState:I = 0x109

.field public static final TRANSACTION_getQuickPanelButtons:I = 0xc8

.field public static final TRANSACTION_getQuickPanelEditMode:I = 0xca

.field public static final TRANSACTION_getQuickPanelItems:I = 0xcd

.field public static final TRANSACTION_getRecentLongPressActivity:I = 0x66

.field public static final TRANSACTION_getRecentLongPressMode:I = 0x68

.field public static final TRANSACTION_getRoleHolders:I = 0x12c

.field public static final TRANSACTION_getScreenOffOnHomeLongPressState:I = 0x6a

.field public static final TRANSACTION_getScreenOffOnStatusBarDoubleTapState:I = 0x6c

.field public static final TRANSACTION_getScreenTimeout:I = 0x33

.field public static final TRANSACTION_getScreenWakeupOnPowerState:I = 0x6e

.field public static final TRANSACTION_getSensorDisabled:I = 0x70

.field public static final TRANSACTION_getSerialNumber:I = 0x8e

.field public static final TRANSACTION_getSettingsEnabledItems:I = 0xa4

.field public static final TRANSACTION_getSettingsHiddenState:I = 0x43

.field public static final TRANSACTION_getShowIMEWithHardKeyboard:I = 0x10b

.field public static final TRANSACTION_getStatusBarClockState:I = 0xa6

.field public static final TRANSACTION_getStatusBarIconsState:I = 0xa8

.field public static final TRANSACTION_getStatusBarMode:I = 0xaa

.field public static final TRANSACTION_getStatusBarNotificationsState:I = 0xac

.field public static final TRANSACTION_getStatusBarText:I = 0x72

.field public static final TRANSACTION_getStatusBarTextScrollWidth:I = 0xae

.field public static final TRANSACTION_getStatusBarTextSize:I = 0x74

.field public static final TRANSACTION_getStatusBarTextStyle:I = 0x73

.field public static final TRANSACTION_getSystemSoundsEnabledState:I = 0xcf

.field public static final TRANSACTION_getTcpDump:I = 0x126

.field public static final TRANSACTION_getToastEnabledState:I = 0x76

.field public static final TRANSACTION_getToastGravity:I = 0x78

.field public static final TRANSACTION_getToastGravityEnabledState:I = 0x7c

.field public static final TRANSACTION_getToastGravityXOffset:I = 0x79

.field public static final TRANSACTION_getToastGravityYOffset:I = 0x7a

.field public static final TRANSACTION_getToastShowPackageNameState:I = 0x7e

.field public static final TRANSACTION_getTorchOnVolumeButtonsState:I = 0x80

.field public static final TRANSACTION_getUltraPowerSavingPackages:I = 0x8d

.field public static final TRANSACTION_getUnlockSimOnBootState:I = 0xb0

.field public static final TRANSACTION_getUnlockSimPin:I = 0xb2

.field public static final TRANSACTION_getUsbConnectionType:I = 0xe1

.field public static final TRANSACTION_getUsbConnectionTypeInternal:I = 0xe2

.field public static final TRANSACTION_getUsbMassStorageState:I = 0xb4

.field public static final TRANSACTION_getUsbNetAddress:I = 0xb6

.field public static final TRANSACTION_getUsbNetState:I = 0xb8

.field public static final TRANSACTION_getUsbNetStateInternal:I = 0xb9

.field public static final TRANSACTION_getUserInactivityTimeout:I = 0x38

.field public static final TRANSACTION_getVibrationIntensity:I = 0xd1

.field public static final TRANSACTION_getVolumeButtonRotationState:I = 0x82

.field public static final TRANSACTION_getVolumeControlStream:I = 0x84

.field public static final TRANSACTION_getVolumeKeyAppState:I = 0x88

.field public static final TRANSACTION_getVolumeKeyAppsList:I = 0x86

.field public static final TRANSACTION_getVolumePanelEnabledState:I = 0x8a

.field public static final TRANSACTION_getWifiConnectionMonitorState:I = 0x47

.field public static final TRANSACTION_getWifiFrequencyBand:I = 0xbb

.field public static final TRANSACTION_getWifiHotspotEnabledState:I = 0xd3

.field public static final TRANSACTION_getWifiState:I = 0xd4

.field public static final TRANSACTION_getZeroPageState:I = 0xf2

.field public static final TRANSACTION_isDexAutoOpenLastAppAllowed:I = 0x105

.field public static final TRANSACTION_isKnoxPrivacyPolicyAcceptedInitially:I = 0x12f

.field public static final TRANSACTION_isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings:I = 0x130

.field public static final TRANSACTION_isSupportedForceAutoStartUpState:I = 0xc4

.field public static final TRANSACTION_migrateApplicationRestrictions:I = 0x12b

.field public static final TRANSACTION_powerOff:I = 0xdd

.field public static final TRANSACTION_readFile:I = 0x127

.field public static final TRANSACTION_registerSystemUiCallback:I = 0x11c

.field public static final TRANSACTION_removeAutoCallNumber:I = 0xd6

.field public static final TRANSACTION_removeDexShortcut:I = 0xf8

.field public static final TRANSACTION_removeDexURLShortcut:I = 0xfb

.field public static final TRANSACTION_removeFavoriteApp:I = 0xee

.field public static final TRANSACTION_removeLockScreen:I = 0x3

.field public static final TRANSACTION_removePackagesFromUltraPowerSaving:I = 0x8c

.field public static final TRANSACTION_removeRoleHolder:I = 0x12e

.field public static final TRANSACTION_removeShortcut:I = 0xe7

.field public static final TRANSACTION_removeWidget:I = 0xe9

.field public static final TRANSACTION_setAccessibilitySettingsItems:I = 0xbc

.field public static final TRANSACTION_setAdbState:I = 0x4

.field public static final TRANSACTION_setAirGestureOptionState:I = 0x8f

.field public static final TRANSACTION_setAppBlockDownloadNamespaces:I = 0x48

.field public static final TRANSACTION_setAppBlockDownloadState:I = 0x4a

.field public static final TRANSACTION_setApplicationRestrictionsInternal:I = 0x128

.field public static final TRANSACTION_setAppsButtonState:I = 0xeb

.field public static final TRANSACTION_setAsoc:I = 0x121

.field public static final TRANSACTION_setAudioVolume:I = 0x5

.field public static final TRANSACTION_setAutoCallPickupState:I = 0xda

.field public static final TRANSACTION_setAutoRotationState:I = 0x6

.field public static final TRANSACTION_setBackupRestoreState:I = 0x3b

.field public static final TRANSACTION_setBatteryLevelColourItem:I = 0x4c

.field public static final TRANSACTION_setBluetoothState:I = 0x8

.field public static final TRANSACTION_setBootingAnimation:I = 0xbe

.field public static final TRANSACTION_setBootingAnimationSub:I = 0x119

.field public static final TRANSACTION_setBrightness:I = 0xe5

.field public static final TRANSACTION_setBrowserHomepage:I = 0x91

.field public static final TRANSACTION_setCallScreenDisabledItems:I = 0x4e

.field public static final TRANSACTION_setChargerConnectionSoundEnabledState:I = 0x92

.field public static final TRANSACTION_setChargingLEDState:I = 0x50

.field public static final TRANSACTION_setCpuPowerSavingState:I = 0x9

.field public static final TRANSACTION_setDeveloperOptionsHidden:I = 0xa

.field public static final TRANSACTION_setDeviceSpeakerEnabledState:I = 0x94

.field public static final TRANSACTION_setDexForegroundModePackageList:I = 0xfc

.field public static final TRANSACTION_setDexHDMIAutoEnterState:I = 0x106

.field public static final TRANSACTION_setDexHomeAlignment:I = 0x102

.field public static final TRANSACTION_setDexLoadingLogo:I = 0xfe

.field public static final TRANSACTION_setDexScreenTimeout:I = 0x100

.field public static final TRANSACTION_setDisplayMirroringState:I = 0x96

.field public static final TRANSACTION_setEthernetConfiguration:I = 0x52

.field public static final TRANSACTION_setEthernetState:I = 0x54

.field public static final TRANSACTION_setExitUI:I = 0xb

.field public static final TRANSACTION_setExtendedCallInfoState:I = 0xd

.field public static final TRANSACTION_setFavoriteApp:I = 0xed

.field public static final TRANSACTION_setFlightModeState:I = 0xc1

.field public static final TRANSACTION_setForceAutoShutDownState:I = 0xe3

.field public static final TRANSACTION_setForceAutoStartUpState:I = 0xc2

.field public static final TRANSACTION_setForceSingleView:I = 0x117

.field public static final TRANSACTION_setForcedDisplaySizeDensity:I = 0x114

.field public static final TRANSACTION_setGearNotificationState:I = 0x56

.field public static final TRANSACTION_setHardKeyIntentBroadcast:I = 0x110

.field public static final TRANSACTION_setHardKeyIntentBroadcastExternal:I = 0x111

.field public static final TRANSACTION_setHardKeyIntentBroadcastInternal:I = 0x112

.field public static final TRANSACTION_setHardKeyIntentMode:I = 0xf3

.field public static final TRANSACTION_setHardKeyIntentState:I = 0x58

.field public static final TRANSACTION_setHardKeyReportState:I = 0x10d

.field public static final TRANSACTION_setHideNotificationMessages:I = 0x3d

.field public static final TRANSACTION_setHomeActivity:I = 0xf

.field public static final TRANSACTION_setHomeScreenMode:I = 0xf5

.field public static final TRANSACTION_setInfraredState:I = 0x5a

.field public static final TRANSACTION_setInputMethod:I = 0x11

.field public static final TRANSACTION_setInputMethodRestrictionState:I = 0x12

.field public static final TRANSACTION_setKeyboardMode:I = 0x98

.field public static final TRANSACTION_setKeyedAppStatesReport:I = 0x12a

.field public static final TRANSACTION_setKnoxPrivacyPolicyByUserSettings:I = 0x131

.field public static final TRANSACTION_setLTESettingState:I = 0x5f

.field public static final TRANSACTION_setLcdBacklightState:I = 0x9b

.field public static final TRANSACTION_setLockScreenHiddenItems:I = 0x5c

.field public static final TRANSACTION_setLockScreenOverrideMode:I = 0x9d

.field public static final TRANSACTION_setLockScreenShortcut:I = 0xde

.field public static final TRANSACTION_setLockscreenWallpaper:I = 0x5e

.field public static final TRANSACTION_setMobileDataRoamingState:I = 0x3f

.field public static final TRANSACTION_setMobileDataState:I = 0x14

.field public static final TRANSACTION_setMobileNetworkType:I = 0xc5

.field public static final TRANSACTION_setMotionControlState:I = 0x40

.field public static final TRANSACTION_setMultiWindowState:I = 0x15

.field public static final TRANSACTION_setPassCode:I = 0x16

.field public static final TRANSACTION_setPowerDialogCustomItems:I = 0x9f

.field public static final TRANSACTION_setPowerDialogCustomItemsState:I = 0xa1

.field public static final TRANSACTION_setPowerDialogItems:I = 0x17

.field public static final TRANSACTION_setPowerDialogOptionMode:I = 0x19

.field public static final TRANSACTION_setPowerMenuLockedState:I = 0x61

.field public static final TRANSACTION_setPowerSavingMode:I = 0x63

.field public static final TRANSACTION_setProKioskNotificationMessagesState:I = 0x1b

.field public static final TRANSACTION_setProKioskPowerDialogCustomItems:I = 0x1d

.field public static final TRANSACTION_setProKioskPowerDialogCustomItemsState:I = 0x1f

.field public static final TRANSACTION_setProKioskState:I = 0x21

.field public static final TRANSACTION_setProKioskStatusBarClockState:I = 0x23

.field public static final TRANSACTION_setProKioskStatusBarIconsState:I = 0x25

.field public static final TRANSACTION_setProKioskStatusBarMode:I = 0x27

.field public static final TRANSACTION_setProKioskString:I = 0x29

.field public static final TRANSACTION_setProKioskUsbMassStorageState:I = 0x2b

.field public static final TRANSACTION_setProKioskUsbNetAddresses:I = 0x2d

.field public static final TRANSACTION_setProKioskUsbNetState:I = 0x2f

.field public static final TRANSACTION_setProtectBatteryState:I = 0x108

.field public static final TRANSACTION_setQuickPanelButtons:I = 0xc7

.field public static final TRANSACTION_setQuickPanelEditMode:I = 0xc9

.field public static final TRANSACTION_setQuickPanelItems:I = 0xcb

.field public static final TRANSACTION_setQuickPanelItemsInternal:I = 0xcc

.field public static final TRANSACTION_setRecentLongPressActivity:I = 0x65

.field public static final TRANSACTION_setRecentLongPressMode:I = 0x67

.field public static final TRANSACTION_setScreenOffOnHomeLongPressState:I = 0x69

.field public static final TRANSACTION_setScreenOffOnStatusBarDoubleTapState:I = 0x6b

.field public static final TRANSACTION_setScreenPowerSavingState:I = 0x31

.field public static final TRANSACTION_setScreenTimeout:I = 0x32

.field public static final TRANSACTION_setScreenWakeupOnPowerState:I = 0x6d

.field public static final TRANSACTION_setSensorDisabled:I = 0x6f

.field public static final TRANSACTION_setSettingsEnabledItems:I = 0xa3

.field public static final TRANSACTION_setSettingsHiddenState:I = 0x42

.field public static final TRANSACTION_setShowIMEWithHardKeyboard:I = 0x10a

.field public static final TRANSACTION_setShuttingDownAnimation:I = 0xbf

.field public static final TRANSACTION_setShuttingDownAnimationSub:I = 0x11a

.field public static final TRANSACTION_setStatusBarClockState:I = 0xa5

.field public static final TRANSACTION_setStatusBarIconsState:I = 0xa7

.field public static final TRANSACTION_setStatusBarMode:I = 0xa9

.field public static final TRANSACTION_setStatusBarNotificationsState:I = 0xab

.field public static final TRANSACTION_setStatusBarText:I = 0x71

.field public static final TRANSACTION_setStatusBarTextScrollWidth:I = 0xad

.field public static final TRANSACTION_setStayAwakeState:I = 0x44

.field public static final TRANSACTION_setSystemLocale:I = 0x34

.field public static final TRANSACTION_setSystemRingtone:I = 0x35

.field public static final TRANSACTION_setSystemSoundsEnabledState:I = 0xce

.field public static final TRANSACTION_setSystemSoundsSilent:I = 0x45

.field public static final TRANSACTION_setToastEnabledState:I = 0x75

.field public static final TRANSACTION_setToastGravity:I = 0x77

.field public static final TRANSACTION_setToastGravityEnabledState:I = 0x7b

.field public static final TRANSACTION_setToastShowPackageNameState:I = 0x7d

.field public static final TRANSACTION_setTorchOnVolumeButtonsState:I = 0x7f

.field public static final TRANSACTION_setUnlockSimOnBootState:I = 0xaf

.field public static final TRANSACTION_setUnlockSimPin:I = 0xb1

.field public static final TRANSACTION_setUsbConnectionType:I = 0xe0

.field public static final TRANSACTION_setUsbDeviceDefaultPackage:I = 0x36

.field public static final TRANSACTION_setUsbMassStorageState:I = 0xb3

.field public static final TRANSACTION_setUsbNetAddresses:I = 0xb5

.field public static final TRANSACTION_setUsbNetState:I = 0xb7

.field public static final TRANSACTION_setUserInactivityTimeout:I = 0x37

.field public static final TRANSACTION_setVibrationIntensity:I = 0xd0

.field public static final TRANSACTION_setVolumeButtonRotationState:I = 0x81

.field public static final TRANSACTION_setVolumeControlStream:I = 0x83

.field public static final TRANSACTION_setVolumeKeyAppState:I = 0x87

.field public static final TRANSACTION_setVolumeKeyAppsList:I = 0x85

.field public static final TRANSACTION_setVolumePanelEnabledState:I = 0x89

.field public static final TRANSACTION_setWallpaper:I = 0x10c

.field public static final TRANSACTION_setWifiConnectionMonitorState:I = 0x46

.field public static final TRANSACTION_setWifiFrequencyBand:I = 0xba

.field public static final TRANSACTION_setWifiHotspotEnabledState:I = 0xd2

.field public static final TRANSACTION_setWifiState:I = 0x39

.field public static final TRANSACTION_setWifiStateEap:I = 0x3a

.field public static final TRANSACTION_setZeroPageState:I = 0xf1

.field public static final TRANSACTION_startProKioskMode:I = 0x11d

.field public static final TRANSACTION_startSmartView:I = 0x116

.field public static final TRANSACTION_startTcpDump:I = 0x124

.field public static final TRANSACTION_stayInDexForegroundMode:I = 0x11f

.field public static final TRANSACTION_stopProKioskMode:I = 0x11e

.field public static final TRANSACTION_stopTcpDump:I = 0x125


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;
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
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManager"

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
    instance-of v1, v0, Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string p0, "setKnoxPrivacyPolicyByUserSettings"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "isKnoxPrivacyPolicyAcceptedInitially"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "removeRoleHolder"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "addRoleHolder"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "getRoleHolders"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "migrateApplicationRestrictions"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "setKeyedAppStatesReport"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "getApplicationRestrictionsInternal"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "setApplicationRestrictionsInternal"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "readFile"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "getTcpDump"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    const-string p0, "stopTcpDump"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    const-string p0, "startTcpDump"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    const-string p0, "getBsohUnbiased"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    const-string p0, "getBsoh"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    const-string p0, "setAsoc"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    const-string p0, "getAsoc"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    const-string p0, "stayInDexForegroundMode"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_13
    const-string p0, "stopProKioskMode"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_14
    const-string p0, "startProKioskMode"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_15
    const-string p0, "registerSystemUiCallback"

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_16
    const-string p0, "getLoadingLogoPath"

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_17
    const-string p0, "setShuttingDownAnimationSub"

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_18
    const-string p0, "setBootingAnimationSub"

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_19
    const-string p0, "getForceSingleView"

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_1a
    const-string p0, "setForceSingleView"

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1b
    const-string p0, "startSmartView"

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1c
    const-string p0, "clearForcedDisplaySizeDensity"

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1d
    const-string p0, "setForcedDisplaySizeDensity"

    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_1e
    const-string p0, "getHardKeyIntentBroadcast"

    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_1f
    const-string p0, "setHardKeyIntentBroadcastInternal"

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_20
    const-string p0, "setHardKeyIntentBroadcastExternal"

    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_21
    const-string p0, "setHardKeyIntentBroadcast"

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_22
    const-string p0, "getHardKeyBlockState"

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_23
    const-string p0, "getHardKeyReportState"

    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_24
    const-string p0, "setHardKeyReportState"

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_25
    const-string p0, "setWallpaper"

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_26
    const-string p0, "getShowIMEWithHardKeyboard"

    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_27
    const-string p0, "setShowIMEWithHardKeyboard"

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_28
    const-string p0, "getProtectBatteryState"

    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_29
    const-string p0, "setProtectBatteryState"

    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_2a
    const-string p0, "getDexHDMIAutoEnterState"

    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_2b
    const-string p0, "setDexHDMIAutoEnterState"

    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_2c
    const-string p0, "isDexAutoOpenLastAppAllowed"

    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_2d
    const-string p0, "allowDexAutoOpenLastApp"

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_2e
    const-string p0, "getDexHomeAlignment"

    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_2f
    const-string p0, "setDexHomeAlignment"

    .line 148
    .line 149
    return-object p0

    .line 150
    :pswitch_30
    const-string p0, "getDexScreenTimeout"

    .line 151
    .line 152
    return-object p0

    .line 153
    :pswitch_31
    const-string p0, "setDexScreenTimeout"

    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_32
    const-string p0, "clearDexLoadingLogo"

    .line 157
    .line 158
    return-object p0

    .line 159
    :pswitch_33
    const-string p0, "setDexLoadingLogo"

    .line 160
    .line 161
    return-object p0

    .line 162
    :pswitch_34
    const-string p0, "getDexForegroundModePackageList"

    .line 163
    .line 164
    return-object p0

    .line 165
    :pswitch_35
    const-string p0, "setDexForegroundModePackageList"

    .line 166
    .line 167
    return-object p0

    .line 168
    :pswitch_36
    const-string p0, "removeDexURLShortcut"

    .line 169
    .line 170
    return-object p0

    .line 171
    :pswitch_37
    const-string p0, "addDexURLShortcutExtend"

    .line 172
    .line 173
    return-object p0

    .line 174
    :pswitch_38
    const-string p0, "addDexURLShortcut"

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_39
    const-string p0, "removeDexShortcut"

    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_3a
    const-string p0, "addDexShortcut"

    .line 181
    .line 182
    return-object p0

    .line 183
    :pswitch_3b
    const-string p0, "getHomeScreenMode"

    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_3c
    const-string p0, "setHomeScreenMode"

    .line 187
    .line 188
    return-object p0

    .line 189
    :pswitch_3d
    const-string p0, "getHardKeyIntentMode"

    .line 190
    .line 191
    return-object p0

    .line 192
    :pswitch_3e
    const-string p0, "setHardKeyIntentMode"

    .line 193
    .line 194
    return-object p0

    .line 195
    :pswitch_3f
    const-string p0, "getZeroPageState"

    .line 196
    .line 197
    return-object p0

    .line 198
    :pswitch_40
    const-string p0, "setZeroPageState"

    .line 199
    .line 200
    return-object p0

    .line 201
    :pswitch_41
    const-string p0, "getFavoriteApp"

    .line 202
    .line 203
    return-object p0

    .line 204
    :pswitch_42
    const-string p0, "getFavoriteAppsMaxCount"

    .line 205
    .line 206
    return-object p0

    .line 207
    :pswitch_43
    const-string p0, "removeFavoriteApp"

    .line 208
    .line 209
    return-object p0

    .line 210
    :pswitch_44
    const-string p0, "setFavoriteApp"

    .line 211
    .line 212
    return-object p0

    .line 213
    :pswitch_45
    const-string p0, "getAppsButtonState"

    .line 214
    .line 215
    return-object p0

    .line 216
    :pswitch_46
    const-string p0, "setAppsButtonState"

    .line 217
    .line 218
    return-object p0

    .line 219
    :pswitch_47
    const-string p0, "deleteHomeScreenPage"

    .line 220
    .line 221
    return-object p0

    .line 222
    :pswitch_48
    const-string p0, "removeWidget"

    .line 223
    .line 224
    return-object p0

    .line 225
    :pswitch_49
    const-string p0, "addWidget"

    .line 226
    .line 227
    return-object p0

    .line 228
    :pswitch_4a
    const-string p0, "removeShortcut"

    .line 229
    .line 230
    return-object p0

    .line 231
    :pswitch_4b
    const-string p0, "addShortcut"

    .line 232
    .line 233
    return-object p0

    .line 234
    :pswitch_4c
    const-string p0, "setBrightness"

    .line 235
    .line 236
    return-object p0

    .line 237
    :pswitch_4d
    const-string p0, "getForceAutoShutDownState"

    .line 238
    .line 239
    return-object p0

    .line 240
    :pswitch_4e
    const-string p0, "setForceAutoShutDownState"

    .line 241
    .line 242
    return-object p0

    .line 243
    :pswitch_4f
    const-string p0, "getUsbConnectionTypeInternal"

    .line 244
    .line 245
    return-object p0

    .line 246
    :pswitch_50
    const-string p0, "getUsbConnectionType"

    .line 247
    .line 248
    return-object p0

    .line 249
    :pswitch_51
    const-string p0, "setUsbConnectionType"

    .line 250
    .line 251
    return-object p0

    .line 252
    :pswitch_52
    const-string p0, "getLockScreenShortcut"

    .line 253
    .line 254
    return-object p0

    .line 255
    :pswitch_53
    const-string p0, "setLockScreenShortcut"

    .line 256
    .line 257
    return-object p0

    .line 258
    :pswitch_54
    const-string p0, "powerOff"

    .line 259
    .line 260
    return-object p0

    .line 261
    :pswitch_55
    const-string p0, "getMacAddress"

    .line 262
    .line 263
    return-object p0

    .line 264
    :pswitch_56
    const-string p0, "getAutoCallPickupState"

    .line 265
    .line 266
    return-object p0

    .line 267
    :pswitch_57
    const-string p0, "setAutoCallPickupState"

    .line 268
    .line 269
    return-object p0

    .line 270
    :pswitch_58
    const-string p0, "getAutoCallNumberList"

    .line 271
    .line 272
    return-object p0

    .line 273
    :pswitch_59
    const-string p0, "getAutoCallNumberAnswerMode"

    .line 274
    .line 275
    return-object p0

    .line 276
    :pswitch_5a
    const-string p0, "getAutoCallNumberDelay"

    .line 277
    .line 278
    return-object p0

    .line 279
    :pswitch_5b
    const-string p0, "removeAutoCallNumber"

    .line 280
    .line 281
    return-object p0

    .line 282
    :pswitch_5c
    const-string p0, "addAutoCallNumber"

    .line 283
    .line 284
    return-object p0

    .line 285
    :pswitch_5d
    const-string p0, "getWifiState"

    .line 286
    .line 287
    return-object p0

    .line 288
    :pswitch_5e
    const-string p0, "getWifiHotspotEnabledState"

    .line 289
    .line 290
    return-object p0

    .line 291
    :pswitch_5f
    const-string p0, "setWifiHotspotEnabledState"

    .line 292
    .line 293
    return-object p0

    .line 294
    :pswitch_60
    const-string p0, "getVibrationIntensity"

    .line 295
    .line 296
    return-object p0

    .line 297
    :pswitch_61
    const-string p0, "setVibrationIntensity"

    .line 298
    .line 299
    return-object p0

    .line 300
    :pswitch_62
    const-string p0, "getSystemSoundsEnabledState"

    .line 301
    .line 302
    return-object p0

    .line 303
    :pswitch_63
    const-string p0, "setSystemSoundsEnabledState"

    .line 304
    .line 305
    return-object p0

    .line 306
    :pswitch_64
    const-string p0, "getQuickPanelItems"

    .line 307
    .line 308
    return-object p0

    .line 309
    :pswitch_65
    const-string p0, "setQuickPanelItemsInternal"

    .line 310
    .line 311
    return-object p0

    .line 312
    :pswitch_66
    const-string p0, "setQuickPanelItems"

    .line 313
    .line 314
    return-object p0

    .line 315
    :pswitch_67
    const-string p0, "getQuickPanelEditMode"

    .line 316
    .line 317
    return-object p0

    .line 318
    :pswitch_68
    const-string p0, "setQuickPanelEditMode"

    .line 319
    .line 320
    return-object p0

    .line 321
    :pswitch_69
    const-string p0, "getQuickPanelButtons"

    .line 322
    .line 323
    return-object p0

    .line 324
    :pswitch_6a
    const-string p0, "setQuickPanelButtons"

    .line 325
    .line 326
    return-object p0

    .line 327
    :pswitch_6b
    const-string p0, "getMobileNetworkType"

    .line 328
    .line 329
    return-object p0

    .line 330
    :pswitch_6c
    const-string p0, "setMobileNetworkType"

    .line 331
    .line 332
    return-object p0

    .line 333
    :pswitch_6d
    const-string p0, "isSupportedForceAutoStartUpState"

    .line 334
    .line 335
    return-object p0

    .line 336
    :pswitch_6e
    const-string p0, "getForceAutoStartUpState"

    .line 337
    .line 338
    return-object p0

    .line 339
    :pswitch_6f
    const-string p0, "setForceAutoStartUpState"

    .line 340
    .line 341
    return-object p0

    .line 342
    :pswitch_70
    const-string p0, "setFlightModeState"

    .line 343
    .line 344
    return-object p0

    .line 345
    :pswitch_71
    const-string p0, "clearAnimation"

    .line 346
    .line 347
    return-object p0

    .line 348
    :pswitch_72
    const-string p0, "setShuttingDownAnimation"

    .line 349
    .line 350
    return-object p0

    .line 351
    :pswitch_73
    const-string p0, "setBootingAnimation"

    .line 352
    .line 353
    return-object p0

    .line 354
    :pswitch_74
    const-string p0, "getAccessibilitySettingsItems"

    .line 355
    .line 356
    return-object p0

    .line 357
    :pswitch_75
    const-string p0, "setAccessibilitySettingsItems"

    .line 358
    .line 359
    return-object p0

    .line 360
    :pswitch_76
    const-string p0, "getWifiFrequencyBand"

    .line 361
    .line 362
    return-object p0

    .line 363
    :pswitch_77
    const-string p0, "setWifiFrequencyBand"

    .line 364
    .line 365
    return-object p0

    .line 366
    :pswitch_78
    const-string p0, "getUsbNetStateInternal"

    .line 367
    .line 368
    return-object p0

    .line 369
    :pswitch_79
    const-string p0, "getUsbNetState"

    .line 370
    .line 371
    return-object p0

    .line 372
    :pswitch_7a
    const-string p0, "setUsbNetState"

    .line 373
    .line 374
    return-object p0

    .line 375
    :pswitch_7b
    const-string p0, "getUsbNetAddress"

    .line 376
    .line 377
    return-object p0

    .line 378
    :pswitch_7c
    const-string p0, "setUsbNetAddresses"

    .line 379
    .line 380
    return-object p0

    .line 381
    :pswitch_7d
    const-string p0, "getUsbMassStorageState"

    .line 382
    .line 383
    return-object p0

    .line 384
    :pswitch_7e
    const-string p0, "setUsbMassStorageState"

    .line 385
    .line 386
    return-object p0

    .line 387
    :pswitch_7f
    const-string p0, "getUnlockSimPin"

    .line 388
    .line 389
    return-object p0

    .line 390
    :pswitch_80
    const-string p0, "setUnlockSimPin"

    .line 391
    .line 392
    return-object p0

    .line 393
    :pswitch_81
    const-string p0, "getUnlockSimOnBootState"

    .line 394
    .line 395
    return-object p0

    .line 396
    :pswitch_82
    const-string p0, "setUnlockSimOnBootState"

    .line 397
    .line 398
    return-object p0

    .line 399
    :pswitch_83
    const-string p0, "getStatusBarTextScrollWidth"

    .line 400
    .line 401
    return-object p0

    .line 402
    :pswitch_84
    const-string p0, "setStatusBarTextScrollWidth"

    .line 403
    .line 404
    return-object p0

    .line 405
    :pswitch_85
    const-string p0, "getStatusBarNotificationsState"

    .line 406
    .line 407
    return-object p0

    .line 408
    :pswitch_86
    const-string p0, "setStatusBarNotificationsState"

    .line 409
    .line 410
    return-object p0

    .line 411
    :pswitch_87
    const-string p0, "getStatusBarMode"

    .line 412
    .line 413
    return-object p0

    .line 414
    :pswitch_88
    const-string p0, "setStatusBarMode"

    .line 415
    .line 416
    return-object p0

    .line 417
    :pswitch_89
    const-string p0, "getStatusBarIconsState"

    .line 418
    .line 419
    return-object p0

    .line 420
    :pswitch_8a
    const-string p0, "setStatusBarIconsState"

    .line 421
    .line 422
    return-object p0

    .line 423
    :pswitch_8b
    const-string p0, "getStatusBarClockState"

    .line 424
    .line 425
    return-object p0

    .line 426
    :pswitch_8c
    const-string p0, "setStatusBarClockState"

    .line 427
    .line 428
    return-object p0

    .line 429
    :pswitch_8d
    const-string p0, "getSettingsEnabledItems"

    .line 430
    .line 431
    return-object p0

    .line 432
    :pswitch_8e
    const-string p0, "setSettingsEnabledItems"

    .line 433
    .line 434
    return-object p0

    .line 435
    :pswitch_8f
    const-string p0, "getPowerDialogCustomItemsState"

    .line 436
    .line 437
    return-object p0

    .line 438
    :pswitch_90
    const-string p0, "setPowerDialogCustomItemsState"

    .line 439
    .line 440
    return-object p0

    .line 441
    :pswitch_91
    const-string p0, "getPowerDialogCustomItems"

    .line 442
    .line 443
    return-object p0

    .line 444
    :pswitch_92
    const-string p0, "setPowerDialogCustomItems"

    .line 445
    .line 446
    return-object p0

    .line 447
    :pswitch_93
    const-string p0, "getLockScreenOverrideMode"

    .line 448
    .line 449
    return-object p0

    .line 450
    :pswitch_94
    const-string p0, "setLockScreenOverrideMode"

    .line 451
    .line 452
    return-object p0

    .line 453
    :pswitch_95
    const-string p0, "getLcdBacklightState"

    .line 454
    .line 455
    return-object p0

    .line 456
    :pswitch_96
    const-string p0, "setLcdBacklightState"

    .line 457
    .line 458
    return-object p0

    .line 459
    :pswitch_97
    const-string p0, "getKeyboardModeOverriden"

    .line 460
    .line 461
    return-object p0

    .line 462
    :pswitch_98
    const-string p0, "getKeyboardMode"

    .line 463
    .line 464
    return-object p0

    .line 465
    :pswitch_99
    const-string p0, "setKeyboardMode"

    .line 466
    .line 467
    return-object p0

    .line 468
    :pswitch_9a
    const-string p0, "getDisplayMirroringState"

    .line 469
    .line 470
    return-object p0

    .line 471
    :pswitch_9b
    const-string p0, "setDisplayMirroringState"

    .line 472
    .line 473
    return-object p0

    .line 474
    :pswitch_9c
    const-string p0, "getDeviceSpeakerEnabledState"

    .line 475
    .line 476
    return-object p0

    .line 477
    :pswitch_9d
    const-string p0, "setDeviceSpeakerEnabledState"

    .line 478
    .line 479
    return-object p0

    .line 480
    :pswitch_9e
    const-string p0, "getChargerConnectionSoundEnabledState"

    .line 481
    .line 482
    return-object p0

    .line 483
    :pswitch_9f
    const-string p0, "setChargerConnectionSoundEnabledState"

    .line 484
    .line 485
    return-object p0

    .line 486
    :pswitch_a0
    const-string p0, "setBrowserHomepage"

    .line 487
    .line 488
    return-object p0

    .line 489
    :pswitch_a1
    const-string p0, "getAirGestureOptionState"

    .line 490
    .line 491
    return-object p0

    .line 492
    :pswitch_a2
    const-string p0, "setAirGestureOptionState"

    .line 493
    .line 494
    return-object p0

    .line 495
    :pswitch_a3
    const-string p0, "getSerialNumber"

    .line 496
    .line 497
    return-object p0

    .line 498
    :pswitch_a4
    const-string p0, "getUltraPowerSavingPackages"

    .line 499
    .line 500
    return-object p0

    .line 501
    :pswitch_a5
    const-string p0, "removePackagesFromUltraPowerSaving"

    .line 502
    .line 503
    return-object p0

    .line 504
    :pswitch_a6
    const-string p0, "addPackagesToUltraPowerSaving"

    .line 505
    .line 506
    return-object p0

    .line 507
    :pswitch_a7
    const-string p0, "getVolumePanelEnabledState"

    .line 508
    .line 509
    return-object p0

    .line 510
    :pswitch_a8
    const-string p0, "setVolumePanelEnabledState"

    .line 511
    .line 512
    return-object p0

    .line 513
    :pswitch_a9
    const-string p0, "getVolumeKeyAppState"

    .line 514
    .line 515
    return-object p0

    .line 516
    :pswitch_aa
    const-string p0, "setVolumeKeyAppState"

    .line 517
    .line 518
    return-object p0

    .line 519
    :pswitch_ab
    const-string p0, "getVolumeKeyAppsList"

    .line 520
    .line 521
    return-object p0

    .line 522
    :pswitch_ac
    const-string p0, "setVolumeKeyAppsList"

    .line 523
    .line 524
    return-object p0

    .line 525
    :pswitch_ad
    const-string p0, "getVolumeControlStream"

    .line 526
    .line 527
    return-object p0

    .line 528
    :pswitch_ae
    const-string p0, "setVolumeControlStream"

    .line 529
    .line 530
    return-object p0

    .line 531
    :pswitch_af
    const-string p0, "getVolumeButtonRotationState"

    .line 532
    .line 533
    return-object p0

    .line 534
    :pswitch_b0
    const-string p0, "setVolumeButtonRotationState"

    .line 535
    .line 536
    return-object p0

    .line 537
    :pswitch_b1
    const-string p0, "getTorchOnVolumeButtonsState"

    .line 538
    .line 539
    return-object p0

    .line 540
    :pswitch_b2
    const-string p0, "setTorchOnVolumeButtonsState"

    .line 541
    .line 542
    return-object p0

    .line 543
    :pswitch_b3
    const-string p0, "getToastShowPackageNameState"

    .line 544
    .line 545
    return-object p0

    .line 546
    :pswitch_b4
    const-string p0, "setToastShowPackageNameState"

    .line 547
    .line 548
    return-object p0

    .line 549
    :pswitch_b5
    const-string p0, "getToastGravityEnabledState"

    .line 550
    .line 551
    return-object p0

    .line 552
    :pswitch_b6
    const-string p0, "setToastGravityEnabledState"

    .line 553
    .line 554
    return-object p0

    .line 555
    :pswitch_b7
    const-string p0, "getToastGravityYOffset"

    .line 556
    .line 557
    return-object p0

    .line 558
    :pswitch_b8
    const-string p0, "getToastGravityXOffset"

    .line 559
    .line 560
    return-object p0

    .line 561
    :pswitch_b9
    const-string p0, "getToastGravity"

    .line 562
    .line 563
    return-object p0

    .line 564
    :pswitch_ba
    const-string p0, "setToastGravity"

    .line 565
    .line 566
    return-object p0

    .line 567
    :pswitch_bb
    const-string p0, "getToastEnabledState"

    .line 568
    .line 569
    return-object p0

    .line 570
    :pswitch_bc
    const-string p0, "setToastEnabledState"

    .line 571
    .line 572
    return-object p0

    .line 573
    :pswitch_bd
    const-string p0, "getStatusBarTextSize"

    .line 574
    .line 575
    return-object p0

    .line 576
    :pswitch_be
    const-string p0, "getStatusBarTextStyle"

    .line 577
    .line 578
    return-object p0

    .line 579
    :pswitch_bf
    const-string p0, "getStatusBarText"

    .line 580
    .line 581
    return-object p0

    .line 582
    :pswitch_c0
    const-string p0, "setStatusBarText"

    .line 583
    .line 584
    return-object p0

    .line 585
    :pswitch_c1
    const-string p0, "getSensorDisabled"

    .line 586
    .line 587
    return-object p0

    .line 588
    :pswitch_c2
    const-string p0, "setSensorDisabled"

    .line 589
    .line 590
    return-object p0

    .line 591
    :pswitch_c3
    const-string p0, "getScreenWakeupOnPowerState"

    .line 592
    .line 593
    return-object p0

    .line 594
    :pswitch_c4
    const-string p0, "setScreenWakeupOnPowerState"

    .line 595
    .line 596
    return-object p0

    .line 597
    :pswitch_c5
    const-string p0, "getScreenOffOnStatusBarDoubleTapState"

    .line 598
    .line 599
    return-object p0

    .line 600
    :pswitch_c6
    const-string p0, "setScreenOffOnStatusBarDoubleTapState"

    .line 601
    .line 602
    return-object p0

    .line 603
    :pswitch_c7
    const-string p0, "getScreenOffOnHomeLongPressState"

    .line 604
    .line 605
    return-object p0

    .line 606
    :pswitch_c8
    const-string p0, "setScreenOffOnHomeLongPressState"

    .line 607
    .line 608
    return-object p0

    .line 609
    :pswitch_c9
    const-string p0, "getRecentLongPressMode"

    .line 610
    .line 611
    return-object p0

    .line 612
    :pswitch_ca
    const-string p0, "setRecentLongPressMode"

    .line 613
    .line 614
    return-object p0

    .line 615
    :pswitch_cb
    const-string p0, "getRecentLongPressActivity"

    .line 616
    .line 617
    return-object p0

    .line 618
    :pswitch_cc
    const-string p0, "setRecentLongPressActivity"

    .line 619
    .line 620
    return-object p0

    .line 621
    :pswitch_cd
    const-string p0, "getPowerSavingMode"

    .line 622
    .line 623
    return-object p0

    .line 624
    :pswitch_ce
    const-string p0, "setPowerSavingMode"

    .line 625
    .line 626
    return-object p0

    .line 627
    :pswitch_cf
    const-string p0, "getPowerMenuLockedState"

    .line 628
    .line 629
    return-object p0

    .line 630
    :pswitch_d0
    const-string p0, "setPowerMenuLockedState"

    .line 631
    .line 632
    return-object p0

    .line 633
    :pswitch_d1
    const-string p0, "getLTESettingState"

    .line 634
    .line 635
    return-object p0

    .line 636
    :pswitch_d2
    const-string p0, "setLTESettingState"

    .line 637
    .line 638
    return-object p0

    .line 639
    :pswitch_d3
    const-string p0, "setLockscreenWallpaper"

    .line 640
    .line 641
    return-object p0

    .line 642
    :pswitch_d4
    const-string p0, "getLockScreenHiddenItems"

    .line 643
    .line 644
    return-object p0

    .line 645
    :pswitch_d5
    const-string p0, "setLockScreenHiddenItems"

    .line 646
    .line 647
    return-object p0

    .line 648
    :pswitch_d6
    const-string p0, "getInfraredState"

    .line 649
    .line 650
    return-object p0

    .line 651
    :pswitch_d7
    const-string p0, "setInfraredState"

    .line 652
    .line 653
    return-object p0

    .line 654
    :pswitch_d8
    const-string p0, "getHardKeyIntentState"

    .line 655
    .line 656
    return-object p0

    .line 657
    :pswitch_d9
    const-string p0, "setHardKeyIntentState"

    .line 658
    .line 659
    return-object p0

    .line 660
    :pswitch_da
    const-string p0, "getGearNotificationState"

    .line 661
    .line 662
    return-object p0

    .line 663
    :pswitch_db
    const-string p0, "setGearNotificationState"

    .line 664
    .line 665
    return-object p0

    .line 666
    :pswitch_dc
    const-string p0, "getEthernetState"

    .line 667
    .line 668
    return-object p0

    .line 669
    :pswitch_dd
    const-string p0, "setEthernetState"

    .line 670
    .line 671
    return-object p0

    .line 672
    :pswitch_de
    const-string p0, "getEthernetConfigurationType"

    .line 673
    .line 674
    return-object p0

    .line 675
    :pswitch_df
    const-string p0, "setEthernetConfiguration"

    .line 676
    .line 677
    return-object p0

    .line 678
    :pswitch_e0
    const-string p0, "getChargingLEDState"

    .line 679
    .line 680
    return-object p0

    .line 681
    :pswitch_e1
    const-string p0, "setChargingLEDState"

    .line 682
    .line 683
    return-object p0

    .line 684
    :pswitch_e2
    const-string p0, "getCallScreenDisabledItems"

    .line 685
    .line 686
    return-object p0

    .line 687
    :pswitch_e3
    const-string p0, "setCallScreenDisabledItems"

    .line 688
    .line 689
    return-object p0

    .line 690
    :pswitch_e4
    const-string p0, "getBatteryLevelColourItem"

    .line 691
    .line 692
    return-object p0

    .line 693
    :pswitch_e5
    const-string p0, "setBatteryLevelColourItem"

    .line 694
    .line 695
    return-object p0

    .line 696
    :pswitch_e6
    const-string p0, "getAppBlockDownloadState"

    .line 697
    .line 698
    return-object p0

    .line 699
    :pswitch_e7
    const-string p0, "setAppBlockDownloadState"

    .line 700
    .line 701
    return-object p0

    .line 702
    :pswitch_e8
    const-string p0, "getAppBlockDownloadNamespaces"

    .line 703
    .line 704
    return-object p0

    .line 705
    :pswitch_e9
    const-string p0, "setAppBlockDownloadNamespaces"

    .line 706
    .line 707
    return-object p0

    .line 708
    :pswitch_ea
    const-string p0, "getWifiConnectionMonitorState"

    .line 709
    .line 710
    return-object p0

    .line 711
    :pswitch_eb
    const-string p0, "setWifiConnectionMonitorState"

    .line 712
    .line 713
    return-object p0

    .line 714
    :pswitch_ec
    const-string p0, "setSystemSoundsSilent"

    .line 715
    .line 716
    return-object p0

    .line 717
    :pswitch_ed
    const-string p0, "setStayAwakeState"

    .line 718
    .line 719
    return-object p0

    .line 720
    :pswitch_ee
    const-string p0, "getSettingsHiddenState"

    .line 721
    .line 722
    return-object p0

    .line 723
    :pswitch_ef
    const-string p0, "setSettingsHiddenState"

    .line 724
    .line 725
    return-object p0

    .line 726
    :pswitch_f0
    const-string p0, "getMotionControlState"

    .line 727
    .line 728
    return-object p0

    .line 729
    :pswitch_f1
    const-string p0, "setMotionControlState"

    .line 730
    .line 731
    return-object p0

    .line 732
    :pswitch_f2
    const-string p0, "setMobileDataRoamingState"

    .line 733
    .line 734
    return-object p0

    .line 735
    :pswitch_f3
    const-string p0, "getHideNotificationMessages"

    .line 736
    .line 737
    return-object p0

    .line 738
    :pswitch_f4
    const-string p0, "setHideNotificationMessages"

    .line 739
    .line 740
    return-object p0

    .line 741
    :pswitch_f5
    const-string p0, "getBackupRestoreState"

    .line 742
    .line 743
    return-object p0

    .line 744
    :pswitch_f6
    const-string p0, "setBackupRestoreState"

    .line 745
    .line 746
    return-object p0

    .line 747
    :pswitch_f7
    const-string p0, "setWifiStateEap"

    .line 748
    .line 749
    return-object p0

    .line 750
    :pswitch_f8
    const-string p0, "setWifiState"

    .line 751
    .line 752
    return-object p0

    .line 753
    :pswitch_f9
    const-string p0, "getUserInactivityTimeout"

    .line 754
    .line 755
    return-object p0

    .line 756
    :pswitch_fa
    const-string p0, "setUserInactivityTimeout"

    .line 757
    .line 758
    return-object p0

    .line 759
    :pswitch_fb
    const-string p0, "setUsbDeviceDefaultPackage"

    .line 760
    .line 761
    return-object p0

    .line 762
    :pswitch_fc
    const-string p0, "setSystemRingtone"

    .line 763
    .line 764
    return-object p0

    .line 765
    :pswitch_fd
    const-string p0, "setSystemLocale"

    .line 766
    .line 767
    return-object p0

    .line 768
    :pswitch_fe
    const-string p0, "getScreenTimeout"

    .line 769
    .line 770
    return-object p0

    .line 771
    :pswitch_ff
    const-string p0, "setScreenTimeout"

    .line 772
    .line 773
    return-object p0

    .line 774
    :pswitch_100
    const-string p0, "setScreenPowerSavingState"

    .line 775
    .line 776
    return-object p0

    .line 777
    :pswitch_101
    const-string p0, "getProKioskUsbNetState"

    .line 778
    .line 779
    return-object p0

    .line 780
    :pswitch_102
    const-string p0, "setProKioskUsbNetState"

    .line 781
    .line 782
    return-object p0

    .line 783
    :pswitch_103
    const-string p0, "getProKioskUsbNetAddress"

    .line 784
    .line 785
    return-object p0

    .line 786
    :pswitch_104
    const-string p0, "setProKioskUsbNetAddresses"

    .line 787
    .line 788
    return-object p0

    .line 789
    :pswitch_105
    const-string p0, "getProKioskUsbMassStorageState"

    .line 790
    .line 791
    return-object p0

    .line 792
    :pswitch_106
    const-string p0, "setProKioskUsbMassStorageState"

    .line 793
    .line 794
    return-object p0

    .line 795
    :pswitch_107
    const-string p0, "getProKioskString"

    .line 796
    .line 797
    return-object p0

    .line 798
    :pswitch_108
    const-string p0, "setProKioskString"

    .line 799
    .line 800
    return-object p0

    .line 801
    :pswitch_109
    const-string p0, "getProKioskStatusBarMode"

    .line 802
    .line 803
    return-object p0

    .line 804
    :pswitch_10a
    const-string p0, "setProKioskStatusBarMode"

    .line 805
    .line 806
    return-object p0

    .line 807
    :pswitch_10b
    const-string p0, "getProKioskStatusBarIconsState"

    .line 808
    .line 809
    return-object p0

    .line 810
    :pswitch_10c
    const-string p0, "setProKioskStatusBarIconsState"

    .line 811
    .line 812
    return-object p0

    .line 813
    :pswitch_10d
    const-string p0, "getProKioskStatusBarClockState"

    .line 814
    .line 815
    return-object p0

    .line 816
    :pswitch_10e
    const-string p0, "setProKioskStatusBarClockState"

    .line 817
    .line 818
    return-object p0

    .line 819
    :pswitch_10f
    const-string p0, "getProKioskState"

    .line 820
    .line 821
    return-object p0

    .line 822
    :pswitch_110
    const-string p0, "setProKioskState"

    .line 823
    .line 824
    return-object p0

    .line 825
    :pswitch_111
    const-string p0, "getProKioskPowerDialogCustomItemsState"

    .line 826
    .line 827
    return-object p0

    .line 828
    :pswitch_112
    const-string p0, "setProKioskPowerDialogCustomItemsState"

    .line 829
    .line 830
    return-object p0

    .line 831
    :pswitch_113
    const-string p0, "getProKioskPowerDialogCustomItems"

    .line 832
    .line 833
    return-object p0

    .line 834
    :pswitch_114
    const-string p0, "setProKioskPowerDialogCustomItems"

    .line 835
    .line 836
    return-object p0

    .line 837
    :pswitch_115
    const-string p0, "getProKioskNotificationMessagesState"

    .line 838
    .line 839
    return-object p0

    .line 840
    :pswitch_116
    const-string p0, "setProKioskNotificationMessagesState"

    .line 841
    .line 842
    return-object p0

    .line 843
    :pswitch_117
    const-string p0, "getPowerDialogOptionMode"

    .line 844
    .line 845
    return-object p0

    .line 846
    :pswitch_118
    const-string p0, "setPowerDialogOptionMode"

    .line 847
    .line 848
    return-object p0

    .line 849
    :pswitch_119
    const-string p0, "getPowerDialogItems"

    .line 850
    .line 851
    return-object p0

    .line 852
    :pswitch_11a
    const-string p0, "setPowerDialogItems"

    .line 853
    .line 854
    return-object p0

    .line 855
    :pswitch_11b
    const-string p0, "setPassCode"

    .line 856
    .line 857
    return-object p0

    .line 858
    :pswitch_11c
    const-string p0, "setMultiWindowState"

    .line 859
    .line 860
    return-object p0

    .line 861
    :pswitch_11d
    const-string p0, "setMobileDataState"

    .line 862
    .line 863
    return-object p0

    .line 864
    :pswitch_11e
    const-string p0, "getInputMethodRestrictionState"

    .line 865
    .line 866
    return-object p0

    .line 867
    :pswitch_11f
    const-string p0, "setInputMethodRestrictionState"

    .line 868
    .line 869
    return-object p0

    .line 870
    :pswitch_120
    const-string p0, "setInputMethod"

    .line 871
    .line 872
    return-object p0

    .line 873
    :pswitch_121
    const-string p0, "getHomeActivity"

    .line 874
    .line 875
    return-object p0

    .line 876
    :pswitch_122
    const-string p0, "setHomeActivity"

    .line 877
    .line 878
    return-object p0

    .line 879
    :pswitch_123
    const-string p0, "getExtendedCallInfoState"

    .line 880
    .line 881
    return-object p0

    .line 882
    :pswitch_124
    const-string p0, "setExtendedCallInfoState"

    .line 883
    .line 884
    return-object p0

    .line 885
    :pswitch_125
    const-string p0, "getExitUI"

    .line 886
    .line 887
    return-object p0

    .line 888
    :pswitch_126
    const-string p0, "setExitUI"

    .line 889
    .line 890
    return-object p0

    .line 891
    :pswitch_127
    const-string p0, "setDeveloperOptionsHidden"

    .line 892
    .line 893
    return-object p0

    .line 894
    :pswitch_128
    const-string p0, "setCpuPowerSavingState"

    .line 895
    .line 896
    return-object p0

    .line 897
    :pswitch_129
    const-string p0, "setBluetoothState"

    .line 898
    .line 899
    return-object p0

    .line 900
    :pswitch_12a
    const-string p0, "getAutoRotationState"

    .line 901
    .line 902
    return-object p0

    .line 903
    :pswitch_12b
    const-string p0, "setAutoRotationState"

    .line 904
    .line 905
    return-object p0

    .line 906
    :pswitch_12c
    const-string p0, "setAudioVolume"

    .line 907
    .line 908
    return-object p0

    .line 909
    :pswitch_12d
    const-string p0, "setAdbState"

    .line 910
    .line 911
    return-object p0

    .line 912
    :pswitch_12e
    const-string p0, "removeLockScreen"

    .line 913
    .line 914
    return-object p0

    .line 915
    :pswitch_12f
    const-string p0, "dialEmergencyNumber"

    .line 916
    .line 917
    return-object p0

    .line 918
    :pswitch_130
    const-string p0, "checkEnterprisePermission"

    .line 919
    .line 920
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
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
    const/16 p0, 0x130

    .line 2
    .line 3
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManager"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKnoxPrivacyPolicyByUserSettings(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :pswitch_1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_2
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isKnoxPrivacyPolicyAcceptedInitially()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$removeRoleHolder$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addRoleHolder$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    .line 82
    .line 83
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :pswitch_6
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->migrateApplicationRestrictions()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setKeyedAppStatesReport$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    return p0

    .line 108
    :pswitch_8
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$getApplicationRestrictionsInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    return p0

    .line 113
    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setApplicationRestrictionsInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    return p0

    .line 118
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    .line 124
    .line 125
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :pswitch_b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getTcpDump()Landroid/os/ParcelFileDescriptor;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :pswitch_c
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stopTcpDump()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_d
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$startTcpDump$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    return p0

    .line 166
    :pswitch_e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBsohUnbiased()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :pswitch_f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBsoh()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    .line 196
    .line 197
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAsoc(I)I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :pswitch_11
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAsoc()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :pswitch_12
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 222
    .line 223
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Landroid/content/ComponentName;

    .line 228
    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    .line 231
    .line 232
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stayInDexForegroundMode(Landroid/content/ComponentName;)Z

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    .line 250
    .line 251
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stopProKioskMode(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :pswitch_14
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$startProKioskMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    return p0

    .line 268
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    .line 278
    .line 279
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :pswitch_16
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :pswitch_17
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 304
    .line 305
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 310
    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    .line 313
    .line 314
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShuttingDownAnimationSub(Landroid/os/ParcelFileDescriptor;)I

    .line 315
    .line 316
    .line 317
    move-result p0

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :pswitch_18
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setBootingAnimationSub$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 327
    .line 328
    .line 329
    move-result p0

    .line 330
    return p0

    .line 331
    :pswitch_19
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getForceSingleView()Z

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_0

    .line 342
    .line 343
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    .line 349
    .line 350
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForceSingleView(Z)I

    .line 351
    .line 352
    .line 353
    move-result p0

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :pswitch_1b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startSmartView()I

    .line 363
    .line 364
    .line 365
    move-result p0

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    .line 371
    .line 372
    goto/16 :goto_0

    .line 373
    .line 374
    :pswitch_1c
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearForcedDisplaySizeDensity()I

    .line 375
    .line 376
    .line 377
    move-result p0

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :pswitch_1d
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setForcedDisplaySizeDensity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 387
    .line 388
    .line 389
    move-result p0

    .line 390
    return p0

    .line 391
    :pswitch_1e
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$getHardKeyIntentBroadcast$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 392
    .line 393
    .line 394
    move-result p0

    .line 395
    return p0

    .line 396
    :pswitch_1f
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyIntentBroadcastInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 397
    .line 398
    .line 399
    move-result p0

    .line 400
    return p0

    .line 401
    :pswitch_20
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyIntentBroadcastExternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    return p0

    .line 406
    :pswitch_21
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyIntentBroadcast$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 407
    .line 408
    .line 409
    move-result p0

    .line 410
    return p0

    .line 411
    :pswitch_22
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$getHardKeyBlockState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 412
    .line 413
    .line 414
    move-result p0

    .line 415
    return p0

    .line 416
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 421
    .line 422
    .line 423
    move-result p4

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    .line 426
    .line 427
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyReportState(II)I

    .line 428
    .line 429
    .line 430
    move-result p0

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :pswitch_24
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyReportState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 440
    .line 441
    .line 442
    move-result p0

    .line 443
    return p0

    .line 444
    :pswitch_25
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setWallpaper$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 445
    .line 446
    .line 447
    move-result p0

    .line 448
    return p0

    .line 449
    :pswitch_26
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getShowIMEWithHardKeyboard()I

    .line 450
    .line 451
    .line 452
    move-result p0

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_0

    .line 460
    .line 461
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    .line 467
    .line 468
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShowIMEWithHardKeyboard(I)I

    .line 469
    .line 470
    .line 471
    move-result p0

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_0

    .line 479
    .line 480
    :pswitch_28
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProtectBatteryState()Z

    .line 481
    .line 482
    .line 483
    move-result p0

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_0

    .line 491
    .line 492
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    .line 498
    .line 499
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProtectBatteryState(Z)I

    .line 500
    .line 501
    .line 502
    move-result p0

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_0

    .line 510
    .line 511
    :pswitch_2a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    .line 512
    .line 513
    .line 514
    move-result p0

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    .line 520
    .line 521
    goto/16 :goto_0

    .line 522
    .line 523
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 524
    .line 525
    .line 526
    move-result p1

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    .line 529
    .line 530
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHDMIAutoEnterState(I)I

    .line 531
    .line 532
    .line 533
    move-result p0

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    .line 539
    .line 540
    goto/16 :goto_0

    .line 541
    .line 542
    :pswitch_2c
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    .line 543
    .line 544
    .line 545
    move-result p0

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_0

    .line 553
    .line 554
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    .line 560
    .line 561
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->allowDexAutoOpenLastApp(I)I

    .line 562
    .line 563
    .line 564
    move-result p0

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_0

    .line 572
    .line 573
    :pswitch_2e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHomeAlignment()I

    .line 574
    .line 575
    .line 576
    move-result p0

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    .line 579
    .line 580
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    .line 582
    .line 583
    goto/16 :goto_0

    .line 584
    .line 585
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 586
    .line 587
    .line 588
    move-result p1

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    .line 591
    .line 592
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHomeAlignment(I)I

    .line 593
    .line 594
    .line 595
    move-result p0

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_0

    .line 603
    .line 604
    :pswitch_30
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexScreenTimeout()I

    .line 605
    .line 606
    .line 607
    move-result p0

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_0

    .line 615
    .line 616
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 617
    .line 618
    .line 619
    move-result p1

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    .line 622
    .line 623
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexScreenTimeout(I)I

    .line 624
    .line 625
    .line 626
    move-result p0

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_0

    .line 634
    .line 635
    :pswitch_32
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearDexLoadingLogo()I

    .line 636
    .line 637
    .line 638
    move-result p0

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    .line 641
    .line 642
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_0

    .line 646
    .line 647
    :pswitch_33
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 648
    .line 649
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 654
    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    .line 657
    .line 658
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexLoadingLogo(Landroid/os/ParcelFileDescriptor;)I

    .line 659
    .line 660
    .line 661
    move-result p0

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_0

    .line 669
    .line 670
    :pswitch_34
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexForegroundModePackageList()Ljava/util/List;

    .line 671
    .line 672
    .line 673
    move-result-object p0

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    .line 676
    .line 677
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 678
    .line 679
    .line 680
    goto/16 :goto_0

    .line 681
    .line 682
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 683
    .line 684
    .line 685
    move-result p1

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 687
    .line 688
    .line 689
    move-result-object p4

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    .line 692
    .line 693
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexForegroundModePackageList(ILjava/util/List;)I

    .line 694
    .line 695
    .line 696
    move-result p0

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_0

    .line 704
    .line 705
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object p1

    .line 709
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 710
    .line 711
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object p4

    .line 715
    check-cast p4, Landroid/content/ComponentName;

    .line 716
    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    .line 719
    .line 720
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I

    .line 721
    .line 722
    .line 723
    move-result p0

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    .line 726
    .line 727
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    .line 729
    .line 730
    goto/16 :goto_0

    .line 731
    .line 732
    :pswitch_37
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addDexURLShortcutExtend$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 733
    .line 734
    .line 735
    move-result p0

    .line 736
    return p0

    .line 737
    :pswitch_38
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addDexURLShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 738
    .line 739
    .line 740
    move-result p0

    .line 741
    return p0

    .line 742
    :pswitch_39
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 743
    .line 744
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object p1

    .line 748
    check-cast p1, Landroid/content/ComponentName;

    .line 749
    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    .line 752
    .line 753
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexShortcut(Landroid/content/ComponentName;)I

    .line 754
    .line 755
    .line 756
    move-result p0

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    .line 759
    .line 760
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    .line 762
    .line 763
    goto/16 :goto_0

    .line 764
    .line 765
    :pswitch_3a
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addDexShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 766
    .line 767
    .line 768
    move-result p0

    .line 769
    return p0

    .line 770
    :pswitch_3b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeScreenMode()I

    .line 771
    .line 772
    .line 773
    move-result p0

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    .line 776
    .line 777
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    .line 779
    .line 780
    goto/16 :goto_0

    .line 781
    .line 782
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 783
    .line 784
    .line 785
    move-result p1

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    .line 788
    .line 789
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHomeScreenMode(I)I

    .line 790
    .line 791
    .line 792
    move-result p0

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    .line 795
    .line 796
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_0

    .line 800
    .line 801
    :pswitch_3d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentMode()I

    .line 802
    .line 803
    .line 804
    move-result p0

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    .line 807
    .line 808
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    .line 810
    .line 811
    goto/16 :goto_0

    .line 812
    .line 813
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 814
    .line 815
    .line 816
    move-result p1

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    .line 819
    .line 820
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentMode(I)I

    .line 821
    .line 822
    .line 823
    move-result p0

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    .line 829
    .line 830
    goto/16 :goto_0

    .line 831
    .line 832
    :pswitch_3f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getZeroPageState()I

    .line 833
    .line 834
    .line 835
    move-result p0

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    .line 838
    .line 839
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    .line 841
    .line 842
    goto/16 :goto_0

    .line 843
    .line 844
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 845
    .line 846
    .line 847
    move-result p1

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    .line 850
    .line 851
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setZeroPageState(I)I

    .line 852
    .line 853
    .line 854
    move-result p0

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    .line 860
    .line 861
    goto/16 :goto_0

    .line 862
    .line 863
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 864
    .line 865
    .line 866
    move-result p1

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    .line 869
    .line 870
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getFavoriteApp(I)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object p0

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    .line 876
    .line 877
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    goto/16 :goto_0

    .line 881
    .line 882
    :pswitch_42
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getFavoriteAppsMaxCount()I

    .line 883
    .line 884
    .line 885
    move-result p0

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    .line 888
    .line 889
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    .line 891
    .line 892
    goto/16 :goto_0

    .line 893
    .line 894
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 895
    .line 896
    .line 897
    move-result p1

    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    .line 900
    .line 901
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeFavoriteApp(I)I

    .line 902
    .line 903
    .line 904
    move-result p0

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    .line 907
    .line 908
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    .line 910
    .line 911
    goto/16 :goto_0

    .line 912
    .line 913
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object p1

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 918
    .line 919
    .line 920
    move-result p4

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    .line 923
    .line 924
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setFavoriteApp(Ljava/lang/String;I)I

    .line 925
    .line 926
    .line 927
    move-result p0

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    .line 930
    .line 931
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    .line 933
    .line 934
    goto/16 :goto_0

    .line 935
    .line 936
    :pswitch_45
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppsButtonState()I

    .line 937
    .line 938
    .line 939
    move-result p0

    .line 940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    .line 942
    .line 943
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    .line 945
    .line 946
    goto/16 :goto_0

    .line 947
    .line 948
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 949
    .line 950
    .line 951
    move-result p1

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    .line 954
    .line 955
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppsButtonState(I)I

    .line 956
    .line 957
    .line 958
    move-result p0

    .line 959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    .line 961
    .line 962
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    .line 964
    .line 965
    goto/16 :goto_0

    .line 966
    .line 967
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 968
    .line 969
    .line 970
    move-result p1

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    .line 973
    .line 974
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->deleteHomeScreenPage(I)I

    .line 975
    .line 976
    .line 977
    move-result p0

    .line 978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    .line 980
    .line 981
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    .line 983
    .line 984
    goto/16 :goto_0

    .line 985
    .line 986
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object p1

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    .line 992
    .line 993
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeWidget(Ljava/lang/String;)I

    .line 994
    .line 995
    .line 996
    move-result p0

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_0

    .line 1004
    .line 1005
    :pswitch_49
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addWidget$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 1006
    .line 1007
    .line 1008
    move-result p0

    .line 1009
    return p0

    .line 1010
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object p1

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    .line 1016
    .line 1017
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeShortcut(Ljava/lang/String;)I

    .line 1018
    .line 1019
    .line 1020
    move-result p0

    .line 1021
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_0

    .line 1028
    .line 1029
    :pswitch_4b
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result p0

    .line 1033
    return p0

    .line 1034
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1035
    .line 1036
    .line 1037
    move-result p1

    .line 1038
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    .line 1040
    .line 1041
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBrightness(I)I

    .line 1042
    .line 1043
    .line 1044
    move-result p0

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    .line 1050
    .line 1051
    goto/16 :goto_0

    .line 1052
    .line 1053
    :pswitch_4d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getForceAutoShutDownState()I

    .line 1054
    .line 1055
    .line 1056
    move-result p0

    .line 1057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    .line 1062
    .line 1063
    goto/16 :goto_0

    .line 1064
    .line 1065
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1066
    .line 1067
    .line 1068
    move-result p1

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1070
    .line 1071
    .line 1072
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForceAutoShutDownState(I)I

    .line 1073
    .line 1074
    .line 1075
    move-result p0

    .line 1076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    .line 1081
    .line 1082
    goto/16 :goto_0

    .line 1083
    .line 1084
    :pswitch_4f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    .line 1085
    .line 1086
    .line 1087
    move-result p0

    .line 1088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    .line 1093
    .line 1094
    goto/16 :goto_0

    .line 1095
    .line 1096
    :pswitch_50
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    .line 1097
    .line 1098
    .line 1099
    move-result p0

    .line 1100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    .line 1105
    .line 1106
    goto/16 :goto_0

    .line 1107
    .line 1108
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1109
    .line 1110
    .line 1111
    move-result p1

    .line 1112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    .line 1114
    .line 1115
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbConnectionType(I)I

    .line 1116
    .line 1117
    .line 1118
    move-result p0

    .line 1119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    .line 1124
    .line 1125
    goto/16 :goto_0

    .line 1126
    .line 1127
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1128
    .line 1129
    .line 1130
    move-result p1

    .line 1131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1132
    .line 1133
    .line 1134
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenShortcut(I)Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object p0

    .line 1138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    goto/16 :goto_0

    .line 1145
    .line 1146
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1147
    .line 1148
    .line 1149
    move-result p1

    .line 1150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object p4

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    .line 1156
    .line 1157
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenShortcut(ILjava/lang/String;)I

    .line 1158
    .line 1159
    .line 1160
    move-result p0

    .line 1161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    .line 1166
    .line 1167
    goto/16 :goto_0

    .line 1168
    .line 1169
    :pswitch_54
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->powerOff()I

    .line 1170
    .line 1171
    .line 1172
    move-result p0

    .line 1173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    .line 1178
    .line 1179
    goto/16 :goto_0

    .line 1180
    .line 1181
    :pswitch_55
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMacAddress()Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object p0

    .line 1185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    goto/16 :goto_0

    .line 1192
    .line 1193
    :pswitch_56
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    .line 1194
    .line 1195
    .line 1196
    move-result p0

    .line 1197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    .line 1202
    .line 1203
    goto/16 :goto_0

    .line 1204
    .line 1205
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1206
    .line 1207
    .line 1208
    move-result p1

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    .line 1211
    .line 1212
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAutoCallPickupState(I)I

    .line 1213
    .line 1214
    .line 1215
    move-result p0

    .line 1216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    .line 1221
    .line 1222
    goto/16 :goto_0

    .line 1223
    .line 1224
    :pswitch_58
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    .line 1225
    .line 1226
    .line 1227
    move-result-object p0

    .line 1228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1232
    .line 1233
    .line 1234
    goto/16 :goto_0

    .line 1235
    .line 1236
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object p1

    .line 1240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1241
    .line 1242
    .line 1243
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    .line 1244
    .line 1245
    .line 1246
    move-result p0

    .line 1247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    .line 1252
    .line 1253
    goto/16 :goto_0

    .line 1254
    .line 1255
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object p1

    .line 1259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1260
    .line 1261
    .line 1262
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    .line 1263
    .line 1264
    .line 1265
    move-result p0

    .line 1266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    .line 1271
    .line 1272
    goto/16 :goto_0

    .line 1273
    .line 1274
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object p1

    .line 1278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    .line 1280
    .line 1281
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeAutoCallNumber(Ljava/lang/String;)I

    .line 1282
    .line 1283
    .line 1284
    move-result p0

    .line 1285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    .line 1290
    .line 1291
    goto/16 :goto_0

    .line 1292
    .line 1293
    :pswitch_5c
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addAutoCallNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result p0

    .line 1297
    return p0

    .line 1298
    :pswitch_5d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiState()Z

    .line 1299
    .line 1300
    .line 1301
    move-result p0

    .line 1302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1306
    .line 1307
    .line 1308
    goto/16 :goto_0

    .line 1309
    .line 1310
    :pswitch_5e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiHotspotEnabledState()I

    .line 1311
    .line 1312
    .line 1313
    move-result p0

    .line 1314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    .line 1319
    .line 1320
    goto/16 :goto_0

    .line 1321
    .line 1322
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1323
    .line 1324
    .line 1325
    move-result p1

    .line 1326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    .line 1328
    .line 1329
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiHotspotEnabledState(I)I

    .line 1330
    .line 1331
    .line 1332
    move-result p0

    .line 1333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    .line 1338
    .line 1339
    goto/16 :goto_0

    .line 1340
    .line 1341
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1342
    .line 1343
    .line 1344
    move-result p1

    .line 1345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1346
    .line 1347
    .line 1348
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVibrationIntensity(I)I

    .line 1349
    .line 1350
    .line 1351
    move-result p0

    .line 1352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    .line 1357
    .line 1358
    goto/16 :goto_0

    .line 1359
    .line 1360
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1361
    .line 1362
    .line 1363
    move-result p1

    .line 1364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1365
    .line 1366
    .line 1367
    move-result p4

    .line 1368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1369
    .line 1370
    .line 1371
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVibrationIntensity(II)I

    .line 1372
    .line 1373
    .line 1374
    move-result p0

    .line 1375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    .line 1380
    .line 1381
    goto/16 :goto_0

    .line 1382
    .line 1383
    :pswitch_62
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSystemSoundsEnabledState()I

    .line 1384
    .line 1385
    .line 1386
    move-result p0

    .line 1387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    .line 1392
    .line 1393
    goto/16 :goto_0

    .line 1394
    .line 1395
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1396
    .line 1397
    .line 1398
    move-result p1

    .line 1399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1400
    .line 1401
    .line 1402
    move-result p4

    .line 1403
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    .line 1405
    .line 1406
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemSoundsEnabledState(II)I

    .line 1407
    .line 1408
    .line 1409
    move-result p0

    .line 1410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    .line 1415
    .line 1416
    goto/16 :goto_0

    .line 1417
    .line 1418
    :pswitch_64
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelItems()Ljava/lang/String;

    .line 1419
    .line 1420
    .line 1421
    move-result-object p0

    .line 1422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1426
    .line 1427
    .line 1428
    goto/16 :goto_0

    .line 1429
    .line 1430
    :pswitch_65
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1431
    .line 1432
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object p1

    .line 1436
    check-cast p1, Landroid/os/Bundle;

    .line 1437
    .line 1438
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1439
    .line 1440
    .line 1441
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelItemsInternal(Landroid/os/Bundle;)I

    .line 1442
    .line 1443
    .line 1444
    move-result p0

    .line 1445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1449
    .line 1450
    .line 1451
    goto/16 :goto_0

    .line 1452
    .line 1453
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object p1

    .line 1457
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1458
    .line 1459
    .line 1460
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelItems(Ljava/lang/String;)I

    .line 1461
    .line 1462
    .line 1463
    move-result p0

    .line 1464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    .line 1469
    .line 1470
    goto/16 :goto_0

    .line 1471
    .line 1472
    :pswitch_67
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelEditMode()I

    .line 1473
    .line 1474
    .line 1475
    move-result p0

    .line 1476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1480
    .line 1481
    .line 1482
    goto/16 :goto_0

    .line 1483
    .line 1484
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1485
    .line 1486
    .line 1487
    move-result p1

    .line 1488
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1489
    .line 1490
    .line 1491
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelEditMode(I)I

    .line 1492
    .line 1493
    .line 1494
    move-result p0

    .line 1495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1499
    .line 1500
    .line 1501
    goto/16 :goto_0

    .line 1502
    .line 1503
    :pswitch_69
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelButtons()I

    .line 1504
    .line 1505
    .line 1506
    move-result p0

    .line 1507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1511
    .line 1512
    .line 1513
    goto/16 :goto_0

    .line 1514
    .line 1515
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1516
    .line 1517
    .line 1518
    move-result p1

    .line 1519
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1520
    .line 1521
    .line 1522
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelButtons(I)I

    .line 1523
    .line 1524
    .line 1525
    move-result p0

    .line 1526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1530
    .line 1531
    .line 1532
    goto/16 :goto_0

    .line 1533
    .line 1534
    :pswitch_6b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMobileNetworkType()I

    .line 1535
    .line 1536
    .line 1537
    move-result p0

    .line 1538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    .line 1543
    .line 1544
    goto/16 :goto_0

    .line 1545
    .line 1546
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1547
    .line 1548
    .line 1549
    move-result p1

    .line 1550
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1551
    .line 1552
    .line 1553
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileNetworkType(I)I

    .line 1554
    .line 1555
    .line 1556
    move-result p0

    .line 1557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1561
    .line 1562
    .line 1563
    goto/16 :goto_0

    .line 1564
    .line 1565
    :pswitch_6d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isSupportedForceAutoStartUpState()Z

    .line 1566
    .line 1567
    .line 1568
    move-result p0

    .line 1569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1573
    .line 1574
    .line 1575
    goto/16 :goto_0

    .line 1576
    .line 1577
    :pswitch_6e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getForceAutoStartUpState()I

    .line 1578
    .line 1579
    .line 1580
    move-result p0

    .line 1581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    .line 1583
    .line 1584
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1585
    .line 1586
    .line 1587
    goto/16 :goto_0

    .line 1588
    .line 1589
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1590
    .line 1591
    .line 1592
    move-result p1

    .line 1593
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1594
    .line 1595
    .line 1596
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForceAutoStartUpState(I)I

    .line 1597
    .line 1598
    .line 1599
    move-result p0

    .line 1600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    .line 1605
    .line 1606
    goto/16 :goto_0

    .line 1607
    .line 1608
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1609
    .line 1610
    .line 1611
    move-result p1

    .line 1612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1613
    .line 1614
    .line 1615
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setFlightModeState(I)I

    .line 1616
    .line 1617
    .line 1618
    move-result p0

    .line 1619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    .line 1621
    .line 1622
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    .line 1624
    .line 1625
    goto/16 :goto_0

    .line 1626
    .line 1627
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1628
    .line 1629
    .line 1630
    move-result p1

    .line 1631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1632
    .line 1633
    .line 1634
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearAnimation(I)I

    .line 1635
    .line 1636
    .line 1637
    move-result p0

    .line 1638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    .line 1643
    .line 1644
    goto/16 :goto_0

    .line 1645
    .line 1646
    :pswitch_72
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1647
    .line 1648
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    move-result-object p1

    .line 1652
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 1653
    .line 1654
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1655
    .line 1656
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1657
    .line 1658
    .line 1659
    move-result-object p4

    .line 1660
    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 1661
    .line 1662
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1663
    .line 1664
    .line 1665
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I

    .line 1666
    .line 1667
    .line 1668
    move-result p0

    .line 1669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    .line 1674
    .line 1675
    goto/16 :goto_0

    .line 1676
    .line 1677
    :pswitch_73
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setBootingAnimation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 1678
    .line 1679
    .line 1680
    move-result p0

    .line 1681
    return p0

    .line 1682
    :pswitch_74
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAccessibilitySettingsItems()I

    .line 1683
    .line 1684
    .line 1685
    move-result p0

    .line 1686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    .line 1688
    .line 1689
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    .line 1691
    .line 1692
    goto/16 :goto_0

    .line 1693
    .line 1694
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1695
    .line 1696
    .line 1697
    move-result p1

    .line 1698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1699
    .line 1700
    .line 1701
    move-result p4

    .line 1702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1703
    .line 1704
    .line 1705
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAccessibilitySettingsItems(II)I

    .line 1706
    .line 1707
    .line 1708
    move-result p0

    .line 1709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    .line 1714
    .line 1715
    goto/16 :goto_0

    .line 1716
    .line 1717
    :pswitch_76
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiFrequencyBand()I

    .line 1718
    .line 1719
    .line 1720
    move-result p0

    .line 1721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    .line 1723
    .line 1724
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    .line 1726
    .line 1727
    goto/16 :goto_0

    .line 1728
    .line 1729
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1730
    .line 1731
    .line 1732
    move-result p1

    .line 1733
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1734
    .line 1735
    .line 1736
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiFrequencyBand(I)I

    .line 1737
    .line 1738
    .line 1739
    move-result p0

    .line 1740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    .line 1745
    .line 1746
    goto/16 :goto_0

    .line 1747
    .line 1748
    :pswitch_78
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetStateInternal()Z

    .line 1749
    .line 1750
    .line 1751
    move-result p0

    .line 1752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1756
    .line 1757
    .line 1758
    goto/16 :goto_0

    .line 1759
    .line 1760
    :pswitch_79
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetState()Z

    .line 1761
    .line 1762
    .line 1763
    move-result p0

    .line 1764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    .line 1766
    .line 1767
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1768
    .line 1769
    .line 1770
    goto/16 :goto_0

    .line 1771
    .line 1772
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1773
    .line 1774
    .line 1775
    move-result p1

    .line 1776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1777
    .line 1778
    .line 1779
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetState(Z)I

    .line 1780
    .line 1781
    .line 1782
    move-result p0

    .line 1783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    .line 1785
    .line 1786
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    .line 1788
    .line 1789
    goto/16 :goto_0

    .line 1790
    .line 1791
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1792
    .line 1793
    .line 1794
    move-result p1

    .line 1795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1796
    .line 1797
    .line 1798
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    .line 1799
    .line 1800
    .line 1801
    move-result-object p0

    .line 1802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1803
    .line 1804
    .line 1805
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1806
    .line 1807
    .line 1808
    goto/16 :goto_0

    .line 1809
    .line 1810
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1811
    .line 1812
    .line 1813
    move-result-object p1

    .line 1814
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1815
    .line 1816
    .line 1817
    move-result-object p4

    .line 1818
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1819
    .line 1820
    .line 1821
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    .line 1823
    .line 1824
    move-result p0

    .line 1825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    .line 1830
    .line 1831
    goto/16 :goto_0

    .line 1832
    .line 1833
    :pswitch_7d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    .line 1834
    .line 1835
    .line 1836
    move-result p0

    .line 1837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    .line 1839
    .line 1840
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1841
    .line 1842
    .line 1843
    goto/16 :goto_0

    .line 1844
    .line 1845
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1846
    .line 1847
    .line 1848
    move-result p1

    .line 1849
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1850
    .line 1851
    .line 1852
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbMassStorageState(Z)I

    .line 1853
    .line 1854
    .line 1855
    move-result p0

    .line 1856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1860
    .line 1861
    .line 1862
    goto/16 :goto_0

    .line 1863
    .line 1864
    :pswitch_7f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUnlockSimPin()Ljava/lang/String;

    .line 1865
    .line 1866
    .line 1867
    move-result-object p0

    .line 1868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1869
    .line 1870
    .line 1871
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1872
    .line 1873
    .line 1874
    goto/16 :goto_0

    .line 1875
    .line 1876
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1877
    .line 1878
    .line 1879
    move-result-object p1

    .line 1880
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1881
    .line 1882
    .line 1883
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUnlockSimPin(Ljava/lang/String;)I

    .line 1884
    .line 1885
    .line 1886
    move-result p0

    .line 1887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    .line 1889
    .line 1890
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1891
    .line 1892
    .line 1893
    goto/16 :goto_0

    .line 1894
    .line 1895
    :pswitch_81
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUnlockSimOnBootState()Z

    .line 1896
    .line 1897
    .line 1898
    move-result p0

    .line 1899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1900
    .line 1901
    .line 1902
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1903
    .line 1904
    .line 1905
    goto/16 :goto_0

    .line 1906
    .line 1907
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1908
    .line 1909
    .line 1910
    move-result p1

    .line 1911
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1912
    .line 1913
    .line 1914
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUnlockSimOnBootState(Z)I

    .line 1915
    .line 1916
    .line 1917
    move-result p0

    .line 1918
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1919
    .line 1920
    .line 1921
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1922
    .line 1923
    .line 1924
    goto/16 :goto_0

    .line 1925
    .line 1926
    :pswitch_83
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextScrollWidth()I

    .line 1927
    .line 1928
    .line 1929
    move-result p0

    .line 1930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1931
    .line 1932
    .line 1933
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    .line 1935
    .line 1936
    goto/16 :goto_0

    .line 1937
    .line 1938
    :pswitch_84
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setStatusBarTextScrollWidth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 1939
    .line 1940
    .line 1941
    move-result p0

    .line 1942
    return p0

    .line 1943
    :pswitch_85
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarNotificationsState()Z

    .line 1944
    .line 1945
    .line 1946
    move-result p0

    .line 1947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1948
    .line 1949
    .line 1950
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1951
    .line 1952
    .line 1953
    goto/16 :goto_0

    .line 1954
    .line 1955
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1956
    .line 1957
    .line 1958
    move-result p1

    .line 1959
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1960
    .line 1961
    .line 1962
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarNotificationsState(Z)I

    .line 1963
    .line 1964
    .line 1965
    move-result p0

    .line 1966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    .line 1968
    .line 1969
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1970
    .line 1971
    .line 1972
    goto/16 :goto_0

    .line 1973
    .line 1974
    :pswitch_87
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I

    .line 1975
    .line 1976
    .line 1977
    move-result p0

    .line 1978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    .line 1980
    .line 1981
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1982
    .line 1983
    .line 1984
    goto/16 :goto_0

    .line 1985
    .line 1986
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1987
    .line 1988
    .line 1989
    move-result p1

    .line 1990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1991
    .line 1992
    .line 1993
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarMode(I)I

    .line 1994
    .line 1995
    .line 1996
    move-result p0

    .line 1997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1998
    .line 1999
    .line 2000
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    .line 2002
    .line 2003
    goto/16 :goto_0

    .line 2004
    .line 2005
    :pswitch_89
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z

    .line 2006
    .line 2007
    .line 2008
    move-result p0

    .line 2009
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2010
    .line 2011
    .line 2012
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2013
    .line 2014
    .line 2015
    goto/16 :goto_0

    .line 2016
    .line 2017
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2018
    .line 2019
    .line 2020
    move-result p1

    .line 2021
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2022
    .line 2023
    .line 2024
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarIconsState(Z)I

    .line 2025
    .line 2026
    .line 2027
    move-result p0

    .line 2028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2029
    .line 2030
    .line 2031
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2032
    .line 2033
    .line 2034
    goto/16 :goto_0

    .line 2035
    .line 2036
    :pswitch_8b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z

    .line 2037
    .line 2038
    .line 2039
    move-result p0

    .line 2040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2041
    .line 2042
    .line 2043
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2044
    .line 2045
    .line 2046
    goto/16 :goto_0

    .line 2047
    .line 2048
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2049
    .line 2050
    .line 2051
    move-result p1

    .line 2052
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2053
    .line 2054
    .line 2055
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarClockState(Z)I

    .line 2056
    .line 2057
    .line 2058
    move-result p0

    .line 2059
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2060
    .line 2061
    .line 2062
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2063
    .line 2064
    .line 2065
    goto/16 :goto_0

    .line 2066
    .line 2067
    :pswitch_8d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    .line 2068
    .line 2069
    .line 2070
    move-result p0

    .line 2071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2072
    .line 2073
    .line 2074
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    .line 2076
    .line 2077
    goto/16 :goto_0

    .line 2078
    .line 2079
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2080
    .line 2081
    .line 2082
    move-result p1

    .line 2083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2084
    .line 2085
    .line 2086
    move-result p4

    .line 2087
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2088
    .line 2089
    .line 2090
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSettingsEnabledItems(ZI)I

    .line 2091
    .line 2092
    .line 2093
    move-result p0

    .line 2094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    .line 2096
    .line 2097
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    .line 2099
    .line 2100
    goto/16 :goto_0

    .line 2101
    .line 2102
    :pswitch_8f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    .line 2103
    .line 2104
    .line 2105
    move-result p0

    .line 2106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2107
    .line 2108
    .line 2109
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2110
    .line 2111
    .line 2112
    goto/16 :goto_0

    .line 2113
    .line 2114
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2115
    .line 2116
    .line 2117
    move-result p1

    .line 2118
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2119
    .line 2120
    .line 2121
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItemsState(Z)I

    .line 2122
    .line 2123
    .line 2124
    move-result p0

    .line 2125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2126
    .line 2127
    .line 2128
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    .line 2130
    .line 2131
    goto/16 :goto_0

    .line 2132
    .line 2133
    :pswitch_91
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    .line 2134
    .line 2135
    .line 2136
    move-result-object p0

    .line 2137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2138
    .line 2139
    .line 2140
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2141
    .line 2142
    .line 2143
    goto/16 :goto_0

    .line 2144
    .line 2145
    :pswitch_92
    sget-object p1, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2146
    .line 2147
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 2148
    .line 2149
    .line 2150
    move-result-object p1

    .line 2151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2152
    .line 2153
    .line 2154
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItems(Ljava/util/List;)I

    .line 2155
    .line 2156
    .line 2157
    move-result p0

    .line 2158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2159
    .line 2160
    .line 2161
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2162
    .line 2163
    .line 2164
    goto/16 :goto_0

    .line 2165
    .line 2166
    :pswitch_93
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenOverrideMode()I

    .line 2167
    .line 2168
    .line 2169
    move-result p0

    .line 2170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2171
    .line 2172
    .line 2173
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    .line 2175
    .line 2176
    goto/16 :goto_0

    .line 2177
    .line 2178
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2179
    .line 2180
    .line 2181
    move-result p1

    .line 2182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2183
    .line 2184
    .line 2185
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenOverrideMode(I)I

    .line 2186
    .line 2187
    .line 2188
    move-result p0

    .line 2189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2190
    .line 2191
    .line 2192
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2193
    .line 2194
    .line 2195
    goto/16 :goto_0

    .line 2196
    .line 2197
    :pswitch_95
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLcdBacklightState()Z

    .line 2198
    .line 2199
    .line 2200
    move-result p0

    .line 2201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2205
    .line 2206
    .line 2207
    goto/16 :goto_0

    .line 2208
    .line 2209
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2210
    .line 2211
    .line 2212
    move-result p1

    .line 2213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2214
    .line 2215
    .line 2216
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLcdBacklightState(Z)I

    .line 2217
    .line 2218
    .line 2219
    move-result p0

    .line 2220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2221
    .line 2222
    .line 2223
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2224
    .line 2225
    .line 2226
    goto/16 :goto_0

    .line 2227
    .line 2228
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2229
    .line 2230
    .line 2231
    move-result p1

    .line 2232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2233
    .line 2234
    .line 2235
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getKeyboardModeOverriden(I)Z

    .line 2236
    .line 2237
    .line 2238
    move-result p0

    .line 2239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2240
    .line 2241
    .line 2242
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2243
    .line 2244
    .line 2245
    goto/16 :goto_0

    .line 2246
    .line 2247
    :pswitch_98
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getKeyboardMode()I

    .line 2248
    .line 2249
    .line 2250
    move-result p0

    .line 2251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2252
    .line 2253
    .line 2254
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2255
    .line 2256
    .line 2257
    goto/16 :goto_0

    .line 2258
    .line 2259
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2260
    .line 2261
    .line 2262
    move-result p1

    .line 2263
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2264
    .line 2265
    .line 2266
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKeyboardMode(I)I

    .line 2267
    .line 2268
    .line 2269
    move-result p0

    .line 2270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2271
    .line 2272
    .line 2273
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2274
    .line 2275
    .line 2276
    goto/16 :goto_0

    .line 2277
    .line 2278
    :pswitch_9a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDisplayMirroringState()Z

    .line 2279
    .line 2280
    .line 2281
    move-result p0

    .line 2282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2283
    .line 2284
    .line 2285
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2286
    .line 2287
    .line 2288
    goto/16 :goto_0

    .line 2289
    .line 2290
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2291
    .line 2292
    .line 2293
    move-result p1

    .line 2294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2295
    .line 2296
    .line 2297
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDisplayMirroringState(Z)I

    .line 2298
    .line 2299
    .line 2300
    move-result p0

    .line 2301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2302
    .line 2303
    .line 2304
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2305
    .line 2306
    .line 2307
    goto/16 :goto_0

    .line 2308
    .line 2309
    :pswitch_9c
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDeviceSpeakerEnabledState()Z

    .line 2310
    .line 2311
    .line 2312
    move-result p0

    .line 2313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2314
    .line 2315
    .line 2316
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2317
    .line 2318
    .line 2319
    goto/16 :goto_0

    .line 2320
    .line 2321
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2322
    .line 2323
    .line 2324
    move-result p1

    .line 2325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2326
    .line 2327
    .line 2328
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDeviceSpeakerEnabledState(Z)I

    .line 2329
    .line 2330
    .line 2331
    move-result p0

    .line 2332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2333
    .line 2334
    .line 2335
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2336
    .line 2337
    .line 2338
    goto/16 :goto_0

    .line 2339
    .line 2340
    :pswitch_9e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getChargerConnectionSoundEnabledState()Z

    .line 2341
    .line 2342
    .line 2343
    move-result p0

    .line 2344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2345
    .line 2346
    .line 2347
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2348
    .line 2349
    .line 2350
    goto/16 :goto_0

    .line 2351
    .line 2352
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2353
    .line 2354
    .line 2355
    move-result p1

    .line 2356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2357
    .line 2358
    .line 2359
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setChargerConnectionSoundEnabledState(Z)I

    .line 2360
    .line 2361
    .line 2362
    move-result p0

    .line 2363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2364
    .line 2365
    .line 2366
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2367
    .line 2368
    .line 2369
    goto/16 :goto_0

    .line 2370
    .line 2371
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2372
    .line 2373
    .line 2374
    move-result-object p1

    .line 2375
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2376
    .line 2377
    .line 2378
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBrowserHomepage(Ljava/lang/String;)I

    .line 2379
    .line 2380
    .line 2381
    move-result p0

    .line 2382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2383
    .line 2384
    .line 2385
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2386
    .line 2387
    .line 2388
    goto/16 :goto_0

    .line 2389
    .line 2390
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2391
    .line 2392
    .line 2393
    move-result p1

    .line 2394
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2395
    .line 2396
    .line 2397
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    .line 2398
    .line 2399
    .line 2400
    move-result p0

    .line 2401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2402
    .line 2403
    .line 2404
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2405
    .line 2406
    .line 2407
    goto/16 :goto_0

    .line 2408
    .line 2409
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2410
    .line 2411
    .line 2412
    move-result p1

    .line 2413
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2414
    .line 2415
    .line 2416
    move-result p4

    .line 2417
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2418
    .line 2419
    .line 2420
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAirGestureOptionState(IZ)I

    .line 2421
    .line 2422
    .line 2423
    move-result p0

    .line 2424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2425
    .line 2426
    .line 2427
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2428
    .line 2429
    .line 2430
    goto/16 :goto_0

    .line 2431
    .line 2432
    :pswitch_a3
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSerialNumber()Ljava/lang/String;

    .line 2433
    .line 2434
    .line 2435
    move-result-object p0

    .line 2436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2437
    .line 2438
    .line 2439
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2440
    .line 2441
    .line 2442
    goto/16 :goto_0

    .line 2443
    .line 2444
    :pswitch_a4
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    .line 2445
    .line 2446
    .line 2447
    move-result-object p0

    .line 2448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2449
    .line 2450
    .line 2451
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2452
    .line 2453
    .line 2454
    goto/16 :goto_0

    .line 2455
    .line 2456
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2457
    .line 2458
    .line 2459
    move-result-object p1

    .line 2460
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2461
    .line 2462
    .line 2463
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removePackagesFromUltraPowerSaving(Ljava/util/List;)I

    .line 2464
    .line 2465
    .line 2466
    move-result p0

    .line 2467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2468
    .line 2469
    .line 2470
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2471
    .line 2472
    .line 2473
    goto/16 :goto_0

    .line 2474
    .line 2475
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2476
    .line 2477
    .line 2478
    move-result-object p1

    .line 2479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2480
    .line 2481
    .line 2482
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addPackagesToUltraPowerSaving(Ljava/util/List;)I

    .line 2483
    .line 2484
    .line 2485
    move-result p0

    .line 2486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2487
    .line 2488
    .line 2489
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2490
    .line 2491
    .line 2492
    goto/16 :goto_0

    .line 2493
    .line 2494
    :pswitch_a7
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    .line 2495
    .line 2496
    .line 2497
    move-result p0

    .line 2498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2499
    .line 2500
    .line 2501
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2502
    .line 2503
    .line 2504
    goto/16 :goto_0

    .line 2505
    .line 2506
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2507
    .line 2508
    .line 2509
    move-result p1

    .line 2510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2511
    .line 2512
    .line 2513
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumePanelEnabledState(Z)I

    .line 2514
    .line 2515
    .line 2516
    move-result p0

    .line 2517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2518
    .line 2519
    .line 2520
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2521
    .line 2522
    .line 2523
    goto/16 :goto_0

    .line 2524
    .line 2525
    :pswitch_a9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    .line 2526
    .line 2527
    .line 2528
    move-result p0

    .line 2529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    .line 2531
    .line 2532
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2533
    .line 2534
    .line 2535
    goto/16 :goto_0

    .line 2536
    .line 2537
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2538
    .line 2539
    .line 2540
    move-result p1

    .line 2541
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2542
    .line 2543
    .line 2544
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeKeyAppState(Z)I

    .line 2545
    .line 2546
    .line 2547
    move-result p0

    .line 2548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2549
    .line 2550
    .line 2551
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2552
    .line 2553
    .line 2554
    goto/16 :goto_0

    .line 2555
    .line 2556
    :pswitch_ab
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    .line 2557
    .line 2558
    .line 2559
    move-result-object p0

    .line 2560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2561
    .line 2562
    .line 2563
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2564
    .line 2565
    .line 2566
    goto/16 :goto_0

    .line 2567
    .line 2568
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 2569
    .line 2570
    .line 2571
    move-result-object p1

    .line 2572
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2573
    .line 2574
    .line 2575
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeKeyAppsList(Ljava/util/List;)I

    .line 2576
    .line 2577
    .line 2578
    move-result p0

    .line 2579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2580
    .line 2581
    .line 2582
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2583
    .line 2584
    .line 2585
    goto/16 :goto_0

    .line 2586
    .line 2587
    :pswitch_ad
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    .line 2588
    .line 2589
    .line 2590
    move-result p0

    .line 2591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    .line 2593
    .line 2594
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2595
    .line 2596
    .line 2597
    goto/16 :goto_0

    .line 2598
    .line 2599
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2600
    .line 2601
    .line 2602
    move-result p1

    .line 2603
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2604
    .line 2605
    .line 2606
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeControlStream(I)I

    .line 2607
    .line 2608
    .line 2609
    move-result p0

    .line 2610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2611
    .line 2612
    .line 2613
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    .line 2615
    .line 2616
    goto/16 :goto_0

    .line 2617
    .line 2618
    :pswitch_af
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    .line 2619
    .line 2620
    .line 2621
    move-result p0

    .line 2622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2623
    .line 2624
    .line 2625
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2626
    .line 2627
    .line 2628
    goto/16 :goto_0

    .line 2629
    .line 2630
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2631
    .line 2632
    .line 2633
    move-result p1

    .line 2634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2635
    .line 2636
    .line 2637
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeButtonRotationState(Z)I

    .line 2638
    .line 2639
    .line 2640
    move-result p0

    .line 2641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2642
    .line 2643
    .line 2644
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2645
    .line 2646
    .line 2647
    goto/16 :goto_0

    .line 2648
    .line 2649
    :pswitch_b1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getTorchOnVolumeButtonsState()Z

    .line 2650
    .line 2651
    .line 2652
    move-result p0

    .line 2653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2654
    .line 2655
    .line 2656
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2657
    .line 2658
    .line 2659
    goto/16 :goto_0

    .line 2660
    .line 2661
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2662
    .line 2663
    .line 2664
    move-result p1

    .line 2665
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2666
    .line 2667
    .line 2668
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setTorchOnVolumeButtonsState(Z)I

    .line 2669
    .line 2670
    .line 2671
    move-result p0

    .line 2672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2673
    .line 2674
    .line 2675
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2676
    .line 2677
    .line 2678
    goto/16 :goto_0

    .line 2679
    .line 2680
    :pswitch_b3
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    .line 2681
    .line 2682
    .line 2683
    move-result p0

    .line 2684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2685
    .line 2686
    .line 2687
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2688
    .line 2689
    .line 2690
    goto/16 :goto_0

    .line 2691
    .line 2692
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2693
    .line 2694
    .line 2695
    move-result p1

    .line 2696
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2697
    .line 2698
    .line 2699
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastShowPackageNameState(Z)I

    .line 2700
    .line 2701
    .line 2702
    move-result p0

    .line 2703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2704
    .line 2705
    .line 2706
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2707
    .line 2708
    .line 2709
    goto/16 :goto_0

    .line 2710
    .line 2711
    :pswitch_b5
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    .line 2712
    .line 2713
    .line 2714
    move-result p0

    .line 2715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2716
    .line 2717
    .line 2718
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2719
    .line 2720
    .line 2721
    goto/16 :goto_0

    .line 2722
    .line 2723
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2724
    .line 2725
    .line 2726
    move-result p1

    .line 2727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2728
    .line 2729
    .line 2730
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastGravityEnabledState(Z)I

    .line 2731
    .line 2732
    .line 2733
    move-result p0

    .line 2734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2735
    .line 2736
    .line 2737
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    .line 2739
    .line 2740
    goto/16 :goto_0

    .line 2741
    .line 2742
    :pswitch_b7
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    .line 2743
    .line 2744
    .line 2745
    move-result p0

    .line 2746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2747
    .line 2748
    .line 2749
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2750
    .line 2751
    .line 2752
    goto/16 :goto_0

    .line 2753
    .line 2754
    :pswitch_b8
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    .line 2755
    .line 2756
    .line 2757
    move-result p0

    .line 2758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2759
    .line 2760
    .line 2761
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2762
    .line 2763
    .line 2764
    goto/16 :goto_0

    .line 2765
    .line 2766
    :pswitch_b9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    .line 2767
    .line 2768
    .line 2769
    move-result p0

    .line 2770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2771
    .line 2772
    .line 2773
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2774
    .line 2775
    .line 2776
    goto/16 :goto_0

    .line 2777
    .line 2778
    :pswitch_ba
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setToastGravity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 2779
    .line 2780
    .line 2781
    move-result p0

    .line 2782
    return p0

    .line 2783
    :pswitch_bb
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    .line 2784
    .line 2785
    .line 2786
    move-result p0

    .line 2787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2788
    .line 2789
    .line 2790
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2791
    .line 2792
    .line 2793
    goto/16 :goto_0

    .line 2794
    .line 2795
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2796
    .line 2797
    .line 2798
    move-result p1

    .line 2799
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2800
    .line 2801
    .line 2802
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastEnabledState(Z)I

    .line 2803
    .line 2804
    .line 2805
    move-result p0

    .line 2806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2807
    .line 2808
    .line 2809
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2810
    .line 2811
    .line 2812
    goto/16 :goto_0

    .line 2813
    .line 2814
    :pswitch_bd
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    .line 2815
    .line 2816
    .line 2817
    move-result p0

    .line 2818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2819
    .line 2820
    .line 2821
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2822
    .line 2823
    .line 2824
    goto/16 :goto_0

    .line 2825
    .line 2826
    :pswitch_be
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    .line 2827
    .line 2828
    .line 2829
    move-result p0

    .line 2830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2831
    .line 2832
    .line 2833
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2834
    .line 2835
    .line 2836
    goto/16 :goto_0

    .line 2837
    .line 2838
    :pswitch_bf
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    .line 2839
    .line 2840
    .line 2841
    move-result-object p0

    .line 2842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2843
    .line 2844
    .line 2845
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2846
    .line 2847
    .line 2848
    goto/16 :goto_0

    .line 2849
    .line 2850
    :pswitch_c0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setStatusBarText$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 2851
    .line 2852
    .line 2853
    move-result p0

    .line 2854
    return p0

    .line 2855
    :pswitch_c1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    .line 2856
    .line 2857
    .line 2858
    move-result p0

    .line 2859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2860
    .line 2861
    .line 2862
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2863
    .line 2864
    .line 2865
    goto/16 :goto_0

    .line 2866
    .line 2867
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2868
    .line 2869
    .line 2870
    move-result p1

    .line 2871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2872
    .line 2873
    .line 2874
    move-result p4

    .line 2875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2876
    .line 2877
    .line 2878
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSensorDisabled(ZI)I

    .line 2879
    .line 2880
    .line 2881
    move-result p0

    .line 2882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2883
    .line 2884
    .line 2885
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2886
    .line 2887
    .line 2888
    goto/16 :goto_0

    .line 2889
    .line 2890
    :pswitch_c3
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    .line 2891
    .line 2892
    .line 2893
    move-result p0

    .line 2894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2895
    .line 2896
    .line 2897
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2898
    .line 2899
    .line 2900
    goto/16 :goto_0

    .line 2901
    .line 2902
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2903
    .line 2904
    .line 2905
    move-result p1

    .line 2906
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2907
    .line 2908
    .line 2909
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenWakeupOnPowerState(Z)I

    .line 2910
    .line 2911
    .line 2912
    move-result p0

    .line 2913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2914
    .line 2915
    .line 2916
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2917
    .line 2918
    .line 2919
    goto/16 :goto_0

    .line 2920
    .line 2921
    :pswitch_c5
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    .line 2922
    .line 2923
    .line 2924
    move-result p0

    .line 2925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2926
    .line 2927
    .line 2928
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2929
    .line 2930
    .line 2931
    goto/16 :goto_0

    .line 2932
    .line 2933
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2934
    .line 2935
    .line 2936
    move-result p1

    .line 2937
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2938
    .line 2939
    .line 2940
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenOffOnStatusBarDoubleTapState(Z)I

    .line 2941
    .line 2942
    .line 2943
    move-result p0

    .line 2944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2945
    .line 2946
    .line 2947
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2948
    .line 2949
    .line 2950
    goto/16 :goto_0

    .line 2951
    .line 2952
    :pswitch_c7
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    .line 2953
    .line 2954
    .line 2955
    move-result p0

    .line 2956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2957
    .line 2958
    .line 2959
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2960
    .line 2961
    .line 2962
    goto/16 :goto_0

    .line 2963
    .line 2964
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2965
    .line 2966
    .line 2967
    move-result p1

    .line 2968
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2969
    .line 2970
    .line 2971
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenOffOnHomeLongPressState(Z)I

    .line 2972
    .line 2973
    .line 2974
    move-result p0

    .line 2975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2976
    .line 2977
    .line 2978
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2979
    .line 2980
    .line 2981
    goto/16 :goto_0

    .line 2982
    .line 2983
    :pswitch_c9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I

    .line 2984
    .line 2985
    .line 2986
    move-result p0

    .line 2987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2988
    .line 2989
    .line 2990
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2991
    .line 2992
    .line 2993
    goto/16 :goto_0

    .line 2994
    .line 2995
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2996
    .line 2997
    .line 2998
    move-result p1

    .line 2999
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3000
    .line 3001
    .line 3002
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setRecentLongPressMode(I)I

    .line 3003
    .line 3004
    .line 3005
    move-result p0

    .line 3006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3007
    .line 3008
    .line 3009
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3010
    .line 3011
    .line 3012
    goto/16 :goto_0

    .line 3013
    .line 3014
    :pswitch_cb
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    .line 3015
    .line 3016
    .line 3017
    move-result-object p0

    .line 3018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3019
    .line 3020
    .line 3021
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3022
    .line 3023
    .line 3024
    goto/16 :goto_0

    .line 3025
    .line 3026
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3027
    .line 3028
    .line 3029
    move-result-object p1

    .line 3030
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3031
    .line 3032
    .line 3033
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setRecentLongPressActivity(Ljava/lang/String;)I

    .line 3034
    .line 3035
    .line 3036
    move-result p0

    .line 3037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3038
    .line 3039
    .line 3040
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3041
    .line 3042
    .line 3043
    goto/16 :goto_0

    .line 3044
    .line 3045
    :pswitch_cd
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerSavingMode()I

    .line 3046
    .line 3047
    .line 3048
    move-result p0

    .line 3049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3050
    .line 3051
    .line 3052
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3053
    .line 3054
    .line 3055
    goto/16 :goto_0

    .line 3056
    .line 3057
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3058
    .line 3059
    .line 3060
    move-result p1

    .line 3061
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3062
    .line 3063
    .line 3064
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerSavingMode(I)I

    .line 3065
    .line 3066
    .line 3067
    move-result p0

    .line 3068
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3069
    .line 3070
    .line 3071
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3072
    .line 3073
    .line 3074
    goto/16 :goto_0

    .line 3075
    .line 3076
    :pswitch_cf
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    .line 3077
    .line 3078
    .line 3079
    move-result p0

    .line 3080
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3081
    .line 3082
    .line 3083
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3084
    .line 3085
    .line 3086
    goto/16 :goto_0

    .line 3087
    .line 3088
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3089
    .line 3090
    .line 3091
    move-result p1

    .line 3092
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3093
    .line 3094
    .line 3095
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerMenuLockedState(Z)I

    .line 3096
    .line 3097
    .line 3098
    move-result p0

    .line 3099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3100
    .line 3101
    .line 3102
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3103
    .line 3104
    .line 3105
    goto/16 :goto_0

    .line 3106
    .line 3107
    :pswitch_d1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    .line 3108
    .line 3109
    .line 3110
    move-result p0

    .line 3111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3112
    .line 3113
    .line 3114
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3115
    .line 3116
    .line 3117
    goto/16 :goto_0

    .line 3118
    .line 3119
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3120
    .line 3121
    .line 3122
    move-result p1

    .line 3123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3124
    .line 3125
    .line 3126
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLTESettingState(Z)I

    .line 3127
    .line 3128
    .line 3129
    move-result p0

    .line 3130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3131
    .line 3132
    .line 3133
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3134
    .line 3135
    .line 3136
    goto/16 :goto_0

    .line 3137
    .line 3138
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3139
    .line 3140
    .line 3141
    move-result-object p1

    .line 3142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3143
    .line 3144
    .line 3145
    move-result p4

    .line 3146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3147
    .line 3148
    .line 3149
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockscreenWallpaper(Ljava/lang/String;I)I

    .line 3150
    .line 3151
    .line 3152
    move-result p0

    .line 3153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3154
    .line 3155
    .line 3156
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3157
    .line 3158
    .line 3159
    goto/16 :goto_0

    .line 3160
    .line 3161
    :pswitch_d4
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    .line 3162
    .line 3163
    .line 3164
    move-result p0

    .line 3165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3166
    .line 3167
    .line 3168
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3169
    .line 3170
    .line 3171
    goto/16 :goto_0

    .line 3172
    .line 3173
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3174
    .line 3175
    .line 3176
    move-result p1

    .line 3177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3178
    .line 3179
    .line 3180
    move-result p4

    .line 3181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3182
    .line 3183
    .line 3184
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenHiddenItems(ZI)I

    .line 3185
    .line 3186
    .line 3187
    move-result p0

    .line 3188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3189
    .line 3190
    .line 3191
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3192
    .line 3193
    .line 3194
    goto/16 :goto_0

    .line 3195
    .line 3196
    :pswitch_d6
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    .line 3197
    .line 3198
    .line 3199
    move-result p0

    .line 3200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3201
    .line 3202
    .line 3203
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3204
    .line 3205
    .line 3206
    goto/16 :goto_0

    .line 3207
    .line 3208
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3209
    .line 3210
    .line 3211
    move-result p1

    .line 3212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3213
    .line 3214
    .line 3215
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInfraredState(Z)I

    .line 3216
    .line 3217
    .line 3218
    move-result p0

    .line 3219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3220
    .line 3221
    .line 3222
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3223
    .line 3224
    .line 3225
    goto/16 :goto_0

    .line 3226
    .line 3227
    :pswitch_d8
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    .line 3228
    .line 3229
    .line 3230
    move-result p0

    .line 3231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3232
    .line 3233
    .line 3234
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3235
    .line 3236
    .line 3237
    goto/16 :goto_0

    .line 3238
    .line 3239
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3240
    .line 3241
    .line 3242
    move-result p1

    .line 3243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3244
    .line 3245
    .line 3246
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentState(Z)I

    .line 3247
    .line 3248
    .line 3249
    move-result p0

    .line 3250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3251
    .line 3252
    .line 3253
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3254
    .line 3255
    .line 3256
    goto/16 :goto_0

    .line 3257
    .line 3258
    :pswitch_da
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    .line 3259
    .line 3260
    .line 3261
    move-result p0

    .line 3262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3263
    .line 3264
    .line 3265
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3266
    .line 3267
    .line 3268
    goto/16 :goto_0

    .line 3269
    .line 3270
    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3271
    .line 3272
    .line 3273
    move-result p1

    .line 3274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3275
    .line 3276
    .line 3277
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setGearNotificationState(Z)I

    .line 3278
    .line 3279
    .line 3280
    move-result p0

    .line 3281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3282
    .line 3283
    .line 3284
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3285
    .line 3286
    .line 3287
    goto/16 :goto_0

    .line 3288
    .line 3289
    :pswitch_dc
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z

    .line 3290
    .line 3291
    .line 3292
    move-result p0

    .line 3293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3294
    .line 3295
    .line 3296
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3297
    .line 3298
    .line 3299
    goto/16 :goto_0

    .line 3300
    .line 3301
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3302
    .line 3303
    .line 3304
    move-result p1

    .line 3305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3306
    .line 3307
    .line 3308
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setEthernetState(Z)I

    .line 3309
    .line 3310
    .line 3311
    move-result p0

    .line 3312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3313
    .line 3314
    .line 3315
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3316
    .line 3317
    .line 3318
    goto/16 :goto_0

    .line 3319
    .line 3320
    :pswitch_de
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I

    .line 3321
    .line 3322
    .line 3323
    move-result p0

    .line 3324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3325
    .line 3326
    .line 3327
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3328
    .line 3329
    .line 3330
    goto/16 :goto_0

    .line 3331
    .line 3332
    :pswitch_df
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setEthernetConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 3333
    .line 3334
    .line 3335
    move-result p0

    .line 3336
    return p0

    .line 3337
    :pswitch_e0
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getChargingLEDState()Z

    .line 3338
    .line 3339
    .line 3340
    move-result p0

    .line 3341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3342
    .line 3343
    .line 3344
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3345
    .line 3346
    .line 3347
    goto/16 :goto_0

    .line 3348
    .line 3349
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3350
    .line 3351
    .line 3352
    move-result p1

    .line 3353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3354
    .line 3355
    .line 3356
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setChargingLEDState(Z)I

    .line 3357
    .line 3358
    .line 3359
    move-result p0

    .line 3360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3361
    .line 3362
    .line 3363
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3364
    .line 3365
    .line 3366
    goto/16 :goto_0

    .line 3367
    .line 3368
    :pswitch_e2
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    .line 3369
    .line 3370
    .line 3371
    move-result p0

    .line 3372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3373
    .line 3374
    .line 3375
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3376
    .line 3377
    .line 3378
    goto/16 :goto_0

    .line 3379
    .line 3380
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3381
    .line 3382
    .line 3383
    move-result p1

    .line 3384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3385
    .line 3386
    .line 3387
    move-result p4

    .line 3388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3389
    .line 3390
    .line 3391
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setCallScreenDisabledItems(ZI)I

    .line 3392
    .line 3393
    .line 3394
    move-result p0

    .line 3395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3396
    .line 3397
    .line 3398
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3399
    .line 3400
    .line 3401
    goto/16 :goto_0

    .line 3402
    .line 3403
    :pswitch_e4
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 3404
    .line 3405
    .line 3406
    move-result-object p0

    .line 3407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3408
    .line 3409
    .line 3410
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3411
    .line 3412
    .line 3413
    goto/16 :goto_0

    .line 3414
    .line 3415
    :pswitch_e5
    sget-object p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3416
    .line 3417
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3418
    .line 3419
    .line 3420
    move-result-object p1

    .line 3421
    check-cast p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 3422
    .line 3423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3424
    .line 3425
    .line 3426
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)I

    .line 3427
    .line 3428
    .line 3429
    move-result p0

    .line 3430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3431
    .line 3432
    .line 3433
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3434
    .line 3435
    .line 3436
    goto/16 :goto_0

    .line 3437
    .line 3438
    :pswitch_e6
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    .line 3439
    .line 3440
    .line 3441
    move-result p0

    .line 3442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3443
    .line 3444
    .line 3445
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3446
    .line 3447
    .line 3448
    goto/16 :goto_0

    .line 3449
    .line 3450
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3451
    .line 3452
    .line 3453
    move-result p1

    .line 3454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3455
    .line 3456
    .line 3457
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppBlockDownloadState(Z)I

    .line 3458
    .line 3459
    .line 3460
    move-result p0

    .line 3461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3462
    .line 3463
    .line 3464
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3465
    .line 3466
    .line 3467
    goto/16 :goto_0

    .line 3468
    .line 3469
    :pswitch_e8
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    .line 3470
    .line 3471
    .line 3472
    move-result-object p0

    .line 3473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3474
    .line 3475
    .line 3476
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3477
    .line 3478
    .line 3479
    goto/16 :goto_0

    .line 3480
    .line 3481
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3482
    .line 3483
    .line 3484
    move-result-object p1

    .line 3485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3486
    .line 3487
    .line 3488
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppBlockDownloadNamespaces(Ljava/util/List;)I

    .line 3489
    .line 3490
    .line 3491
    move-result p0

    .line 3492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3493
    .line 3494
    .line 3495
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3496
    .line 3497
    .line 3498
    goto/16 :goto_0

    .line 3499
    .line 3500
    :pswitch_ea
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiConnectionMonitorState()Z

    .line 3501
    .line 3502
    .line 3503
    move-result p0

    .line 3504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3505
    .line 3506
    .line 3507
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3508
    .line 3509
    .line 3510
    goto/16 :goto_0

    .line 3511
    .line 3512
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3513
    .line 3514
    .line 3515
    move-result p1

    .line 3516
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3517
    .line 3518
    .line 3519
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiConnectionMonitorState(Z)I

    .line 3520
    .line 3521
    .line 3522
    move-result p0

    .line 3523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3524
    .line 3525
    .line 3526
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3527
    .line 3528
    .line 3529
    goto/16 :goto_0

    .line 3530
    .line 3531
    :pswitch_ec
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemSoundsSilent()I

    .line 3532
    .line 3533
    .line 3534
    move-result p0

    .line 3535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3536
    .line 3537
    .line 3538
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3539
    .line 3540
    .line 3541
    goto/16 :goto_0

    .line 3542
    .line 3543
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3544
    .line 3545
    .line 3546
    move-result p1

    .line 3547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3548
    .line 3549
    .line 3550
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStayAwakeState(Z)I

    .line 3551
    .line 3552
    .line 3553
    move-result p0

    .line 3554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3555
    .line 3556
    .line 3557
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3558
    .line 3559
    .line 3560
    goto/16 :goto_0

    .line 3561
    .line 3562
    :pswitch_ee
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    .line 3563
    .line 3564
    .line 3565
    move-result p0

    .line 3566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3567
    .line 3568
    .line 3569
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3570
    .line 3571
    .line 3572
    goto/16 :goto_0

    .line 3573
    .line 3574
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3575
    .line 3576
    .line 3577
    move-result p1

    .line 3578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3579
    .line 3580
    .line 3581
    move-result p4

    .line 3582
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3583
    .line 3584
    .line 3585
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSettingsHiddenState(ZI)I

    .line 3586
    .line 3587
    .line 3588
    move-result p0

    .line 3589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3590
    .line 3591
    .line 3592
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3593
    .line 3594
    .line 3595
    goto/16 :goto_0

    .line 3596
    .line 3597
    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3598
    .line 3599
    .line 3600
    move-result p1

    .line 3601
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3602
    .line 3603
    .line 3604
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMotionControlState(I)Z

    .line 3605
    .line 3606
    .line 3607
    move-result p0

    .line 3608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3609
    .line 3610
    .line 3611
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3612
    .line 3613
    .line 3614
    goto/16 :goto_0

    .line 3615
    .line 3616
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3617
    .line 3618
    .line 3619
    move-result p1

    .line 3620
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3621
    .line 3622
    .line 3623
    move-result p4

    .line 3624
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3625
    .line 3626
    .line 3627
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMotionControlState(IZ)I

    .line 3628
    .line 3629
    .line 3630
    move-result p0

    .line 3631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3632
    .line 3633
    .line 3634
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3635
    .line 3636
    .line 3637
    goto/16 :goto_0

    .line 3638
    .line 3639
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3640
    .line 3641
    .line 3642
    move-result p1

    .line 3643
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3644
    .line 3645
    .line 3646
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileDataRoamingState(Z)I

    .line 3647
    .line 3648
    .line 3649
    move-result p0

    .line 3650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3651
    .line 3652
    .line 3653
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3654
    .line 3655
    .line 3656
    goto/16 :goto_0

    .line 3657
    .line 3658
    :pswitch_f3
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I

    .line 3659
    .line 3660
    .line 3661
    move-result p0

    .line 3662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3663
    .line 3664
    .line 3665
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3666
    .line 3667
    .line 3668
    goto/16 :goto_0

    .line 3669
    .line 3670
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3671
    .line 3672
    .line 3673
    move-result p1

    .line 3674
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3675
    .line 3676
    .line 3677
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHideNotificationMessages(I)I

    .line 3678
    .line 3679
    .line 3680
    move-result p0

    .line 3681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3682
    .line 3683
    .line 3684
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3685
    .line 3686
    .line 3687
    goto/16 :goto_0

    .line 3688
    .line 3689
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3690
    .line 3691
    .line 3692
    move-result p1

    .line 3693
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3694
    .line 3695
    .line 3696
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBackupRestoreState(I)Z

    .line 3697
    .line 3698
    .line 3699
    move-result p0

    .line 3700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3701
    .line 3702
    .line 3703
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3704
    .line 3705
    .line 3706
    goto/16 :goto_0

    .line 3707
    .line 3708
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3709
    .line 3710
    .line 3711
    move-result p1

    .line 3712
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3713
    .line 3714
    .line 3715
    move-result p4

    .line 3716
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3717
    .line 3718
    .line 3719
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBackupRestoreState(IZ)I

    .line 3720
    .line 3721
    .line 3722
    move-result p0

    .line 3723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3724
    .line 3725
    .line 3726
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3727
    .line 3728
    .line 3729
    goto/16 :goto_0

    .line 3730
    .line 3731
    :pswitch_f7
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setWifiStateEap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 3732
    .line 3733
    .line 3734
    move-result p0

    .line 3735
    return p0

    .line 3736
    :pswitch_f8
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setWifiState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 3737
    .line 3738
    .line 3739
    move-result p0

    .line 3740
    return p0

    .line 3741
    :pswitch_f9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUserInactivityTimeout()I

    .line 3742
    .line 3743
    .line 3744
    move-result p0

    .line 3745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3746
    .line 3747
    .line 3748
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3749
    .line 3750
    .line 3751
    goto/16 :goto_0

    .line 3752
    .line 3753
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3754
    .line 3755
    .line 3756
    move-result p1

    .line 3757
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3758
    .line 3759
    .line 3760
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUserInactivityTimeout(I)I

    .line 3761
    .line 3762
    .line 3763
    move-result p0

    .line 3764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3765
    .line 3766
    .line 3767
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3768
    .line 3769
    .line 3770
    goto/16 :goto_0

    .line 3771
    .line 3772
    :pswitch_fb
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setUsbDeviceDefaultPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 3773
    .line 3774
    .line 3775
    move-result p0

    .line 3776
    return p0

    .line 3777
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3778
    .line 3779
    .line 3780
    move-result p1

    .line 3781
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3782
    .line 3783
    .line 3784
    move-result-object p4

    .line 3785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3786
    .line 3787
    .line 3788
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemRingtone(ILjava/lang/String;)I

    .line 3789
    .line 3790
    .line 3791
    move-result p0

    .line 3792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3793
    .line 3794
    .line 3795
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3796
    .line 3797
    .line 3798
    goto/16 :goto_0

    .line 3799
    .line 3800
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3801
    .line 3802
    .line 3803
    move-result-object p1

    .line 3804
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3805
    .line 3806
    .line 3807
    move-result-object p4

    .line 3808
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3809
    .line 3810
    .line 3811
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    .line 3813
    .line 3814
    move-result p0

    .line 3815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3816
    .line 3817
    .line 3818
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3819
    .line 3820
    .line 3821
    goto/16 :goto_0

    .line 3822
    .line 3823
    :pswitch_fe
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenTimeout()I

    .line 3824
    .line 3825
    .line 3826
    move-result p0

    .line 3827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3828
    .line 3829
    .line 3830
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3831
    .line 3832
    .line 3833
    goto/16 :goto_0

    .line 3834
    .line 3835
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3836
    .line 3837
    .line 3838
    move-result p1

    .line 3839
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3840
    .line 3841
    .line 3842
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenTimeout(I)I

    .line 3843
    .line 3844
    .line 3845
    move-result p0

    .line 3846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3847
    .line 3848
    .line 3849
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3850
    .line 3851
    .line 3852
    goto/16 :goto_0

    .line 3853
    .line 3854
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3855
    .line 3856
    .line 3857
    move-result p1

    .line 3858
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3859
    .line 3860
    .line 3861
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenPowerSavingState(Z)I

    .line 3862
    .line 3863
    .line 3864
    move-result p0

    .line 3865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3866
    .line 3867
    .line 3868
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3869
    .line 3870
    .line 3871
    goto/16 :goto_0

    .line 3872
    .line 3873
    :pswitch_101
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbNetState()Z

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
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3886
    .line 3887
    .line 3888
    move-result p1

    .line 3889
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3890
    .line 3891
    .line 3892
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbNetState(Z)I

    .line 3893
    .line 3894
    .line 3895
    move-result p0

    .line 3896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3897
    .line 3898
    .line 3899
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3900
    .line 3901
    .line 3902
    goto/16 :goto_0

    .line 3903
    .line 3904
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3905
    .line 3906
    .line 3907
    move-result p1

    .line 3908
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3909
    .line 3910
    .line 3911
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbNetAddress(I)Ljava/lang/String;

    .line 3912
    .line 3913
    .line 3914
    move-result-object p0

    .line 3915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3916
    .line 3917
    .line 3918
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3919
    .line 3920
    .line 3921
    goto/16 :goto_0

    .line 3922
    .line 3923
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3924
    .line 3925
    .line 3926
    move-result-object p1

    .line 3927
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3928
    .line 3929
    .line 3930
    move-result-object p4

    .line 3931
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3932
    .line 3933
    .line 3934
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    .line 3936
    .line 3937
    move-result p0

    .line 3938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3939
    .line 3940
    .line 3941
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3942
    .line 3943
    .line 3944
    goto/16 :goto_0

    .line 3945
    .line 3946
    :pswitch_105
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbMassStorageState()Z

    .line 3947
    .line 3948
    .line 3949
    move-result p0

    .line 3950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3951
    .line 3952
    .line 3953
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3954
    .line 3955
    .line 3956
    goto/16 :goto_0

    .line 3957
    .line 3958
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3959
    .line 3960
    .line 3961
    move-result p1

    .line 3962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3963
    .line 3964
    .line 3965
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbMassStorageState(Z)I

    .line 3966
    .line 3967
    .line 3968
    move-result p0

    .line 3969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3970
    .line 3971
    .line 3972
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3973
    .line 3974
    .line 3975
    goto/16 :goto_0

    .line 3976
    .line 3977
    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3978
    .line 3979
    .line 3980
    move-result p1

    .line 3981
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3982
    .line 3983
    .line 3984
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    .line 3985
    .line 3986
    .line 3987
    move-result-object p0

    .line 3988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3989
    .line 3990
    .line 3991
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3992
    .line 3993
    .line 3994
    goto/16 :goto_0

    .line 3995
    .line 3996
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3997
    .line 3998
    .line 3999
    move-result p1

    .line 4000
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4001
    .line 4002
    .line 4003
    move-result-object p4

    .line 4004
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4005
    .line 4006
    .line 4007
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskString(ILjava/lang/String;)I

    .line 4008
    .line 4009
    .line 4010
    move-result p0

    .line 4011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4012
    .line 4013
    .line 4014
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4015
    .line 4016
    .line 4017
    goto/16 :goto_0

    .line 4018
    .line 4019
    :pswitch_109
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarMode()I

    .line 4020
    .line 4021
    .line 4022
    move-result p0

    .line 4023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4024
    .line 4025
    .line 4026
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4027
    .line 4028
    .line 4029
    goto/16 :goto_0

    .line 4030
    .line 4031
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4032
    .line 4033
    .line 4034
    move-result p1

    .line 4035
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4036
    .line 4037
    .line 4038
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarMode(I)I

    .line 4039
    .line 4040
    .line 4041
    move-result p0

    .line 4042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4043
    .line 4044
    .line 4045
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4046
    .line 4047
    .line 4048
    goto/16 :goto_0

    .line 4049
    .line 4050
    :pswitch_10b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarIconsState()Z

    .line 4051
    .line 4052
    .line 4053
    move-result p0

    .line 4054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4055
    .line 4056
    .line 4057
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4058
    .line 4059
    .line 4060
    goto/16 :goto_0

    .line 4061
    .line 4062
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4063
    .line 4064
    .line 4065
    move-result p1

    .line 4066
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4067
    .line 4068
    .line 4069
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarIconsState(Z)I

    .line 4070
    .line 4071
    .line 4072
    move-result p0

    .line 4073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4074
    .line 4075
    .line 4076
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4077
    .line 4078
    .line 4079
    goto/16 :goto_0

    .line 4080
    .line 4081
    :pswitch_10d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarClockState()Z

    .line 4082
    .line 4083
    .line 4084
    move-result p0

    .line 4085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4086
    .line 4087
    .line 4088
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4089
    .line 4090
    .line 4091
    goto/16 :goto_0

    .line 4092
    .line 4093
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4094
    .line 4095
    .line 4096
    move-result p1

    .line 4097
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4098
    .line 4099
    .line 4100
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarClockState(Z)I

    .line 4101
    .line 4102
    .line 4103
    move-result p0

    .line 4104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4105
    .line 4106
    .line 4107
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4108
    .line 4109
    .line 4110
    goto/16 :goto_0

    .line 4111
    .line 4112
    :pswitch_10f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    .line 4113
    .line 4114
    .line 4115
    move-result p0

    .line 4116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4117
    .line 4118
    .line 4119
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4120
    .line 4121
    .line 4122
    goto/16 :goto_0

    .line 4123
    .line 4124
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4125
    .line 4126
    .line 4127
    move-result p1

    .line 4128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4129
    .line 4130
    .line 4131
    move-result-object p4

    .line 4132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4133
    .line 4134
    .line 4135
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    .line 4136
    .line 4137
    .line 4138
    move-result p0

    .line 4139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4140
    .line 4141
    .line 4142
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4143
    .line 4144
    .line 4145
    goto/16 :goto_0

    .line 4146
    .line 4147
    :pswitch_111
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskPowerDialogCustomItemsState()Z

    .line 4148
    .line 4149
    .line 4150
    move-result p0

    .line 4151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4152
    .line 4153
    .line 4154
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4155
    .line 4156
    .line 4157
    goto/16 :goto_0

    .line 4158
    .line 4159
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4160
    .line 4161
    .line 4162
    move-result p1

    .line 4163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4164
    .line 4165
    .line 4166
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskPowerDialogCustomItemsState(Z)I

    .line 4167
    .line 4168
    .line 4169
    move-result p0

    .line 4170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4171
    .line 4172
    .line 4173
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4174
    .line 4175
    .line 4176
    goto/16 :goto_0

    .line 4177
    .line 4178
    :pswitch_113
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskPowerDialogCustomItems()Ljava/util/List;

    .line 4179
    .line 4180
    .line 4181
    move-result-object p0

    .line 4182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4183
    .line 4184
    .line 4185
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4186
    .line 4187
    .line 4188
    goto/16 :goto_0

    .line 4189
    .line 4190
    :pswitch_114
    sget-object p1, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4191
    .line 4192
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 4193
    .line 4194
    .line 4195
    move-result-object p1

    .line 4196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4197
    .line 4198
    .line 4199
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskPowerDialogCustomItems(Ljava/util/List;)I

    .line 4200
    .line 4201
    .line 4202
    move-result p0

    .line 4203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4204
    .line 4205
    .line 4206
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4207
    .line 4208
    .line 4209
    goto/16 :goto_0

    .line 4210
    .line 4211
    :pswitch_115
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskNotificationMessagesState()Z

    .line 4212
    .line 4213
    .line 4214
    move-result p0

    .line 4215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4216
    .line 4217
    .line 4218
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4219
    .line 4220
    .line 4221
    goto/16 :goto_0

    .line 4222
    .line 4223
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4224
    .line 4225
    .line 4226
    move-result p1

    .line 4227
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4228
    .line 4229
    .line 4230
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskNotificationMessagesState(Z)I

    .line 4231
    .line 4232
    .line 4233
    move-result p0

    .line 4234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4235
    .line 4236
    .line 4237
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4238
    .line 4239
    .line 4240
    goto/16 :goto_0

    .line 4241
    .line 4242
    :pswitch_117
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    .line 4243
    .line 4244
    .line 4245
    move-result p0

    .line 4246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4247
    .line 4248
    .line 4249
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4250
    .line 4251
    .line 4252
    goto/16 :goto_0

    .line 4253
    .line 4254
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4255
    .line 4256
    .line 4257
    move-result p1

    .line 4258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4259
    .line 4260
    .line 4261
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogOptionMode(I)I

    .line 4262
    .line 4263
    .line 4264
    move-result p0

    .line 4265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4266
    .line 4267
    .line 4268
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4269
    .line 4270
    .line 4271
    goto/16 :goto_0

    .line 4272
    .line 4273
    :pswitch_119
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    .line 4274
    .line 4275
    .line 4276
    move-result p0

    .line 4277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4278
    .line 4279
    .line 4280
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4281
    .line 4282
    .line 4283
    goto/16 :goto_0

    .line 4284
    .line 4285
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4286
    .line 4287
    .line 4288
    move-result p1

    .line 4289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4290
    .line 4291
    .line 4292
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogItems(I)I

    .line 4293
    .line 4294
    .line 4295
    move-result p0

    .line 4296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4297
    .line 4298
    .line 4299
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4300
    .line 4301
    .line 4302
    goto/16 :goto_0

    .line 4303
    .line 4304
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4305
    .line 4306
    .line 4307
    move-result-object p1

    .line 4308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4309
    .line 4310
    .line 4311
    move-result-object p4

    .line 4312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4313
    .line 4314
    .line 4315
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPassCode(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    .line 4317
    .line 4318
    move-result p0

    .line 4319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4320
    .line 4321
    .line 4322
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4323
    .line 4324
    .line 4325
    goto/16 :goto_0

    .line 4326
    .line 4327
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4328
    .line 4329
    .line 4330
    move-result p1

    .line 4331
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4332
    .line 4333
    .line 4334
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMultiWindowState(Z)I

    .line 4335
    .line 4336
    .line 4337
    move-result p0

    .line 4338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4339
    .line 4340
    .line 4341
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4342
    .line 4343
    .line 4344
    goto/16 :goto_0

    .line 4345
    .line 4346
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4347
    .line 4348
    .line 4349
    move-result p1

    .line 4350
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4351
    .line 4352
    .line 4353
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileDataState(Z)I

    .line 4354
    .line 4355
    .line 4356
    move-result p0

    .line 4357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4358
    .line 4359
    .line 4360
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4361
    .line 4362
    .line 4363
    goto/16 :goto_0

    .line 4364
    .line 4365
    :pswitch_11e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInputMethodRestrictionState()Z

    .line 4366
    .line 4367
    .line 4368
    move-result p0

    .line 4369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4370
    .line 4371
    .line 4372
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4373
    .line 4374
    .line 4375
    goto/16 :goto_0

    .line 4376
    .line 4377
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4378
    .line 4379
    .line 4380
    move-result p1

    .line 4381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4382
    .line 4383
    .line 4384
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInputMethodRestrictionState(Z)I

    .line 4385
    .line 4386
    .line 4387
    move-result p0

    .line 4388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4389
    .line 4390
    .line 4391
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4392
    .line 4393
    .line 4394
    goto/16 :goto_0

    .line 4395
    .line 4396
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4397
    .line 4398
    .line 4399
    move-result-object p1

    .line 4400
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4401
    .line 4402
    .line 4403
    move-result p4

    .line 4404
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4405
    .line 4406
    .line 4407
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInputMethod(Ljava/lang/String;Z)I

    .line 4408
    .line 4409
    .line 4410
    move-result p0

    .line 4411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4412
    .line 4413
    .line 4414
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4415
    .line 4416
    .line 4417
    goto/16 :goto_0

    .line 4418
    .line 4419
    :pswitch_121
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;

    .line 4420
    .line 4421
    .line 4422
    move-result-object p0

    .line 4423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4424
    .line 4425
    .line 4426
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4427
    .line 4428
    .line 4429
    goto/16 :goto_0

    .line 4430
    .line 4431
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4432
    .line 4433
    .line 4434
    move-result-object p1

    .line 4435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4436
    .line 4437
    .line 4438
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHomeActivity(Ljava/lang/String;)I

    .line 4439
    .line 4440
    .line 4441
    move-result p0

    .line 4442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4443
    .line 4444
    .line 4445
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4446
    .line 4447
    .line 4448
    goto/16 :goto_0

    .line 4449
    .line 4450
    :pswitch_123
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z

    .line 4451
    .line 4452
    .line 4453
    move-result p0

    .line 4454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4455
    .line 4456
    .line 4457
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4458
    .line 4459
    .line 4460
    goto/16 :goto_0

    .line 4461
    .line 4462
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4463
    .line 4464
    .line 4465
    move-result p1

    .line 4466
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4467
    .line 4468
    .line 4469
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setExtendedCallInfoState(Z)I

    .line 4470
    .line 4471
    .line 4472
    move-result p0

    .line 4473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4474
    .line 4475
    .line 4476
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4477
    .line 4478
    .line 4479
    goto/16 :goto_0

    .line 4480
    .line 4481
    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4482
    .line 4483
    .line 4484
    move-result p1

    .line 4485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4486
    .line 4487
    .line 4488
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    .line 4489
    .line 4490
    .line 4491
    move-result-object p0

    .line 4492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4493
    .line 4494
    .line 4495
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4496
    .line 4497
    .line 4498
    goto/16 :goto_0

    .line 4499
    .line 4500
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4501
    .line 4502
    .line 4503
    move-result-object p1

    .line 4504
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4505
    .line 4506
    .line 4507
    move-result-object p4

    .line 4508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4509
    .line 4510
    .line 4511
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setExitUI(Ljava/lang/String;Ljava/lang/String;)I

    .line 4512
    .line 4513
    .line 4514
    move-result p0

    .line 4515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4516
    .line 4517
    .line 4518
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4519
    .line 4520
    .line 4521
    goto/16 :goto_0

    .line 4522
    .line 4523
    :pswitch_127
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDeveloperOptionsHidden()I

    .line 4524
    .line 4525
    .line 4526
    move-result p0

    .line 4527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4528
    .line 4529
    .line 4530
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4531
    .line 4532
    .line 4533
    goto/16 :goto_0

    .line 4534
    .line 4535
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4536
    .line 4537
    .line 4538
    move-result p1

    .line 4539
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4540
    .line 4541
    .line 4542
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setCpuPowerSavingState(Z)I

    .line 4543
    .line 4544
    .line 4545
    move-result p0

    .line 4546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4547
    .line 4548
    .line 4549
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4550
    .line 4551
    .line 4552
    goto/16 :goto_0

    .line 4553
    .line 4554
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4555
    .line 4556
    .line 4557
    move-result p1

    .line 4558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4559
    .line 4560
    .line 4561
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBluetoothState(Z)I

    .line 4562
    .line 4563
    .line 4564
    move-result p0

    .line 4565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4566
    .line 4567
    .line 4568
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4569
    .line 4570
    .line 4571
    goto/16 :goto_0

    .line 4572
    .line 4573
    :pswitch_12a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoRotationState()Z

    .line 4574
    .line 4575
    .line 4576
    move-result p0

    .line 4577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4578
    .line 4579
    .line 4580
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4581
    .line 4582
    .line 4583
    goto :goto_0

    .line 4584
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4585
    .line 4586
    .line 4587
    move-result p1

    .line 4588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4589
    .line 4590
    .line 4591
    move-result p4

    .line 4592
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4593
    .line 4594
    .line 4595
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAutoRotationState(ZI)I

    .line 4596
    .line 4597
    .line 4598
    move-result p0

    .line 4599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4600
    .line 4601
    .line 4602
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4603
    .line 4604
    .line 4605
    goto :goto_0

    .line 4606
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4607
    .line 4608
    .line 4609
    move-result p1

    .line 4610
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4611
    .line 4612
    .line 4613
    move-result p4

    .line 4614
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4615
    .line 4616
    .line 4617
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAudioVolume(II)I

    .line 4618
    .line 4619
    .line 4620
    move-result p0

    .line 4621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4622
    .line 4623
    .line 4624
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4625
    .line 4626
    .line 4627
    goto :goto_0

    .line 4628
    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4629
    .line 4630
    .line 4631
    move-result p1

    .line 4632
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4633
    .line 4634
    .line 4635
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAdbState(Z)I

    .line 4636
    .line 4637
    .line 4638
    move-result p0

    .line 4639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4640
    .line 4641
    .line 4642
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4643
    .line 4644
    .line 4645
    goto :goto_0

    .line 4646
    :pswitch_12e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeLockScreen()I

    .line 4647
    .line 4648
    .line 4649
    move-result p0

    .line 4650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4651
    .line 4652
    .line 4653
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4654
    .line 4655
    .line 4656
    goto :goto_0

    .line 4657
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4658
    .line 4659
    .line 4660
    move-result-object p1

    .line 4661
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4662
    .line 4663
    .line 4664
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->dialEmergencyNumber(Ljava/lang/String;)I

    .line 4665
    .line 4666
    .line 4667
    move-result p0

    .line 4668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4669
    .line 4670
    .line 4671
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4672
    .line 4673
    .line 4674
    goto :goto_0

    .line 4675
    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4676
    .line 4677
    .line 4678
    move-result-object p1

    .line 4679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4680
    .line 4681
    .line 4682
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->checkEnterprisePermission(Ljava/lang/String;)Z

    .line 4683
    .line 4684
    .line 4685
    move-result p0

    .line 4686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4687
    .line 4688
    .line 4689
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4690
    .line 4691
    .line 4692
    :goto_0
    return v1

    .line 4693
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4694
    .line 4695
    .line 4696
    return v1

    .line 4697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
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

.method public final onTransact$addAutoCallNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addAutoCallNumber(Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final onTransact$addDexShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/content/ComponentName;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexShortcut(IILandroid/content/ComponentName;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final onTransact$addDexURLShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v5, v0

    .line 24
    check-cast v5, Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 27
    .line 28
    .line 29
    move-object v0, p0

    .line 30
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcut(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method public final onTransact$addDexURLShortcutExtend$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v6, v0

    .line 28
    check-cast v6, Landroid/content/ComponentName;

    .line 29
    .line 30
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v7, v0

    .line 37
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 40
    .line 41
    .line 42
    move-object v0, p0

    .line 43
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcutExtend(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    return p0
.end method

.method public final onTransact$addRoleHolder$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final onTransact$addShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addShortcut(IIILjava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final onTransact$addWidget$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 26
    .line 27
    .line 28
    move-object v0, p0

    .line 29
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addWidget(IIIIILjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0
.end method

.method public final onTransact$getApplicationRestrictionsInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p2, p0, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 21
    .line 22
    .line 23
    return p1
.end method

.method public final onTransact$getHardKeyBlockState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyBlockState(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final onTransact$getHardKeyIntentBroadcast$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentBroadcast(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final onTransact$removeRoleHolder$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final onTransact$setApplicationRestrictionsInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v5, v0

    .line 25
    check-cast v5, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 32
    .line 33
    .line 34
    move-object v1, p0

    .line 35
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setApplicationRestrictionsInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-virtual {p2, p0, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 44
    .line 45
    .line 46
    return p1
.end method

.method public final onTransact$setBootingAnimation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0
.end method

.method public final onTransact$setBootingAnimationSub$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBootingAnimationSub(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final onTransact$setEthernetConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 22
    .line 23
    .line 24
    move-object v0, p0

    .line 25
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setEthernetConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public final onTransact$setForcedDisplaySizeDensity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForcedDisplaySizeDensity(III)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final onTransact$setHardKeyIntentBroadcast$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 31
    .line 32
    .line 33
    move-object v0, p0

    .line 34
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentBroadcast(ZILandroid/content/Intent;Ljava/lang/String;ZZ)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public final onTransact$setHardKeyIntentBroadcastExternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v4, v0

    .line 20
    check-cast v4, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 31
    .line 32
    .line 33
    move-object v0, p0

    .line 34
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentBroadcastExternal(ZIILandroid/content/Intent;Ljava/lang/String;Z)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public final onTransact$setHardKeyIntentBroadcastInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v4, v0

    .line 20
    check-cast v4, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 35
    .line 36
    .line 37
    move-object v0, p0

    .line 38
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentBroadcastInternal(Ljava/lang/String;ZILandroid/content/Intent;Ljava/lang/String;ZZ)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method public final onTransact$setHardKeyReportState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyReportState(IIII)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final onTransact$setKeyedAppStatesReport$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v5, v0

    .line 25
    check-cast v5, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 32
    .line 33
    .line 34
    move-object v1, p0

    .line 35
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKeyedAppStatesReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final onTransact$setStatusBarText$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarText(Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final onTransact$setStatusBarTextScrollWidth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarTextScrollWidth(Ljava/lang/String;III)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final onTransact$setToastGravity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastGravity(III)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final onTransact$setUsbDeviceDefaultPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final onTransact$setWallpaper$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Bundle;

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWallpaper(Landroid/os/Bundle;Landroid/graphics/Rect;ZI)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0
.end method

.method public final onTransact$setWifiState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiState(ZLjava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final onTransact$setWifiStateEap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiStateEap(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final onTransact$startProKioskMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startProKioskMode(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final onTransact$startTcpDump$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startTcpDump(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0
.end method
