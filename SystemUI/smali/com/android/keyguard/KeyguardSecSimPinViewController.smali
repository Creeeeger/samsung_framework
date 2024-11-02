.class public final Lcom/android/keyguard/KeyguardSecSimPinViewController;
.super Lcom/android/keyguard/KeyguardSimPinViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecSimPinViewController$1;

.field public final mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public mLocale:Ljava/util/Locale;

.field public mOrientation:I

.field public final mProgressBar:Landroid/widget/ProgressBar;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsListener:Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda0;

.field public final mSettingsValueList:[Landroid/net/Uri;

.field public final mSimCardName:Lcom/android/systemui/widget/SystemUITextView;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p16}, Lcom/android/keyguard/KeyguardSimPinViewController;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mOrientation:I

    .line 7
    .line 8
    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsListener:Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPinViewController$1;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSimPinViewController$1;

    .line 21
    .line 22
    const-string v2, "emergency_mode"

    .line 23
    .line 24
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string/jumbo v3, "select_name_1"

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string/jumbo v4, "select_name_2"

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    filled-new-array {v2, v3, v4}, [Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsValueList:[Landroid/net/Uri;

    .line 47
    .line 48
    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;

    .line 49
    .line 50
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 54
    .line 55
    move-object/from16 v2, p16

    .line 56
    .line 57
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 58
    .line 59
    move-object/from16 v2, p17

    .line 60
    .line 61
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 62
    .line 63
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 70
    .line 71
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 72
    .line 73
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 74
    .line 75
    check-cast v2, Lcom/android/keyguard/KeyguardSecSimPinView;

    .line 76
    .line 77
    const v3, 0x7f0a0548

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/android/keyguard/KeyguardSecESimArea;

    .line 85
    .line 86
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 87
    .line 88
    if-eqz v2, :cond_0

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecESimArea;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 95
    .line 96
    iget-object v3, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 97
    .line 98
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecESimArea;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 99
    .line 100
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 101
    .line 102
    check-cast v2, Lcom/android/keyguard/KeyguardSecSimPinView;

    .line 103
    .line 104
    const v3, 0x7f0a0829

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Landroid/widget/ProgressBar;

    .line 112
    .line 113
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 114
    .line 115
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateProgressBarDrawable()V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 122
    .line 123
    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPinView;

    .line 124
    .line 125
    const v2, 0x7f0a0550

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Landroid/widget/ImageView;

    .line 133
    .line 134
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimImageView:Landroid/widget/ImageView;

    .line 135
    .line 136
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 137
    .line 138
    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPinView;

    .line 139
    .line 140
    const v2, 0x7f0a0551

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    .line 148
    .line 149
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSimCardName:Lcom/android/systemui/widget/SystemUITextView;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 152
    .line 153
    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPinView;

    .line 154
    .line 155
    const v1, 0x7f0a0549

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    .line 163
    .line 164
    const/4 v1, 0x4

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    :cond_1
    return-void
.end method


# virtual methods
.method public final getSecurityViewId()I
    .locals 0

    .line 1
    const p0, 0x7f0a0552

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinViewController;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onResume(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSimPinViewController;->onResume(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPinView;

    .line 7
    .line 8
    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSimPinViewController$1;

    .line 27
    .line 28
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsListener:Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsValueList:[Landroid/net/Uri;

    .line 38
    .line 39
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSimPinViewController$1;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSettingsListener:Lcom/android/keyguard/KeyguardSecSimPinViewController$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final resetState()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinViewController;->resetState()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Resetting state"

    .line 5
    .line 6
    const-string v1, "KeyguardSecSimPinViewController"

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v0, v2, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 30
    .line 31
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 38
    .line 39
    iput v2, v0, Lcom/android/keyguard/KeyguardSecESimArea;->mSubscriptionId:I

    .line 40
    .line 41
    :cond_1
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 48
    .line 49
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-boolean v2, v2, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomUnlockSimOnBootState:Z

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    move v2, v3

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v2, v4

    .line 63
    :goto_0
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 70
    .line 71
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mUnlockSimPin:Ljava/lang/String;

    .line 80
    .line 81
    :goto_1
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->verifyPasswordAndUnlock(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    .line 87
    .line 88
    if-eqz v0, :cond_13

    .line 89
    .line 90
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 101
    .line 102
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 103
    .line 104
    if-nez v0, :cond_5

    .line 105
    .line 106
    const-string v0, "Skip updating showDefaultMessage when folder closed"

    .line 107
    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string/jumbo v2, "showDefaultMessage subId="

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 122
    .line 123
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 127
    .line 128
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_11

    .line 133
    .line 134
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 135
    .line 136
    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->getSimSlotNum(I)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    const/4 v2, -0x1

    .line 141
    if-ne v0, v2, :cond_6

    .line 142
    .line 143
    const-string/jumbo v0, "showDefaultMessage - skip update"

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :cond_6
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 152
    .line 153
    const/4 v5, 0x3

    .line 154
    :try_start_0
    const-string v6, "isemtelephony"

    .line 155
    .line 156
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {v6}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    if-eqz v6, :cond_7

    .line 165
    .line 166
    invoke-interface {v6, v0}, Lcom/android/internal/telephony/ISemTelephony;->getSimPinRetryForSubscriber(I)I

    .line 167
    .line 168
    .line 169
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v6, "Exception: "

    .line 173
    .line 174
    invoke-static {v6, v0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    move v0, v5

    .line 178
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v7, "getSimPinLockInfoResult(): num_of_retry is "

    .line 181
    .line 182
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    const v6, 0x7f1307fd

    .line 200
    .line 201
    .line 202
    const v7, 0x7f13088f

    .line 203
    .line 204
    .line 205
    if-eq v0, v2, :cond_d

    .line 206
    .line 207
    const-string v2, ". "

    .line 208
    .line 209
    if-eq v0, v3, :cond_a

    .line 210
    .line 211
    if-eq v0, v5, :cond_d

    .line 212
    .line 213
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 214
    .line 215
    const v5, 0x7f13097c

    .line 216
    .line 217
    .line 218
    if-eqz v3, :cond_8

    .line 219
    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v1, v5, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :cond_8
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    .line 257
    .line 258
    if-eqz v3, :cond_9

    .line 259
    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v1, v5, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const v2, 0x7f1309ec

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    goto :goto_3

    .line 312
    :cond_a
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 313
    .line 314
    const v3, 0x7f13097b

    .line 315
    .line 316
    .line 317
    if-eqz v0, :cond_b

    .line 318
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    goto :goto_3

    .line 346
    :cond_b
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    .line 347
    .line 348
    if-eqz v0, :cond_c

    .line 349
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    goto :goto_3

    .line 377
    :cond_c
    const v0, 0x7f1309eb

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    goto :goto_3

    .line 385
    :cond_d
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 386
    .line 387
    if-eqz v0, :cond_e

    .line 388
    .line 389
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    goto :goto_3

    .line 394
    :cond_e
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_USE_CDMA_CARD_TEXT:Z

    .line 395
    .line 396
    if-eqz v0, :cond_f

    .line 397
    .line 398
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    goto :goto_3

    .line 403
    :cond_f
    const v0, 0x7f1309ea

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 411
    .line 412
    if-eqz v1, :cond_12

    .line 413
    .line 414
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 415
    .line 416
    if-eqz v2, :cond_10

    .line 417
    .line 418
    check-cast v2, Lcom/android/keyguard/SecPasswordTextView;

    .line 419
    .line 420
    iget-object v2, v2, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    if-lez v2, :cond_10

    .line 427
    .line 428
    goto :goto_4

    .line 429
    :cond_10
    invoke-virtual {v1, v0, v4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 430
    .line 431
    .line 432
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 433
    .line 434
    if-eqz v0, :cond_12

    .line 435
    .line 436
    const-string v0, ""

    .line 437
    .line 438
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-nez v2, :cond_12

    .line 443
    .line 444
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 445
    .line 446
    check-cast v1, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 447
    .line 448
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 449
    .line 450
    .line 451
    goto :goto_4

    .line 452
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string/jumbo v2, "showDefaultMessage isValidSubscriptionId failed !!!  subid:"

    .line 455
    .line 456
    .line 457
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 461
    .line 462
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :cond_12
    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimImageView:Landroid/widget/ImageView;

    .line 466
    .line 467
    if-eqz v0, :cond_13

    .line 468
    .line 469
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateSimIconImage()V

    .line 470
    .line 471
    .line 472
    :cond_13
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateESimLayout()V

    .line 473
    .line 474
    .line 475
    return-void
.end method

.method public final updateESimLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    .line 24
    iget v2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mOrientation:I

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const v3, 0x7f07041c

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    mul-int/lit8 p0, p0, 0x2

    .line 47
    .line 48
    add-int/2addr p0, v2

    .line 49
    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 59
    .line 60
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    return-void
.end method

.method public final updateProgressBarDrawable()V
    .locals 2

    .line 1
    const-string v0, "background"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const v0, 0x7f080b44

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v0, 0x7f080b43

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final updateSimIconImage()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_b

    .line 11
    .line 12
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 13
    .line 14
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_b

    .line 19
    .line 20
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->getSimSlotNum(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, -0x1

    .line 27
    const-string v3, "KeyguardSecSimPinViewController"

    .line 28
    .line 29
    if-ne v0, v2, :cond_0

    .line 30
    .line 31
    const-string/jumbo p0, "updateSimIconImage - skip update"

    .line 32
    .line 33
    .line 34
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimImageView:Landroid/widget/ImageView;

    .line 39
    .line 40
    instance-of v4, v2, Lcom/android/systemui/widget/SystemUIImageView;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/16 v6, 0x8

    .line 44
    .line 45
    if-eqz v4, :cond_7

    .line 46
    .line 47
    check-cast v2, Lcom/android/systemui/widget/SystemUIImageView;

    .line 48
    .line 49
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v0, v4}, Lcom/android/systemui/util/DeviceState;->isESIM(ILandroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 64
    .line 65
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isESimEmbedded()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    const-string/jumbo v4, "this is e-SIM"

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 78
    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardSecESimArea;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_1
    if-nez v0, :cond_2

    .line 85
    .line 86
    const-string v1, "lock_ic_pin_attempt_esim_01"

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "lock_ic_pin_attempt_esim_01_whitebg"

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    if-ne v0, v1, :cond_6

    .line 98
    .line 99
    const-string v1, "lock_ic_pin_attempt_esim_02"

    .line 100
    .line 101
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v1, "lock_ic_pin_attempt_esim_02_whitebg"

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 111
    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardSecESimArea;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :cond_4
    if-nez v0, :cond_5

    .line 118
    .line 119
    const-string v1, "lock_ic_pin_attempt_sim_01"

    .line 120
    .line 121
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v1, "lock_ic_pin_attempt_sim_01_whitebg"

    .line 125
    .line 126
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    if-ne v0, v1, :cond_6

    .line 131
    .line 132
    const-string v1, "lock_ic_pin_attempt_sim_02"

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v1, "lock_ic_pin_attempt_sim_02_whitebg"

    .line 138
    .line 139
    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    .line 143
    .line 144
    .line 145
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mSimCardName:Lcom/android/systemui/widget/SystemUITextView;

    .line 146
    .line 147
    instance-of v2, v1, Lcom/android/systemui/widget/SystemUITextView;

    .line 148
    .line 149
    if-eqz v2, :cond_b

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    if-nez v0, :cond_8

    .line 160
    .line 161
    const-string/jumbo v0, "select_name_1"

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_8
    const-string/jumbo v0, "select_name_2"

    .line 166
    .line 167
    .line 168
    :goto_1
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_9

    .line 177
    .line 178
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    :cond_9
    if-eqz v0, :cond_a

    .line 182
    .line 183
    move v5, v6

    .line 184
    :cond_a
    invoke-virtual {v1, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    :cond_b
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->updateProgressBarDrawable()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    .line 3
    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->verifyPasswordAndUnlock(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final verifyPasswordAndUnlock(Ljava/lang/String;)V
    .locals 8

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    .line 6
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f130805

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v5, :cond_0

    .line 9
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x8

    const/4 v7, 0x4

    if-ge v4, v7, :cond_4

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f13088f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f130875

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v5, :cond_3

    .line 14
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_3
    return-void

    .line 15
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz v5, :cond_6

    .line 19
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    if-nez v0, :cond_7

    .line 21
    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 22
    new-instance v6, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardSecSimPinViewController$3;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;Ljava/lang/String;IILcom/android/keyguard/KeyguardSecurityCallback;)V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 23
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_7
    return-void
.end method
