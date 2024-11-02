.class public final Lcom/android/keyguard/KeyguardArrowViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardArrowViewController$2;

.field public mCurrentPosition:I

.field public final mDisplayLifecycleObserver:Lcom/android/keyguard/KeyguardArrowViewController$1;

.field public mIsFolderOpened:Z

.field public mIsTableArrowState:Z

.field public mIsTimerRunning:Z

.field public final mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLastOrientation:I

.field public mLastUpdateTime:J

.field public final mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mLeftArrowContainer:Landroid/widget/FrameLayout;

.field public mLeftArrowGD:Landroid/view/GestureDetector;

.field public final mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mRightArrowContainer:Landroid/widget/FrameLayout;

.field public mRightArrowGD:Landroid/view/GestureDetector;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public static -$$Nest$mannounceForArrowAccessibility(Lcom/android/keyguard/KeyguardArrowViewController;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isPatternView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const p1, 0x7f1307d6

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const p1, 0x7f1307d8

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const p1, 0x7f1307d7

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const p1, 0x7f1307d9

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 27
    .line 28
    check-cast v0, Lcom/android/keyguard/KeyguardArrowView;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowView;Lcom/android/keyguard/KeyguardArrowViewCallback;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    .line 9
    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLastUpdateTime:J

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsFolderOpened:Z

    .line 15
    .line 16
    new-instance p1, Lcom/android/keyguard/KeyguardArrowViewController$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardArrowViewController$1;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mDisplayLifecycleObserver:Lcom/android/keyguard/KeyguardArrowViewController$1;

    .line 22
    .line 23
    new-instance p1, Lcom/android/keyguard/KeyguardArrowViewController$2;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardArrowViewController$2;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardArrowViewController$2;

    .line 29
    .line 30
    new-instance p1, Lcom/android/keyguard/KeyguardArrowViewController$3;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardArrowViewController$3;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 40
    .line 41
    iput-object p4, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 42
    .line 43
    iput-object p5, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 46
    .line 47
    check-cast p1, Lcom/android/keyguard/KeyguardArrowView;

    .line 48
    .line 49
    const p2, 0x7f0a05a7

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/widget/FrameLayout;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrowContainer:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 61
    .line 62
    check-cast p1, Lcom/android/keyguard/KeyguardArrowView;

    .line 63
    .line 64
    const p2, 0x7f0a05a6

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 76
    .line 77
    check-cast p1, Lcom/android/keyguard/KeyguardArrowView;

    .line 78
    .line 79
    const p2, 0x7f0a08ce

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/widget/FrameLayout;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrowContainer:Landroid/widget/FrameLayout;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 91
    .line 92
    check-cast p1, Lcom/android/keyguard/KeyguardArrowView;

    .line 93
    .line 94
    const p2, 0x7f0a08cd

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 104
    .line 105
    return-void
.end method

.method public static startArrowViewAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v2, v1, [F

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 22
    .line 23
    new-array v3, v1, [F

    .line 24
    .line 25
    fill-array-data v3, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 33
    .line 34
    new-array v1, v1, [F

    .line 35
    .line 36
    fill-array-data v1, :array_2

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 52
    .line 53
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 54
    .line 55
    .line 56
    filled-new-array {v0, v2, p0}, [Landroid/animation/Animator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Landroid/view/animation/PathInterpolator;

    .line 64
    .line 65
    const v0, 0x3e6147ae    # 0.22f

    .line 66
    .line 67
    .line 68
    const/high16 v2, 0x3e800000    # 0.25f

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    const/high16 v4, 0x3f800000    # 1.0f

    .line 72
    .line 73
    invoke-direct {p0, v0, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v2, 0x15e

    .line 80
    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 82
    .line 83
    .line 84
    const-wide/16 v2, 0x0

    .line 85
    .line 86
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void

    .line 93
    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final checkArrowVisibility()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-gtz v1, :cond_2

    .line 13
    .line 14
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRearSelfie()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsFolderOpened:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    .line 36
    .line 37
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 46
    .line 47
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsDisappearAnimation:Z

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    move p0, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move p0, v2

    .line 54
    :goto_0
    if-nez p0, :cond_2

    .line 55
    .line 56
    move v2, v0

    .line 57
    :cond_2
    :goto_1
    return v2
.end method

.method public final initArrowView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->checkArrowVisibility()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getBouncerOneHandPosition()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    :goto_0
    iput v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const-string v0, "KeyguardArrowViewController"

    .line 40
    .line 41
    const-string v1, "Set force left security view position"

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowView()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final isInvalidArrowView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final isPatternView()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final onInit()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->initMainDisplaySize(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardArrowViewController$2;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mDisplayLifecycleObserver:Lcom/android/keyguard/KeyguardArrowViewController$1;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "background"

    .line 31
    .line 32
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-static {p0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 44
    .line 45
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsFolderOpened:Z

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->initArrowView()V

    .line 50
    .line 51
    .line 52
    new-instance v0, Landroid/view/GestureDetector;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lcom/android/keyguard/KeyguardArrowViewController$4;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardArrowViewController$4;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrowGD:Landroid/view/GestureDetector;

    .line 67
    .line 68
    new-instance v0, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Landroid/view/GestureDetector;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Lcom/android/keyguard/KeyguardArrowViewController$5;

    .line 86
    .line 87
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardArrowViewController$5;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrowGD:Landroid/view/GestureDetector;

    .line 94
    .line 95
    new-instance v0, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardArrowViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardArrowViewController;I)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 9
    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardArrowViewController$2;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mDisplayLifecycleObserver:Lcom/android/keyguard/KeyguardArrowViewController$1;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final updateArrowMargin()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isInvalidArrowView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrowContainer:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrowContainer:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    .line 28
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsFolderOpened:Z

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    if-eqz v5, :cond_10

    .line 32
    .line 33
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    goto/16 :goto_7

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isPatternView()Z

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/4 v7, 0x1

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    int-to-float v5, v5

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const v9, 0x7f07048c

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eq v5, v7, :cond_4

    .line 95
    .line 96
    const/4 v8, 0x3

    .line 97
    if-ne v5, v8, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    sget v5, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    :goto_0
    sget v5, Lcom/android/keyguard/SecurityUtils;->sMainDisplayHeight:I

    .line 104
    .line 105
    :goto_1
    int-to-float v5, v5

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    const v9, 0x7f07048b

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    :goto_2
    mul-float/2addr v8, v5

    .line 118
    float-to-int v5, v8

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isPatternView()Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    iget-object v11, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    .line 132
    .line 133
    check-cast v11, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    .line 134
    .line 135
    iget-object v11, v11, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 136
    .line 137
    iget-object v11, v11, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 138
    .line 139
    check-cast v11, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 140
    .line 141
    const v12, 0x7f0a03a9

    .line 142
    .line 143
    .line 144
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    check-cast v11, Lcom/android/keyguard/EmergencyButton;

    .line 149
    .line 150
    if-eqz v11, :cond_5

    .line 151
    .line 152
    invoke-virtual {v11}, Landroid/widget/Button;->getVisibility()I

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-nez v11, :cond_5

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_5
    move v7, v6

    .line 160
    :goto_3
    sget-boolean v11, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    .line 161
    .line 162
    const v12, 0x7f070967

    .line 163
    .line 164
    .line 165
    if-eqz v11, :cond_6

    .line 166
    .line 167
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    :cond_6
    const v11, 0x7f070408

    .line 172
    .line 173
    .line 174
    const v13, 0x7f070407

    .line 175
    .line 176
    .line 177
    if-eqz v9, :cond_8

    .line 178
    .line 179
    if-eqz v10, :cond_7

    .line 180
    .line 181
    const v10, 0x7f07050c

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    add-int/2addr v14, v10

    .line 193
    const v10, 0x7f070508

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    goto :goto_4

    .line 201
    :cond_7
    const v10, 0x7f070512

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 209
    .line 210
    .line 211
    move-result v14

    .line 212
    add-int/2addr v14, v10

    .line 213
    const v10, 0x7f070514

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    goto :goto_4

    .line 221
    :cond_8
    if-eqz v10, :cond_9

    .line 222
    .line 223
    const v10, 0x7f07050b

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    add-int/2addr v14, v10

    .line 235
    const v10, 0x7f070507

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    goto :goto_4

    .line 243
    :cond_9
    sget v10, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    .line 244
    .line 245
    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    add-int/2addr v14, v10

    .line 250
    const v10, 0x7f070513

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 254
    .line 255
    .line 256
    move-result v10

    .line 257
    :goto_4
    add-int/2addr v10, v14

    .line 258
    add-int/2addr v10, v6

    .line 259
    if-nez v7, :cond_b

    .line 260
    .line 261
    if-eqz v9, :cond_a

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_a
    move v11, v13

    .line 265
    :goto_5
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    sub-int/2addr v10, v7

    .line 270
    :cond_b
    iget-object v7, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 271
    .line 272
    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    if-eqz v7, :cond_c

    .line 277
    .line 278
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 283
    .line 284
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    if-nez v7, :cond_c

    .line 289
    .line 290
    sget v7, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 291
    .line 292
    const v9, 0x7f0704af

    .line 293
    .line 294
    .line 295
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    add-int/2addr v8, v7

    .line 300
    sub-int/2addr v8, v6

    .line 301
    add-int/2addr v10, v8

    .line 302
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isPatternView()Z

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    if-eqz v8, :cond_e

    .line 315
    .line 316
    if-eqz v7, :cond_d

    .line 317
    .line 318
    const v7, 0x7f07050a

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    goto :goto_6

    .line 326
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-static {v6}, Lcom/android/keyguard/SecurityUtils;->getTabletPINContainerHeight(Landroid/content/Context;)I

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    goto :goto_6

    .line 335
    :cond_e
    if-eqz v7, :cond_f

    .line 336
    .line 337
    const v7, 0x7f070509

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    goto :goto_6

    .line 345
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-static {v6}, Lcom/android/keyguard/SecurityUtils;->getFoldPINContainerHeight(Landroid/content/Context;)I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    :goto_6
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 354
    .line 355
    .line 356
    iget p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLastOrientation:I

    .line 357
    .line 358
    const/4 v0, 0x2

    .line 359
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 360
    .line 361
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 362
    .line 363
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 364
    .line 365
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 366
    .line 367
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 368
    .line 369
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_10
    :goto_7
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 373
    .line 374
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 375
    .line 376
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 377
    .line 378
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 379
    .line 380
    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    .line 385
    .line 386
    return-void
.end method

.method public final updateArrowStyle(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isInvalidArrowView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const v0, 0x7f080bf3

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const v0, 0x7f080bf1

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const v0, 0x7f080bf4

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const v0, 0x7f080bf2

    .line 29
    .line 30
    .line 31
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v3, 0x7f080ed2

    .line 41
    .line 42
    .line 43
    const v4, 0x7f080cdf

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    move v5, v3

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move v5, v4

    .line 51
    :goto_2
    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    move v3, v4

    .line 66
    :goto_3
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final updateArrowView()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isInvalidArrowView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "background"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowStyle(Z)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowVisibility(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowMargin()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateSecurityViewPosition(ZZ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final updateArrowVisibility(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isInvalidArrowView()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->checkArrowVisibility()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    if-eqz p1, :cond_4

    .line 21
    .line 22
    iget p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    if-nez p1, :cond_2

    .line 38
    .line 39
    move p1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move p1, v4

    .line 42
    :goto_0
    invoke-virtual {v2, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 46
    .line 47
    if-ne p0, v0, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move v3, v4

    .line 51
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void
.end method

.method public final updateSecurityViewPosition(ZZ)V
    .locals 4

    .line 1
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTimerRunning:Z

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    .line 5
    .line 6
    if-nez p2, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->checkArrowVisibility()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_4

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 15
    .line 16
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Lcom/android/keyguard/SecurityUtils;->isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 28
    .line 29
    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 34
    .line 35
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 36
    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 40
    .line 41
    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 42
    .line 43
    iget v2, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    .line 44
    .line 45
    if-ne v2, v0, :cond_1

    .line 46
    .line 47
    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 48
    .line 49
    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;

    .line 50
    .line 51
    invoke-interface {v0, p2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;->updateSecurityViewPosition(IZ)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    .line 55
    .line 56
    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    :cond_2
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 77
    .line 78
    iget p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p2, "bouncer_one_hand_position"

    .line 87
    .line 88
    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void

    .line 92
    :cond_4
    :goto_0
    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    .line 93
    .line 94
    iget-object p0, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 97
    .line 98
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 99
    .line 100
    if-eq p1, p2, :cond_5

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 103
    .line 104
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 105
    .line 106
    iget p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    .line 107
    .line 108
    if-ne p1, v0, :cond_5

    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 111
    .line 112
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;

    .line 113
    .line 114
    const/4 p1, 0x1

    .line 115
    const/4 p2, 0x0

    .line 116
    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;->updateSecurityViewPosition(IZ)V

    .line 117
    .line 118
    .line 119
    :cond_5
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    const-string p1, "background"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowStyle(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
