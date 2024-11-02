.class public final synthetic Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

.field public final synthetic f$1:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/fullscreen/AffordanceAnimController;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/fullscreen/AffordanceAnimController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpTransformation:Landroid/view/animation/Transformation;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget-object v3, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mAnimation:Landroid/view/animation/Animation;

    .line 15
    .line 16
    invoke-virtual {v3, v1, v2, v0}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/AffordanceAnimController;->mTmpFloat9:[F

    .line 26
    .line 27
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
