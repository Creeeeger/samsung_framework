.class public final synthetic Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

.field public final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationFinished(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->removeMotionAnimator(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 8
    .line 9
    iput-boolean v1, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 15
    .line 16
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->setStashDim(Landroid/window/WindowContainerTransaction;Z)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 24
    .line 25
    invoke-virtual {v0, v1, p0, p1, v3}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->postAnimationFinished(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
