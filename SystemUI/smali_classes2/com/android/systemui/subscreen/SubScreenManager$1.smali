.class public final Lcom/android/systemui/subscreen/SubScreenManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    const-string v1, "SubScreenManager"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "onBiometricAuthFailed() no plugin"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "onBiometricAuthFailed() "

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/systemui/subscreen/SubScreenManager;->getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 37
    .line 38
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onBiometricAuthFailed(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    const-string v1, "SubScreenManager"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "onBiometricAuthenticated() no plugin"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "onBiometricAuthenticated() "

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/android/systemui/subscreen/SubScreenManager;->getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 37
    .line 38
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onBiometricAuthenticated(IIZ)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    const-string v1, "SubScreenManager"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "onBiometricError() no plugin"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "onBiometricError() "

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p3}, Lcom/android/systemui/subscreen/SubScreenManager;->getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 37
    .line 38
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onBiometricError(ILjava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    const-string v1, "SubScreenManager"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "onBiometricHelp() no plugin"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "onBiometricHelp() "

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p3}, Lcom/android/systemui/subscreen/SubScreenManager;->getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 37
    .line 38
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onBiometricHelp(ILjava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    const-string v1, "SubScreenManager"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "onBiometricRunningStateChanged() no plugin"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "onBiometricRunningStateChanged() "

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/systemui/subscreen/SubScreenManager;->getBiometricType(Landroid/hardware/biometrics/BiometricSourceType;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 37
    .line 38
    invoke-interface {p0, p2, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onBiometricRunningStateChanged(ZI)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final onDualDARInnerLockscreenRequirementChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 10
    .line 11
    const-string v1, "SubScreenManager"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "onDualDARInnerLockscreenRequirementChanged() no plugin"

    .line 16
    .line 17
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "onDualDARInnerLockscreenRequirementChanged() "

    .line 22
    .line 23
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 27
    .line 28
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDualDARInnerLockscreenRequirementChanged(Z)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final onLockDisabledChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    const-string v1, "SubScreenManager"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "onLockDisabledChanged() no plugin"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "onLockDisabledChanged() "

    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 21
    .line 22
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onLockDisabledChanged(Z)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SubScreenManager"

    .line 8
    .line 9
    const-string p1, "onPackageAdded() no plugin"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageAdded(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SubScreenManager"

    .line 8
    .line 9
    const-string p1, "onPackageChanged() no plugin"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageChanged(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SubScreenManager"

    .line 8
    .line 9
    const-string p1, "onPackageDataCleared() no plugin"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageDataCleared(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SubScreenManager"

    .line 8
    .line 9
    const-string p1, "onPackageRemoved() no plugin"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onPackageRemoved(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/subscreen/SubScreenManager$8;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/android/keyguard/SecurityUtils;->checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 23
    .line 24
    const-string v2, "SubScreenManager"

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string p0, "onFullscreenBouncerChanged() no plugin"

    .line 29
    .line 30
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "onFullscreenBouncerChanged() "

    .line 35
    .line 36
    const-string v3, " "

    .line 37
    .line 38
    invoke-static {v0, p1, v3, v1, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 42
    .line 43
    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFullscreenBouncerChanged(ZZ)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUserUnlocked()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$1;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 4
    .line 5
    const-string v1, "SubScreenManager"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo p0, "onUserUnlocked() no plugin"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v0, "onUserUnlocked() "

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 23
    .line 24
    invoke-interface {p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onUserUnlocked()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
