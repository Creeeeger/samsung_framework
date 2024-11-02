.class public final Lcom/android/keyguard/KeyguardInputViewController$Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public final mKeyguardTouchSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mResources:Landroid/content/res/Resources;

.field public final mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardTouchSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 55
    .line 56
    move-object/from16 v1, p17

    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 59
    .line 60
    move-object/from16 v1, p19

    .line 61
    .line 62
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    .line 63
    .line 64
    move-object/from16 v1, p18

    .line 65
    .line 66
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 67
    .line 68
    move-object/from16 v1, p20

    .line 69
    .line 70
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 71
    .line 72
    move-object/from16 v1, p21

    .line 73
    .line 74
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 75
    .line 76
    move-object/from16 v1, p22

    .line 77
    .line 78
    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const v2, 0x7f0a03a9

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/keyguard/EmergencyButton;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Lcom/android/keyguard/EmergencyButtonController$Factory;->create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecPatternView;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    new-instance v3, Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 25
    .line 26
    move-object v5, v1

    .line 27
    check-cast v5, Lcom/android/keyguard/KeyguardSecPatternView;

    .line 28
    .line 29
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 30
    .line 31
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 32
    .line 33
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 34
    .line 35
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 36
    .line 37
    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 38
    .line 39
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 40
    .line 41
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 44
    .line 45
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    move-object/from16 v7, p2

    .line 51
    .line 52
    move-object/from16 v9, p3

    .line 53
    .line 54
    move-object/from16 v17, v12

    .line 55
    .line 56
    move-object v12, v2

    .line 57
    move-object/from16 v16, v1

    .line 58
    .line 59
    move-object/from16 v18, v0

    .line 60
    .line 61
    invoke-direct/range {v4 .. v18}, Lcom/android/keyguard/KeyguardSecPatternViewController;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;)V

    .line 62
    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_0
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    instance-of v3, v1, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordView;

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    new-instance v3, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;

    .line 74
    .line 75
    move-object v4, v3

    .line 76
    move-object v5, v1

    .line 77
    check-cast v5, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordView;

    .line 78
    .line 79
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 80
    .line 81
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 82
    .line 83
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 84
    .line 85
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 86
    .line 87
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 88
    .line 89
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 90
    .line 91
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 94
    .line 95
    move-object/from16 v16, v1

    .line 96
    .line 97
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 98
    .line 99
    move-object/from16 v17, v1

    .line 100
    .line 101
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 102
    .line 103
    move-object/from16 v18, v1

    .line 104
    .line 105
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 106
    .line 107
    move-object/from16 v19, v1

    .line 108
    .line 109
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 110
    .line 111
    move-object/from16 v20, v1

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 114
    .line 115
    move-object/from16 v21, v0

    .line 116
    .line 117
    move-object/from16 v7, p2

    .line 118
    .line 119
    move-object/from16 v9, p3

    .line 120
    .line 121
    move-object v13, v2

    .line 122
    invoke-direct/range {v4 .. v21}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;)V

    .line 123
    .line 124
    .line 125
    return-object v3

    .line 126
    :cond_1
    new-instance v3, Lcom/android/keyguard/KeyguardSecPasswordViewController;

    .line 127
    .line 128
    move-object v4, v3

    .line 129
    move-object v5, v1

    .line 130
    check-cast v5, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 131
    .line 132
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 133
    .line 134
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    .line 136
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 137
    .line 138
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 139
    .line 140
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 141
    .line 142
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 143
    .line 144
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 147
    .line 148
    move-object/from16 v16, v1

    .line 149
    .line 150
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 151
    .line 152
    move-object/from16 v17, v1

    .line 153
    .line 154
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 155
    .line 156
    move-object/from16 v18, v1

    .line 157
    .line 158
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 159
    .line 160
    move-object/from16 v19, v1

    .line 161
    .line 162
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 163
    .line 164
    move-object/from16 v20, v1

    .line 165
    .line 166
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 167
    .line 168
    move-object/from16 v21, v0

    .line 169
    .line 170
    move-object/from16 v7, p2

    .line 171
    .line 172
    move-object/from16 v9, p3

    .line 173
    .line 174
    move-object v13, v2

    .line 175
    invoke-direct/range {v4 .. v21}, Lcom/android/keyguard/KeyguardSecPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;)V

    .line 176
    .line 177
    .line 178
    return-object v3

    .line 179
    :cond_2
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecPINView;

    .line 180
    .line 181
    if-eqz v3, :cond_4

    .line 182
    .line 183
    instance-of v3, v1, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinView;

    .line 184
    .line 185
    if-eqz v3, :cond_3

    .line 186
    .line 187
    new-instance v3, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

    .line 188
    .line 189
    move-object v4, v3

    .line 190
    move-object v5, v1

    .line 191
    check-cast v5, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinView;

    .line 192
    .line 193
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 194
    .line 195
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 196
    .line 197
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 198
    .line 199
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 200
    .line 201
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 202
    .line 203
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 204
    .line 205
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 206
    .line 207
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 208
    .line 209
    move-object/from16 v16, v1

    .line 210
    .line 211
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 212
    .line 213
    move-object/from16 v17, v1

    .line 214
    .line 215
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 216
    .line 217
    move-object/from16 v18, v1

    .line 218
    .line 219
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 220
    .line 221
    move-object/from16 v19, v1

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 224
    .line 225
    move-object/from16 v20, v0

    .line 226
    .line 227
    move-object/from16 v7, p2

    .line 228
    .line 229
    move-object/from16 v9, p3

    .line 230
    .line 231
    move-object v13, v2

    .line 232
    invoke-direct/range {v4 .. v20}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 233
    .line 234
    .line 235
    return-object v3

    .line 236
    :cond_3
    new-instance v3, Lcom/android/keyguard/KeyguardSecPinViewController;

    .line 237
    .line 238
    move-object v4, v3

    .line 239
    move-object v5, v1

    .line 240
    check-cast v5, Lcom/android/keyguard/KeyguardSecPINView;

    .line 241
    .line 242
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 243
    .line 244
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 245
    .line 246
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 247
    .line 248
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 249
    .line 250
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 251
    .line 252
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 253
    .line 254
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 255
    .line 256
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 257
    .line 258
    move-object/from16 v16, v1

    .line 259
    .line 260
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 261
    .line 262
    move-object/from16 v17, v1

    .line 263
    .line 264
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 265
    .line 266
    move-object/from16 v18, v1

    .line 267
    .line 268
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 269
    .line 270
    move-object/from16 v19, v1

    .line 271
    .line 272
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 273
    .line 274
    move-object/from16 v20, v0

    .line 275
    .line 276
    move-object/from16 v7, p2

    .line 277
    .line 278
    move-object/from16 v9, p3

    .line 279
    .line 280
    move-object v13, v2

    .line 281
    invoke-direct/range {v4 .. v20}, Lcom/android/keyguard/KeyguardSecPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 282
    .line 283
    .line 284
    return-object v3

    .line 285
    :cond_4
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecSimPinView;

    .line 286
    .line 287
    if-eqz v3, :cond_5

    .line 288
    .line 289
    new-instance v3, Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 290
    .line 291
    move-object v4, v3

    .line 292
    move-object v5, v1

    .line 293
    check-cast v5, Lcom/android/keyguard/KeyguardSecSimPinView;

    .line 294
    .line 295
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 296
    .line 297
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 298
    .line 299
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 300
    .line 301
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 302
    .line 303
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 304
    .line 305
    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 306
    .line 307
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 308
    .line 309
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 310
    .line 311
    move-object/from16 v16, v1

    .line 312
    .line 313
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 314
    .line 315
    move-object/from16 v17, v1

    .line 316
    .line 317
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 318
    .line 319
    move-object/from16 v18, v1

    .line 320
    .line 321
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 322
    .line 323
    move-object/from16 v19, v1

    .line 324
    .line 325
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 326
    .line 327
    move-object/from16 v20, v1

    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 330
    .line 331
    move-object/from16 v21, v0

    .line 332
    .line 333
    move-object/from16 v7, p2

    .line 334
    .line 335
    move-object/from16 v9, p3

    .line 336
    .line 337
    move-object v15, v2

    .line 338
    invoke-direct/range {v4 .. v21}, Lcom/android/keyguard/KeyguardSecSimPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V

    .line 339
    .line 340
    .line 341
    return-object v3

    .line 342
    :cond_5
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_NOT_REQUIRE_SIMPUK_CODE:Z

    .line 343
    .line 344
    if-eqz v3, :cond_6

    .line 345
    .line 346
    instance-of v4, v1, Lcom/android/keyguard/KeyguardSimPukTMOView;

    .line 347
    .line 348
    if-eqz v4, :cond_8

    .line 349
    .line 350
    goto :goto_0

    .line 351
    :cond_6
    instance-of v4, v1, Lcom/android/keyguard/KeyguardSecSimPukView;

    .line 352
    .line 353
    if-eqz v4, :cond_8

    .line 354
    .line 355
    :goto_0
    if-eqz v3, :cond_7

    .line 356
    .line 357
    new-instance v3, Lcom/android/keyguard/KeyguardSimPukTMOViewController;

    .line 358
    .line 359
    move-object v5, v1

    .line 360
    check-cast v5, Lcom/android/keyguard/KeyguardSimPukTMOView;

    .line 361
    .line 362
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 363
    .line 364
    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 365
    .line 366
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 367
    .line 368
    move-object v4, v3

    .line 369
    move-object/from16 v7, p2

    .line 370
    .line 371
    move-object/from16 v8, p3

    .line 372
    .line 373
    move-object v10, v2

    .line 374
    invoke-direct/range {v4 .. v11}, Lcom/android/keyguard/KeyguardSimPukTMOViewController;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 375
    .line 376
    .line 377
    return-object v3

    .line 378
    :cond_7
    new-instance v3, Lcom/android/keyguard/KeyguardSecSimPukViewController;

    .line 379
    .line 380
    move-object v4, v3

    .line 381
    move-object v5, v1

    .line 382
    check-cast v5, Lcom/android/keyguard/KeyguardSecSimPukView;

    .line 383
    .line 384
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 385
    .line 386
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 387
    .line 388
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 389
    .line 390
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 391
    .line 392
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 393
    .line 394
    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 395
    .line 396
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 397
    .line 398
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 399
    .line 400
    move-object/from16 v16, v1

    .line 401
    .line 402
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 403
    .line 404
    move-object/from16 v17, v1

    .line 405
    .line 406
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 407
    .line 408
    move-object/from16 v18, v1

    .line 409
    .line 410
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 411
    .line 412
    move-object/from16 v19, v1

    .line 413
    .line 414
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 415
    .line 416
    move-object/from16 v20, v1

    .line 417
    .line 418
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 419
    .line 420
    move-object/from16 v21, v0

    .line 421
    .line 422
    move-object/from16 v7, p2

    .line 423
    .line 424
    move-object/from16 v9, p3

    .line 425
    .line 426
    move-object v15, v2

    .line 427
    invoke-direct/range {v4 .. v21}, Lcom/android/keyguard/KeyguardSecSimPukViewController;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V

    .line 428
    .line 429
    .line 430
    return-object v3

    .line 431
    :cond_8
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    .line 432
    .line 433
    if-eqz v3, :cond_9

    .line 434
    .line 435
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 436
    .line 437
    if-eqz v3, :cond_9

    .line 438
    .line 439
    new-instance v3, Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 440
    .line 441
    move-object v5, v1

    .line 442
    check-cast v5, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 443
    .line 444
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 445
    .line 446
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 447
    .line 448
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 449
    .line 450
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 451
    .line 452
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 453
    .line 454
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 455
    .line 456
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 457
    .line 458
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 459
    .line 460
    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 461
    .line 462
    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 463
    .line 464
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 465
    .line 466
    move-object v4, v3

    .line 467
    move-object/from16 v7, p2

    .line 468
    .line 469
    move-object/from16 v18, v9

    .line 470
    .line 471
    move-object/from16 v9, p3

    .line 472
    .line 473
    move-object/from16 v17, v13

    .line 474
    .line 475
    move-object v13, v2

    .line 476
    move-object/from16 v16, v1

    .line 477
    .line 478
    move-object/from16 v19, v0

    .line 479
    .line 480
    invoke-direct/range {v4 .. v19}, Lcom/android/keyguard/KeyguardSimPersoViewController;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 481
    .line 482
    .line 483
    return-object v3

    .line 484
    :cond_9
    instance-of v3, v1, Lcom/android/keyguard/KeyguardPermanentView;

    .line 485
    .line 486
    if-eqz v3, :cond_a

    .line 487
    .line 488
    new-instance v3, Lcom/android/keyguard/KeyguardPermanentViewController;

    .line 489
    .line 490
    move-object v5, v1

    .line 491
    check-cast v5, Lcom/android/keyguard/KeyguardPermanentView;

    .line 492
    .line 493
    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 494
    .line 495
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 496
    .line 497
    move-object v4, v3

    .line 498
    move-object/from16 v6, p2

    .line 499
    .line 500
    move-object/from16 v7, p3

    .line 501
    .line 502
    move-object v8, v2

    .line 503
    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/KeyguardPermanentViewController;-><init>(Lcom/android/keyguard/KeyguardPermanentView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 504
    .line 505
    .line 506
    return-object v3

    .line 507
    :cond_a
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    .line 508
    .line 509
    if-eqz v3, :cond_b

    .line 510
    .line 511
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSwipeView;

    .line 512
    .line 513
    if-eqz v3, :cond_b

    .line 514
    .line 515
    new-instance v3, Lcom/android/keyguard/KeyguardSwipeViewController;

    .line 516
    .line 517
    move-object v5, v1

    .line 518
    check-cast v5, Lcom/android/keyguard/KeyguardSwipeView;

    .line 519
    .line 520
    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 521
    .line 522
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 523
    .line 524
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardTouchSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    .line 525
    .line 526
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 527
    .line 528
    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 529
    .line 530
    move-object v4, v3

    .line 531
    move-object/from16 v6, p2

    .line 532
    .line 533
    move-object/from16 v7, p3

    .line 534
    .line 535
    move-object v8, v2

    .line 536
    invoke-direct/range {v4 .. v13}, Lcom/android/keyguard/KeyguardSwipeViewController;-><init>(Lcom/android/keyguard/KeyguardSwipeView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 537
    .line 538
    .line 539
    return-object v3

    .line 540
    :cond_b
    instance-of v3, v1, Lcom/android/keyguard/KeyguardAdminView;

    .line 541
    .line 542
    if-eqz v3, :cond_c

    .line 543
    .line 544
    new-instance v3, Lcom/android/keyguard/KeyguardAdminViewController;

    .line 545
    .line 546
    move-object v5, v1

    .line 547
    check-cast v5, Lcom/android/keyguard/KeyguardAdminView;

    .line 548
    .line 549
    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 550
    .line 551
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 552
    .line 553
    move-object v4, v3

    .line 554
    move-object/from16 v6, p2

    .line 555
    .line 556
    move-object/from16 v7, p3

    .line 557
    .line 558
    move-object v8, v2

    .line 559
    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/KeyguardAdminViewController;-><init>(Lcom/android/keyguard/KeyguardAdminView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 560
    .line 561
    .line 562
    return-object v3

    .line 563
    :cond_c
    instance-of v3, v1, Lcom/android/keyguard/KeyguardFMMView;

    .line 564
    .line 565
    if-eqz v3, :cond_d

    .line 566
    .line 567
    new-instance v3, Lcom/android/keyguard/KeyguardFMMViewController;

    .line 568
    .line 569
    move-object v5, v1

    .line 570
    check-cast v5, Lcom/android/keyguard/KeyguardFMMView;

    .line 571
    .line 572
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 573
    .line 574
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 575
    .line 576
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 577
    .line 578
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 579
    .line 580
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 581
    .line 582
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 583
    .line 584
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 585
    .line 586
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 587
    .line 588
    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 589
    .line 590
    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 591
    .line 592
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 593
    .line 594
    move-object v4, v3

    .line 595
    move-object/from16 v7, p2

    .line 596
    .line 597
    move-object/from16 v18, v9

    .line 598
    .line 599
    move-object/from16 v9, p3

    .line 600
    .line 601
    move-object/from16 v17, v13

    .line 602
    .line 603
    move-object v13, v2

    .line 604
    move-object/from16 v16, v1

    .line 605
    .line 606
    move-object/from16 v19, v0

    .line 607
    .line 608
    invoke-direct/range {v4 .. v19}, Lcom/android/keyguard/KeyguardFMMViewController;-><init>(Lcom/android/keyguard/KeyguardFMMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 609
    .line 610
    .line 611
    return-object v3

    .line 612
    :cond_d
    instance-of v3, v1, Lcom/android/keyguard/KeyguardRMMView;

    .line 613
    .line 614
    if-eqz v3, :cond_e

    .line 615
    .line 616
    new-instance v3, Lcom/android/keyguard/KeyguardRMMViewController;

    .line 617
    .line 618
    move-object v5, v1

    .line 619
    check-cast v5, Lcom/android/keyguard/KeyguardRMMView;

    .line 620
    .line 621
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 622
    .line 623
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 624
    .line 625
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 626
    .line 627
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 628
    .line 629
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 630
    .line 631
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 632
    .line 633
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 634
    .line 635
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 636
    .line 637
    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 638
    .line 639
    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 640
    .line 641
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 642
    .line 643
    move-object v4, v3

    .line 644
    move-object/from16 v7, p2

    .line 645
    .line 646
    move-object/from16 v18, v9

    .line 647
    .line 648
    move-object/from16 v9, p3

    .line 649
    .line 650
    move-object/from16 v17, v13

    .line 651
    .line 652
    move-object v13, v2

    .line 653
    move-object/from16 v16, v1

    .line 654
    .line 655
    move-object/from16 v19, v0

    .line 656
    .line 657
    invoke-direct/range {v4 .. v19}, Lcom/android/keyguard/KeyguardRMMViewController;-><init>(Lcom/android/keyguard/KeyguardRMMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 658
    .line 659
    .line 660
    return-object v3

    .line 661
    :cond_e
    instance-of v3, v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 662
    .line 663
    if-eqz v3, :cond_f

    .line 664
    .line 665
    new-instance v3, Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 666
    .line 667
    move-object v4, v3

    .line 668
    move-object v5, v1

    .line 669
    check-cast v5, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 670
    .line 671
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 672
    .line 673
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 674
    .line 675
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 676
    .line 677
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 678
    .line 679
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 680
    .line 681
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 682
    .line 683
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 684
    .line 685
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 686
    .line 687
    move-object/from16 v16, v1

    .line 688
    .line 689
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 690
    .line 691
    move-object/from16 v17, v1

    .line 692
    .line 693
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 694
    .line 695
    move-object/from16 v18, v1

    .line 696
    .line 697
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 698
    .line 699
    move-object/from16 v19, v1

    .line 700
    .line 701
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 702
    .line 703
    move-object/from16 v20, v1

    .line 704
    .line 705
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 706
    .line 707
    move-object/from16 v21, v1

    .line 708
    .line 709
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 710
    .line 711
    move-object/from16 v22, v0

    .line 712
    .line 713
    move-object/from16 v7, p2

    .line 714
    .line 715
    move-object/from16 v9, p3

    .line 716
    .line 717
    move-object v13, v2

    .line 718
    invoke-direct/range {v4 .. v22}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Landroid/view/inputmethod/InputMethodManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    .line 719
    .line 720
    .line 721
    return-object v3

    .line 722
    :cond_f
    instance-of v3, v1, Lcom/android/keyguard/KeyguardCarrierView;

    .line 723
    .line 724
    if-eqz v3, :cond_10

    .line 725
    .line 726
    new-instance v3, Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 727
    .line 728
    move-object v5, v1

    .line 729
    check-cast v5, Lcom/android/keyguard/KeyguardCarrierView;

    .line 730
    .line 731
    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 732
    .line 733
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 734
    .line 735
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 736
    .line 737
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 738
    .line 739
    move-object v4, v3

    .line 740
    move-object/from16 v6, p2

    .line 741
    .line 742
    move-object/from16 v8, p3

    .line 743
    .line 744
    move-object v9, v2

    .line 745
    invoke-direct/range {v4 .. v12}, Lcom/android/keyguard/KeyguardCarrierViewController;-><init>(Lcom/android/keyguard/KeyguardCarrierView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 746
    .line 747
    .line 748
    return-object v3

    .line 749
    :cond_10
    instance-of v3, v1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 750
    .line 751
    if-eqz v3, :cond_11

    .line 752
    .line 753
    new-instance v3, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    .line 754
    .line 755
    move-object v5, v1

    .line 756
    check-cast v5, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 757
    .line 758
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 759
    .line 760
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 761
    .line 762
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 763
    .line 764
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 765
    .line 766
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 767
    .line 768
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 769
    .line 770
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 771
    .line 772
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 773
    .line 774
    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 775
    .line 776
    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 777
    .line 778
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 779
    .line 780
    move-object v4, v3

    .line 781
    move-object/from16 v7, p2

    .line 782
    .line 783
    move-object/from16 v18, v9

    .line 784
    .line 785
    move-object/from16 v9, p3

    .line 786
    .line 787
    move-object/from16 v17, v13

    .line 788
    .line 789
    move-object v13, v2

    .line 790
    move-object/from16 v16, v1

    .line 791
    .line 792
    move-object/from16 v19, v0

    .line 793
    .line 794
    invoke-direct/range {v4 .. v19}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V

    .line 795
    .line 796
    .line 797
    return-object v3

    .line 798
    :cond_11
    instance-of v3, v1, Lcom/android/keyguard/KeyguardUCMView;

    .line 799
    .line 800
    if-eqz v3, :cond_12

    .line 801
    .line 802
    new-instance v3, Lcom/android/keyguard/KeyguardUCMViewController;

    .line 803
    .line 804
    move-object v5, v1

    .line 805
    check-cast v5, Lcom/android/keyguard/KeyguardUCMView;

    .line 806
    .line 807
    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 808
    .line 809
    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 810
    .line 811
    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 812
    .line 813
    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 814
    .line 815
    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 816
    .line 817
    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 818
    .line 819
    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 820
    .line 821
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 822
    .line 823
    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 824
    .line 825
    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 826
    .line 827
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 828
    .line 829
    move-object v4, v3

    .line 830
    move-object/from16 v7, p2

    .line 831
    .line 832
    move-object/from16 v18, v9

    .line 833
    .line 834
    move-object/from16 v9, p3

    .line 835
    .line 836
    move-object/from16 v17, v13

    .line 837
    .line 838
    move-object v13, v2

    .line 839
    move-object/from16 v16, v1

    .line 840
    .line 841
    move-object/from16 v19, v0

    .line 842
    .line 843
    invoke-direct/range {v4 .. v19}, Lcom/android/keyguard/KeyguardUCMViewController;-><init>(Lcom/android/keyguard/KeyguardUCMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 844
    .line 845
    .line 846
    return-object v3

    .line 847
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    .line 848
    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    .line 850
    .line 851
    const-string v3, "Unable to find controller for "

    .line 852
    .line 853
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    throw v0
.end method
