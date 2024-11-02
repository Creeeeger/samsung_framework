.class public final Lcom/android/systemui/doze/DozeScreenState_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final authControllerProvider:Ljavax/inject/Provider;

.field public final dozeLogProvider:Ljavax/inject/Provider;

.field public final dozeScreenBrightnessProvider:Ljavax/inject/Provider;

.field public final handlerProvider:Ljavax/inject/Provider;

.field public final hostProvider:Ljavax/inject/Provider;

.field public final mAODTouchModeManagerProvider:Ljavax/inject/Provider;

.field public final mPluginAODManagerLazyProvider:Ljavax/inject/Provider;

.field public final mPowerManagerProvider:Ljavax/inject/Provider;

.field public final mSubScreenManagerProvider:Ljavax/inject/Provider;

.field public final parametersProvider:Ljavax/inject/Provider;

.field public final serviceProvider:Ljavax/inject/Provider;

.field public final udfpsControllerProvider:Ljavax/inject/Provider;

.field public final wakeLockProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->serviceProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->parametersProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->wakeLockProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->authControllerProvider:Ljavax/inject/Provider;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->udfpsControllerProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->dozeScreenBrightnessProvider:Ljavax/inject/Provider;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->mPluginAODManagerLazyProvider:Ljavax/inject/Provider;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->mAODTouchModeManagerProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->mPowerManagerProvider:Ljavax/inject/Provider;

    .line 27
    .line 28
    iput-object p13, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->mSubScreenManagerProvider:Ljavax/inject/Provider;

    .line 29
    .line 30
    return-void
.end method

.method public static newInstance(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/biometrics/AuthController;Ljavax/inject/Provider;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/doze/DozeScreenBrightness;)Lcom/android/systemui/doze/DozeScreenState;
    .locals 11

    .line 1
    new-instance v10, Lcom/android/systemui/doze/DozeScreenState;

    .line 2
    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    move-object/from16 v8, p7

    .line 14
    .line 15
    move-object/from16 v9, p8

    .line 16
    .line 17
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeScreenState;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/biometrics/AuthController;Ljavax/inject/Provider;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/doze/DozeScreenBrightness;)V

    .line 18
    .line 19
    .line 20
    return-object v10
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->serviceProvider:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/systemui/doze/DozeMachine$Service;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 11
    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    check-cast v2, Landroid/os/Handler;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->hostProvider:Ljavax/inject/Provider;

    .line 20
    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Lcom/android/systemui/doze/DozeHost;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->parametersProvider:Ljavax/inject/Provider;

    .line 29
    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v4, v0

    .line 35
    check-cast v4, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->wakeLockProvider:Ljavax/inject/Provider;

    .line 38
    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Lcom/android/systemui/util/wakelock/WakeLock;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->authControllerProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v6, v0

    .line 53
    check-cast v6, Lcom/android/systemui/biometrics/AuthController;

    .line 54
    .line 55
    iget-object v7, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->udfpsControllerProvider:Ljavax/inject/Provider;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    .line 58
    .line 59
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    move-object v8, v0

    .line 64
    check-cast v8, Lcom/android/systemui/doze/DozeLog;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->dozeScreenBrightnessProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object v9, v0

    .line 73
    check-cast v9, Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 74
    .line 75
    invoke-static/range {v1 .. v9}, Lcom/android/systemui/doze/DozeScreenState_Factory;->newInstance(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/biometrics/AuthController;Ljavax/inject/Provider;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/doze/DozeScreenBrightness;)Lcom/android/systemui/doze/DozeScreenState;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->mPluginAODManagerLazyProvider:Ljavax/inject/Provider;

    .line 80
    .line 81
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, v0, Lcom/android/systemui/doze/DozeScreenState;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->mAODTouchModeManagerProvider:Ljavax/inject/Provider;

    .line 88
    .line 89
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/android/systemui/aod/AODTouchModeManager;

    .line 94
    .line 95
    iput-object v1, v0, Lcom/android/systemui/doze/DozeScreenState;->mAODTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->mPowerManagerProvider:Ljavax/inject/Provider;

    .line 98
    .line 99
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Landroid/os/PowerManager;

    .line 104
    .line 105
    iput-object v1, v0, Lcom/android/systemui/doze/DozeScreenState;->mPowerManager:Landroid/os/PowerManager;

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState_Factory;->mSubScreenManagerProvider:Ljavax/inject/Provider;

    .line 108
    .line 109
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Lcom/android/systemui/subscreen/SubScreenManager;

    .line 114
    .line 115
    iput-object p0, v0, Lcom/android/systemui/doze/DozeScreenState;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 116
    .line 117
    return-object v0
.end method
