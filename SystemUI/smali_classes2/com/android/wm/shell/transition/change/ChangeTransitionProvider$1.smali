.class public final Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mFinished:Z

.field public final synthetic val$animator:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

.field public final synthetic val$finisher:Ljava/lang/Runnable;

.field public final synthetic val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;Ljava/lang/Runnable;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->val$finisher:Ljava/lang/Runnable;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->val$animator:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->mFinished:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->mFinished:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->mFinished:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->val$finisher:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->val$animator:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->mFinished:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->mFinished:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->val$finisher:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->val$animator:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
