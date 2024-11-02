.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView$Callback;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract applyBlur(F)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x404
    .end annotation
.end method

.method public abstract applyBlur(I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x406
    .end annotation
.end method

.method public abstract canBeSkipOnWakeAndUnlock()Z
.end method

.method public abstract getAODClockView(Z)Landroid/view/View;
.end method

.method public abstract getAODZigzagPosition()Landroid/graphics/Point;
.end method

.method public abstract getAdaptiveColorResult()[I
.end method

.method public abstract getColorSchemeController()Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorSchemeController;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d2
    .end annotation
.end method

.method public abstract getDisplayLifeCycle()Lcom/android/systemui/plugins/keyguardstatusview/PluginDisplayLifeCycle;
.end method

.method public abstract getFloatingShortcutRotation()I
.end method

.method public abstract getHomeCityTimeZoneDeviceProvisionedFromPrefs()Ljava/lang/String;
.end method

.method public abstract getInDisplayFingerprintHeight()I
.end method

.method public abstract getInDisplayFingerprintImageSize()I
.end method

.method public abstract getKeyguardStatusCallback()Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusCallback;
.end method

.method public abstract getKeyguardUpdateMonitor()Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitor;
.end method

.method public abstract getKnoxStateMonitor()Lcom/android/systemui/plugins/keyguardstatusview/PluginKnoxStateMonitor;
.end method

.method public abstract getLockPatternUtils()Lcom/android/systemui/plugins/keyguardstatusview/PluginLockPatternUtils;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMediaPlayerLastExpandedFromPrefs()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d7
    .end annotation
.end method

.method public abstract getNavigationBarHeight()I
.end method

.method public abstract getNotificationControllerCallback()Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController$Callback;
.end method

.method public abstract getNotificationPanelViewHeight()I
.end method

.method public abstract getPluginLockManager()Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetLockManager;
.end method

.method public abstract getSystemUIPluginVersion()I
.end method

.method public abstract getWallpaperUtils()Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWallpaperUtils;
.end method

.method public abstract hasAdaptiveColorResult()Z
.end method

.method public abstract isBlurSupported()Z
.end method

.method public abstract isCMASSupported()Z
.end method

.method public abstract isCapturedBlurSupported()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x404
    .end annotation
.end method

.method public abstract isEditMode()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x410
    .end annotation
.end method

.method public abstract isInDisplayFingerprintSupported()Z
.end method

.method public abstract isLockScreenDisabled()Z
.end method

.method public abstract isMultiSimSupported()Z
.end method

.method public abstract isNoLockIcon()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f5
    .end annotation
.end method

.method public abstract isOpenThemeSupported()Z
.end method

.method public abstract isPresidentialCMASSupported()Z
.end method

.method public abstract isSubDisplay()Z
.end method

.method public abstract isUIBiometricsSupported()Z
.end method

.method public abstract isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
.end method

.method public abstract isWiFiOnlyDevice()Z
.end method

.method public abstract onClockPageTransitionEnded()V
.end method

.method public abstract putHomeCityTimeZoneDeviceProvisionedToPrefs(Ljava/lang/String;)V
.end method

.method public abstract putHomeCityTimeZoneSetToPrefs(Ljava/lang/String;)V
.end method

.method public abstract putMediaPlayerLastExpandedToPrefs(Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d7
    .end annotation
.end method

.method public abstract removeMediaData(Ljava/util/List;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x40c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x403
    .end annotation
.end method

.method public abstract sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x403
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldControlScreenOff()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7dc
    .end annotation
.end method

.method public abstract shouldEnableKeyguardScreenRotation()Z
.end method

.method public abstract updateAnimateScreenOff()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x401
    .end annotation
.end method

.method public abstract updateFaceWidgetArea()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f7
    .end annotation
.end method

.method public abstract updateNIOShortcutFingerPrintVisibility(Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x408
    .end annotation
.end method
