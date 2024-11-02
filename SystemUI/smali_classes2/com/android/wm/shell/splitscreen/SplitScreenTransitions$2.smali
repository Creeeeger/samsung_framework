.class public final Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mFinished:Z

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field public final synthetic val$animator:Landroid/animation/ValueAnimator;

.field public final synthetic val$finisher:Ljava/lang/Runnable;

.field public final synthetic val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$finisher:Ljava/lang/Runnable;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$animator:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->mFinished:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->onAnimationFinished()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->onAnimationFinished()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationFinished()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->mFinished:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->mFinished:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$finisher:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$animator:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->val$updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDividerFadeAnimation:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDividerFadeAnimation:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    :cond_1
    return-void
.end method
