.class public final Lcom/android/wm/shell/windowdecor/HandleAutoHide;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHide:Landroid/animation/Animator;

.field public final mHideRunnable:Lcom/android/wm/shell/windowdecor/HandleAutoHide$$ExternalSyntheticLambda0;

.field public mIsShowing:Z

.field public mShow:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/widget/HandleView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/HandleAutoHide$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/HandleAutoHide;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHideRunnable:Lcom/android/wm/shell/windowdecor/HandleAutoHide$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mEnabled:Z

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mIsShowing:Z

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->updateHandleAnimation(Lcom/android/wm/shell/windowdecor/widget/HandleView;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final updateHandleAnimation(Lcom/android/wm/shell/windowdecor/widget/HandleView;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_70:Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, 0x3e8

    .line 5
    .line 6
    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createViewAlphaAnimator(Landroid/view/View;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mShow:Landroid/animation/Animator;

    .line 11
    .line 12
    new-instance v1, Lcom/android/wm/shell/windowdecor/HandleAutoHide$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/HandleAutoHide$1;-><init>(Lcom/android/wm/shell/windowdecor/HandleAutoHide;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_70:Landroid/view/animation/PathInterpolator;

    .line 22
    .line 23
    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createViewAlphaAnimator(Landroid/view/View;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHide:Landroid/animation/Animator;

    .line 28
    .line 29
    new-instance v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide$2;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/HandleAutoHide$2;-><init>(Lcom/android/wm/shell/windowdecor/HandleAutoHide;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
