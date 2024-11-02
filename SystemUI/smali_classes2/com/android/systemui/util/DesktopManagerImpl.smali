.class public final Lcom/android/systemui/util/DesktopManagerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager;


# static fields
.field public static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;

.field public static final DEX_SETTINGS_URI:Landroid/net/Uri;


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mCustomDeviceControlsController:Ldagger/Lazy;

.field public final mDesktopBinderCallback:Lcom/android/systemui/util/DesktopManagerImpl$4;

.field public mDesktopBluetoothCallback:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$1;

.field public mDesktopMode:I

.field public final mDesktopModeListener:Lcom/android/systemui/util/DesktopManagerImpl$6;

.field public final mDesktopSettingsObserver:Lcom/android/systemui/util/DesktopManagerImpl$7;

.field public mDesktopStatusBarIconCallback:Ljava/util/List;

.field public final mDesktopSystemUiBinderLazy:Ldagger/Lazy;

.field public mDexOccluded:Z

.field public final mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

.field public final mIDesktopCallback:Lcom/android/systemui/util/DesktopManagerImpl$5;

.field public final mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

.field public final mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field public final mKeyguardViewControllerLazy:Ldagger/Lazy;

.field public final mObserver:Lcom/android/systemui/util/DesktopManagerImpl$1;

.field public final mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 2
    .line 3
    .line 4
    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sput-object v1, Lcom/android/systemui/util/DesktopManagerImpl;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/systemui/util/DesktopManagerImpl;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/logging/IndicatorLogger;Ldagger/Lazy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/logging/IndicatorLogger;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2c6

    .line 5
    .line 6
    iput v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDexOccluded:Z

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/util/DesktopManagerImpl$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/systemui/util/DesktopManagerImpl$1;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mObserver:Lcom/android/systemui/util/DesktopManagerImpl$1;

    .line 17
    .line 18
    new-instance v1, Lcom/android/systemui/util/DesktopManagerImpl$2;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/android/systemui/util/DesktopManagerImpl$2;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/util/DesktopManagerImpl$3;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 35
    .line 36
    new-instance v2, Lcom/android/systemui/util/DesktopManagerImpl$4;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/android/systemui/util/DesktopManagerImpl$4;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopBinderCallback:Lcom/android/systemui/util/DesktopManagerImpl$4;

    .line 42
    .line 43
    new-instance v2, Lcom/android/systemui/util/DesktopManagerImpl$5;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/android/systemui/util/DesktopManagerImpl$5;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIDesktopCallback:Lcom/android/systemui/util/DesktopManagerImpl$5;

    .line 49
    .line 50
    new-instance v2, Lcom/android/systemui/util/DesktopManagerImpl$6;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/android/systemui/util/DesktopManagerImpl$6;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopModeListener:Lcom/android/systemui/util/DesktopManagerImpl$6;

    .line 56
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v3, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    .line 63
    .line 64
    new-instance v3, Lcom/android/systemui/util/DesktopManagerImpl$7;

    .line 65
    .line 66
    invoke-direct {v3, p0, v1}, Lcom/android/systemui/util/DesktopManagerImpl$7;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;Landroid/os/Handler;)V

    .line 67
    .line 68
    .line 69
    iput-object v3, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSettingsObserver:Lcom/android/systemui/util/DesktopManagerImpl$7;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    iput-object p2, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 74
    .line 75
    iput-object p3, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 76
    .line 77
    iput-object p4, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 78
    .line 79
    iput-object p6, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 80
    .line 81
    iput-object p5, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 82
    .line 83
    iput-object p7, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

    .line 84
    .line 85
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_DEX_SUPPORT:Z

    .line 86
    .line 87
    if-eqz p2, :cond_0

    .line 88
    .line 89
    iput-object p8, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCustomDeviceControlsController:Ldagger/Lazy;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const/4 p2, 0x0

    .line 93
    iput-object p2, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCustomDeviceControlsController:Ldagger/Lazy;

    .line 94
    .line 95
    :goto_0
    const-string p2, "desktopmode"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 104
    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 112
    .line 113
    invoke-virtual {p2, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_1

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/util/DesktopManagerImpl;->startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    .line 130
    .line 131
    .line 132
    :cond_1
    return-void
.end method

.method public static getBouncerMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "msg"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string p0, ""

    .line 18
    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string/jumbo v1, "subMsg"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    const-string/jumbo p0, "popupMsg"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final getCurrentSecurityMode()I
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x5

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    sget-object v2, Lcom/android/systemui/util/DesktopManagerImpl$8;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    aget p0, v2, p0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq p0, v2, :cond_4

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    if-eq p0, v4, :cond_3

    .line 34
    .line 35
    const/4 v5, 0x4

    .line 36
    const/4 v6, 0x3

    .line 37
    if-eq p0, v6, :cond_2

    .line 38
    .line 39
    if-eq p0, v5, :cond_5

    .line 40
    .line 41
    if-eq p0, v3, :cond_1

    .line 42
    .line 43
    move v4, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v4, v6

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v4, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move v4, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    const/4 v4, 0x0

    .line 52
    :cond_5
    :goto_0
    if-eq v4, v3, :cond_7

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_6

    .line 59
    .line 60
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBiometricsAuthenticatedOnLock()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_7

    .line 65
    .line 66
    :cond_6
    return v2

    .line 67
    :cond_7
    return v4
.end method

.method public final getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final isDesktopMode()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    .line 2
    .line 3
    const/16 v0, 0x2c6

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isDualView()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    .line 2
    .line 3
    const/16 v0, 0x2c8

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isStandalone()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    .line 2
    .line 3
    const/16 v0, 0x2c7

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final notifyDismissKeyguard()V
    .locals 2

    .line 1
    const-string v0, "DesktopManager"

    .line 2
    .line 3
    const-string v1, "notifyDismissKeyguard()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 9
    .line 10
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onDismiss()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final notifyKeyguardLockout(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string v1, "notifyKeyguardLockout lockout="

    .line 22
    .line 23
    const-string v2, "DesktopManager"

    .line 24
    .line 25
    invoke-static {v1, p1, v2}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 31
    .line 32
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 37
    .line 38
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecViewController;->updateLockoutWarningMessage()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onLockout(ZLandroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyOccluded(Z)V
    .locals 2

    .line 1
    const-string v0, "notifyOccluded() occluded="

    .line 2
    .line 3
    const-string v1, "DesktopManager"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 9
    .line 10
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setOccluded(Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDexOccluded:Z

    .line 32
    .line 33
    return-void
.end method

.method public final notifyPrivacyItemsChanged(Z)V
    .locals 2

    .line 1
    const-string v0, "notifyPrivacyItemsChanged() visible = "

    .line 2
    .line 3
    const-string v1, " mDesktopMode = "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DesktopManager"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 30
    .line 31
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->notifyPrivacyItemsChanged(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final notifyScreenState(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "notifyScreenState() isScreenOn="

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "DesktopManager"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 39
    .line 40
    new-instance v0, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "isScreenOn"

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x3

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onUpdate(ILandroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final notifyShowKeyguard()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "notifyShowKeyguard() security mode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->getCurrentSecurityMode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "DesktopManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 25
    .line 26
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->getCurrentSecurityMode()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onShow(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final notifyTrustChanged(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "notifyTrustChanged hasTrust="

    .line 24
    .line 25
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " userId="

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "DesktopManager"

    .line 44
    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 53
    .line 54
    new-instance p1, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v0, "trust"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const/4 p2, 0x4

    .line 66
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onUpdate(ILandroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method public final notifyUpdateBouncerMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopBarConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDualView()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    const-string p0, "notifyUpdateBouncerMessage type= "

    .line 22
    .line 23
    const-string v1, "  msg="

    .line 24
    .line 25
    invoke-static {p0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, ""

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    move-object v2, p2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v1

    .line 36
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, "  sub="

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "  popupMsg="

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    if-eqz p3, :cond_1

    .line 53
    .line 54
    move-object v1, p3

    .line 55
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v1, "DesktopManager"

    .line 63
    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 72
    .line 73
    invoke-static {p2, p3}, Lcom/android/systemui/util/DesktopManagerImpl;->getBouncerMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->onUpdate(ILandroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setAirplaneMode(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "setAirplaneMode - visible:"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ",resId:"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/logging/IndicatorLogger;->log(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 36
    .line 37
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setAirplaneMode(ZI)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final setDesktopStatusBarIconCallback(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopStatusBarIconCallback:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopStatusBarIconCallback:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopStatusBarIconCallback:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setWifiIcon(ZII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "setWifiIcon - visible:"

    .line 8
    .line 9
    .line 10
    const-string v1, ",resId:"

    .line 11
    .line 12
    const-string v2, ",activityId:"

    .line 13
    .line 14
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIndicatorLogger:Lcom/android/systemui/statusbar/logging/IndicatorLogger;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/logging/IndicatorLogger;->log(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 31
    .line 32
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setWifiIcon(ZII)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x28

    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p2, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/16 v0, 0x1e

    .line 24
    .line 25
    if-ne p2, v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->stopSystemUIDesktopService()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/4 v0, 0x4

    .line 36
    if-ne p2, v0, :cond_5

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/16 p2, 0x32

    .line 43
    .line 44
    if-ne p1, p2, :cond_5

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->startSystemUIDesktopService()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-ne p2, v1, :cond_5

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-ne p1, v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->stopSystemUIDesktopService()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->startSystemUIDesktopService()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-ne p2, v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ne p1, v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->stopSystemUIDesktopService()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManagerImpl;->startSystemUIDesktopService()V

    .line 99
    .line 100
    .line 101
    :cond_5
    :goto_0
    return-void
.end method

.method public final startSystemUIDesktopService()V
    .locals 6

    .line 1
    const-string v0, "DesktopManager"

    .line 2
    .line 3
    const-string/jumbo v1, "startSystemUIDesktopService"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    const-string v2, " "

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/os/Bundle;

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const-string v1, "key"

    .line 26
    .line 27
    const-string v2, "enable_new_dex_home"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "def"

    .line 33
    .line 34
    const-string v3, "false"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v3, Lcom/android/systemui/util/DesktopManagerImpl;->DEX_SETTINGS_URI:Landroid/net/Uri;

    .line 46
    .line 47
    const-string v4, "getSettings"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    if-nez v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 73
    .line 74
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mIDesktopCallback:Lcom/android/systemui/util/DesktopManagerImpl$5;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->start(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopBinderCallback:Lcom/android/systemui/util/DesktopManagerImpl$4;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->registerCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;I)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    :cond_1
    return-void
.end method

.method public final stopSystemUIDesktopService()V
    .locals 3

    .line 1
    const-string v0, "DesktopManager"

    .line 2
    .line 3
    const-string/jumbo v1, "stopSystemUIDesktopService"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    const-string v2, " "

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 20
    .line 21
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->stop()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopBinderCallback:Lcom/android/systemui/util/DesktopManagerImpl$4;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->unregisterCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/DesktopManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/DesktopManagerImpl;I)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mHandler:Lcom/android/systemui/util/DesktopManagerImpl$3;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    .line 1
    const/16 v0, 0x2c6

    .line 2
    .line 3
    iput v0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/16 v0, 0x65

    .line 17
    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x66

    .line 21
    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 p1, 0x2c8

    .line 26
    .line 27
    iput p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 p1, 0x2c7

    .line 31
    .line 32
    iput p1, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopMode:I

    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method
