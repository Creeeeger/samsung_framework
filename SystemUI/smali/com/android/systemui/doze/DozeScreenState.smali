.class public final Lcom/android/systemui/doze/DozeScreenState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAODTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

.field public final mApplyPendingScreenState:Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mAuthControllerCallback:Lcom/android/systemui/doze/DozeScreenState$1;

.field public final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeScreenBrightness:Lcom/android/systemui/doze/DozeScreenBrightness;

.field public final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field public mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mHandler:Landroid/os/Handler;

.field public mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mIsExecutedClockTransition:Z

.field public mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mPendingScreenState:I

.field public mPluginAODManagerLazy:Ldagger/Lazy;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mRefreshRateToken:Landroid/os/IBinder;

.field public mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field public final mUdfpsControllerProvider:Ljavax/inject/Provider;

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/biometrics/AuthController;Ljavax/inject/Provider;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/doze/DozeScreenBrightness;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/doze/DozeMachine$Service;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/doze/DozeHost;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/doze/DozeScreenBrightness;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeScreenState;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    iput v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 13
    .line 14
    new-instance v0, Landroid/os/Binder;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mRefreshRateToken:Landroid/os/IBinder;

    .line 20
    .line 21
    new-instance v0, Lcom/android/systemui/doze/DozeScreenState$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeScreenState$1;-><init>(Lcom/android/systemui/doze/DozeScreenState;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mAuthControllerCallback:Lcom/android/systemui/doze/DozeScreenState$1;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    iput-object p4, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 35
    .line 36
    new-instance p1, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 37
    .line 38
    const-string p2, "DozeScreenState"

    .line 39
    .line 40
    invoke-direct {p1, p5, p2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 44
    .line 45
    iput-object p6, p0, Lcom/android/systemui/doze/DozeScreenState;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 46
    .line 47
    iput-object p7, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsControllerProvider:Ljavax/inject/Provider;

    .line 48
    .line 49
    iput-object p8, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 50
    .line 51
    iput-object p9, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeScreenBrightness:Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeScreenState;->updateUdfpsController()V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 57
    .line 58
    if-nez p0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p6, v0}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public final applyScreenState(IZ)V
    .locals 6

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "applyScreenState("

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", shouldWaitForTransitionToAodUi = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ")"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "DozeScreenState"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v2, 0x4

    .line 37
    if-ne p1, v2, :cond_2

    .line 38
    .line 39
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mPowerManager:Landroid/os/PowerManager;

    .line 51
    .line 52
    const/16 v4, 0x80

    .line 53
    .line 54
    invoke-virtual {v3, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iput-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    .line 60
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    .line 62
    const-wide/16 v4, 0x3e8

    .line 63
    .line 64
    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    .line 69
    const-string v4, "applyDrawWakeLock exception = "

    .line 70
    .line 71
    invoke-static {v4, v3, v1}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    .line 77
    .line 78
    const/4 v3, 0x2

    .line 79
    if-eq p1, v3, :cond_4

    .line 80
    .line 81
    if-ne p1, v2, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v3, v0

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    const/4 v3, 0x1

    .line 87
    :goto_2
    iput-boolean v3, v1, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    .line 88
    .line 89
    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeScreenState;->updateRefreshRate(I)V

    .line 94
    .line 95
    .line 96
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 97
    .line 98
    invoke-interface {v1, p1, p2}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(IZ)V

    .line 99
    .line 100
    .line 101
    sget-boolean p2, Lcom/android/systemui/LsRune;->SUBSCREEN_PLUGIN_DISCONNECT_WHEN_UNFOLDING:Z

    .line 102
    .line 103
    if-eqz p2, :cond_6

    .line 104
    .line 105
    if-ne p1, v2, :cond_6

    .line 106
    .line 107
    iget-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string/jumbo v3, "runPendingPluginConnectRunnable mPendingPluginConnect="

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-boolean v3, p2, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnect:Z

    .line 118
    .line 119
    const-string v4, "SubScreenManager"

    .line 120
    .line 121
    invoke-static {v1, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p2, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnectRunnable:Ljava/lang/Runnable;

    .line 125
    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 129
    .line 130
    .line 131
    const-string v1, "clearPendingPluginConnectRunnable"

    .line 132
    .line 133
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    iput-boolean v0, p2, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnect:Z

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    iput-object v1, p2, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnectRunnable:Ljava/lang/Runnable;

    .line 140
    .line 141
    :cond_6
    sget-boolean p2, Lcom/android/systemui/LsRune;->AOD_TSP_CONTROL:Z

    .line 142
    .line 143
    if-eqz p2, :cond_7

    .line 144
    .line 145
    if-ne p1, v2, :cond_7

    .line 146
    .line 147
    iget-object p2, p0, Lcom/android/systemui/doze/DozeScreenState;->mAODTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

    .line 148
    .line 149
    invoke-virtual {p2, v0}, Lcom/android/systemui/aod/AODTouchModeManager;->setTouchMode(I)V

    .line 150
    .line 151
    .line 152
    :cond_7
    const/4 p2, 0x3

    .line 153
    if-ne p1, p2, :cond_8

    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeScreenBrightness:Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady(Z)V

    .line 158
    .line 159
    .line 160
    :cond_8
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 163
    .line 164
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 165
    .line 166
    .line 167
    :cond_9
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mAuthControllerCallback:Lcom/android/systemui/doze/DozeScreenState$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthController;->removeCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_2

    .line 18
    :pswitch_0
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    :pswitch_2
    const/4 v0, 0x2

    .line 31
    goto :goto_2

    .line 32
    :pswitch_3
    const/4 v0, 0x4

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_1
    :pswitch_4
    move v0, v2

    .line 35
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/doze/DozeScreenState;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 36
    .line 37
    check-cast v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    iput-object v5, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Ljava/lang/Runnable;

    .line 41
    .line 42
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 43
    .line 44
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 45
    .line 46
    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 47
    .line 48
    if-ne v5, v6, :cond_2

    .line 49
    .line 50
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 51
    .line 52
    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    .line 55
    .line 56
    .line 57
    :cond_2
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/android/systemui/doze/DozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 60
    .line 61
    iget-object v6, p0, Lcom/android/systemui/doze/DozeScreenState;->mApplyPendingScreenState:Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    iget-object v7, p0, Lcom/android/systemui/doze/DozeScreenState;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    if-ne p2, v4, :cond_4

    .line 66
    .line 67
    iput v1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 68
    .line 69
    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(IZ)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 76
    .line 77
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 87
    .line 88
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 93
    .line 94
    iput-boolean v1, p1, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    .line 95
    .line 96
    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 97
    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeScreenState;->updateRefreshRate(I)V

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v5, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    if-nez v0, :cond_5

    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 111
    .line 112
    const-string v8, "DozeScreenState"

    .line 113
    .line 114
    if-ne p2, v4, :cond_6

    .line 115
    .line 116
    iget-boolean v9, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 117
    .line 118
    const-string/jumbo v10, "transitionTo INITIALIZED shouldWaitForTransitionToAodUi : "

    .line 119
    .line 120
    .line 121
    invoke-static {v10, v9, v8}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    move v9, v1

    .line 126
    :goto_3
    invoke-virtual {v7, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 131
    .line 132
    if-ne p1, v11, :cond_9

    .line 133
    .line 134
    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 135
    .line 136
    if-eq p2, v11, :cond_8

    .line 137
    .line 138
    sget-object v11, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 139
    .line 140
    if-ne p2, v11, :cond_7

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    move v11, v1

    .line 144
    goto :goto_5

    .line 145
    :cond_8
    :goto_4
    move v11, v2

    .line 146
    :goto_5
    if-eqz v11, :cond_9

    .line 147
    .line 148
    move v11, v2

    .line 149
    goto :goto_6

    .line 150
    :cond_9
    move v11, v1

    .line 151
    :goto_6
    sget-object v12, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 152
    .line 153
    if-eq p1, v12, :cond_a

    .line 154
    .line 155
    sget-object v12, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 156
    .line 157
    if-ne p1, v12, :cond_d

    .line 158
    .line 159
    :cond_a
    sget-object v12, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 160
    .line 161
    if-eq p2, v12, :cond_c

    .line 162
    .line 163
    sget-object v12, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 164
    .line 165
    if-ne p2, v12, :cond_b

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_b
    move v12, v1

    .line 169
    goto :goto_8

    .line 170
    :cond_c
    :goto_7
    move v12, v2

    .line 171
    :goto_8
    if-eqz v12, :cond_d

    .line 172
    .line 173
    move v12, v2

    .line 174
    goto :goto_9

    .line 175
    :cond_d
    move v12, v1

    .line 176
    :goto_9
    if-ne p1, v4, :cond_e

    .line 177
    .line 178
    move p1, v2

    .line 179
    goto :goto_a

    .line 180
    :cond_e
    move p1, v1

    .line 181
    :goto_a
    if-nez v10, :cond_10

    .line 182
    .line 183
    if-nez p1, :cond_10

    .line 184
    .line 185
    if-nez v11, :cond_10

    .line 186
    .line 187
    if-eqz v12, :cond_f

    .line 188
    .line 189
    goto :goto_b

    .line 190
    :cond_f
    invoke-virtual {p0, v0, v9}, Lcom/android/systemui/doze/DozeScreenState;->applyScreenState(IZ)V

    .line 191
    .line 192
    .line 193
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 194
    .line 195
    if-ne p2, p1, :cond_1e

    .line 196
    .line 197
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    .line 198
    .line 199
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 200
    .line 201
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 206
    .line 207
    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_15

    .line 211
    .line 212
    :cond_10
    :goto_b
    iput v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPendingScreenState:I

    .line 213
    .line 214
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 215
    .line 216
    if-ne p2, p1, :cond_17

    .line 217
    .line 218
    iget-boolean p1, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 219
    .line 220
    if-eqz p1, :cond_11

    .line 221
    .line 222
    iget-boolean p1, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mKeyguardVisible:Z

    .line 223
    .line 224
    if-eqz p1, :cond_11

    .line 225
    .line 226
    move p1, v2

    .line 227
    goto :goto_c

    .line 228
    :cond_11
    move p1, v1

    .line 229
    :goto_c
    if-nez p1, :cond_16

    .line 230
    .line 231
    iget-object p1, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 232
    .line 233
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    .line 234
    .line 235
    instance-of v3, p1, Ljava/util/Collection;

    .line 236
    .line 237
    if-eqz v3, :cond_12

    .line 238
    .line 239
    move-object v3, p1

    .line 240
    check-cast v3, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_12

    .line 247
    .line 248
    goto :goto_d

    .line 249
    :cond_12
    check-cast p1, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_14

    .line 260
    .line 261
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    check-cast v3, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    .line 266
    .line 267
    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldDelayDisplayDozeTransition()Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-eqz v3, :cond_13

    .line 272
    .line 273
    move p1, v2

    .line 274
    goto :goto_e

    .line 275
    :cond_14
    :goto_d
    move p1, v1

    .line 276
    :goto_e
    if-eqz p1, :cond_15

    .line 277
    .line 278
    goto :goto_f

    .line 279
    :cond_15
    move p1, v1

    .line 280
    goto :goto_10

    .line 281
    :cond_16
    :goto_f
    move p1, v2

    .line 282
    :goto_10
    if-eqz p1, :cond_17

    .line 283
    .line 284
    if-nez v12, :cond_17

    .line 285
    .line 286
    move p1, v2

    .line 287
    goto :goto_11

    .line 288
    :cond_17
    move p1, v1

    .line 289
    :goto_11
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 290
    .line 291
    if-ne p2, v3, :cond_18

    .line 292
    .line 293
    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 294
    .line 295
    if-eqz v3, :cond_18

    .line 296
    .line 297
    iget-boolean v3, v3, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    .line 298
    .line 299
    if-eqz v3, :cond_18

    .line 300
    .line 301
    move v3, v2

    .line 302
    goto :goto_12

    .line 303
    :cond_18
    move v3, v1

    .line 304
    :goto_12
    sget-boolean v4, Lcom/android/systemui/doze/DozeScreenState;->DEBUG:Z

    .line 305
    .line 306
    if-nez v10, :cond_1b

    .line 307
    .line 308
    if-eqz v4, :cond_1a

    .line 309
    .line 310
    const-string v4, "Display state changed to "

    .line 311
    .line 312
    const-string v10, " delayed by "

    .line 313
    .line 314
    invoke-static {v4, v0, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    if-eqz p1, :cond_19

    .line 319
    .line 320
    const/16 v4, 0xfa0

    .line 321
    .line 322
    goto :goto_13

    .line 323
    :cond_19
    move v4, v2

    .line 324
    :goto_13
    invoke-static {v0, v4, v8}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :cond_1a
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    .line 329
    .line 330
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 331
    .line 332
    if-ne p2, v0, :cond_1c

    .line 333
    .line 334
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeScreenState;->mIsExecutedClockTransition:Z

    .line 335
    .line 336
    new-instance v0, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    .line 337
    .line 338
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeScreenState;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    .line 343
    .line 344
    goto :goto_14

    .line 345
    :cond_1b
    if-eqz v4, :cond_1c

    .line 346
    .line 347
    const-string v4, "Pending display state change to "

    .line 348
    .line 349
    invoke-static {v4, v0, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :cond_1c
    :goto_14
    if-nez p1, :cond_1d

    .line 353
    .line 354
    if-eqz v3, :cond_1e

    .line 355
    .line 356
    :cond_1d
    invoke-virtual {v5, v2}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 357
    .line 358
    .line 359
    :cond_1e
    :goto_15
    if-eqz v9, :cond_1f

    .line 360
    .line 361
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 362
    .line 363
    if-ne p2, p1, :cond_1f

    .line 364
    .line 365
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 366
    .line 367
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    .line 372
    .line 373
    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    .line 374
    .line 375
    .line 376
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 377
    .line 378
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 383
    .line 384
    iput-boolean v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    .line 385
    .line 386
    :cond_1f
    return-void

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final updateRefreshRate(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x4

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "updateRefreshRate: displayState="

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " dozeSuspend="

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "DozeScreenState"

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    const-string p1, "display"

    .line 51
    .line 52
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 61
    .line 62
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mRefreshRateToken:Landroid/os/IBinder;

    .line 67
    .line 68
    const/16 v2, 0x1e

    .line 69
    .line 70
    invoke-interface {p1, v0, v2, v1}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 75
    .line 76
    const-string/jumbo p1, "updateRefreshRate enabled 30hz"

    .line 77
    .line 78
    .line 79
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 88
    .line 89
    if-nez p0, :cond_5

    .line 90
    .line 91
    const-string/jumbo p0, "updateRefreshRate failed"

    .line 92
    .line 93
    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    .line 103
    .line 104
    .line 105
    const-string/jumbo p1, "updateRefreshRate disabled"

    .line 106
    .line 107
    .line 108
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catch_1
    move-exception p1

    .line 113
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :goto_2
    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 118
    .line 119
    :cond_5
    :goto_3
    return-void
.end method

.method public final updateUdfpsController()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsControllerProvider:Ljavax/inject/Provider;

    .line 14
    .line 15
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/biometrics/UdfpsController;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/doze/DozeScreenState;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 26
    .line 27
    :goto_0
    return-void
.end method
