.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricAuthFailed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricAuthenticated(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBiometricLockoutChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricLockoutChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDeviceProvisioned()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDreamingStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onEmergencyCallAction()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onEmergencyStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onEmergencyStateChanged(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onFailedUnlockAttemptChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onFailedUnlockAttemptChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onFinishedGoingToSleep(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onKeyguardBouncerFullyShowingChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onLocaleChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onLocaleChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onLockDisabledChanged(Z)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onLockDisabledChanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onLockModeChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onLogoutEnabledChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onLogoutEnabledChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onOwnerInfoChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onOwnerInfoChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPackageAdded(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPackageChanged(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPackageDataCleared(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPhoneStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPrimaryBouncerVisibilityChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onPrimaryBouncerVisibilityChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onRefreshBatteryInfo()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRefreshCarrierInfo(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRemoteLockInfoChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onRemoteLockInfoChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onSecurityViewChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onShadeExpandedChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onShadeExpandedChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSystemDialogsShowing()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onSystemDialogsShowing()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTelephonyCapable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTimeChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTrustManagedChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 2
    .line 3
    xor-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onUpdateCoverState(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper$FaceWidgetKeyguardUpdateMonitorCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitorCallback;->onUserUnlocked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
