.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 8
    .line 9
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayDeviceType:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_1

    .line 12
    .line 13
    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayDeviceType:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockStarEnabled:Z

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->initLockStarLockIcon(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLayout()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateVisibility()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
