.class public final Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

.field public final synthetic val$leash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/fullscreen/AffordanceAnimController;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

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
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    .line 11
    .line 12
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpFloat9:[F

    .line 17
    .line 18
    invoke-virtual {v2, v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 25
    .line 26
    iget v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    cmpl-float v0, v0, v1

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    .line 46
    .line 47
    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/animation/Animation;->start()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 46
    .line 47
    iget v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    cmpl-float v0, v0, v1

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mBounds:Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->this$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 76
    .line 77
    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$2;->val$leash:Landroid/view/SurfaceControl;

    .line 80
    .line 81
    iget p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mRadius:F

    .line 82
    .line 83
    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method
