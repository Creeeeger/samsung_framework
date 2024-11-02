.class public final Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

.field public mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

.field public mCanceled:Z

.field public final mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

.field public final mLock:Ljava/lang/Object;

.field public final mTaskSurface:Landroid/view/SurfaceControl;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(ILcom/android/wm/shell/windowdecor/FreeformStashState;Landroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    if-ne p1, p2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p2, 0x4

    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    new-instance p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    new-instance p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 51
    .line 52
    :goto_1
    return-void
.end method
