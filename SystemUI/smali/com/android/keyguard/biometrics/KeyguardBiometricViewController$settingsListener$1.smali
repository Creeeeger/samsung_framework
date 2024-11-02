.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    .line 1
    sget p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 21
    .line 22
    iput-boolean p1, v0, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/android/keyguard/SecLockIconView;->updateScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
