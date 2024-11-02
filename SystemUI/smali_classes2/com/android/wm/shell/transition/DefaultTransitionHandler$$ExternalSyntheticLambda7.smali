.class public final synthetic Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/animation/ValueAnimator;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$10:Landroid/graphics/Rect;

.field public final synthetic f$11:Lcom/android/wm/shell/common/TransactionPool;

.field public final synthetic f$12:Lcom/android/wm/shell/common/ShellExecutor;

.field public final synthetic f$13:Ljava/util/ArrayList;

.field public final synthetic f$14:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/view/animation/Animation;

.field public final synthetic f$4:Landroid/view/animation/Transformation;

.field public final synthetic f$5:[F

.field public final synthetic f$6:Landroid/graphics/Point;

.field public final synthetic f$7:F

.field public final synthetic f$8:Landroid/graphics/Rect;

.field public final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;FLcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$0:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$2:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$3:Landroid/view/animation/Animation;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$4:Landroid/view/animation/Transformation;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$5:[F

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$6:Landroid/graphics/Point;

    .line 17
    .line 18
    iput p8, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$7:F

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$8:Landroid/graphics/Rect;

    .line 21
    .line 22
    iput p10, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$9:F

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$10:Landroid/graphics/Rect;

    .line 26
    .line 27
    iput-object p11, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$11:Lcom/android/wm/shell/common/TransactionPool;

    .line 28
    .line 29
    iput-object p12, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$12:Lcom/android/wm/shell/common/ShellExecutor;

    .line 30
    .line 31
    iput-object p13, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$13:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput-object p14, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$14:Ljava/lang/Runnable;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$0:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    iget-object v13, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$2:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$3:Landroid/view/animation/Animation;

    .line 10
    .line 11
    iget-object v7, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$4:Landroid/view/animation/Transformation;

    .line 12
    .line 13
    iget-object v8, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$5:[F

    .line 14
    .line 15
    iget-object v9, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$6:Landroid/graphics/Point;

    .line 16
    .line 17
    iget v10, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$7:F

    .line 18
    .line 19
    iget-object v11, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$8:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget v12, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$9:F

    .line 22
    .line 23
    iget-object v14, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$11:Lcom/android/wm/shell/common/TransactionPool;

    .line 24
    .line 25
    iget-object v15, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$12:Lcom/android/wm/shell/common/ShellExecutor;

    .line 26
    .line 27
    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$13:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;->f$14:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    move-object/from16 v16, v15

    .line 36
    .line 37
    move-object v15, v4

    .line 38
    move-object v4, v13

    .line 39
    invoke-static/range {v2 .. v12}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;F)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v14, v13}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-direct {v2, v15, v1, v0, v3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;I)V

    .line 49
    .line 50
    .line 51
    move-object/from16 v15, v16

    .line 52
    .line 53
    check-cast v15, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 54
    .line 55
    invoke-virtual {v15, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
