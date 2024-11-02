.class public final synthetic Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

.field public final synthetic f$10:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$3:Landroid/view/SurfaceControl;

.field public final synthetic f$4:Landroid/view/animation/Animation;

.field public final synthetic f$5:Landroid/view/animation/Transformation;

.field public final synthetic f$6:[F

.field public final synthetic f$7:[F

.field public final synthetic f$8:Landroid/graphics/Rect;

.field public final synthetic f$9:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$3:Landroid/view/SurfaceControl;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$4:Landroid/view/animation/Animation;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$5:Landroid/view/animation/Transformation;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$6:[F

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$7:[F

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$8:Landroid/graphics/Rect;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$9:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$10:Ljava/lang/Runnable;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 4
    .line 5
    iget-object v11, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$3:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$4:Landroid/view/animation/Animation;

    .line 10
    .line 11
    iget-object v7, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$5:Landroid/view/animation/Transformation;

    .line 12
    .line 13
    iget-object v8, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$6:[F

    .line 14
    .line 15
    iget-object v9, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$7:[F

    .line 16
    .line 17
    iget-object v10, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$8:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget-object v12, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$9:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;->f$10:Ljava/lang/Runnable;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    move-object v4, v11

    .line 31
    invoke-static/range {v2 .. v10}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 35
    .line 36
    invoke-virtual {v2, v11}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;

    .line 40
    .line 41
    invoke-direct {v2, v12, v1, p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, v0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 45
    .line 46
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
