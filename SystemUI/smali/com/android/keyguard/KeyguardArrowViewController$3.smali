.class public final Lcom/android/keyguard/KeyguardArrowViewController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardArrowViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDualDarInnerLockScreenStateChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowView()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowMargin()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v3, "onLockModeChanged - deadline "

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "KeyguardArrowViewController"

    .line 25
    .line 26
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-lez v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTimerRunning:Z

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowVisibility(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    .line 43
    .line 44
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 49
    .line 50
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 51
    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 55
    .line 56
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 57
    .line 58
    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    .line 59
    .line 60
    const/4 v3, 0x3

    .line 61
    if-ne v2, v3, :cond_1

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 64
    .line 65
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;

    .line 66
    .line 67
    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;->updateSecurityViewPosition(IZ)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTimerRunning:Z

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->checkArrowVisibility()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->initArrowView()V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/keyguard/SecurityUtils;->isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowView()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    .line 32
    .line 33
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 38
    .line 39
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 40
    .line 41
    if-eq p1, v0, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 44
    .line 45
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 46
    .line 47
    iget p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    if-ne p1, v0, :cond_1

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 53
    .line 54
    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-interface {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;->updateSecurityViewPosition(IZ)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLastOrientation:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->checkArrowVisibility()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->initArrowView()V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowMargin()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
