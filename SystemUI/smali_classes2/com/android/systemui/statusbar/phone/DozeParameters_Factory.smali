.class public final Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

.field public final ambientDisplayConfigurationProvider:Ljavax/inject/Provider;

.field public final batteryControllerProvider:Ljavax/inject/Provider;

.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final handlerProvider:Ljavax/inject/Provider;

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final lockPatternUtilsProvider:Ljavax/inject/Provider;

.field public final pluginAODManagerLazyProvider:Ljavax/inject/Provider;

.field public final powerManagerProvider:Ljavax/inject/Provider;

.field public final resourcesProvider:Ljavax/inject/Provider;

.field public final screenOffAnimationControllerProvider:Ljavax/inject/Provider;

.field public final settingsHelperProvider:Ljavax/inject/Provider;

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;

.field public final sysUiUnfoldComponentProvider:Ljavax/inject/Provider;

.field public final tunerServiceProvider:Ljavax/inject/Provider;

.field public final unlockedScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

.field public final userTrackerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->ambientDisplayConfigurationProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->screenOffAnimationControllerProvider:Ljavax/inject/Provider;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->sysUiUnfoldComponentProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->unlockedScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    move-object/from16 v1, p17

    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 59
    .line 60
    move-object/from16 v1, p18

    .line 61
    .line 62
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 63
    .line 64
    move-object/from16 v1, p19

    .line 65
    .line 66
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    return-void
.end method

.method public static newInstance(Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;Landroid/os/Handler;Landroid/content/res/Resources;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/settings/UserTracker;)Lcom/android/systemui/statusbar/phone/DozeParameters;
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
    new-instance v20, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 40
    .line 41
    move-object/from16 v0, v20

    .line 42
    .line 43
    invoke-direct/range {v0 .. v19}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;Landroid/os/Handler;Landroid/content/res/Resources;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/settings/UserTracker;)V

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
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v4, v1

    .line 25
    check-cast v4, Lcom/android/internal/widget/LockPatternUtils;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 28
    .line 29
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v5, v1

    .line 34
    check-cast v5, Landroid/content/Context;

    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 37
    .line 38
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object v6, v1

    .line 43
    check-cast v6, Landroid/os/Handler;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 46
    .line 47
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v7, v1

    .line 52
    check-cast v7, Landroid/content/res/Resources;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->ambientDisplayConfigurationProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v8, v1

    .line 61
    check-cast v8, Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->alwaysOnDisplayPolicyProvider:Ljavax/inject/Provider;

    .line 64
    .line 65
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object v9, v1

    .line 70
    check-cast v9, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    .line 73
    .line 74
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v10, v1

    .line 79
    check-cast v10, Landroid/os/PowerManager;

    .line 80
    .line 81
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->batteryControllerProvider:Ljavax/inject/Provider;

    .line 82
    .line 83
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object v11, v1

    .line 88
    check-cast v11, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    .line 91
    .line 92
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    move-object v12, v1

    .line 97
    check-cast v12, Lcom/android/systemui/tuner/TunerService;

    .line 98
    .line 99
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 100
    .line 101
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v13, v1

    .line 106
    check-cast v13, Lcom/android/systemui/dump/DumpManager;

    .line 107
    .line 108
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->screenOffAnimationControllerProvider:Ljavax/inject/Provider;

    .line 109
    .line 110
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    move-object v14, v1

    .line 115
    check-cast v14, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 116
    .line 117
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->sysUiUnfoldComponentProvider:Ljavax/inject/Provider;

    .line 118
    .line 119
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v15, v1

    .line 124
    check-cast v15, Ljava/util/Optional;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->unlockedScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

    .line 127
    .line 128
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    move-object/from16 v16, v1

    .line 133
    .line 134
    check-cast v16, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 135
    .line 136
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 137
    .line 138
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    move-object/from16 v17, v1

    .line 143
    .line 144
    check-cast v17, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 147
    .line 148
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    move-object/from16 v18, v1

    .line 153
    .line 154
    check-cast v18, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 155
    .line 156
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 157
    .line 158
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    move-object/from16 v19, v1

    .line 163
    .line 164
    check-cast v19, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 165
    .line 166
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    .line 167
    .line 168
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    move-object/from16 v20, v0

    .line 173
    .line 174
    check-cast v20, Lcom/android/systemui/settings/UserTracker;

    .line 175
    .line 176
    invoke-static/range {v2 .. v20}, Lcom/android/systemui/statusbar/phone/DozeParameters_Factory;->newInstance(Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;Landroid/os/Handler;Landroid/content/res/Resources;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/settings/UserTracker;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0
.end method
