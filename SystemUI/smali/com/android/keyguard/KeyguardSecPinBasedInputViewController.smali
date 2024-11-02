.class public Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.super Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field public final mAccessibilityDelegate:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

.field public final mButtons:[Landroid/view/View;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

.field public mDeleteButton:Landroid/view/View;

.field public mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field public final mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

.field public mInitialized:Z

.field public mIsImagePinLock:Z

.field public mIsNightModeOn:Z

.field public mOkButton:Landroid/view/View;

.field public mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field public final mOnKeyListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda2;

.field public mOriginPinEntryId:I

.field public mUpdateSkipped:Z

.field public mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSecPinBasedInputView;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/keyguard/LiftToActivateListener;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/keyguard/SecRotationWatcher;",
            "Lcom/android/systemui/vibrate/VibrationUtil;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p14}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Rect;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    const/16 p1, 0xa

    .line 13
    .line 14
    new-array p1, p1, [Landroid/view/View;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 17
    .line 18
    new-instance p3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

    .line 19
    .line 20
    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mAccessibilityDelegate:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

    .line 24
    .line 25
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitialized:Z

    .line 26
    .line 27
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mUpdateSkipped:Z

    .line 28
    .line 29
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsNightModeOn:Z

    .line 30
    .line 31
    new-instance p3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda2;

    .line 32
    .line 33
    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    .line 34
    .line 35
    .line 36
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOnKeyListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda2;

    .line 37
    .line 38
    new-instance p3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

    .line 39
    .line 40
    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    .line 41
    .line 42
    .line 43
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

    .line 44
    .line 45
    new-instance p3, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

    .line 46
    .line 47
    invoke-direct {p3, p0, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;I)V

    .line 48
    .line 49
    .line 50
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

    .line 51
    .line 52
    iput-object p15, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 53
    .line 54
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 55
    .line 56
    check-cast p3, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 57
    .line 58
    const p4, 0x7f0a04ec

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    aput-object p3, p1, p2

    .line 66
    .line 67
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 68
    .line 69
    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 70
    .line 71
    const p3, 0x7f0a04ed

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    const/4 p3, 0x1

    .line 79
    aput-object p2, p1, p3

    .line 80
    .line 81
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 82
    .line 83
    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 84
    .line 85
    const p3, 0x7f0a04ee

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const/4 p3, 0x2

    .line 93
    aput-object p2, p1, p3

    .line 94
    .line 95
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 96
    .line 97
    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 98
    .line 99
    const p3, 0x7f0a04ef

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const/4 p3, 0x3

    .line 107
    aput-object p2, p1, p3

    .line 108
    .line 109
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 110
    .line 111
    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 112
    .line 113
    const p3, 0x7f0a04f0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const/4 p3, 0x4

    .line 121
    aput-object p2, p1, p3

    .line 122
    .line 123
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 124
    .line 125
    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 126
    .line 127
    const p3, 0x7f0a04f1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    const/4 p3, 0x5

    .line 135
    aput-object p2, p1, p3

    .line 136
    .line 137
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 138
    .line 139
    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 140
    .line 141
    const p3, 0x7f0a04f2

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const/4 p3, 0x6

    .line 149
    aput-object p2, p1, p3

    .line 150
    .line 151
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 152
    .line 153
    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 154
    .line 155
    const p3, 0x7f0a04f3

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    const/4 p3, 0x7

    .line 163
    aput-object p2, p1, p3

    .line 164
    .line 165
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 166
    .line 167
    check-cast p2, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 168
    .line 169
    const p3, 0x7f0a04f4

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    const/16 p3, 0x8

    .line 177
    .line 178
    aput-object p2, p1, p3

    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 181
    .line 182
    check-cast p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 183
    .line 184
    const p2, 0x7f0a04f5

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    const/16 p2, 0x9

    .line 192
    .line 193
    aput-object p0, p1, p2

    .line 194
    .line 195
    return-void
.end method

.method public static isFolderClosed()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public static updateNumPadKeySideMargin(Landroid/view/View;I)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    .line 9
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 10
    .line 11
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onUserInput()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final getInitialMessageResId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getPasswordText()[B
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 2
    .line 3
    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final initializeBottomContainerView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitialized:Z

    .line 7
    .line 8
    const-string v0, "KeyguardSecPinBasedInputViewController"

    .line 9
    .line 10
    const-string v1, "First initializeBottomContainerView"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView$1()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final initializeBottomContainerView$1()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const v1, 0x7f050081

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v3

    .line 33
    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 36
    .line 37
    const/16 v4, 0x8

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 49
    .line 50
    check-cast v1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 51
    .line 52
    const v5, 0x7f0a04f6

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 63
    .line 64
    check-cast v1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 65
    .line 66
    const v5, 0x7f0a04f7

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 74
    .line 75
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 91
    .line 92
    new-instance v7, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda4;

    .line 93
    .line 94
    invoke-direct {v7, p0, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 101
    .line 102
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mAccessibilityDelegate:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

    .line 103
    .line 104
    invoke-virtual {v1, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 110
    .line 111
    .line 112
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    .line 113
    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 117
    .line 118
    check-cast v1, Landroid/widget/ImageButton;

    .line 119
    .line 120
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 121
    .line 122
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 126
    .line 127
    check-cast v1, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 128
    .line 129
    const v7, 0x7f0a02fd

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 137
    .line 138
    if-eqz v1, :cond_6

    .line 139
    .line 140
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 149
    .line 150
    new-instance v6, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda4;

    .line 151
    .line 152
    invoke-direct {v6, p0, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 159
    .line 160
    new-instance v6, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda5;

    .line 161
    .line 162
    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 169
    .line 170
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mAccessibilityDelegate:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;

    .line 171
    .line 172
    invoke-virtual {v1, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 173
    .line 174
    .line 175
    const v1, 0x7f130877

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 183
    .line 184
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 185
    .line 186
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    if-eqz v8, :cond_4

    .line 191
    .line 192
    const-string v8, ", "

    .line 193
    .line 194
    invoke-static {v6, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    const v9, 0x7f13087d

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    const v10, 0x7f13087c

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    filled-new-array {v11, v1}, [Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const v1, 0x7f13087a

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    const v9, 0x7f130878

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    filled-new-array {v8, v0}, [Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    :cond_4
    invoke-virtual {v7, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 267
    .line 268
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 272
    .line 273
    check-cast v0, Landroid/widget/ImageButton;

    .line 274
    .line 275
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    .line 276
    .line 277
    if-eqz v1, :cond_5

    .line 278
    .line 279
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 283
    .line 284
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 285
    .line 286
    .line 287
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const-string v1, "background"

    .line 292
    .line 293
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 294
    .line 295
    .line 296
    move-result-wide v5

    .line 297
    invoke-static {v0, v5, v6, v2}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(Landroid/content/Context;JZ)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_7

    .line 302
    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    const v1, 0x7f080ed2

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 315
    .line 316
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 327
    .line 328
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    const v1, 0x7f080cdf

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 343
    .line 344
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 345
    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 355
    .line 356
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 357
    .line 358
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 359
    .line 360
    if-eqz v0, :cond_8

    .line 361
    .line 362
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    .line 366
    .line 367
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 368
    .line 369
    if-eqz v0, :cond_9

    .line 370
    .line 371
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 374
    .line 375
    .line 376
    :cond_9
    move v0, v3

    .line 377
    :goto_4
    const/16 v1, 0xa

    .line 378
    .line 379
    if-ge v0, v1, :cond_a

    .line 380
    .line 381
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 382
    .line 383
    aget-object v2, v2, v0

    .line 384
    .line 385
    instance-of v5, v2, Lcom/android/keyguard/SecNumPadKey;

    .line 386
    .line 387
    if-eqz v5, :cond_a

    .line 388
    .line 389
    check-cast v2, Lcom/android/keyguard/SecNumPadKey;

    .line 390
    .line 391
    invoke-virtual {v2}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle()V

    .line 392
    .line 393
    .line 394
    add-int/lit8 v0, v0, 0x1

    .line 395
    .line 396
    goto :goto_4

    .line 397
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 398
    .line 399
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    if-eqz v2, :cond_b

    .line 408
    .line 409
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 410
    .line 411
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    goto :goto_5

    .line 416
    :cond_b
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 417
    .line 418
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 423
    .line 424
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    :goto_5
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 433
    .line 434
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 435
    .line 436
    .line 437
    move-result v7

    .line 438
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    if-eqz v8, :cond_c

    .line 443
    .line 444
    const v8, 0x7f0714b2

    .line 445
    .line 446
    .line 447
    goto :goto_6

    .line 448
    :cond_c
    if-eqz v2, :cond_d

    .line 449
    .line 450
    const v8, 0x7f07037f

    .line 451
    .line 452
    .line 453
    goto :goto_6

    .line 454
    :cond_d
    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    .line 455
    .line 456
    .line 457
    move-result v8

    .line 458
    if-eqz v8, :cond_e

    .line 459
    .line 460
    const v8, 0x7f070382

    .line 461
    .line 462
    .line 463
    goto :goto_6

    .line 464
    :cond_e
    const v8, 0x7f070a50

    .line 465
    .line 466
    .line 467
    :goto_6
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getFloat(I)F

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    if-eqz v2, :cond_f

    .line 472
    .line 473
    int-to-float v6, v7

    .line 474
    goto :goto_7

    .line 475
    :cond_f
    int-to-float v6, v6

    .line 476
    :goto_7
    mul-float/2addr v6, v5

    .line 477
    float-to-int v5, v6

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 483
    .line 484
    .line 485
    move-result v7

    .line 486
    if-nez v7, :cond_11

    .line 487
    .line 488
    if-eqz v2, :cond_10

    .line 489
    .line 490
    goto :goto_8

    .line 491
    :cond_10
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 492
    .line 493
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 498
    .line 499
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 500
    .line 501
    .line 502
    move-result v8

    .line 503
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 504
    .line 505
    .line 506
    move-result v7

    .line 507
    goto :goto_9

    .line 508
    :cond_11
    :goto_8
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 509
    .line 510
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    :goto_9
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 515
    .line 516
    .line 517
    move-result v8

    .line 518
    if-eqz v8, :cond_12

    .line 519
    .line 520
    const v8, 0x7f0714b1

    .line 521
    .line 522
    .line 523
    goto :goto_a

    .line 524
    :cond_12
    if-eqz v2, :cond_13

    .line 525
    .line 526
    const v8, 0x7f07037e

    .line 527
    .line 528
    .line 529
    goto :goto_a

    .line 530
    :cond_13
    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    .line 531
    .line 532
    .line 533
    move-result v8

    .line 534
    if-eqz v8, :cond_14

    .line 535
    .line 536
    const v8, 0x7f070381

    .line 537
    .line 538
    .line 539
    goto :goto_a

    .line 540
    :cond_14
    const v8, 0x7f070a4f

    .line 541
    .line 542
    .line 543
    :goto_a
    int-to-float v7, v7

    .line 544
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getFloat(I)F

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    mul-float/2addr v6, v7

    .line 549
    float-to-int v6, v6

    .line 550
    move v7, v3

    .line 551
    :goto_b
    if-ge v7, v1, :cond_17

    .line 552
    .line 553
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 554
    .line 555
    aget-object v8, v8, v7

    .line 556
    .line 557
    if-eqz v8, :cond_15

    .line 558
    .line 559
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 560
    .line 561
    .line 562
    move-result-object v9

    .line 563
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 564
    .line 565
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 566
    .line 567
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 568
    .line 569
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    .line 571
    .line 572
    :cond_15
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 573
    .line 574
    aget-object v8, v8, v7

    .line 575
    .line 576
    instance-of v9, v8, Lcom/android/keyguard/SecNumPadKeyTablet;

    .line 577
    .line 578
    if-eqz v9, :cond_16

    .line 579
    .line 580
    check-cast v8, Lcom/android/keyguard/SecNumPadKeyTablet;

    .line 581
    .line 582
    invoke-virtual {v8}, Lcom/android/keyguard/SecNumPadKeyTablet;->updateDigitTextSize()V

    .line 583
    .line 584
    .line 585
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 586
    .line 587
    aget-object v8, v8, v7

    .line 588
    .line 589
    check-cast v8, Lcom/android/keyguard/SecNumPadKeyTablet;

    .line 590
    .line 591
    invoke-virtual {v8}, Lcom/android/keyguard/SecNumPadKeyTablet;->updateKlondikeTextSize()V

    .line 592
    .line 593
    .line 594
    goto :goto_c

    .line 595
    :cond_16
    check-cast v8, Lcom/android/keyguard/SecNumPadKey;

    .line 596
    .line 597
    invoke-virtual {v8}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    .line 598
    .line 599
    .line 600
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 601
    .line 602
    aget-object v8, v8, v7

    .line 603
    .line 604
    check-cast v8, Lcom/android/keyguard/SecNumPadKey;

    .line 605
    .line 606
    invoke-virtual {v8}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    .line 607
    .line 608
    .line 609
    :goto_c
    add-int/lit8 v7, v7, 0x1

    .line 610
    .line 611
    goto :goto_b

    .line 612
    :cond_17
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 613
    .line 614
    if-eqz v7, :cond_18

    .line 615
    .line 616
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 621
    .line 622
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 623
    .line 624
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 625
    .line 626
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    .line 628
    .line 629
    :cond_18
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 630
    .line 631
    if-eqz v7, :cond_19

    .line 632
    .line 633
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 634
    .line 635
    .line 636
    move-result-object v8

    .line 637
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 638
    .line 639
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 640
    .line 641
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 642
    .line 643
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    .line 645
    .line 646
    :cond_19
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 647
    .line 648
    const/4 v7, 0x2

    .line 649
    aget-object v5, v5, v7

    .line 650
    .line 651
    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;I)V

    .line 652
    .line 653
    .line 654
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 655
    .line 656
    const/4 v7, 0x5

    .line 657
    aget-object v5, v5, v7

    .line 658
    .line 659
    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;I)V

    .line 660
    .line 661
    .line 662
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 663
    .line 664
    aget-object v4, v5, v4

    .line 665
    .line 666
    invoke-static {v4, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;I)V

    .line 667
    .line 668
    .line 669
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 670
    .line 671
    aget-object v4, v4, v3

    .line 672
    .line 673
    invoke-static {v4, v6}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->updateNumPadKeySideMargin(Landroid/view/View;I)V

    .line 674
    .line 675
    .line 676
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mIsImagePinLock:Z

    .line 677
    .line 678
    if-nez v4, :cond_1a

    .line 679
    .line 680
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 681
    .line 682
    instance-of v5, v4, Lcom/android/systemui/widget/SystemUITextView;

    .line 683
    .line 684
    if-eqz v5, :cond_1a

    .line 685
    .line 686
    check-cast v4, Lcom/android/systemui/widget/SystemUITextView;

    .line 687
    .line 688
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    const v6, 0x7f07051b

    .line 693
    .line 694
    .line 695
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 696
    .line 697
    .line 698
    move-result v5

    .line 699
    int-to-float v5, v5

    .line 700
    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 701
    .line 702
    .line 703
    :cond_1a
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 704
    .line 705
    check-cast v4, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 706
    .line 707
    const v5, 0x7f0a08f9

    .line 708
    .line 709
    .line 710
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    check-cast v4, Landroid/view/ViewGroup;

    .line 715
    .line 716
    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 717
    .line 718
    check-cast v5, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 719
    .line 720
    const v6, 0x7f0a08fa

    .line 721
    .line 722
    .line 723
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 724
    .line 725
    .line 726
    move-result-object v5

    .line 727
    check-cast v5, Landroid/view/ViewGroup;

    .line 728
    .line 729
    iget-object v6, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 730
    .line 731
    check-cast v6, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 732
    .line 733
    const v7, 0x7f0a08fb

    .line 734
    .line 735
    .line 736
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 737
    .line 738
    .line 739
    move-result-object v6

    .line 740
    check-cast v6, Landroid/view/ViewGroup;

    .line 741
    .line 742
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 743
    .line 744
    .line 745
    move-result-object v7

    .line 746
    if-eqz v2, :cond_1b

    .line 747
    .line 748
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 749
    .line 750
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 751
    .line 752
    .line 753
    move-result v8

    .line 754
    goto :goto_d

    .line 755
    :cond_1b
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 756
    .line 757
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 758
    .line 759
    .line 760
    move-result v8

    .line 761
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 762
    .line 763
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 764
    .line 765
    .line 766
    move-result v9

    .line 767
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 768
    .line 769
    .line 770
    move-result v8

    .line 771
    :goto_d
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 772
    .line 773
    .line 774
    move-result v9

    .line 775
    if-eqz v9, :cond_1c

    .line 776
    .line 777
    const v2, 0x7f0714b0

    .line 778
    .line 779
    .line 780
    goto :goto_e

    .line 781
    :cond_1c
    if-eqz v2, :cond_1d

    .line 782
    .line 783
    const v2, 0x7f07037d

    .line 784
    .line 785
    .line 786
    goto :goto_e

    .line 787
    :cond_1d
    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    .line 788
    .line 789
    .line 790
    move-result v2

    .line 791
    if-eqz v2, :cond_1e

    .line 792
    .line 793
    const v2, 0x7f070380

    .line 794
    .line 795
    .line 796
    goto :goto_e

    .line 797
    :cond_1e
    const v2, 0x7f070a4d

    .line 798
    .line 799
    .line 800
    :goto_e
    int-to-float v8, v8

    .line 801
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 802
    .line 803
    .line 804
    move-result v2

    .line 805
    mul-float/2addr v2, v8

    .line 806
    float-to-int v2, v2

    .line 807
    if-eqz v4, :cond_20

    .line 808
    .line 809
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 810
    .line 811
    .line 812
    move-result-object v7

    .line 813
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 814
    .line 815
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 816
    .line 817
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    .line 819
    .line 820
    if-eqz v5, :cond_1f

    .line 821
    .line 822
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 827
    .line 828
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 829
    .line 830
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    .line 832
    .line 833
    :cond_1f
    if-eqz v6, :cond_20

    .line 834
    .line 835
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 836
    .line 837
    .line 838
    move-result-object v4

    .line 839
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 840
    .line 841
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 842
    .line 843
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    .line 845
    .line 846
    :cond_20
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 847
    .line 848
    .line 849
    move-result v0

    .line 850
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 851
    .line 852
    if-eqz v0, :cond_21

    .line 853
    .line 854
    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    .line 855
    .line 856
    .line 857
    move-result v0

    .line 858
    iput v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOriginPinEntryId:I

    .line 859
    .line 860
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setId(I)V

    .line 865
    .line 866
    .line 867
    :goto_f
    if-ge v3, v1, :cond_22

    .line 868
    .line 869
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 870
    .line 871
    aget-object v2, v2, v3

    .line 872
    .line 873
    instance-of v4, v2, Lcom/android/keyguard/SecNumPadKey;

    .line 874
    .line 875
    if-eqz v4, :cond_22

    .line 876
    .line 877
    check-cast v2, Lcom/android/keyguard/SecNumPadKey;

    .line 878
    .line 879
    iput v0, v2, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    .line 880
    .line 881
    add-int/lit8 v3, v3, 0x1

    .line 882
    .line 883
    goto :goto_f

    .line 884
    :cond_21
    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    .line 885
    .line 886
    .line 887
    move-result v0

    .line 888
    iget v4, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOriginPinEntryId:I

    .line 889
    .line 890
    if-eq v4, v0, :cond_22

    .line 891
    .line 892
    iput v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOriginPinEntryId:I

    .line 893
    .line 894
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setId(I)V

    .line 895
    .line 896
    .line 897
    iget v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOriginPinEntryId:I

    .line 898
    .line 899
    :goto_10
    if-ge v3, v1, :cond_22

    .line 900
    .line 901
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 902
    .line 903
    aget-object v2, v2, v3

    .line 904
    .line 905
    instance-of v4, v2, Lcom/android/keyguard/SecNumPadKey;

    .line 906
    .line 907
    if-eqz v4, :cond_22

    .line 908
    .line 909
    check-cast v2, Lcom/android/keyguard/SecNumPadKey;

    .line 910
    .line 911
    iput v0, v2, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    .line 912
    .line 913
    add-int/lit8 v3, v3, 0x1

    .line 914
    .line 915
    goto :goto_10

    .line 916
    :cond_22
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 p1, 0x6

    .line 4
    if-eq p2, p1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->verifyPasswordAndUnlock()V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public onResume(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onResume(I)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mUpdateSkipped:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mUpdateSkipped:Z

    .line 14
    .line 15
    invoke-static {}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->isFolderClosed()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView$1()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;I)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v1, 0x64

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewAttached()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

    .line 7
    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mWindowRect:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string/jumbo v1, "show_password"

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x0

    .line 46
    if-ne v0, v2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v2, v1

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 51
    .line 52
    iput-boolean v2, v0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 53
    .line 54
    new-instance v2, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    invoke-direct {v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOnKeyListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda2;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public onViewDetached()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$2;

    .line 7
    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public resetState()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->resetState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast v0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setPasswordEntryEnabled(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final setEnabledKeypad(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const v2, 0x3ecccccd    # 0.4f

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    move v3, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v2

    .line 25
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 26
    .line 27
    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_1
    const/16 v3, 0xa

    .line 30
    .line 31
    if-ge v0, v3, :cond_3

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 34
    .line 35
    aget-object v3, v3, v0

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 41
    .line 42
    aget-object v3, v3, v0

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Landroid/view/View;->setClickable(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mButtons:[Landroid/view/View;

    .line 48
    .line 49
    aget-object v3, v3, v0

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    move v4, v1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v4, v2

    .line 56
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    return-void
.end method

.method public final setOkButtonContentDescription(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f13087e

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string p2, ", "

    .line 25
    .line 26
    invoke-static {v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const v2, 0x7f130052

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const p2, 0x7f13087f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_1
    return-void
.end method

.method public setOkButtonEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonContentDescription(ZZ)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->skipUpdateWhenCloseFolder()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mInitializeBottomContainerViewRunnable:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda3;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public verifyPasswordAndUnlock()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->verifyPasswordAndUnlock()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonContentDescription(ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
