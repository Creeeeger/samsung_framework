.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public alphaModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

.field public biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

.field public final biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

.field public final biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

.field public final biometricRetryContainer:Landroid/widget/FrameLayout;

.field public final biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field public bouncerShowing:Z

.field public colorModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;

.field public countDownTimer:Landroid/os/CountDownTimer;

.field public debugCount:I

.field public displayDeviceType:I

.field public drawableResId:I

.field public errorString:Ljava/lang/String;

.field public isHiddenRetry:Z

.field public isLockOut:Z

.field public isLockStarEnabled:Z

.field public isRunning:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field public lockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

.field public final lockIconView:Lcom/android/keyguard/SecLockIconView;

.field public final lockStarCallback:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;

.field public final pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public final powerManager:Landroid/os/PowerManager;

.field public final rotationConsumer:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;

.field public final rotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

.field public final settingsListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;

.field public visibilityModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricView;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/view/accessibility/AccessibilityManager;Landroid/os/PowerManager;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->powerManager:Landroid/os/PowerManager;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->rotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 17
    .line 18
    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 19
    .line 20
    const p2, 0x7f0a0507

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 32
    .line 33
    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 34
    .line 35
    const p2, 0x7f0a0506

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/android/systemui/widget/SystemUITextView;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 47
    .line 48
    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 49
    .line 50
    const p2, 0x7f0a0508

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 62
    .line 63
    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 64
    .line 65
    const p2, 0x7f0a018e

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 77
    .line 78
    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 79
    .line 80
    const p2, 0x7f0a018f

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/android/keyguard/SecLockIconView;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 92
    .line 93
    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 94
    .line 95
    const p2, 0x7f0a0155

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/android/systemui/widget/SystemUITextView;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 105
    .line 106
    const-string p1, ""

    .line 107
    .line 108
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    .line 109
    .line 110
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;

    .line 111
    .line 112
    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockStarCallback:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;

    .line 116
    .line 117
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;

    .line 118
    .line 119
    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->settingsListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;

    .line 123
    .line 124
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->rotationConsumer:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;

    .line 130
    .line 131
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;

    .line 132
    .line 133
    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 134
    .line 135
    .line 136
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;

    .line 137
    .line 138
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;

    .line 139
    .line 140
    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 144
    .line 145
    return-void
.end method

.method public static final access$onClickRetryButton(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "KeyguardBiometricView"

    .line 6
    .line 7
    const-string/jumbo v1, "onClick - Retry icon"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const/4 v2, 0x1

    .line 18
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->powerManager:Landroid/os/PowerManager;

    .line 19
    .line 20
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v1, "Face auth triggered due to retry button click."

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateVisibility()V

    .line 37
    .line 38
    .line 39
    const-string p0, "2"

    .line 40
    .line 41
    const-string v0, "102"

    .line 42
    .line 43
    const-string v1, "1013"

    .line 44
    .line 45
    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public static final access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v2}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v1, 0x8

    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 54
    .line 55
    check-cast v0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 72
    .line 73
    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method


# virtual methods
.method public final clearView()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/SecLockIconView;->initBiometricErrorIndicationAnimationValue(Lcom/android/systemui/widget/SystemUIImageView;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final handleBiometricAttemptLockout(J)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long v4, p1, v0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "handleBiometricsAttemptLockout( elapsedRealtimeDeadline = "

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " )"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "KeyguardBiometricView"

    .line 44
    .line 45
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-wide/16 v6, 0x3e8

    .line 55
    .line 56
    iget-object v8, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 57
    .line 58
    move-object v2, p1

    .line 59
    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;-><init>(Landroid/content/Context;JJLcom/android/systemui/widget/SystemUITextView;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-virtual {v1, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 69
    .line 70
    if-eqz p0, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public final initLockStarLockIcon(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconDrawable(ZZ)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final isLandscape()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->defaultDisplay:Landroid/view/Display;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x1

    .line 20
    if-eq p0, v0, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-ne p0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :cond_1
    :goto_0
    return v0
.end method

.method public final needsToChangeRetryButton()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLandscape()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const v0, 0x7f050077

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    :cond_0
    :goto_0
    move v1, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const v0, 0x7f050067

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_1
    return v1
.end method

.method public final onInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$inflateRetryView$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$inflateRetryView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "background"

    .line 28
    .line 29
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const v2, 0x7f080ec9

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const v2, 0x7f080ec8

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    .line 50
    .line 51
    const v1, 0x3f8ccccd    # 1.1f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 58
    .line 59
    const/high16 v1, 0x3f800000    # 1.0f

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLayout()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockContainerMargin()V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 84
    .line 85
    .line 86
    new-instance v3, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$2;

    .line 87
    .line 88
    invoke-direct {v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$2;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 92
    .line 93
    .line 94
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    iput-boolean v3, v1, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    .line 107
    .line 108
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 113
    .line 114
    const-string v3, "any_screen_running"

    .line 115
    .line 116
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    filled-new-array {v3}, [Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->settingsListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;

    .line 125
    .line 126
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 127
    .line 128
    .line 129
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 130
    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 134
    .line 135
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 155
    .line 156
    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayDeviceType:I

    .line 157
    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 159
    .line 160
    iget-object v3, v0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 161
    .line 162
    if-eqz v3, :cond_2

    .line 163
    .line 164
    invoke-interface {v3}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    :cond_2
    iput-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockStarEnabled:Z

    .line 169
    .line 170
    iput-boolean v2, v1, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    .line 171
    .line 172
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockStarCallback:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;

    .line 173
    .line 174
    const-string v2, "KeyguardBiometricView"

    .line 175
    .line 176
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->rotationConsumer:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;

    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->rotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 182
    .line 183
    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecRotationWatcher;->addCallback(Ljava/util/function/IntConsumer;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 16
    .line 17
    .line 18
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->settingsListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 29
    .line 30
    .line 31
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 36
    .line 37
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 45
    .line 46
    const-string v1, "KeyguardBiometricView"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->unregisterCallback(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->rotationConsumer:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->rotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecRotationWatcher;->removeCallback(Ljava/util/function/IntConsumer;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final resetBiometricLockOutTimer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final startLockIconAnimation(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7
    .line 8
    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 15
    .line 16
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 17
    .line 18
    new-array v2, v2, [F

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const p1, 0x3e6147ae    # 0.22f

    .line 28
    .line 29
    .line 30
    const/high16 v2, 0x3e800000    # 0.25f

    .line 31
    .line 32
    invoke-static {p1, v2, v1, v0, p0}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v0, 0x15e

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 42
    .line 43
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 44
    .line 45
    new-array v2, v2, [F

    .line 46
    .line 47
    fill-array-data v2, :array_1

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const p1, 0x3ea8f5c3    # 0.33f

    .line 55
    .line 56
    .line 57
    const v2, 0x3dcccccd    # 0.1f

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 61
    .line 62
    .line 63
    const-wide/16 v0, 0xc8

    .line 64
    .line 65
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final updateBiometricViewLayout()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 18
    .line 19
    check-cast v0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x1

    .line 31
    if-ne v2, v3, :cond_1

    .line 32
    .line 33
    move v2, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v2, v4

    .line 36
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const v6, 0x7f0704fb

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    new-instance v12, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 48
    .line 49
    invoke-direct {v12}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 53
    .line 54
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 55
    .line 56
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    sget-boolean v13, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 61
    .line 62
    if-eqz v13, :cond_3

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    iget v7, v7, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 77
    .line 78
    if-nez v7, :cond_2

    .line 79
    .line 80
    move v7, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v7, v4

    .line 83
    :goto_1
    if-eqz v7, :cond_3

    .line 84
    .line 85
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-nez v7, :cond_3

    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-static {v7, v2}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move v7, v4

    .line 101
    :goto_2
    invoke-virtual {v12, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 102
    .line 103
    .line 104
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 105
    .line 106
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 107
    .line 108
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    const/4 v14, -0x2

    .line 113
    invoke-virtual {v12, v6, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 114
    .line 115
    .line 116
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 117
    .line 118
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 119
    .line 120
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    const/4 v8, 0x6

    .line 125
    const/4 v9, 0x0

    .line 126
    const/4 v10, 0x6

    .line 127
    const/4 v11, 0x0

    .line 128
    move-object v6, v12

    .line 129
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 130
    .line 131
    .line 132
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 133
    .line 134
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 135
    .line 136
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    const/4 v15, 0x7

    .line 141
    invoke-virtual {v12, v6, v15, v4, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 142
    .line 143
    .line 144
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 145
    .line 146
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 147
    .line 148
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    const/4 v7, 0x3

    .line 153
    invoke-virtual {v12, v6, v7, v4, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 154
    .line 155
    .line 156
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 157
    .line 158
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 159
    .line 160
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 161
    .line 162
    .line 163
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 164
    .line 165
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 166
    .line 167
    iget-object v6, v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->defaultDisplay:Landroid/view/Display;

    .line 168
    .line 169
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    if-eq v11, v5, :cond_4

    .line 182
    .line 183
    if-eq v11, v7, :cond_4

    .line 184
    .line 185
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 186
    .line 187
    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    const/4 v8, 0x6

    .line 194
    const/4 v9, 0x0

    .line 195
    const/4 v10, 0x6

    .line 196
    const/4 v11, 0x0

    .line 197
    move-object v6, v12

    .line 198
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 202
    .line 203
    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 204
    .line 205
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-virtual {v12, v1, v15, v4, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 210
    .line 211
    .line 212
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 213
    .line 214
    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 215
    .line 216
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_7

    .line 220
    .line 221
    :cond_4
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-nez v8, :cond_f

    .line 230
    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-static {v8}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    if-eqz v8, :cond_f

    .line 240
    .line 241
    if-nez v6, :cond_f

    .line 242
    .line 243
    if-eqz v13, :cond_6

    .line 244
    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    iget v6, v6, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 258
    .line 259
    if-nez v6, :cond_5

    .line 260
    .line 261
    move v6, v5

    .line 262
    goto :goto_3

    .line 263
    :cond_5
    move v6, v4

    .line 264
    :goto_3
    if-eqz v6, :cond_6

    .line 265
    .line 266
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-nez v6, :cond_6

    .line 271
    .line 272
    goto/16 :goto_8

    .line 273
    .line 274
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 283
    .line 284
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    invoke-static {v8}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    if-eqz v8, :cond_7

    .line 297
    .line 298
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    goto :goto_4

    .line 303
    :cond_7
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    const v9, 0x7f070967

    .line 320
    .line 321
    .line 322
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    sget v9, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 327
    .line 328
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-eqz v1, :cond_c

    .line 333
    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    if-ne v10, v5, :cond_8

    .line 347
    .line 348
    move v10, v5

    .line 349
    goto :goto_5

    .line 350
    :cond_8
    move v10, v4

    .line 351
    :goto_5
    if-nez v10, :cond_9

    .line 352
    .line 353
    if-eq v11, v7, :cond_a

    .line 354
    .line 355
    :cond_9
    if-eqz v10, :cond_b

    .line 356
    .line 357
    if-ne v11, v5, :cond_b

    .line 358
    .line 359
    :cond_a
    sub-int/2addr v9, v8

    .line 360
    goto :goto_6

    .line 361
    :cond_b
    move v9, v4

    .line 362
    :goto_6
    add-int/2addr v8, v9

    .line 363
    :cond_c
    move v13, v8

    .line 364
    iget-object v7, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 365
    .line 366
    check-cast v7, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 367
    .line 368
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getId()I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    invoke-static {v6, v8}, Lcom/android/keyguard/SecurityUtils;->calculateLandscapeViewWidth(ILandroid/content/Context;)I

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    invoke-virtual {v12, v7, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 381
    .line 382
    .line 383
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 384
    .line 385
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 386
    .line 387
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    invoke-virtual {v12, v6, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 392
    .line 393
    .line 394
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 395
    .line 396
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 397
    .line 398
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    const/4 v7, -0x1

    .line 403
    invoke-virtual {v12, v6, v15, v7, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 404
    .line 405
    .line 406
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 407
    .line 408
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 409
    .line 410
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    const/4 v8, 0x6

    .line 415
    const/4 v9, 0x0

    .line 416
    const/4 v10, 0x6

    .line 417
    move-object v6, v12

    .line 418
    move v14, v11

    .line 419
    move v11, v13

    .line 420
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 421
    .line 422
    .line 423
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 424
    .line 425
    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 426
    .line 427
    invoke-virtual {v6, v4, v4, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 428
    .line 429
    .line 430
    if-eqz v1, :cond_e

    .line 431
    .line 432
    if-eqz v2, :cond_e

    .line 433
    .line 434
    if-ne v14, v5, :cond_d

    .line 435
    .line 436
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 437
    .line 438
    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 439
    .line 440
    invoke-virtual {v1, v4, v4, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 441
    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_d
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 445
    .line 446
    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 447
    .line 448
    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 449
    .line 450
    .line 451
    :cond_e
    :goto_7
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 452
    .line 453
    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 454
    .line 455
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 460
    .line 461
    invoke-virtual {v12, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockContainerMargin()V

    .line 465
    .line 466
    .line 467
    return-void

    .line 468
    :cond_f
    :goto_8
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 469
    .line 470
    check-cast v0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 471
    .line 472
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 477
    .line 478
    invoke-virtual {v12, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 479
    .line 480
    .line 481
    return-void
.end method

.method public final updateLayout()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->resetBiometricLockOutTimer()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    cmp-long v0, v1, v5

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    cmp-long v0, v3, v5

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->handleBiometricAttemptLockout(J)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v0, ""

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public final updateLockContainerMargin()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f07124b

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f0704f7

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f0704f8

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .line 42
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_BIOMETRICS_TABLET:Z

    .line 43
    .line 44
    if-eqz v5, :cond_5

    .line 45
    .line 46
    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 47
    .line 48
    check-cast v5, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 49
    .line 50
    iget-object v5, v5, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->defaultDisplay:Landroid/view/Display;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    if-eq v5, v1, :cond_2

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    if-eq v5, v1, :cond_0

    .line 71
    .line 72
    const/4 p0, 0x3

    .line 73
    if-eq v5, p0, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 77
    .line 78
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_1

    .line 83
    .line 84
    sget v0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 85
    .line 86
    :cond_1
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    if-eqz v2, :cond_3

    .line 90
    .line 91
    move v0, v2

    .line 92
    :cond_3
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    add-int/2addr v0, v1

    .line 96
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLandscape()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_6

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    :cond_6
    add-int/2addr v0, v1

    .line 109
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 110
    .line 111
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final updateLockIcon()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFaceStrongBiometric()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isRunning:Z

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFullscreenBouncer()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v1, v2

    .line 41
    :goto_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRemoteLockEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    const/16 v5, 0x8

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFMMLock()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 58
    .line 59
    invoke-virtual {v0, v5}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->needsToChangeRetryButton()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconDrawable(ZZ)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconDrawable(ZZ)V

    .line 80
    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    move v5, v2

    .line 85
    :cond_3
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :goto_1
    iput v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    .line 89
    .line 90
    return-void
.end method

.method public final updateLockIconDrawable(ZZ)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const v0, 0x7f080813

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const v0, 0x7f080bf6

    .line 8
    .line 9
    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f0704a3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v2, 0x7f07049f

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :goto_1
    iget v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->drawableResId:I

    .line 36
    .line 37
    if-ne v0, v2, :cond_2

    .line 38
    .line 39
    if-eqz p2, :cond_c

    .line 40
    .line 41
    :cond_2
    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->drawableResId:I

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->drawableResId:I

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    .line 64
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    if-nez p1, :cond_c

    .line 70
    .line 71
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 72
    .line 73
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockStarEnabled:Z

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    iget-object p1, p2, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const/4 p1, 0x0

    .line 90
    :goto_2
    if-eqz p1, :cond_c

    .line 91
    .line 92
    iget-object p1, p2, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 93
    .line 94
    const/4 p2, 0x0

    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    const-string v1, "lockIconVisibility"

    .line 98
    .line 99
    invoke-interface {p1, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move-object v1, p2

    .line 105
    :goto_3
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->visibilityModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    const-string v1, "lockIconAlpha"

    .line 110
    .line 111
    invoke-interface {p1, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    goto :goto_4

    .line 116
    :cond_6
    move-object v1, p2

    .line 117
    :goto_4
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->alphaModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 118
    .line 119
    if-eqz p1, :cond_7

    .line 120
    .line 121
    const-string v1, "lockIconColor"

    .line 122
    .line 123
    invoke-interface {p1, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    goto :goto_5

    .line 128
    :cond_7
    move-object v1, p2

    .line 129
    :goto_5
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->colorModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 130
    .line 131
    if-eqz p1, :cond_8

    .line 132
    .line 133
    const-string p2, "lockIconDrawable"

    .line 134
    .line 135
    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    :cond_8
    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->visibilityModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 142
    .line 143
    if-eqz p1, :cond_9

    .line 144
    .line 145
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 146
    .line 147
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_9
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->alphaModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 151
    .line 152
    if-eqz p1, :cond_a

    .line 153
    .line 154
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_a
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->colorModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 158
    .line 159
    if-eqz p1, :cond_b

    .line 160
    .line 161
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_b
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 165
    .line 166
    if-eqz p0, :cond_c

    .line 167
    .line 168
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_c
    return-void
.end method

.method public final updateLockIconVisibility(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    move p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p1, 0x8

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockStarEnabled:Z

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :cond_2
    move p1, v0

    .line 31
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->initLockStarLockIcon(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final updateVisibility()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconVisibility(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    .line 11
    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v0, 0x8

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
