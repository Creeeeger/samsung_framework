.class public interface abstract Lcom/samsung/android/knox/custom/IKnoxCustomManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;,
        Lcom/samsung/android/knox/custom/IKnoxCustomManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.custom.IKnoxCustomManager"


# virtual methods
.method public abstract addAutoCallNumber(Ljava/lang/String;II)I
.end method

.method public abstract addDexShortcut(IILandroid/content/ComponentName;)I
.end method

.method public abstract addDexURLShortcut(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I
.end method

.method public abstract addDexURLShortcutExtend(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;)I
.end method

.method public abstract addPackagesToUltraPowerSaving(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract addShortcut(IIILjava/lang/String;)I
.end method

.method public abstract addWidget(IIIIILjava/lang/String;)I
.end method

.method public abstract allowDexAutoOpenLastApp(I)I
.end method

.method public abstract checkEnterprisePermission(Ljava/lang/String;)Z
.end method

.method public abstract clearAnimation(I)I
.end method

.method public abstract clearDexLoadingLogo()I
.end method

.method public abstract clearForcedDisplaySizeDensity()I
.end method

.method public abstract deleteHomeScreenPage(I)I
.end method

.method public abstract dialEmergencyNumber(Ljava/lang/String;)I
.end method

.method public abstract getAccessibilitySettingsItems()I
.end method

.method public abstract getAirGestureOptionState(I)Z
.end method

.method public abstract getAppBlockDownloadNamespaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppBlockDownloadState()Z
.end method

.method public abstract getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract getAppsButtonState()I
.end method

.method public abstract getAsoc()Ljava/lang/String;
.end method

.method public abstract getAutoCallNumberAnswerMode(Ljava/lang/String;)I
.end method

.method public abstract getAutoCallNumberDelay(Ljava/lang/String;)I
.end method

.method public abstract getAutoCallNumberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutoCallPickupState()I
.end method

.method public abstract getAutoRotationState()Z
.end method

.method public abstract getBackupRestoreState(I)Z
.end method

.method public abstract getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
.end method

.method public abstract getBsoh()Ljava/lang/String;
.end method

.method public abstract getBsohUnbiased()Ljava/lang/String;
.end method

.method public abstract getCallScreenDisabledItems()I
.end method

.method public abstract getChargerConnectionSoundEnabledState()Z
.end method

.method public abstract getChargingLEDState()Z
.end method

.method public abstract getDeviceSpeakerEnabledState()Z
.end method

.method public abstract getDexForegroundModePackageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDexHDMIAutoEnterState()I
.end method

.method public abstract getDexHomeAlignment()I
.end method

.method public abstract getDexScreenTimeout()I
.end method

.method public abstract getDisplayMirroringState()Z
.end method

.method public abstract getEthernetConfigurationType()I
.end method

.method public abstract getEthernetState()Z
.end method

.method public abstract getExitUI(I)Ljava/lang/String;
.end method

.method public abstract getExtendedCallInfoState()Z
.end method

.method public abstract getFavoriteApp(I)Ljava/lang/String;
.end method

.method public abstract getFavoriteAppsMaxCount()I
.end method

.method public abstract getForceAutoShutDownState()I
.end method

.method public abstract getForceAutoStartUpState()I
.end method

.method public abstract getForceSingleView()Z
.end method

.method public abstract getGearNotificationState()Z
.end method

.method public abstract getHardKeyBlockState(II)I
.end method

.method public abstract getHardKeyIntentBroadcast(II)I
.end method

.method public abstract getHardKeyIntentMode()I
.end method

.method public abstract getHardKeyIntentState()Z
.end method

.method public abstract getHardKeyReportState(II)I
.end method

.method public abstract getHideNotificationMessages()I
.end method

.method public abstract getHomeActivity()Ljava/lang/String;
.end method

.method public abstract getHomeScreenMode()I
.end method

.method public abstract getInfraredState()Z
.end method

.method public abstract getInputMethodRestrictionState()Z
.end method

.method public abstract getKeyboardMode()I
.end method

.method public abstract getKeyboardModeOverriden(I)Z
.end method

.method public abstract getLTESettingState()Z
.end method

.method public abstract getLcdBacklightState()Z
.end method

.method public abstract getLoadingLogoPath()Ljava/lang/String;
.end method

.method public abstract getLockScreenHiddenItems()I
.end method

.method public abstract getLockScreenOverrideMode()I
.end method

.method public abstract getLockScreenShortcut(I)Ljava/lang/String;
.end method

.method public abstract getMacAddress()Ljava/lang/String;
.end method

.method public abstract getMobileNetworkType()I
.end method

.method public abstract getMotionControlState(I)Z
.end method

.method public abstract getPowerDialogCustomItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPowerDialogCustomItemsState()Z
.end method

.method public abstract getPowerDialogItems()I
.end method

.method public abstract getPowerDialogOptionMode()I
.end method

.method public abstract getPowerMenuLockedState()Z
.end method

.method public abstract getPowerSavingMode()I
.end method

.method public abstract getProKioskNotificationMessagesState()Z
.end method

.method public abstract getProKioskPowerDialogCustomItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProKioskPowerDialogCustomItemsState()Z
.end method

.method public abstract getProKioskState()Z
.end method

.method public abstract getProKioskStatusBarClockState()Z
.end method

.method public abstract getProKioskStatusBarIconsState()Z
.end method

.method public abstract getProKioskStatusBarMode()I
.end method

.method public abstract getProKioskString(I)Ljava/lang/String;
.end method

.method public abstract getProKioskUsbMassStorageState()Z
.end method

.method public abstract getProKioskUsbNetAddress(I)Ljava/lang/String;
.end method

.method public abstract getProKioskUsbNetState()Z
.end method

.method public abstract getProtectBatteryState()Z
.end method

.method public abstract getQuickPanelButtons()I
.end method

.method public abstract getQuickPanelEditMode()I
.end method

.method public abstract getQuickPanelItems()Ljava/lang/String;
.end method

.method public abstract getRecentLongPressActivity()Ljava/lang/String;
.end method

.method public abstract getRecentLongPressMode()I
.end method

.method public abstract getRoleHolders(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenOffOnHomeLongPressState()Z
.end method

.method public abstract getScreenOffOnStatusBarDoubleTapState()Z
.end method

.method public abstract getScreenTimeout()I
.end method

.method public abstract getScreenWakeupOnPowerState()Z
.end method

.method public abstract getSensorDisabled()I
.end method

.method public abstract getSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSettingsEnabledItems()I
.end method

.method public abstract getSettingsHiddenState()I
.end method

.method public abstract getShowIMEWithHardKeyboard()I
.end method

.method public abstract getStatusBarClockState()Z
.end method

.method public abstract getStatusBarIconsState()Z
.end method

.method public abstract getStatusBarMode()I
.end method

.method public abstract getStatusBarNotificationsState()Z
.end method

.method public abstract getStatusBarText()Ljava/lang/String;
.end method

.method public abstract getStatusBarTextScrollWidth()I
.end method

.method public abstract getStatusBarTextSize()I
.end method

.method public abstract getStatusBarTextStyle()I
.end method

.method public abstract getSystemSoundsEnabledState()I
.end method

.method public abstract getTcpDump()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getToastEnabledState()Z
.end method

.method public abstract getToastGravity()I
.end method

.method public abstract getToastGravityEnabledState()Z
.end method

.method public abstract getToastGravityXOffset()I
.end method

.method public abstract getToastGravityYOffset()I
.end method

.method public abstract getToastShowPackageNameState()Z
.end method

.method public abstract getTorchOnVolumeButtonsState()Z
.end method

.method public abstract getUltraPowerSavingPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnlockSimOnBootState()Z
.end method

.method public abstract getUnlockSimPin()Ljava/lang/String;
.end method

.method public abstract getUsbConnectionType()I
.end method

.method public abstract getUsbConnectionTypeInternal()I
.end method

.method public abstract getUsbMassStorageState()Z
.end method

.method public abstract getUsbNetAddress(I)Ljava/lang/String;
.end method

.method public abstract getUsbNetState()Z
.end method

.method public abstract getUsbNetStateInternal()Z
.end method

.method public abstract getUserInactivityTimeout()I
.end method

.method public abstract getVibrationIntensity(I)I
.end method

.method public abstract getVolumeButtonRotationState()Z
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public abstract getVolumeKeyAppState()Z
.end method

.method public abstract getVolumeKeyAppsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVolumePanelEnabledState()Z
.end method

.method public abstract getWifiConnectionMonitorState()Z
.end method

.method public abstract getWifiFrequencyBand()I
.end method

.method public abstract getWifiHotspotEnabledState()I
.end method

.method public abstract getWifiState()Z
.end method

.method public abstract getZeroPageState()I
.end method

.method public abstract isDexAutoOpenLastAppAllowed()I
.end method

.method public abstract isKnoxPrivacyPolicyAcceptedInitially()Z
.end method

.method public abstract isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings()Z
.end method

.method public abstract isSupportedForceAutoStartUpState()Z
.end method

.method public abstract migrateApplicationRestrictions()V
.end method

.method public abstract powerOff()I
.end method

.method public abstract readFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z
.end method

.method public abstract removeAutoCallNumber(Ljava/lang/String;)I
.end method

.method public abstract removeDexShortcut(Landroid/content/ComponentName;)I
.end method

.method public abstract removeDexURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I
.end method

.method public abstract removeFavoriteApp(I)I
.end method

.method public abstract removeLockScreen()I
.end method

.method public abstract removePackagesFromUltraPowerSaving(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract removeShortcut(Ljava/lang/String;)I
.end method

.method public abstract removeWidget(Ljava/lang/String;)I
.end method

.method public abstract setAccessibilitySettingsItems(II)I
.end method

.method public abstract setAdbState(Z)I
.end method

.method public abstract setAirGestureOptionState(IZ)I
.end method

.method public abstract setAppBlockDownloadNamespaces(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setAppBlockDownloadState(Z)I
.end method

.method public abstract setApplicationRestrictionsInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
.end method

.method public abstract setAppsButtonState(I)I
.end method

.method public abstract setAsoc(I)I
.end method

.method public abstract setAudioVolume(II)I
.end method

.method public abstract setAutoCallPickupState(I)I
.end method

.method public abstract setAutoRotationState(ZI)I
.end method

.method public abstract setBackupRestoreState(IZ)I
.end method

.method public abstract setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)I
.end method

.method public abstract setBluetoothState(Z)I
.end method

.method public abstract setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I
.end method

.method public abstract setBootingAnimationSub(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I
.end method

.method public abstract setBrightness(I)I
.end method

.method public abstract setBrowserHomepage(Ljava/lang/String;)I
.end method

.method public abstract setCallScreenDisabledItems(ZI)I
.end method

.method public abstract setChargerConnectionSoundEnabledState(Z)I
.end method

.method public abstract setChargingLEDState(Z)I
.end method

.method public abstract setCpuPowerSavingState(Z)I
.end method

.method public abstract setDeveloperOptionsHidden()I
.end method

.method public abstract setDeviceSpeakerEnabledState(Z)I
.end method

.method public abstract setDexForegroundModePackageList(ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setDexHDMIAutoEnterState(I)I
.end method

.method public abstract setDexHomeAlignment(I)I
.end method

.method public abstract setDexLoadingLogo(Landroid/os/ParcelFileDescriptor;)I
.end method

.method public abstract setDexScreenTimeout(I)I
.end method

.method public abstract setDisplayMirroringState(Z)I
.end method

.method public abstract setEthernetConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setEthernetState(Z)I
.end method

.method public abstract setExitUI(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setExtendedCallInfoState(Z)I
.end method

.method public abstract setFavoriteApp(Ljava/lang/String;I)I
.end method

.method public abstract setFlightModeState(I)I
.end method

.method public abstract setForceAutoShutDownState(I)I
.end method

.method public abstract setForceAutoStartUpState(I)I
.end method

.method public abstract setForceSingleView(Z)I
.end method

.method public abstract setForcedDisplaySizeDensity(III)I
.end method

.method public abstract setGearNotificationState(Z)I
.end method

.method public abstract setHardKeyIntentBroadcast(ZILandroid/content/Intent;Ljava/lang/String;ZZ)I
.end method

.method public abstract setHardKeyIntentBroadcastExternal(ZIILandroid/content/Intent;Ljava/lang/String;Z)I
.end method

.method public abstract setHardKeyIntentBroadcastInternal(Ljava/lang/String;ZILandroid/content/Intent;Ljava/lang/String;ZZ)I
.end method

.method public abstract setHardKeyIntentMode(I)I
.end method

.method public abstract setHardKeyIntentState(Z)I
.end method

.method public abstract setHardKeyReportState(IIII)I
.end method

.method public abstract setHideNotificationMessages(I)I
.end method

.method public abstract setHomeActivity(Ljava/lang/String;)I
.end method

.method public abstract setHomeScreenMode(I)I
.end method

.method public abstract setInfraredState(Z)I
.end method

.method public abstract setInputMethod(Ljava/lang/String;Z)I
.end method

.method public abstract setInputMethodRestrictionState(Z)I
.end method

.method public abstract setKeyboardMode(I)I
.end method

.method public abstract setKeyedAppStatesReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
.end method

.method public abstract setKnoxPrivacyPolicyByUserSettings(Z)V
.end method

.method public abstract setLTESettingState(Z)I
.end method

.method public abstract setLcdBacklightState(Z)I
.end method

.method public abstract setLockScreenHiddenItems(ZI)I
.end method

.method public abstract setLockScreenOverrideMode(I)I
.end method

.method public abstract setLockScreenShortcut(ILjava/lang/String;)I
.end method

.method public abstract setLockscreenWallpaper(Ljava/lang/String;I)I
.end method

.method public abstract setMobileDataRoamingState(Z)I
.end method

.method public abstract setMobileDataState(Z)I
.end method

.method public abstract setMobileNetworkType(I)I
.end method

.method public abstract setMotionControlState(IZ)I
.end method

.method public abstract setMultiWindowState(Z)I
.end method

.method public abstract setPassCode(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setPowerDialogCustomItems(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setPowerDialogCustomItemsState(Z)I
.end method

.method public abstract setPowerDialogItems(I)I
.end method

.method public abstract setPowerDialogOptionMode(I)I
.end method

.method public abstract setPowerMenuLockedState(Z)I
.end method

.method public abstract setPowerSavingMode(I)I
.end method

.method public abstract setProKioskNotificationMessagesState(Z)I
.end method

.method public abstract setProKioskPowerDialogCustomItems(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setProKioskPowerDialogCustomItemsState(Z)I
.end method

.method public abstract setProKioskState(ZLjava/lang/String;)I
.end method

.method public abstract setProKioskStatusBarClockState(Z)I
.end method

.method public abstract setProKioskStatusBarIconsState(Z)I
.end method

.method public abstract setProKioskStatusBarMode(I)I
.end method

.method public abstract setProKioskString(ILjava/lang/String;)I
.end method

.method public abstract setProKioskUsbMassStorageState(Z)I
.end method

.method public abstract setProKioskUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setProKioskUsbNetState(Z)I
.end method

.method public abstract setProtectBatteryState(Z)I
.end method

.method public abstract setQuickPanelButtons(I)I
.end method

.method public abstract setQuickPanelEditMode(I)I
.end method

.method public abstract setQuickPanelItems(Ljava/lang/String;)I
.end method

.method public abstract setQuickPanelItemsInternal(Landroid/os/Bundle;)I
.end method

.method public abstract setRecentLongPressActivity(Ljava/lang/String;)I
.end method

.method public abstract setRecentLongPressMode(I)I
.end method

.method public abstract setScreenOffOnHomeLongPressState(Z)I
.end method

.method public abstract setScreenOffOnStatusBarDoubleTapState(Z)I
.end method

.method public abstract setScreenPowerSavingState(Z)I
.end method

.method public abstract setScreenTimeout(I)I
.end method

.method public abstract setScreenWakeupOnPowerState(Z)I
.end method

.method public abstract setSensorDisabled(ZI)I
.end method

.method public abstract setSettingsEnabledItems(ZI)I
.end method

.method public abstract setSettingsHiddenState(ZI)I
.end method

.method public abstract setShowIMEWithHardKeyboard(I)I
.end method

.method public abstract setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I
.end method

.method public abstract setShuttingDownAnimationSub(Landroid/os/ParcelFileDescriptor;)I
.end method

.method public abstract setStatusBarClockState(Z)I
.end method

.method public abstract setStatusBarIconsState(Z)I
.end method

.method public abstract setStatusBarMode(I)I
.end method

.method public abstract setStatusBarNotificationsState(Z)I
.end method

.method public abstract setStatusBarText(Ljava/lang/String;II)I
.end method

.method public abstract setStatusBarTextScrollWidth(Ljava/lang/String;III)I
.end method

.method public abstract setStayAwakeState(Z)I
.end method

.method public abstract setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setSystemRingtone(ILjava/lang/String;)I
.end method

.method public abstract setSystemSoundsEnabledState(II)I
.end method

.method public abstract setSystemSoundsSilent()I
.end method

.method public abstract setToastEnabledState(Z)I
.end method

.method public abstract setToastGravity(III)I
.end method

.method public abstract setToastGravityEnabledState(Z)I
.end method

.method public abstract setToastShowPackageNameState(Z)I
.end method

.method public abstract setTorchOnVolumeButtonsState(Z)I
.end method

.method public abstract setUnlockSimOnBootState(Z)I
.end method

.method public abstract setUnlockSimPin(Ljava/lang/String;)I
.end method

.method public abstract setUsbConnectionType(I)I
.end method

.method public abstract setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I
.end method

.method public abstract setUsbMassStorageState(Z)I
.end method

.method public abstract setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setUsbNetState(Z)I
.end method

.method public abstract setUserInactivityTimeout(I)I
.end method

.method public abstract setVibrationIntensity(II)I
.end method

.method public abstract setVolumeButtonRotationState(Z)I
.end method

.method public abstract setVolumeControlStream(I)I
.end method

.method public abstract setVolumeKeyAppState(Z)I
.end method

.method public abstract setVolumeKeyAppsList(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setVolumePanelEnabledState(Z)I
.end method

.method public abstract setWallpaper(Landroid/os/Bundle;Landroid/graphics/Rect;ZI)I
.end method

.method public abstract setWifiConnectionMonitorState(Z)I
.end method

.method public abstract setWifiFrequencyBand(I)I
.end method

.method public abstract setWifiHotspotEnabledState(I)I
.end method

.method public abstract setWifiState(ZLjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setWifiStateEap(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setZeroPageState(I)I
.end method

.method public abstract startProKioskMode(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract startSmartView()I
.end method

.method public abstract startTcpDump(Ljava/lang/String;I)I
.end method

.method public abstract stayInDexForegroundMode(Landroid/content/ComponentName;)Z
.end method

.method public abstract stopProKioskMode(Ljava/lang/String;)I
.end method

.method public abstract stopTcpDump()I
.end method
