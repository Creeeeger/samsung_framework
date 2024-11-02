.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final assistManagerLazyProvider:Ljavax/inject/Provider;

.field public final authControllerProvider:Ljavax/inject/Provider;

.field public final batteryControllerProvider:Ljavax/inject/Provider;

.field public final biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

.field public final burnInInteractorProvider:Ljavax/inject/Provider;

.field public final deviceProvisionedControllerProvider:Ljavax/inject/Provider;

.field public final dozeInteractorProvider:Ljavax/inject/Provider;

.field public final dozeLogProvider:Ljavax/inject/Provider;

.field public final dozeScrimControllerProvider:Ljavax/inject/Provider;

.field public final headsUpManagerPhoneProvider:Ljavax/inject/Provider;

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final mLooperSlowLogControllerProvider:Ljavax/inject/Provider;

.field public final mPluginAODManagerLazyProvider:Ljavax/inject/Provider;

.field public final mSecPanelPolicyLazyProvider:Ljavax/inject/Provider;

.field public final notificationIconAreaControllerProvider:Ljavax/inject/Provider;

.field public final notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

.field public final notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

.field public final powerManagerProvider:Ljavax/inject/Provider;

.field public final pulseExpansionHandlerProvider:Ljavax/inject/Provider;

.field public final scrimControllerProvider:Ljavax/inject/Provider;

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;

.field public final wakefulnessLifecycleProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
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
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->scrimControllerProvider:Ljavax/inject/Provider;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->authControllerProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    move-object/from16 v1, p17

    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    .line 59
    .line 60
    move-object/from16 v1, p18

    .line 61
    .line 62
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->dozeInteractorProvider:Ljavax/inject/Provider;

    .line 63
    .line 64
    move-object/from16 v1, p19

    .line 65
    .line 66
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->burnInInteractorProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    move-object/from16 v1, p20

    .line 69
    .line 70
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->mLooperSlowLogControllerProvider:Ljavax/inject/Provider;

    .line 71
    .line 72
    move-object/from16 v1, p21

    .line 73
    .line 74
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->mPluginAODManagerLazyProvider:Ljavax/inject/Provider;

    .line 75
    .line 76
    move-object/from16 v1, p22

    .line 77
    .line 78
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->mSecPanelPolicyLazyProvider:Ljavax/inject/Provider;

    .line 79
    .line 80
    return-void
.end method

.method public static newInstance(Lcom/android/systemui/doze/DozeLog;Landroid/os/PowerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;)Lcom/android/systemui/statusbar/phone/DozeServiceHost;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move-object/from16 v7, p6

    .line 14
    .line 15
    move-object/from16 v8, p7

    .line 16
    .line 17
    move-object/from16 v9, p8

    .line 18
    .line 19
    move-object/from16 v10, p9

    .line 20
    .line 21
    move-object/from16 v11, p10

    .line 22
    .line 23
    move-object/from16 v12, p11

    .line 24
    .line 25
    move-object/from16 v13, p12

    .line 26
    .line 27
    move-object/from16 v14, p13

    .line 28
    .line 29
    move-object/from16 v15, p14

    .line 30
    .line 31
    move-object/from16 v16, p15

    .line 32
    .line 33
    move-object/from16 v17, p16

    .line 34
    .line 35
    move-object/from16 v18, p17

    .line 36
    .line 37
    move-object/from16 v19, p18

    .line 38
    .line 39
    new-instance v20, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 40
    .line 41
    move-object/from16 v0, v20

    .line 42
    .line 43
    invoke-direct/range {v0 .. v19}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;-><init>(Lcom/android/systemui/doze/DozeLog;Landroid/os/PowerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;)V

    .line 44
    .line 45
    .line 46
    return-object v20
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    .line 4
    .line 5
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/android/systemui/doze/DozeLog;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v3, v1

    .line 19
    check-cast v3, Landroid/os/PowerManager;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v4, v1

    .line 28
    check-cast v4, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v5, v1

    .line 37
    check-cast v5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v6, v1

    .line 46
    check-cast v6, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->headsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 49
    .line 50
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v7, v1

    .line 55
    check-cast v7, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    .line 58
    .line 59
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v8, v1

    .line 64
    check-cast v8, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->scrimControllerProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v9, v1

    .line 73
    check-cast v9, Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->biometricUnlockControllerLazyProvider:Ljavax/inject/Provider;

    .line 76
    .line 77
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    .line 82
    .line 83
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    .line 88
    .line 89
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    move-object v12, v1

    .line 94
    check-cast v12, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 95
    .line 96
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 97
    .line 98
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    move-object v13, v1

    .line 103
    check-cast v13, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 104
    .line 105
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 106
    .line 107
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    move-object v14, v1

    .line 112
    check-cast v14, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 113
    .line 114
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 115
    .line 116
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    move-object v15, v1

    .line 121
    check-cast v15, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 122
    .line 123
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 124
    .line 125
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    move-object/from16 v16, v1

    .line 130
    .line 131
    check-cast v16, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 132
    .line 133
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->authControllerProvider:Ljavax/inject/Provider;

    .line 134
    .line 135
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    move-object/from16 v17, v1

    .line 140
    .line 141
    check-cast v17, Lcom/android/systemui/biometrics/AuthController;

    .line 142
    .line 143
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    .line 144
    .line 145
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    move-object/from16 v18, v1

    .line 150
    .line 151
    check-cast v18, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 152
    .line 153
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->dozeInteractorProvider:Ljavax/inject/Provider;

    .line 154
    .line 155
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    move-object/from16 v19, v1

    .line 160
    .line 161
    check-cast v19, Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    .line 162
    .line 163
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->burnInInteractorProvider:Ljavax/inject/Provider;

    .line 164
    .line 165
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    move-object/from16 v20, v1

    .line 170
    .line 171
    check-cast v20, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;

    .line 172
    .line 173
    invoke-static/range {v2 .. v20}, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->newInstance(Lcom/android/systemui/doze/DozeLog;Landroid/os/PowerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;)Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->mLooperSlowLogControllerProvider:Ljavax/inject/Provider;

    .line 178
    .line 179
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 184
    .line 185
    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 186
    .line 187
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->mPluginAODManagerLazyProvider:Ljavax/inject/Provider;

    .line 188
    .line 189
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost_Factory;->mSecPanelPolicyLazyProvider:Ljavax/inject/Provider;

    .line 196
    .line 197
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSecPanelPolicyLazy:Ldagger/Lazy;

    .line 202
    .line 203
    return-object v1
.end method
