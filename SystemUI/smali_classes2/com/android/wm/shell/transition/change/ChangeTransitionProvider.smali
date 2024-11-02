.class public final Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mChangeTransitionSpec:Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDurationScale:F

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 p5, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput p5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDurationScale:F

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 15
    .line 16
    return-void
.end method

.method public static applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p4, p0, p1, p5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p2, p3, p0, p6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->hasClipRect()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    const/4 p6, 0x0

    .line 36
    aput p6, p7, p1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    aput p6, p7, p1

    .line 40
    .line 41
    const/4 p1, 0x3

    .line 42
    const/high16 p6, 0x3f800000    # 1.0f

    .line 43
    .line 44
    aput p6, p7, p1

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    aput p6, p7, v0

    .line 48
    .line 49
    invoke-virtual {p0, p7}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 50
    .line 51
    .line 52
    aget p0, p7, v0

    .line 53
    .line 54
    div-float p0, p6, p0

    .line 55
    .line 56
    aput p0, p7, v0

    .line 57
    .line 58
    aget p0, p7, p1

    .line 59
    .line 60
    div-float/2addr p6, p0

    .line 61
    aput p6, p7, p1

    .line 62
    .line 63
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget p5, p0, Landroid/graphics/Rect;->left:I

    .line 68
    .line 69
    int-to-float p5, p5

    .line 70
    aget p6, p7, v0

    .line 71
    .line 72
    mul-float/2addr p5, p6

    .line 73
    const/high16 v0, 0x3f000000    # 0.5f

    .line 74
    .line 75
    add-float/2addr p5, v0

    .line 76
    float-to-int p5, p5

    .line 77
    iput p5, p8, Landroid/graphics/Rect;->left:I

    .line 78
    .line 79
    iget p5, p0, Landroid/graphics/Rect;->right:I

    .line 80
    .line 81
    int-to-float p5, p5

    .line 82
    mul-float/2addr p5, p6

    .line 83
    add-float/2addr p5, v0

    .line 84
    float-to-int p5, p5

    .line 85
    iput p5, p8, Landroid/graphics/Rect;->right:I

    .line 86
    .line 87
    iget p5, p0, Landroid/graphics/Rect;->top:I

    .line 88
    .line 89
    int-to-float p5, p5

    .line 90
    aget p1, p7, p1

    .line 91
    .line 92
    mul-float/2addr p5, p1

    .line 93
    add-float/2addr p5, v0

    .line 94
    float-to-int p5, p5

    .line 95
    iput p5, p8, Landroid/graphics/Rect;->top:I

    .line 96
    .line 97
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 98
    .line 99
    int-to-float p0, p0

    .line 100
    mul-float/2addr p0, p1

    .line 101
    add-float/2addr p0, v0

    .line 102
    float-to-int p0, p0

    .line 103
    iput p0, p8, Landroid/graphics/Rect;->bottom:I

    .line 104
    .line 105
    invoke-virtual {p2, p3, p8}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_1

    .line 113
    .line 114
    invoke-virtual {p4}, Landroid/view/animation/Animation;->getRoundedCornerRadius()F

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 119
    .line 120
    .line 121
    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroid/view/Choreographer;->getVsyncId()J

    .line 126
    .line 127
    .line 128
    move-result-wide p0

    .line 129
    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string p1, "ChangeTransitionProvider@applyTransformation invalid sc="

    .line 139
    .line 140
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-string p1, "ChangeTransitionProvider"

    .line 151
    .line 152
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public static isDisplayRotating(Landroid/window/TransitionInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 20
    .line 21
    const/16 v1, 0x20

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x6

    .line 34
    if-ne v1, v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eq v1, v0, :cond_0

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    return p0
.end method


# virtual methods
.method public final buildChangeTransitionAnimators(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p2, p5}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->createChangeTransitionSpecIfNeeded(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    if-nez p5, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const-string v0, "ChangeTransitionProvider"

    .line 10
    .line 11
    const-string v1, "buildChangeTransitionAnimators"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mBoundsChangeAnimation:Landroid/view/animation/Animation;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    iget-object p5, p5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mSnapshotAnimation:Landroid/view/animation/Animation;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, p5, v0, p3}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2, p4}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->onChangeTransitionStarting(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public final buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .locals 17

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    iget-object v0, v12, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    .line 8
    move-result-object v10

    .line 9
    new-instance v13, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v11, p3

    .line 18
    .line 19
    invoke-direct {v13, v11, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;-><init>(Landroid/view/SurfaceControl;[F)V

    .line 20
    .line 21
    .line 22
    new-instance v14, Landroid/view/animation/Transformation;

    .line 23
    .line 24
    invoke-direct {v14}, Landroid/view/animation/Transformation;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x9

    .line 28
    .line 29
    new-array v15, v0, [F

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [F

    .line 33
    .line 34
    new-instance v16, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .line 38
    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-virtual {v13, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Animation;->computeDurationHint()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-virtual {v13, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    .line 51
    new-instance v9, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    move-object v1, v9

    .line 54
    move-object v2, v13

    .line 55
    move-object v3, v10

    .line 56
    move-object/from16 v4, p3

    .line 57
    .line 58
    move-object/from16 v5, p2

    .line 59
    .line 60
    move-object v6, v14

    .line 61
    move-object v7, v15

    .line 62
    move-object v8, v0

    .line 63
    move-object v12, v9

    .line 64
    move-object/from16 v9, v16

    .line 65
    .line 66
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v13, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    .line 71
    .line 72
    new-instance v9, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    move-object v0, v9

    .line 75
    move-object/from16 v1, p0

    .line 76
    .line 77
    move-object v14, v9

    .line 78
    move-object/from16 v9, v16

    .line 79
    .line 80
    move-object/from16 v10, p1

    .line 81
    .line 82
    move-object/from16 v11, p4

    .line 83
    .line 84
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[F[FLandroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;

    .line 88
    .line 89
    move-object v2, v12

    .line 90
    invoke-direct {v0, v1, v14, v13, v2}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider$1;-><init>(Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;Ljava/lang/Runnable;Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    .line 95
    .line 96
    move-object/from16 v0, p1

    .line 97
    .line 98
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, "buildSurfaceAnimator: create "

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "ChangeTransitionProvider"

    .line 116
    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createChangeTransitionSpecIfNeeded(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 8
    .line 9
    const-string v4, "ChangeTransitionProvider"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-nez v5, :cond_4

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v6, "canCreateChangeTransitionSpec: failed, cannot find display #"

    .line 75
    .line 76
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", change="

    .line 83
    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move v0, v2

    .line 99
    goto :goto_4

    .line 100
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v5, "canCreateChangeTransitionSpec: failed, changeLeash is null, "

    .line 103
    .line 104
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v5, "canCreateChangeTransitionSpec: failed, snapshot is null, "

    .line 121
    .line 122
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :goto_3
    move v0, v1

    .line 136
    :goto_4
    const/4 v5, 0x0

    .line 137
    if-nez v0, :cond_7

    .line 138
    .line 139
    return-object v5

    .line 140
    :cond_7
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    if-eqz v6, :cond_8

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    :goto_5
    invoke-virtual {v3, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    if-ne v0, v2, :cond_9

    .line 166
    .line 167
    new-instance v5, Lcom/android/wm/shell/transition/change/StandardChangeTransitionSpec;

    .line 168
    .line 169
    invoke-direct {v5}, Lcom/android/wm/shell/transition/change/StandardChangeTransitionSpec;-><init>()V

    .line 170
    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_9
    const/4 v8, 0x2

    .line 174
    if-eq v0, v8, :cond_f

    .line 175
    .line 176
    const/4 v8, 0x6

    .line 177
    if-ne v0, v8, :cond_a

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_a
    const/4 v8, 0x3

    .line 181
    if-ne v0, v8, :cond_b

    .line 182
    .line 183
    new-instance v5, Lcom/android/wm/shell/transition/change/CaptionChangeTransitionSpec;

    .line 184
    .line 185
    invoke-direct {v5}, Lcom/android/wm/shell/transition/change/CaptionChangeTransitionSpec;-><init>()V

    .line 186
    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_b
    const/4 v8, 0x4

    .line 190
    if-ne v0, v8, :cond_c

    .line 191
    .line 192
    new-instance v5, Lcom/android/wm/shell/transition/change/NaturalSwitchingChangeTransitionSpec;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-direct {v5, v8}, Lcom/android/wm/shell/transition/change/NaturalSwitchingChangeTransitionSpec;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_c
    const/4 v8, 0x5

    .line 203
    if-ne v0, v8, :cond_d

    .line 204
    .line 205
    new-instance v5, Lcom/android/wm/shell/transition/change/PopOverChangeTransitionSpec;

    .line 206
    .line 207
    invoke-direct {v5}, Lcom/android/wm/shell/transition/change/PopOverChangeTransitionSpec;-><init>()V

    .line 208
    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_d
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    .line 212
    .line 213
    if-eqz v8, :cond_e

    .line 214
    .line 215
    const/4 v8, 0x7

    .line 216
    if-ne v0, v8, :cond_e

    .line 217
    .line 218
    new-instance v5, Lcom/android/wm/shell/transition/change/NewDexCaptionChangeTransitionSpec;

    .line 219
    .line 220
    invoke-direct {v5}, Lcom/android/wm/shell/transition/change/NewDexCaptionChangeTransitionSpec;-><init>()V

    .line 221
    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string p2, "createChangeTransitionSpec: failed, for "

    .line 227
    .line 228
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    return-object v5

    .line 242
    :cond_f
    :goto_6
    new-instance v5, Lcom/android/wm/shell/transition/change/DismissChangeTransitionSpec;

    .line 243
    .line 244
    invoke-direct {v5}, Lcom/android/wm/shell/transition/change/DismissChangeTransitionSpec;-><init>()V

    .line 245
    .line 246
    .line 247
    :goto_7
    invoke-static {p2}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->isDisplayRotating(Landroid/window/TransitionInfo;)Z

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    if-nez v8, :cond_13

    .line 252
    .line 253
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    :cond_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-eqz v9, :cond_11

    .line 266
    .line 267
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    check-cast v9, Landroid/window/TransitionInfo$Change;

    .line 272
    .line 273
    const/high16 v10, 0x10000000

    .line 274
    .line 275
    invoke-virtual {v9, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    if-eqz v10, :cond_10

    .line 280
    .line 281
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    invoke-virtual {v9}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 286
    .line 287
    .line 288
    move-result v9

    .line 289
    if-eqz v9, :cond_10

    .line 290
    .line 291
    move v1, v2

    .line 292
    :cond_11
    if-eqz v1, :cond_12

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_12
    iget v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDurationScale:F

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_13
    :goto_8
    const/4 v1, 0x0

    .line 299
    :goto_9
    iput-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mChangeTransitionSpec:Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

    .line 300
    .line 301
    invoke-virtual {v3, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    iput-object p1, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mChange:Landroid/window/TransitionInfo$Change;

    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    iget-object v6, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 312
    .line 313
    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 314
    .line 315
    .line 316
    iget-object v3, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartOutsets:Landroid/graphics/Rect;

    .line 317
    .line 318
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeStartOutsets()Landroid/graphics/Rect;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    iget-object v8, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 330
    .line 331
    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 332
    .line 333
    .line 334
    iget-object v3, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndOutsets:Landroid/graphics/Rect;

    .line 335
    .line 336
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeEndOutsets()Landroid/graphics/Rect;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v5}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->isRootOffsetNeeded()Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_14

    .line 348
    .line 349
    invoke-static {p1, p2}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    invoke-virtual {p2, p1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    iget-object v3, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mRootOffsets:Landroid/graphics/Point;

    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {v3, p1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    .line 364
    .line 365
    .line 366
    iget p1, v3, Landroid/graphics/Point;->x:I

    .line 367
    .line 368
    neg-int p1, p1

    .line 369
    iget v9, v3, Landroid/graphics/Point;->y:I

    .line 370
    .line 371
    neg-int v9, v9

    .line 372
    invoke-virtual {v6, p1, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 373
    .line 374
    .line 375
    iget p1, v3, Landroid/graphics/Point;->x:I

    .line 376
    .line 377
    neg-int p1, p1

    .line 378
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 379
    .line 380
    neg-int v3, v3

    .line 381
    invoke-virtual {v8, p1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 382
    .line 383
    .line 384
    :cond_14
    iput-object v7, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 385
    .line 386
    iput v1, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    .line 387
    .line 388
    invoke-virtual {v5, p2}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->reduceDurationScaleIfNeeded(Landroid/window/TransitionInfo;)V

    .line 389
    .line 390
    .line 391
    iput-object v2, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mContext:Landroid/content/Context;

    .line 392
    .line 393
    invoke-virtual {v5}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->createBoundsChangeAnimation()Landroid/view/animation/Animation;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    iput-object p1, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mBoundsChangeAnimation:Landroid/view/animation/Animation;

    .line 398
    .line 399
    invoke-virtual {v5}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->createSnapshotAnimation()Landroid/view/animation/Animation;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    iput-object p1, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mSnapshotAnimation:Landroid/view/animation/Animation;

    .line 404
    .line 405
    iget-object p2, v5, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mBoundsChangeAnimation:Landroid/view/animation/Animation;

    .line 406
    .line 407
    if-eqz p2, :cond_15

    .line 408
    .line 409
    if-eqz p1, :cond_15

    .line 410
    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    const-string p2, "createChangeTransitionSpec: "

    .line 414
    .line 415
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p2

    .line 422
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string p2, ", "

    .line 426
    .line 427
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string p2, ", durationScale="

    .line 434
    .line 435
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mChangeTransitionSpec:Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

    .line 449
    .line 450
    return-object p0

    .line 451
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 452
    .line 453
    const-string p1, "Invalid ChangeTransitionSpec!"

    .line 454
    .line 455
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw p0
.end method

.method public getTransitions()Lcom/android/wm/shell/transition/Transitions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    .line 3
    return-object p0
.end method

.method public onChangeTransitionStarting(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mChangeTransitionSpec:Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->setupChangeTransitionHierarchy(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mChangeTransitionSpec:Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
