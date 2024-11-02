.class public final Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mAnimationLoaderMap:Landroid/util/SparseArray;

.field public mDurationScale:F

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/TransitionAnimation;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDurationScale:F

    .line 7
    .line 8
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    .line 14
    .line 15
    new-instance v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;-><init>(Lcom/android/internal/policy/TransitionAnimation;Lcom/android/wm/shell/common/DisplayController;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 27
    .line 28
    iput-object p5, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 29
    .line 30
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->registerAnimationLoader(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p1, 0x2

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->registerAnimationLoader(I)V

    .line 40
    .line 41
    .line 42
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SHELL_TRANSITION:Z

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const/4 p1, 0x3

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->registerAnimationLoader(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const/4 p1, 0x4

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->registerAnimationLoader(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    const/4 p1, 0x6

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->registerAnimationLoader(I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string p1, "applyTransformation: invalid leash="

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "MultiTaskingTransitionProvider"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p4, p0, p1, p5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 28
    .line 29
    .line 30
    if-eqz p7, :cond_1

    .line 31
    .line 32
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget p1, p7, Landroid/graphics/Point;->x:I

    .line 37
    .line 38
    int-to-float p1, p1

    .line 39
    iget p7, p7, Landroid/graphics/Point;->y:I

    .line 40
    .line 41
    int-to-float p7, p7

    .line 42
    invoke-virtual {p0, p1, p7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p2, p3, p0, p6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 57
    .line 58
    .line 59
    if-nez p9, :cond_2

    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-direct {p0, p9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object p5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 73
    .line 74
    invoke-static {p1, p5}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object p5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 79
    .line 80
    invoke-virtual {p1, p5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p5

    .line 84
    if-nez p5, :cond_3

    .line 85
    .line 86
    if-eqz p0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result p5

    .line 92
    if-nez p5, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    cmpl-float p1, p8, p1

    .line 108
    .line 109
    if-lez p1, :cond_4

    .line 110
    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p3, p8}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/view/Choreographer;->getVsyncId()J

    .line 124
    .line 125
    .line 126
    move-result-wide p0

    .line 127
    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 131
    .line 132
    .line 133
    return-void
.end method


# virtual methods
.method public final buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V
    .locals 16

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move/from16 v13, p7

    .line 4
    .line 5
    iget-object v0, v12, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 8
    .line 9
    .line 10
    move-result-object v10

    .line 11
    new-instance v14, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [F

    .line 15
    .line 16
    fill-array-data v0, :array_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v11, p3

    .line 20
    .line 21
    invoke-direct {v14, v11, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;-><init>(Landroid/view/SurfaceControl;[F)V

    .line 22
    .line 23
    .line 24
    new-instance v15, Landroid/view/animation/Transformation;

    .line 25
    .line 26
    invoke-direct {v15}, Landroid/view/animation/Transformation;-><init>()V

    .line 27
    .line 28
    .line 29
    const/16 v0, 0x9

    .line 30
    .line 31
    new-array v0, v0, [F

    .line 32
    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-virtual {v14, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Animation;->computeDurationHint()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-virtual {v14, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    new-instance v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    move-object v1, v9

    .line 48
    move-object v2, v14

    .line 49
    move-object v3, v10

    .line 50
    move-object/from16 v4, p3

    .line 51
    .line 52
    move-object/from16 v5, p2

    .line 53
    .line 54
    move-object v6, v15

    .line 55
    move-object v7, v0

    .line 56
    move-object/from16 v8, p5

    .line 57
    .line 58
    move-object v13, v9

    .line 59
    move-object/from16 v9, p6

    .line 60
    .line 61
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v14, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    .line 66
    .line 67
    new-instance v9, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    move-object v0, v9

    .line 70
    move-object/from16 v1, p0

    .line 71
    .line 72
    move-object v15, v9

    .line 73
    move-object/from16 v9, p6

    .line 74
    .line 75
    move-object/from16 v10, p1

    .line 76
    .line 77
    move-object/from16 v11, p4

    .line 78
    .line 79
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;

    .line 83
    .line 84
    invoke-direct {v0, v12, v15, v14, v13}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$1;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;Ljava/lang/Runnable;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    .line 89
    .line 90
    move-object/from16 v0, p1

    .line 91
    .line 92
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move/from16 v0, p7

    .line 96
    .line 97
    if-eqz v0, :cond_0

    .line 98
    .line 99
    new-instance v1, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda2;

    .line 100
    .line 101
    invoke-direct {v1, v14}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v12, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 105
    .line 106
    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 109
    .line 110
    .line 111
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v2, "buildSurfaceAnimator: create "

    .line 114
    .line 115
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, ", shouldStart="

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "MultiTaskingTransitionProvider"

    .line 134
    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getAnimationLoaderMap()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/transition/AnimationLoader;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public getState()Lcom/android/wm/shell/transition/MultiTaskingTransitionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final loadAnimationFromResources(ILandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 2
    .line 3
    const-string v1, "android"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "loadAnimationFromResources: failed, Callers="

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "MultiTaskingTransitionProvider"

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 36
    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-direct {p1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v0, 0x150

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p1, v0, p2, v0, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 62
    .line 63
    .line 64
    :cond_1
    const-wide/16 v0, 0x2710

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 67
    .line 68
    .line 69
    iget p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDurationScale:F

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 72
    .line 73
    .line 74
    return-object p1
.end method

.method public registerAnimationLoader(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/android/wm/shell/transition/SplitAnimationLoader;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/SplitAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/android/wm/shell/transition/DexCompatAnimationLoader;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/DexCompatAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x3

    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    .line 24
    new-instance v0, Lcom/android/wm/shell/transition/DexAnimationLoader;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/DexAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x4

    .line 31
    if-ne p1, v0, :cond_3

    .line 32
    .line 33
    new-instance v0, Lcom/android/wm/shell/transition/FreeformAnimationLoader;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/FreeformAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const/4 v0, 0x5

    .line 40
    if-ne p1, v0, :cond_4

    .line 41
    .line 42
    new-instance v0, Lcom/android/wm/shell/transition/SplitActivityAnimationLoader;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/SplitActivityAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    const/4 v0, 0x6

    .line 49
    if-ne p1, v0, :cond_5

    .line 50
    .line 51
    new-instance v0, Lcom/android/wm/shell/transition/PopOverAnimationLoader;

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/PopOverAnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string v0, "Invalid animation type="

    .line 65
    .line 66
    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method
