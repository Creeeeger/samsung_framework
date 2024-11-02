.class public final synthetic Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationFinished(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->removeMotionAnimator(I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    .line 16
    .line 17
    return-void

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 19
    .line 20
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    .line 33
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->postAnimationFinished(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->removeMotionAnimator(I)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
