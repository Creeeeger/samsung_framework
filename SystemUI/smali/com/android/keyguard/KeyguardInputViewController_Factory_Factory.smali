.class public final Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final accessibilityManagerProvider:Ljavax/inject/Provider;

.field public final configurationControllerProvider:Ljavax/inject/Provider;

.field public final devicePostureControllerProvider:Ljavax/inject/Provider;

.field public final emergencyButtonControllerFactoryProvider:Ljavax/inject/Provider;

.field public final falsingCollectorProvider:Ljavax/inject/Provider;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final inputMethodManagerProvider:Ljavax/inject/Provider;

.field public final keyguardTouchSwipeDetectorProvider:Ljavax/inject/Provider;

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final keyguardViewControllerProvider:Ljavax/inject/Provider;

.field public final latencyTrackerProvider:Ljavax/inject/Provider;

.field public final liftToActivateListenerProvider:Ljavax/inject/Provider;

.field public final lockPatternUtilsProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final messageAreaControllerFactoryProvider:Ljavax/inject/Provider;

.field public final networkControllerProvider:Ljavax/inject/Provider;

.field public final resourcesProvider:Ljavax/inject/Provider;

.field public final rotationWatcherProvider:Ljavax/inject/Provider;

.field public final screenLifecycleProvider:Ljavax/inject/Provider;

.field public final telephonyManagerProvider:Ljavax/inject/Provider;

.field public final vibrationUtilProvider:Ljavax/inject/Provider;

.field public final wifiManagerProvider:Ljavax/inject/Provider;


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
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->rotationWatcherProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->vibrationUtilProvider:Ljavax/inject/Provider;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->keyguardTouchSwipeDetectorProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->wifiManagerProvider:Ljavax/inject/Provider;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->networkControllerProvider:Ljavax/inject/Provider;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->latencyTrackerProvider:Ljavax/inject/Provider;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->messageAreaControllerFactoryProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->inputMethodManagerProvider:Ljavax/inject/Provider;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->liftToActivateListenerProvider:Ljavax/inject/Provider;

    .line 55
    .line 56
    move-object/from16 v1, p17

    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->telephonyManagerProvider:Ljavax/inject/Provider;

    .line 59
    .line 60
    move-object/from16 v1, p18

    .line 61
    .line 62
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->falsingCollectorProvider:Ljavax/inject/Provider;

    .line 63
    .line 64
    move-object/from16 v1, p19

    .line 65
    .line 66
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->emergencyButtonControllerFactoryProvider:Ljavax/inject/Provider;

    .line 67
    .line 68
    move-object/from16 v1, p20

    .line 69
    .line 70
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->devicePostureControllerProvider:Ljavax/inject/Provider;

    .line 71
    .line 72
    move-object/from16 v1, p21

    .line 73
    .line 74
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->keyguardViewControllerProvider:Ljavax/inject/Provider;

    .line 75
    .line 76
    move-object/from16 v1, p22

    .line 77
    .line 78
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 79
    .line 80
    return-void
.end method

.method public static newInstance(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Ljava/lang/Object;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;)Lcom/android/keyguard/KeyguardInputViewController$Factory;
    .locals 24

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
    move-object/from16 v17, p16

    .line 32
    .line 33
    move-object/from16 v18, p17

    .line 34
    .line 35
    move-object/from16 v19, p18

    .line 36
    .line 37
    move-object/from16 v20, p19

    .line 38
    .line 39
    move-object/from16 v21, p20

    .line 40
    .line 41
    move-object/from16 v22, p21

    .line 42
    .line 43
    new-instance v23, Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 44
    .line 45
    move-object/from16 v0, v23

    .line 46
    .line 47
    move-object/from16 v16, p15

    .line 48
    .line 49
    check-cast v16, Lcom/android/keyguard/LiftToActivateListener;

    .line 50
    .line 51
    invoke-direct/range {v0 .. v22}, Lcom/android/keyguard/KeyguardInputViewController$Factory;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 52
    .line 53
    .line 54
    return-object v23
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

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
    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->rotationWatcherProvider:Ljavax/inject/Provider;

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
    check-cast v3, Lcom/android/keyguard/SecRotationWatcher;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

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
    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->vibrationUtilProvider:Ljavax/inject/Provider;

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
    check-cast v5, Lcom/android/systemui/vibrate/VibrationUtil;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

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
    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->keyguardTouchSwipeDetectorProvider:Ljavax/inject/Provider;

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
    check-cast v7, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->wifiManagerProvider:Ljavax/inject/Provider;

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
    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->networkControllerProvider:Ljavax/inject/Provider;

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
    check-cast v9, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 74
    .line 75
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 76
    .line 77
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v10, v1

    .line 82
    check-cast v10, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 85
    .line 86
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    move-object v11, v1

    .line 91
    check-cast v11, Lcom/android/internal/widget/LockPatternUtils;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->latencyTrackerProvider:Ljavax/inject/Provider;

    .line 94
    .line 95
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move-object v12, v1

    .line 100
    check-cast v12, Lcom/android/internal/util/LatencyTracker;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->messageAreaControllerFactoryProvider:Ljavax/inject/Provider;

    .line 103
    .line 104
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    move-object v13, v1

    .line 109
    check-cast v13, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->inputMethodManagerProvider:Ljavax/inject/Provider;

    .line 112
    .line 113
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    move-object v14, v1

    .line 118
    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    .line 121
    .line 122
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    move-object v15, v1

    .line 127
    check-cast v15, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 130
    .line 131
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    move-object/from16 v16, v1

    .line 136
    .line 137
    check-cast v16, Landroid/content/res/Resources;

    .line 138
    .line 139
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->liftToActivateListenerProvider:Ljavax/inject/Provider;

    .line 140
    .line 141
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v17

    .line 145
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->telephonyManagerProvider:Ljavax/inject/Provider;

    .line 146
    .line 147
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    move-object/from16 v18, v1

    .line 152
    .line 153
    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 154
    .line 155
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->falsingCollectorProvider:Ljavax/inject/Provider;

    .line 156
    .line 157
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    move-object/from16 v19, v1

    .line 162
    .line 163
    check-cast v19, Lcom/android/systemui/classifier/FalsingCollector;

    .line 164
    .line 165
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->emergencyButtonControllerFactoryProvider:Ljavax/inject/Provider;

    .line 166
    .line 167
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    move-object/from16 v20, v1

    .line 172
    .line 173
    check-cast v20, Lcom/android/keyguard/EmergencyButtonController$Factory;

    .line 174
    .line 175
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->devicePostureControllerProvider:Ljavax/inject/Provider;

    .line 176
    .line 177
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    move-object/from16 v21, v1

    .line 182
    .line 183
    check-cast v21, Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 184
    .line 185
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->keyguardViewControllerProvider:Ljavax/inject/Provider;

    .line 186
    .line 187
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    move-object/from16 v22, v1

    .line 192
    .line 193
    check-cast v22, Lcom/android/keyguard/KeyguardViewController;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 196
    .line 197
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    move-object/from16 v23, v0

    .line 202
    .line 203
    check-cast v23, Lcom/android/systemui/flags/FeatureFlags;

    .line 204
    .line 205
    invoke-static/range {v2 .. v23}, Lcom/android/keyguard/KeyguardInputViewController_Factory_Factory;->newInstance(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Ljava/lang/Object;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;)Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    return-object v0
.end method
