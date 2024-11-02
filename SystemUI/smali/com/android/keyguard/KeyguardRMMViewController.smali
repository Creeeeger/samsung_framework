.class public final Lcom/android/keyguard/KeyguardRMMViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCallButton:Lcom/android/systemui/widget/SystemUIButton;

.field public final mCheckPasswordCallback:Lcom/android/keyguard/KeyguardRMMViewController$1;

.field public final mClientContact:Lcom/android/systemui/widget/SystemUITextView;

.field public final mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

.field public mClientName:Ljava/lang/String;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardRMMViewController$3;

.field public mCurrentOrientation:I

.field public final mHandler:Lcom/android/keyguard/KeyguardRMMViewController$4;

.field public final mIsVoiceCapacity:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public final mMessageArea:Landroid/widget/LinearLayout;

.field public mPhoneNumber:Ljava/lang/String;

.field public mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardRMMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p15}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 8
    .line 9
    new-instance p1, Lcom/android/keyguard/KeyguardRMMViewController$1;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardRMMViewController$1;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCheckPasswordCallback:Lcom/android/keyguard/KeyguardRMMViewController$1;

    .line 15
    .line 16
    new-instance p1, Lcom/android/keyguard/KeyguardRMMViewController$2;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardRMMViewController$2;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 22
    .line 23
    new-instance p1, Lcom/android/keyguard/KeyguardRMMViewController$3;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardRMMViewController$3;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardRMMViewController$3;

    .line 29
    .line 30
    new-instance p1, Lcom/android/keyguard/KeyguardRMMViewController$4;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-direct {p1, p0, p3}, Lcom/android/keyguard/KeyguardRMMViewController$4;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mHandler:Lcom/android/keyguard/KeyguardRMMViewController$4;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 42
    .line 43
    iput-object p15, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const p2, 0x1110247

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mIsVoiceCapacity:Z

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 59
    .line 60
    check-cast p1, Lcom/android/keyguard/KeyguardRMMView;

    .line 61
    .line 62
    const p2, 0x7f0a0545

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/android/systemui/widget/SystemUITextView;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 74
    .line 75
    check-cast p1, Lcom/android/keyguard/KeyguardRMMView;

    .line 76
    .line 77
    const p2, 0x7f0a0544

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/android/systemui/widget/SystemUITextView;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 89
    .line 90
    check-cast p1, Lcom/android/keyguard/KeyguardRMMView;

    .line 91
    .line 92
    const p2, 0x7f0a0543

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/android/systemui/widget/SystemUIButton;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 104
    .line 105
    check-cast p1, Lcom/android/keyguard/KeyguardRMMView;

    .line 106
    .line 107
    const p2, 0x7f0a0685

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/widget/LinearLayout;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 127
    .line 128
    iput p1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCurrentOrientation:I

    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 131
    .line 132
    check-cast p1, Lcom/android/keyguard/KeyguardRMMView;

    .line 133
    .line 134
    const p2, 0x7f0a0546

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lcom/android/systemui/widget/SystemUITextView;

    .line 142
    .line 143
    if-eqz p1, :cond_0

    .line 144
    .line 145
    const/4 p2, 0x1

    .line 146
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 147
    .line 148
    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->setRMMInfo()V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 153
    .line 154
    check-cast p1, Lcom/android/keyguard/KeyguardRMMView;

    .line 155
    .line 156
    const p2, 0x7f0a04f6

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_1

    .line 164
    .line 165
    new-instance p2, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    const/4 p3, 0x0

    .line 168
    invoke-direct {p2, p0, p3}, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->updateDrawableTint()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->updateRMMLayout()V

    .line 178
    .line 179
    .line 180
    return-void
.end method


# virtual methods
.method public final getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "lock_settings"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getSecurityViewId()I
    .locals 0

    .line 1
    const p0, 0x7f0a0547

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->setRMMInfo()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->updateRMMLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardRMMViewController$3;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardRMMViewController$3;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final resetState()V
    .locals 12

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->setRMMInfo()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->updateRMMLayout()V

    .line 8
    .line 9
    .line 10
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 17
    .line 18
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const-wide/16 v0, -0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 50
    .line 51
    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 52
    .line 53
    const-string/jumbo v5, "remotelockscreen.lockoutdeadline"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v4, v1, v2, v3, v0}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-wide v6, v2

    .line 70
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    cmp-long v1, v6, v8

    .line 75
    .line 76
    if-gtz v1, :cond_2

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 84
    .line 85
    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 86
    .line 87
    invoke-static {v1, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/keyguard/KeyguardRMMViewController;->setLong(JLjava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    move-wide v0, v2

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 97
    .line 98
    iget-wide v10, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 99
    .line 100
    add-long/2addr v8, v10

    .line 101
    cmp-long v1, v6, v8

    .line 102
    .line 103
    if-lez v1, :cond_3

    .line 104
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v6

    .line 109
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 110
    .line 111
    iget-wide v8, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 112
    .line 113
    add-long/2addr v6, v8

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 120
    .line 121
    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 122
    .line 123
    invoke-static {v1, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p0, v6, v7, v1, v0}, Lcom/android/keyguard/KeyguardRMMViewController;->setLong(JLjava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    :cond_3
    move-wide v0, v6

    .line 131
    :goto_1
    cmp-long v2, v0, v2

    .line 132
    .line 133
    if-lez v2, :cond_4

    .line 134
    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 140
    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientName:Ljava/lang/String;

    .line 148
    .line 149
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    const v2, 0x7f130963

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 162
    .line 163
    .line 164
    :cond_5
    :goto_2
    return-void
.end method

.method public final setLong(JLjava/lang/String;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p3, p1, p2, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p2, "Couldn\'t write long "

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "KeyguardRMMView"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final setRMMInfo()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "KeyguardRMMView"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "mRemoteLockInfo is null - dismiss"

    .line 15
    .line 16
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 28
    .line 29
    invoke-interface {v0, v2, p0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    .line 34
    .line 35
    const/16 v3, 0x8

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v5, "\\r\\n|\\r|\\n"

    .line 45
    .line 46
    const-string v6, " "

    .line 47
    .line 48
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 53
    .line 54
    if-eqz v5, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const v7, 0x7f0b0053

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-le v5, v6, :cond_2

    .line 90
    .line 91
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 92
    .line 93
    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    .line 94
    .line 95
    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 99
    .line 100
    .line 101
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 102
    .line 103
    const/high16 v6, 0x1000000

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setScrollBarStyle(I)V

    .line 106
    .line 107
    .line 108
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 109
    .line 110
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setScrollbarFadingEnabled(Z)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 114
    .line 115
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "mRemoteLockInfo.message is null"

    .line 120
    .line 121
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientName:Ljava/lang/String;

    .line 140
    .line 141
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    .line 144
    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientName:Ljava/lang/String;

    .line 148
    .line 149
    if-eqz v5, :cond_6

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mPhoneNumber:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientName:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_6
    const-string v0, "mRemoteLockInfo.phoneNumber is null"

    .line 168
    .line 169
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    .line 173
    .line 174
    if-eqz v0, :cond_9

    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 177
    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mIsVoiceCapacity:Z

    .line 181
    .line 182
    if-eqz v0, :cond_8

    .line 183
    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mPhoneNumber:Ljava/lang/String;

    .line 185
    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_8

    .line 193
    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    .line 195
    .line 196
    invoke-virtual {v0, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 200
    .line 201
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mPhoneNumber:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 212
    .line 213
    new-instance v2, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda0;

    .line 214
    .line 215
    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    .line 222
    .line 223
    invoke-virtual {v0, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 227
    .line 228
    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mClientContact:Lcom/android/systemui/widget/SystemUITextView;

    .line 233
    .line 234
    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 238
    .line 239
    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    :cond_9
    :goto_2
    return-void
.end method

.method public final updateDrawableTint()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "background"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    array-length v2, v1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_3

    .line 21
    .line 22
    aget-object v4, v1, v3

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const v6, 0x7f06019b

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const v6, 0x7f06019a

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    :goto_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 52
    .line 53
    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method

.method public final updateRMMLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mHandler:Lcom/android/keyguard/KeyguardRMMViewController$4;

    .line 2
    .line 3
    new-instance v1, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardRMMViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardRMMViewController;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x64

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->updateDrawableTint()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 6

    .line 1
    const-string v0, "KeyguardRMMView"

    .line 2
    .line 3
    const-string/jumbo v1, "verifyPasswordAndUnlock()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->getPasswordText()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    .line 15
    check-cast v2, Lcom/android/keyguard/KeyguardRMMView;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 19
    .line 20
    .line 21
    array-length v2, v1

    .line 22
    const/4 v4, 0x3

    .line 23
    if-gt v2, v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    .line 31
    check-cast v2, Lcom/android/keyguard/KeyguardRMMView;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const v2, 0x7f130873

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 44
    .line 45
    invoke-virtual {v2, v0, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 52
    .line 53
    check-cast v0, Lcom/android/keyguard/KeyguardRMMView;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-virtual {v0, v2, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 60
    .line 61
    check-cast p0, Lcom/android/keyguard/KeyguardRMMView;

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController;->mCheckPasswordCallback:Lcom/android/keyguard/KeyguardRMMViewController$1;

    .line 79
    .line 80
    const/4 v5, 0x2

    .line 81
    invoke-interface {v2, v5, v1, v4, p0}, Lcom/android/internal/widget/ILockSettings;->checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    const-string p0, "Can\'t connect RMM_LOCK"

    .line 86
    .line 87
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
