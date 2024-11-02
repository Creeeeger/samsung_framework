.class public final synthetic Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

.field public final synthetic f$10:Ljava/util/ArrayList;

.field public final synthetic f$11:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$3:Landroid/view/SurfaceControl;

.field public final synthetic f$4:Landroid/view/animation/Animation;

.field public final synthetic f$5:Landroid/view/animation/Transformation;

.field public final synthetic f$6:[F

.field public final synthetic f$7:Landroid/graphics/Point;

.field public final synthetic f$8:F

.field public final synthetic f$9:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$3:Landroid/view/SurfaceControl;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$4:Landroid/view/animation/Animation;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$5:Landroid/view/animation/Transformation;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$6:[F

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$7:Landroid/graphics/Point;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$8:F

    .line 22
    .line 23
    iput-object p9, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$9:Landroid/graphics/Rect;

    .line 24
    .line 25
    iput-object p10, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$10:Ljava/util/ArrayList;

    .line 26
    .line 27
    iput-object p11, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$11:Ljava/lang/Runnable;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 4
    .line 5
    iget-object v12, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$3:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$4:Landroid/view/animation/Animation;

    .line 10
    .line 11
    iget-object v7, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$5:Landroid/view/animation/Transformation;

    .line 12
    .line 13
    iget-object v8, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$6:[F

    .line 14
    .line 15
    iget-object v9, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$7:Landroid/graphics/Point;

    .line 16
    .line 17
    iget v10, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$8:F

    .line 18
    .line 19
    iget-object v11, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$9:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v13, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$10:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;->f$11:Ljava/lang/Runnable;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    move-object v4, v12

    .line 33
    invoke-static/range {v2 .. v11}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 37
    .line 38
    invoke-virtual {v2, v12}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;

    .line 42
    .line 43
    invoke-direct {v2, v13, v1, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 47
    .line 48
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
