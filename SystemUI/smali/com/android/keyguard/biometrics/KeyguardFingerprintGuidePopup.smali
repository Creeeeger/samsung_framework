.class public final Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public animatorSet:Landroid/animation/AnimatorSet;

.field public bouncerShowing:Z

.field public final display:Landroid/view/Display;

.field public guideText:Lcom/android/systemui/widget/SystemUITextView;

.field public final handler:Landroid/os/Handler;

.field public helpText:Ljava/lang/String;

.field public final hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

.field public isAnimating:Z

.field public isRunningState:Z

.field public keyguardGuidePopup:Landroid/view/ViewGroup;

.field public keyguardShowing:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final rotationConsumer:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$rotationConsumer$1;

.field public final rotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$rotationConsumer$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$rotationConsumer$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->rotationConsumer:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$rotationConsumer$1;

    .line 6
    const-class p2, Lcom/android/keyguard/SecRotationWatcher;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/SecRotationWatcher;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->rotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 7
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->handler:Landroid/os/Handler;

    .line 8
    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->display:Landroid/view/Display;

    .line 11
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    const-string/jumbo p2, "phone"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 13
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final access$reset(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isAnimating:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->animatorSet:Landroid/animation/AnimatorSet;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v1

    .line 19
    :goto_0
    if-eqz v2, :cond_2

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->animatorSet:Landroid/animation/AnimatorSet;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isAnimating:Z

    .line 32
    .line 33
    return-void
.end method

.method public static final access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isRunningState:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardShowing:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 16
    .line 17
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    add-long/2addr v2, v0

    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    cmp-long v0, v2, v0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    move v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v2

    .line 33
    :goto_0
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->display:Landroid/view/Display;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v3, 0x2

    .line 46
    if-ne v0, v3, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v1, v2

    .line 50
    :goto_1
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    const/16 v0, 0x8

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final clearGuidePopup()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->guideText:Lcom/android/systemui/widget/SystemUITextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardGuidePopup:Landroid/view/ViewGroup;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [F

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    const-string v2, "alpha"

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-wide/16 v1, 0x64

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->animatorSet:Landroid/animation/AnimatorSet;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$dismissAnimation$1$1;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$dismissAnimation$1$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void

    .line 51
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const-string v0, "KeyguardFingerprintGuidePopup"

    .line 5
    .line 6
    const-string/jumbo v1, "onFinishInflate()"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a051c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardGuidePopup:Landroid/view/ViewGroup;

    .line 27
    .line 28
    const v0, 0x7f0a0523

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->guideText:Lcom/android/systemui/widget/SystemUITextView;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const p0, 0x3f8ccccd    # 1.1f

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    int-to-float p0, p0

    .line 56
    const v1, 0x3ed1eb85    # 0.41f

    .line 57
    .line 58
    .line 59
    mul-float/2addr p0, v1

    .line 60
    float-to-int p0, p0

    .line 61
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method
