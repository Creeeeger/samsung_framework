.class public final synthetic Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mCanceled:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTargetBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-float v1, v1

    .line 29
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    iget p1, p1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 35
    .line 36
    mul-float/2addr v2, p1

    .line 37
    sub-float/2addr v1, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 41
    .line 42
    iget v2, p0, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    int-to-float v2, v2

    .line 45
    add-float/2addr v2, v1

    .line 46
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    int-to-float p0, p0

    .line 49
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 50
    .line 51
    invoke-virtual {p1, v0, v2, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
