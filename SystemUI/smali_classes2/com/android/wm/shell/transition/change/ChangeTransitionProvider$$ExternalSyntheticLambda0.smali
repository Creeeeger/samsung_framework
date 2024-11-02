.class public final synthetic Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/view/animation/Animation;

.field public final synthetic f$4:Landroid/view/animation/Transformation;

.field public final synthetic f$5:[F

.field public final synthetic f$6:[F

.field public final synthetic f$7:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$3:Landroid/view/animation/Animation;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$4:Landroid/view/animation/Transformation;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$5:[F

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$6:[F

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$7:Landroid/graphics/Rect;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$3:Landroid/view/animation/Animation;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$4:Landroid/view/animation/Transformation;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$5:[F

    .line 12
    .line 13
    iget-object v7, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$6:[F

    .line 14
    .line 15
    iget-object v8, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;->f$7:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-static/range {v0 .. v8}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
