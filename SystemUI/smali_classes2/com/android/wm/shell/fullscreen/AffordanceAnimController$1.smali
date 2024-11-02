.class public final Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

.field public final synthetic val$leash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/fullscreen/AffordanceAnimController;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->val$leash:Landroid/view/SurfaceControl;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->val$leash:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 12
    .line 13
    iget v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    .line 14
    .line 15
    cmpl-float v0, v0, v1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->val$leash:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->val$leash:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 2
    .line 3
    iget v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->val$leash:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 32
    .line 33
    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->val$leash:Landroid/view/SurfaceControl;

    .line 36
    .line 37
    iget p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$1;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
