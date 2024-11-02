.class public final Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCaption:Landroid/view/View;

.field public final mCaptionHeight:I

.field public mDownTime:J

.field public mDownY:F

.field public final mHandler:Landroid/os/Handler;

.field public final mHide:Landroid/animation/Animator;

.field public final mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

.field public mIsPaused:Z

.field public mIsShowing:Z

.field public mPositionToShow:I

.field public final mShow:Landroid/animation/Animator;

.field public final mShowRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

.field public mShownByTouch:Z

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public static -$$Nest$msetButtonDisable(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;Z)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 27
    .line 28
    or-int/lit8 v2, v2, 0x4

    .line 29
    .line 30
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 34
    .line 35
    and-int/lit8 v2, v2, -0x5

    .line 36
    .line 37
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    move v2, v1

    .line 53
    :goto_1
    if-ge v2, v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    const/16 v4, 0x8

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v4, v1

    .line 65
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;Landroid/view/View;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShowRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    new-instance v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShownByTouch:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaption:Landroid/view/View;

    .line 31
    .line 32
    iput p4, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaptionHeight:I

    .line 33
    .line 34
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 35
    .line 36
    const/4 p2, 0x2

    .line 37
    new-array p4, p2, [F

    .line 38
    .line 39
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    neg-int v0, v0

    .line 44
    int-to-float v0, v0

    .line 45
    aput v0, p4, v1

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    aput v0, p4, v2

    .line 49
    .line 50
    invoke-static {p3, p1, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShow:Landroid/animation/Animator;

    .line 55
    .line 56
    const-wide/16 v3, 0x12c

    .line 57
    .line 58
    invoke-virtual {p1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 59
    .line 60
    .line 61
    sget-object p4, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    .line 62
    .line 63
    invoke-virtual {p1, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    .line 65
    .line 66
    new-instance p4, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;

    .line 67
    .line 68
    invoke-direct {p4, p0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$1;-><init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 75
    .line 76
    new-array p2, p2, [F

    .line 77
    .line 78
    aput v0, p2, v1

    .line 79
    .line 80
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result p4

    .line 84
    neg-int p4, p4

    .line 85
    int-to-float p4, p4

    .line 86
    aput p4, p2, v2

    .line 87
    .line 88
    invoke-static {p3, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHide:Landroid/animation/Animator;

    .line 93
    .line 94
    invoke-virtual {p1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 95
    .line 96
    .line 97
    sget-object p2, Lcom/samsung/android/util/InterpolatorUtils;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    .line 101
    .line 102
    new-instance p2, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;

    .line 103
    .line 104
    invoke-direct {p2, p0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$2;-><init>(Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "ImmersiveCaptionBehavior_hide: callers="

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    const-string v2, "MultitaskingWindowDecoration"

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHide:Landroid/animation/Animator;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final pause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "ImmersiveCaptionBehavior_pause: Remove hide runnable, callers="

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    const-string v2, "MultitaskingWindowDecoration"

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShownByTouch:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->show()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final setShownState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    .line 6
    .line 7
    const-string p0, "ImmersiveCaptionBehavior_setShownState="

    .line 8
    .line 9
    const-string v0, ", callers="

    .line 10
    .line 11
    invoke-static {p0, p1, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x3

    .line 16
    const-string v0, "MultitaskingWindowDecoration"

    .line 17
    .line 18
    invoke-static {p1, p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHide:Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "MultitaskingWindowDecoration"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 12
    .line 13
    .line 14
    const-string v0, "ImmersiveCaptionBehavior_show: cancel hide anim"

    .line 15
    .line 16
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "ImmersiveCaptionBehavior_show: callers="

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShow:Landroid/animation/Animator;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
