.class public final Lcom/android/wm/shell/transition/DefaultTransitionHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mAnimations:Landroid/util/ArrayMap;

.field public mCapturedBlurHelper:Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;

.field public mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mDimTransitionProvider:Lcom/android/wm/shell/transition/DimTransitionProvider;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mEnterpriseResourceUpdatedReceiver:Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

.field public mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

.field public final mInsets:Landroid/graphics/Rect;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mMaxRotationAnimationDuration:J

.field public mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

.field public final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

.field public mSkipMergeAnimation:Z

.field public final mSurfaceSession:Landroid/view/SurfaceSession;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field public mTransitionAnimationScaleSetting:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/SurfaceSession;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/wm/shell/transition/CounterRotatorHelper;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    .line 32
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    .line 35
    iput v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 36
    .line 37
    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseResourceUpdatedReceiver:Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 45
    .line 46
    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainHandler:Landroid/os/Handler;

    .line 51
    .line 52
    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 53
    .line 54
    iput-object p7, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 55
    .line 56
    new-instance p3, Lcom/android/internal/policy/TransitionAnimation;

    .line 57
    .line 58
    const-string p4, "ShellTransitions"

    .line 59
    .line 60
    invoke-direct {p3, p1, v1, p4}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 64
    .line 65
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 66
    .line 67
    .line 68
    const-class p3, Landroid/app/admin/DevicePolicyManager;

    .line 69
    .line 70
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 77
    .line 78
    new-instance p1, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    invoke-direct {p1, p0, v1}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput-object p8, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 87
    .line 88
    return-void
.end method

.method public static applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;F)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->clear()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, p0, p1, p5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    cmpl-float p1, p10, p0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p10, p10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    if-eqz p7, :cond_1

    .line 20
    .line 21
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget p10, p7, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    int-to-float p10, p10

    .line 28
    iget p7, p7, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    int-to-float p7, p7

    .line 31
    invoke-virtual {p1, p10, p7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p3, p1, p6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 46
    .line 47
    .line 48
    if-nez p9, :cond_2

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-direct {p1, p9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    sget-object p6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 62
    .line 63
    invoke-static {p5, p6}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 64
    .line 65
    .line 66
    move-result-object p5

    .line 67
    sget-object p6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 68
    .line 69
    invoke-virtual {p5, p6}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p6

    .line 73
    if-nez p6, :cond_3

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p6

    .line 81
    if-nez p6, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    if-eqz p4, :cond_4

    .line 94
    .line 95
    cmpl-float p0, p8, p0

    .line 96
    .line 97
    if-lez p0, :cond_4

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p3, p8}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/view/Choreographer;->getVsyncId()J

    .line 112
    .line 113
    .line 114
    move-result-wide p0

    .line 115
    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public static buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 1
    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;F)V

    return-void
.end method

.method public static buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;F)V
    .locals 18

    .line 2
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v11

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 4
    new-instance v12, Landroid/view/animation/Transformation;

    invoke-direct {v12}, Landroid/view/animation/Transformation;-><init>()V

    const/16 v0, 0x9

    new-array v13, v0, [F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;

    move-object v0, v14

    move-object v1, v15

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;-><init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;F)V

    .line 8
    invoke-virtual {v15, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-instance v10, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;

    move-object v0, v10

    move-object v13, v10

    move/from16 v10, p9

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v16, v13

    move-object/from16 v13, p0

    move-object/from16 v17, v14

    move-object/from16 v14, p3

    invoke-direct/range {v0 .. v14}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda7;-><init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;FLcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 10
    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v15, v1}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;-><init>(Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    .line 11
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getRotationAnimationHint(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Lcom/android/wm/shell/common/DisplayController;)I
    .locals 15

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 8
    .line 9
    const v3, -0x22cbaff3

    .line 10
    .line 11
    .line 12
    const-string v4, "Display is changing, resolve the animation hint."

    .line 13
    .line 14
    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v3, 0x3

    .line 22
    if-ne v0, v3, :cond_2

    .line 23
    .line 24
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 29
    .line 30
    const v4, 0x6a87ab97

    .line 31
    .line 32
    .line 33
    const-string v5, "  display requests explicit seamless"

    .line 34
    .line 35
    invoke-static {v0, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return v3

    .line 39
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    move-object v7, v1

    .line 48
    move v4, v2

    .line 49
    move v5, v4

    .line 50
    move v6, v5

    .line 51
    move v8, v6

    .line 52
    :goto_0
    const/4 v9, 0x1

    .line 53
    const/4 v10, 0x2

    .line 54
    if-ge v4, v0, :cond_10

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    check-cast v11, Landroid/window/TransitionInfo$Change;

    .line 65
    .line 66
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    const/4 v13, 0x6

    .line 71
    if-eq v12, v13, :cond_4

    .line 72
    .line 73
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 74
    .line 75
    if-eqz v12, :cond_3

    .line 76
    .line 77
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    if-eqz v12, :cond_3

    .line 82
    .line 83
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    iget-boolean v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->isAllowedSeamlessRotation:Z

    .line 88
    .line 89
    if-eqz v12, :cond_3

    .line 90
    .line 91
    move-object/from16 v12, p1

    .line 92
    .line 93
    invoke-static {v12, v11, v9}, Lcom/android/wm/shell/util/TransitionUtil;->isTopApp(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-eqz v13, :cond_f

    .line 98
    .line 99
    invoke-virtual {v11, v3}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    move-object/from16 v12, p1

    .line 104
    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_4
    move-object/from16 v12, p1

    .line 108
    .line 109
    :goto_1
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    if-ne v13, v14, :cond_5

    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :cond_5
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    and-int/lit8 v13, v13, 0x20

    .line 126
    .line 127
    if-eqz v13, :cond_6

    .line 128
    .line 129
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    and-int/lit16 v10, v10, 0x80

    .line 134
    .line 135
    if-eqz v10, :cond_f

    .line 136
    .line 137
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 138
    .line 139
    if-eqz v6, :cond_8

    .line 140
    .line 141
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 142
    .line 143
    const v10, 0x2859e70

    .line 144
    .line 145
    .line 146
    const-string v11, "  display has system alert windows, so not seamless."

    .line 147
    .line 148
    invoke-static {v6, v10, v2, v11, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    and-int/2addr v10, v13

    .line 157
    if-eqz v10, :cond_9

    .line 158
    .line 159
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-eq v10, v3, :cond_f

    .line 164
    .line 165
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 166
    .line 167
    if-eqz v10, :cond_7

    .line 168
    .line 169
    if-eqz v7, :cond_7

    .line 170
    .line 171
    iget-boolean v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isAllowedSeamlessRotation:Z

    .line 172
    .line 173
    if-nez v10, :cond_f

    .line 174
    .line 175
    :cond_7
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 176
    .line 177
    if-eqz v6, :cond_8

    .line 178
    .line 179
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 180
    .line 181
    const v10, 0x3c83dd70

    .line 182
    .line 183
    .line 184
    const-string v11, "  wallpaper is participating but isn\'t seamless."

    .line 185
    .line 186
    invoke-static {v6, v10, v2, v11, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_8
    :goto_2
    move v6, v9

    .line 190
    goto :goto_4

    .line 191
    :cond_9
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    if-eqz v10, :cond_f

    .line 196
    .line 197
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    if-nez v7, :cond_a

    .line 206
    .line 207
    move v13, v9

    .line 208
    goto :goto_3

    .line 209
    :cond_a
    move v13, v2

    .line 210
    :goto_3
    if-eqz v13, :cond_c

    .line 211
    .line 212
    const/4 v7, -0x1

    .line 213
    if-eq v10, v7, :cond_b

    .line 214
    .line 215
    if-eq v10, v3, :cond_b

    .line 216
    .line 217
    move v8, v10

    .line 218
    :cond_b
    move-object v7, v11

    .line 219
    :cond_c
    if-eq v10, v3, :cond_e

    .line 220
    .line 221
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 222
    .line 223
    if-eqz v5, :cond_d

    .line 224
    .line 225
    iget v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 226
    .line 227
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 232
    .line 233
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    const v10, 0x7224977c

    .line 238
    .line 239
    .line 240
    const-string v11, "  task %s isn\'t requesting seamless, so not seamless."

    .line 241
    .line 242
    invoke-static {v9, v10, v2, v11, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    :cond_d
    move v5, v2

    .line 246
    goto :goto_4

    .line 247
    :cond_e
    if-eqz v13, :cond_f

    .line 248
    .line 249
    move v5, v9

    .line 250
    :cond_f
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_10
    if-eqz v5, :cond_20

    .line 255
    .line 256
    if-eqz v6, :cond_11

    .line 257
    .line 258
    goto/16 :goto_9

    .line 259
    .line 260
    :cond_11
    iget-boolean v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isAllowedSeamlessRotation:Z

    .line 261
    .line 262
    if-eqz v0, :cond_13

    .line 263
    .line 264
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 265
    .line 266
    if-eqz v0, :cond_12

    .line 267
    .line 268
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 269
    .line 270
    const v4, 0x2ca7e0fc

    .line 271
    .line 272
    .line 273
    const-string v5, "  top activity has meta data, so allows seamless."

    .line 274
    .line 275
    invoke-static {v0, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_12
    return v3

    .line 279
    :cond_13
    iget v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 280
    .line 281
    move-object/from16 v4, p2

    .line 282
    .line 283
    invoke-virtual {v4, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-boolean v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 288
    .line 289
    if-eqz v4, :cond_15

    .line 290
    .line 291
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 292
    .line 293
    if-eqz v0, :cond_14

    .line 294
    .line 295
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 296
    .line 297
    const v4, 0x39b15331

    .line 298
    .line 299
    .line 300
    const-string v5, "  nav bar allows seamless."

    .line 301
    .line 302
    invoke-static {v0, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    :cond_14
    return v3

    .line 306
    :cond_15
    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 307
    .line 308
    iget v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 309
    .line 310
    if-le v4, v5, :cond_16

    .line 311
    .line 312
    move v4, v9

    .line 313
    goto :goto_5

    .line 314
    :cond_16
    move v4, v2

    .line 315
    :goto_5
    iget v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 316
    .line 317
    rem-int/2addr v5, v10

    .line 318
    if-eqz v5, :cond_17

    .line 319
    .line 320
    xor-int/lit8 v4, v4, 0x1

    .line 321
    .line 322
    :cond_17
    if-eqz v4, :cond_19

    .line 323
    .line 324
    iget-boolean v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mReverseDefaultRotation:Z

    .line 325
    .line 326
    if-eqz v4, :cond_18

    .line 327
    .line 328
    move v10, v3

    .line 329
    goto :goto_6

    .line 330
    :cond_18
    move v10, v9

    .line 331
    :cond_19
    :goto_6
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    if-eq v4, v10, :cond_1f

    .line 336
    .line 337
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-ne v4, v10, :cond_1a

    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_1a
    iget-boolean v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mNavigationBarCanMove:Z

    .line 345
    .line 346
    if-eqz v4, :cond_1b

    .line 347
    .line 348
    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 349
    .line 350
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 351
    .line 352
    if-eq v4, v0, :cond_1b

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_1b
    move v9, v2

    .line 356
    :goto_7
    if-nez v9, :cond_1d

    .line 357
    .line 358
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 359
    .line 360
    if-eqz v0, :cond_1c

    .line 361
    .line 362
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 363
    .line 364
    const v3, -0x4598ff3b

    .line 365
    .line 366
    .line 367
    const-string v4, "  nav bar changes sides, so not seamless."

    .line 368
    .line 369
    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    :cond_1c
    return v8

    .line 373
    :cond_1d
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 374
    .line 375
    if-eqz v0, :cond_1e

    .line 376
    .line 377
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 378
    .line 379
    const v4, 0x4875c331

    .line 380
    .line 381
    .line 382
    const-string v5, "  Rotation IS seamless."

    .line 383
    .line 384
    invoke-static {v0, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    :cond_1e
    return v3

    .line 388
    :cond_1f
    :goto_8
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 389
    .line 390
    if-eqz v0, :cond_20

    .line 391
    .line 392
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 393
    .line 394
    const v3, 0x459b7c3c

    .line 395
    .line 396
    .line 397
    const-string v4, "  rotation involves upside-down portrait, so not seamless."

    .line 398
    .line 399
    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    :cond_20
    :goto_9
    return v8
.end method


# virtual methods
.method public final attachThumbnail(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v0, :cond_6

    .line 22
    .line 23
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0xc

    .line 28
    .line 29
    if-ne v0, v1, :cond_5

    .line 30
    .line 31
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/16 v1, 0x1000

    .line 36
    .line 37
    invoke-virtual {v7, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const v2, 0x1080357

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/16 v1, 0x2000

    .line 54
    .line 55
    invoke-virtual {v7, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 65
    :goto_0
    if-nez v1, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 69
    .line 70
    invoke-virtual {v2, v1, v0}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object v3, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iget-object v4, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 84
    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v4, v5, v1, v3}, Lcom/android/wm/shell/transition/WindowThumbnail;->createAndAttach(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Lcom/android/wm/shell/transition/WindowThumbnail;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v2, v0}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    if-nez v10, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    new-instance v12, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;

    .line 101
    .line 102
    const/4 v5, 0x1

    .line 103
    move-object v0, v12

    .line 104
    move-object/from16 v1, p0

    .line 105
    .line 106
    move-object v2, v8

    .line 107
    move-object/from16 v4, p2

    .line 108
    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    const-wide/16 v0, 0xbb8

    .line 113
    .line 114
    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 115
    .line 116
    .line 117
    iget v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 118
    .line 119
    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 120
    .line 121
    .line 122
    iget-object v11, v8, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 123
    .line 124
    iget-object v13, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 125
    .line 126
    iget-object v14, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 127
    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 133
    .line 134
    .line 135
    move-result-object v17

    .line 136
    move-object/from16 v9, p1

    .line 137
    .line 138
    move/from16 v16, p5

    .line 139
    .line 140
    invoke-static/range {v9 .. v17}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    const/4 v1, 0x3

    .line 149
    if-ne v0, v1, :cond_7

    .line 150
    .line 151
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachThumbnailAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    if-eqz v1, :cond_7

    .line 156
    .line 157
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    const/4 v1, 0x4

    .line 162
    if-ne v0, v1, :cond_7

    .line 163
    .line 164
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachThumbnailAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V

    .line 165
    .line 166
    .line 167
    :cond_7
    :goto_1
    return-void
.end method

.method public final attachThumbnailAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V
    .locals 25

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 18
    .line 19
    invoke-static {v2, v0, v1, v3}, Lcom/android/wm/shell/transition/WindowThumbnail;->createAndAttach(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Lcom/android/wm/shell/transition/WindowThumbnail;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v12, v0, Landroid/content/res/Configuration;->orientation:I

    .line 38
    .line 39
    iget-object v8, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 40
    .line 41
    iget-object v10, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    const/4 v13, 0x0

    .line 48
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x3

    .line 57
    if-ne v0, v1, :cond_0

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    move v15, v0

    .line 63
    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    new-instance v19, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    move-object/from16 v0, v19

    .line 71
    .line 72
    move-object/from16 v1, p0

    .line 73
    .line 74
    move-object v2, v7

    .line 75
    move-object/from16 v4, p2

    .line 76
    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v0, 0xbb8

    .line 81
    .line 82
    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 83
    .line 84
    .line 85
    iget v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 86
    .line 87
    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v7, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 91
    .line 92
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 93
    .line 94
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 95
    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 97
    .line 98
    .line 99
    move-result-object v22

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 101
    .line 102
    .line 103
    move-result-object v24

    .line 104
    move-object/from16 v16, p1

    .line 105
    .line 106
    move-object/from16 v17, v8

    .line 107
    .line 108
    move-object/from16 v18, v0

    .line 109
    .line 110
    move-object/from16 v20, v1

    .line 111
    .line 112
    move-object/from16 v21, v2

    .line 113
    .line 114
    move/from16 v23, p5

    .line 115
    .line 116
    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final beforeMergeAnimation(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput-boolean p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSkipMergeAnimation:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSkipMergeAnimation:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSkipMergeAnimation:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {p1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 p3, 0x1

    .line 29
    sub-int/2addr p2, p3

    .line 30
    :goto_0
    if-ltz p2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    check-cast p4, Landroid/animation/Animator;

    .line 37
    .line 38
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    new-instance p5, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {p5, p4, p3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    iget-object p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 47
    .line 48
    check-cast p4, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 49
    .line 50
    invoke-virtual {p4, p5}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 p2, p2, -0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method

.method public final setAnimScaleSetting(F)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 2
    .line 3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 4
    .line 5
    const-string v1, "->"

    .line 6
    .line 7
    const-string/jumbo v2, "setAnimScaleSetting: "

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 13
    .line 14
    iget v3, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDurationScale:F

    .line 15
    .line 16
    cmpl-float v3, v3, p1

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v4, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDurationScale:F

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "MultiTaskingTransitionProvider"

    .line 41
    .line 42
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iput p1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDurationScale:F

    .line 46
    .line 47
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    .line 52
    .line 53
    iget v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDurationScale:F

    .line 54
    .line 55
    cmpl-float v0, v0, p1

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDurationScale:F

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "ChangeTransitionProvider"

    .line 80
    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iput p1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->mDurationScale:F

    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v10, p3

    .line 8
    .line 9
    move-object/from16 v11, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v3, -0x8b57885

    .line 29
    .line 30
    .line 31
    const-string/jumbo v4, "start default transition animation, info = %s"

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3, v7, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/16 v2, 0xb

    .line 42
    .line 43
    const/4 v12, 0x0

    .line 44
    const/4 v13, 0x1

    .line 45
    if-ne v1, v2, :cond_1

    .line 46
    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v5, v12, v12}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 57
    .line 58
    .line 59
    return v13

    .line 60
    :cond_1
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 61
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-static {v9, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    move v2, v7

    .line 78
    :goto_0
    if-ltz v1, :cond_5

    .line 79
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const/high16 v2, 0x40000

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_4

    .line 108
    .line 109
    move v2, v13

    .line 110
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    :goto_2
    move v2, v7

    .line 114
    :cond_5
    if-nez v2, :cond_a5

    .line 115
    .line 116
    invoke-static {v9, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    :goto_3
    if-ltz v1, :cond_7

    .line 121
    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 131
    .line 132
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_6

    .line 137
    .line 138
    move v1, v7

    .line 139
    goto :goto_4

    .line 140
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    move v1, v13

    .line 144
    :goto_4
    if-nez v1, :cond_a5

    .line 145
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    and-int/lit16 v1, v1, 0x400

    .line 151
    .line 152
    if-nez v1, :cond_a5

    .line 153
    .line 154
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 155
    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/Transitions;->hasDuplicatedOpenTypeChanges(Landroid/window/TransitionInfo;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_8

    .line 163
    .line 164
    goto/16 :goto_5f

    .line 165
    .line 166
    :cond_8
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    .line 167
    .line 168
    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_a4

    .line 173
    .line 174
    new-instance v15, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v8, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    new-instance v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;

    .line 183
    .line 184
    const/4 v6, 0x2

    .line 185
    move-object v1, v14

    .line 186
    move-object/from16 v2, p0

    .line 187
    .line 188
    move-object v3, v15

    .line 189
    move-object/from16 v4, p1

    .line 190
    .line 191
    move-object/from16 v5, p5

    .line 192
    .line 193
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 194
    .line 195
    .line 196
    new-instance v6, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-static {v9, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    move v3, v7

    .line 206
    move v4, v3

    .line 207
    move-object v2, v12

    .line 208
    :goto_5
    if-ltz v1, :cond_d

    .line 209
    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 219
    .line 220
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 221
    .line 222
    .line 223
    move-result v16

    .line 224
    and-int/lit8 v16, v16, 0x1

    .line 225
    .line 226
    if-eqz v16, :cond_c

    .line 227
    .line 228
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 229
    .line 230
    .line 231
    move-result v16

    .line 232
    invoke-static/range {v16 .. v16}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 233
    .line 234
    .line 235
    move-result v16

    .line 236
    if-eqz v16, :cond_a

    .line 237
    .line 238
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 239
    .line 240
    if-eqz v3, :cond_9

    .line 241
    .line 242
    invoke-static {v9, v5, v13}, Lcom/android/wm/shell/util/TransitionUtil;->isTopApp(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Z)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_9

    .line 247
    .line 248
    move-object v12, v5

    .line 249
    :cond_9
    move v3, v13

    .line 250
    goto :goto_6

    .line 251
    :cond_a
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 252
    .line 253
    .line 254
    move-result v16

    .line 255
    invoke-static/range {v16 .. v16}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 256
    .line 257
    .line 258
    move-result v16

    .line 259
    if-eqz v16, :cond_c

    .line 260
    .line 261
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 262
    .line 263
    if-eqz v4, :cond_b

    .line 264
    .line 265
    invoke-static {v9, v5, v7}, Lcom/android/wm/shell/util/TransitionUtil;->isTopApp(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Z)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_b

    .line 270
    .line 271
    move-object v2, v5

    .line 272
    :cond_b
    move v4, v13

    .line 273
    :cond_c
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_d
    if-eqz v3, :cond_f

    .line 277
    .line 278
    if-eqz v4, :cond_f

    .line 279
    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_e

    .line 289
    .line 290
    const/4 v2, 0x3

    .line 291
    goto :goto_7

    .line 292
    :cond_e
    const/4 v2, 0x4

    .line 293
    :goto_7
    move v12, v2

    .line 294
    goto :goto_8

    .line 295
    :cond_f
    if-eqz v3, :cond_11

    .line 296
    .line 297
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 298
    .line 299
    if-eqz v3, :cond_10

    .line 300
    .line 301
    if-eqz v12, :cond_11

    .line 302
    .line 303
    :cond_10
    move v12, v13

    .line 304
    goto :goto_8

    .line 305
    :cond_11
    if-eqz v4, :cond_13

    .line 306
    .line 307
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 308
    .line 309
    if-eqz v3, :cond_12

    .line 310
    .line 311
    if-eqz v2, :cond_13

    .line 312
    .line 313
    :cond_12
    const/4 v12, 0x2

    .line 314
    goto :goto_8

    .line 315
    :cond_13
    move v12, v7

    .line 316
    :goto_8
    invoke-static {v9, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    :goto_9
    const/4 v3, 0x5

    .line 321
    if-ltz v2, :cond_15

    .line 322
    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 332
    .line 333
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 334
    .line 335
    .line 336
    move-result-object v16

    .line 337
    if-eqz v16, :cond_14

    .line 338
    .line 339
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 344
    .line 345
    if-ne v4, v3, :cond_14

    .line 346
    .line 347
    move v4, v13

    .line 348
    goto :goto_a

    .line 349
    :cond_14
    add-int/lit8 v2, v2, -0x1

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_15
    move v4, v7

    .line 353
    :goto_a
    invoke-static {v9, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    move v3, v7

    .line 358
    :goto_b
    const/4 v5, 0x6

    .line 359
    if-ltz v2, :cond_19

    .line 360
    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v13

    .line 365
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v13

    .line 369
    check-cast v13, Landroid/window/TransitionInfo$Change;

    .line 370
    .line 371
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-ne v1, v5, :cond_16

    .line 376
    .line 377
    const/4 v1, 0x4

    .line 378
    goto :goto_c

    .line 379
    :cond_16
    const/4 v1, 0x4

    .line 380
    invoke-virtual {v13, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-eqz v5, :cond_18

    .line 385
    .line 386
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    if-eqz v5, :cond_17

    .line 395
    .line 396
    add-int/lit8 v7, v7, 0x1

    .line 397
    .line 398
    goto :goto_c

    .line 399
    :cond_17
    add-int/lit8 v3, v3, 0x1

    .line 400
    .line 401
    :goto_c
    add-int/lit8 v2, v2, -0x1

    .line 402
    .line 403
    const/4 v13, 0x1

    .line 404
    goto :goto_b

    .line 405
    :cond_18
    const/4 v2, 0x0

    .line 406
    goto :goto_d

    .line 407
    :cond_19
    const/4 v1, 0x4

    .line 408
    add-int/2addr v7, v3

    .line 409
    if-lez v7, :cond_18

    .line 410
    .line 411
    const/4 v2, 0x1

    .line 412
    :goto_d
    move v13, v2

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-nez v2, :cond_1a

    .line 422
    .line 423
    goto :goto_f

    .line 424
    :cond_1a
    const/4 v2, 0x1

    .line 425
    invoke-static {v9, v2}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    :goto_e
    if-ltz v3, :cond_1d

    .line 430
    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 440
    .line 441
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    if-eqz v5, :cond_1c

    .line 450
    .line 451
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getPopOverAnimationNeeded()Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-nez v5, :cond_1b

    .line 456
    .line 457
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 462
    .line 463
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-eqz v2, :cond_1c

    .line 468
    .line 469
    :cond_1b
    const/4 v2, 0x1

    .line 470
    const/16 v24, 0x1

    .line 471
    .line 472
    goto :goto_10

    .line 473
    :cond_1c
    add-int/lit8 v3, v3, -0x1

    .line 474
    .line 475
    goto :goto_e

    .line 476
    :cond_1d
    :goto_f
    const/4 v2, 0x0

    .line 477
    move/from16 v24, v2

    .line 478
    .line 479
    const/4 v2, 0x1

    .line 480
    :goto_10
    invoke-static {v9, v2}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    :goto_11
    if-ltz v3, :cond_1f

    .line 485
    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 495
    .line 496
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    if-eqz v2, :cond_1e

    .line 505
    .line 506
    const/4 v2, 0x1

    .line 507
    const/16 v25, 0x1

    .line 508
    .line 509
    goto :goto_12

    .line 510
    :cond_1e
    add-int/lit8 v3, v3, -0x1

    .line 511
    .line 512
    goto :goto_11

    .line 513
    :cond_1f
    const/4 v2, 0x0

    .line 514
    move/from16 v25, v2

    .line 515
    .line 516
    const/4 v2, 0x1

    .line 517
    :goto_12
    invoke-static {v9, v2}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    const/4 v3, 0x0

    .line 522
    const/4 v5, 0x0

    .line 523
    const/4 v7, 0x0

    .line 524
    move/from16 v16, v3

    .line 525
    .line 526
    move/from16 v26, v5

    .line 527
    .line 528
    move/from16 v27, v7

    .line 529
    .line 530
    move-object v8, v9

    .line 531
    move-object v3, v10

    .line 532
    const/4 v5, 0x2

    .line 533
    move v7, v2

    .line 534
    move-object v2, v11

    .line 535
    :goto_13
    iget-object v11, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    .line 536
    .line 537
    if-ltz v7, :cond_9e

    .line 538
    .line 539
    move-object/from16 p5, v2

    .line 540
    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 550
    .line 551
    move/from16 v17, v4

    .line 552
    .line 553
    const/16 v4, 0x4200

    .line 554
    .line 555
    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo$Change;->hasAllFlags(I)Z

    .line 556
    .line 557
    .line 558
    move-result v4

    .line 559
    if-eqz v4, :cond_20

    .line 560
    .line 561
    goto :goto_14

    .line 562
    :cond_20
    const v4, 0x10102

    .line 563
    .line 564
    .line 565
    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    if-eqz v4, :cond_22

    .line 570
    .line 571
    if-eqz v24, :cond_21

    .line 572
    .line 573
    invoke-virtual {v2, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 574
    .line 575
    .line 576
    move-result v4

    .line 577
    if-eqz v4, :cond_21

    .line 578
    .line 579
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-ne v4, v1, :cond_21

    .line 584
    .line 585
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 590
    .line 591
    .line 592
    :cond_21
    :goto_14
    move-object v9, v3

    .line 593
    move-object/from16 v30, v6

    .line 594
    .line 595
    move/from16 v31, v7

    .line 596
    .line 597
    move/from16 v39, v17

    .line 598
    .line 599
    move-object/from16 v17, p5

    .line 600
    .line 601
    move/from16 p5, v13

    .line 602
    .line 603
    move/from16 v13, v39

    .line 604
    .line 605
    goto/16 :goto_1f

    .line 606
    .line 607
    :cond_22
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    if-eqz v1, :cond_23

    .line 612
    .line 613
    const/4 v1, 0x1

    .line 614
    goto :goto_15

    .line 615
    :cond_23
    const/4 v1, 0x0

    .line 616
    :goto_15
    move/from16 v28, v1

    .line 617
    .line 618
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 619
    .line 620
    .line 621
    move-result v5

    .line 622
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 623
    .line 624
    if-eqz v1, :cond_24

    .line 625
    .line 626
    if-eqz v28, :cond_24

    .line 627
    .line 628
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    if-eqz v1, :cond_24

    .line 637
    .line 638
    const/4 v1, 0x1

    .line 639
    goto :goto_16

    .line 640
    :cond_24
    const/4 v1, 0x0

    .line 641
    :goto_16
    move/from16 v29, v1

    .line 642
    .line 643
    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 644
    .line 645
    const/4 v1, 0x6

    .line 646
    if-ne v5, v1, :cond_2c

    .line 647
    .line 648
    const/16 v1, 0x20

    .line 649
    .line 650
    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 651
    .line 652
    .line 653
    move-result v1

    .line 654
    if-eqz v1, :cond_2c

    .line 655
    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 657
    .line 658
    .line 659
    move-result v1

    .line 660
    move/from16 v18, v5

    .line 661
    .line 662
    const/4 v5, 0x6

    .line 663
    if-eq v1, v5, :cond_29

    .line 664
    .line 665
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION:Z

    .line 666
    .line 667
    if-eqz v1, :cond_28

    .line 668
    .line 669
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->isFadeInOutRotationNeeded()Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-eqz v1, :cond_25

    .line 674
    .line 675
    goto :goto_17

    .line 676
    :cond_25
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 677
    .line 678
    if-eqz v1, :cond_26

    .line 679
    .line 680
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    const/high16 v5, 0x10000000

    .line 685
    .line 686
    and-int/2addr v1, v5

    .line 687
    if-eqz v1, :cond_26

    .line 688
    .line 689
    goto :goto_17

    .line 690
    :cond_26
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 691
    .line 692
    if-eqz v1, :cond_27

    .line 693
    .line 694
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 699
    .line 700
    .line 701
    move-result v5

    .line 702
    if-eq v1, v5, :cond_27

    .line 703
    .line 704
    :goto_17
    const/4 v1, 0x1

    .line 705
    goto :goto_18

    .line 706
    :cond_27
    const/4 v1, 0x0

    .line 707
    :goto_18
    if-eqz v1, :cond_28

    .line 708
    .line 709
    goto :goto_1a

    .line 710
    :cond_28
    invoke-virtual {v11, v3, v2, v8}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->handleClosingChanges(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)V

    .line 711
    .line 712
    .line 713
    move-object v9, v3

    .line 714
    :goto_19
    move-object/from16 v30, v6

    .line 715
    .line 716
    move/from16 v31, v7

    .line 717
    .line 718
    move-object/from16 v7, p5

    .line 719
    .line 720
    move-object v6, v2

    .line 721
    move/from16 p5, v13

    .line 722
    .line 723
    move/from16 v13, v17

    .line 724
    .line 725
    goto :goto_1c

    .line 726
    :cond_29
    :goto_1a
    invoke-static {v2, v8, v4}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->getRotationAnimationHint(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Lcom/android/wm/shell/common/DisplayController;)I

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    const/4 v1, 0x3

    .line 731
    if-ne v5, v1, :cond_2a

    .line 732
    .line 733
    const/4 v1, 0x1

    .line 734
    goto :goto_1b

    .line 735
    :cond_2a
    const/4 v1, 0x0

    .line 736
    :goto_1b
    move/from16 v19, v1

    .line 737
    .line 738
    if-nez v1, :cond_2b

    .line 739
    .line 740
    const/4 v1, 0x2

    .line 741
    if-eq v5, v1, :cond_2b

    .line 742
    .line 743
    move-object/from16 v1, p0

    .line 744
    .line 745
    move-object/from16 v11, p5

    .line 746
    .line 747
    move-object v4, v2

    .line 748
    move-object/from16 v2, p3

    .line 749
    .line 750
    move-object v9, v3

    .line 751
    move-object v3, v4

    .line 752
    move/from16 p5, v13

    .line 753
    .line 754
    move/from16 v13, v17

    .line 755
    .line 756
    move-object/from16 v4, p2

    .line 757
    .line 758
    move-object/from16 v30, v6

    .line 759
    .line 760
    move-object v6, v15

    .line 761
    move/from16 v31, v7

    .line 762
    .line 763
    move-object v7, v14

    .line 764
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;)V

    .line 765
    .line 766
    .line 767
    const/16 v27, 0x1

    .line 768
    .line 769
    move-object v10, v11

    .line 770
    goto/16 :goto_22

    .line 771
    .line 772
    :cond_2b
    move-object v9, v3

    .line 773
    move-object/from16 v30, v6

    .line 774
    .line 775
    move/from16 v31, v7

    .line 776
    .line 777
    move-object/from16 v7, p5

    .line 778
    .line 779
    move-object v6, v2

    .line 780
    move/from16 p5, v13

    .line 781
    .line 782
    move/from16 v13, v17

    .line 783
    .line 784
    goto :goto_1d

    .line 785
    :cond_2c
    move-object v9, v3

    .line 786
    move/from16 v18, v5

    .line 787
    .line 788
    goto :goto_19

    .line 789
    :goto_1c
    const/4 v1, 0x0

    .line 790
    move/from16 v19, v1

    .line 791
    .line 792
    :goto_1d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 793
    .line 794
    const-string v5, "MultiTaskingTransitionProvider"

    .line 795
    .line 796
    if-eqz v1, :cond_2e

    .line 797
    .line 798
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 799
    .line 800
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->shouldSkipDefaultTransition()Z

    .line 804
    .line 805
    .line 806
    move-result v1

    .line 807
    if-eqz v1, :cond_2d

    .line 808
    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    .line 810
    .line 811
    const-string v2, "canSkipDefaultTransition: c="

    .line 812
    .line 813
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .line 825
    .line 826
    const/4 v1, 0x1

    .line 827
    goto :goto_1e

    .line 828
    :cond_2d
    const/4 v1, 0x0

    .line 829
    :goto_1e
    if-eqz v1, :cond_2e

    .line 830
    .line 831
    move-object/from16 v17, v7

    .line 832
    .line 833
    goto/16 :goto_1f

    .line 834
    .line 835
    :cond_2e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 836
    .line 837
    if-eqz v1, :cond_2f

    .line 838
    .line 839
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    .line 840
    .line 841
    move-object v2, v15

    .line 842
    move-object v3, v6

    .line 843
    move-object/from16 v17, v7

    .line 844
    .line 845
    move-object v7, v4

    .line 846
    move-object v4, v14

    .line 847
    move-object v10, v5

    .line 848
    move-object/from16 v32, v7

    .line 849
    .line 850
    move/from16 v7, v18

    .line 851
    .line 852
    move-object/from16 v5, p3

    .line 853
    .line 854
    move-object/from16 v33, v6

    .line 855
    .line 856
    move-object/from16 v6, p2

    .line 857
    .line 858
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->buildChangeTransitionAnimators(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)Z

    .line 859
    .line 860
    .line 861
    move-result v1

    .line 862
    if-eqz v1, :cond_30

    .line 863
    .line 864
    goto/16 :goto_1f

    .line 865
    .line 866
    :cond_2f
    move-object/from16 v32, v4

    .line 867
    .line 868
    move-object v10, v5

    .line 869
    move-object/from16 v33, v6

    .line 870
    .line 871
    move-object/from16 v17, v7

    .line 872
    .line 873
    move/from16 v7, v18

    .line 874
    .line 875
    :cond_30
    const/16 v1, 0x200

    .line 876
    .line 877
    const/4 v2, 0x6

    .line 878
    if-ne v7, v2, :cond_3a

    .line 879
    .line 880
    if-eqz v28, :cond_31

    .line 881
    .line 882
    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    if-eqz v2, :cond_31

    .line 887
    .line 888
    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    invoke-virtual {v8, v2}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 893
    .line 894
    .line 895
    move-result-object v2

    .line 896
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    if-eqz v2, :cond_31

    .line 901
    .line 902
    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 907
    .line 908
    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 913
    .line 914
    int-to-float v3, v3

    .line 915
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 916
    .line 917
    int-to-float v1, v1

    .line 918
    invoke-virtual {v9, v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 919
    .line 920
    .line 921
    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 926
    .line 927
    .line 928
    move-result-object v2

    .line 929
    invoke-virtual {v8, v2}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 930
    .line 931
    .line 932
    move-result-object v2

    .line 933
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-nez v1, :cond_32

    .line 942
    .line 943
    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 948
    .line 949
    .line 950
    move-result-object v2

    .line 951
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 952
    .line 953
    .line 954
    move-result v2

    .line 955
    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 956
    .line 957
    .line 958
    move-result-object v3

    .line 959
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 960
    .line 961
    .line 962
    move-result v3

    .line 963
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 964
    .line 965
    .line 966
    goto :goto_1f

    .line 967
    :cond_31
    if-eqz v28, :cond_33

    .line 968
    .line 969
    invoke-virtual/range {v33 .. v33}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 974
    .line 975
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 976
    .line 977
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 978
    .line 979
    .line 980
    move-result v2

    .line 981
    const/4 v3, 0x2

    .line 982
    if-ne v2, v3, :cond_33

    .line 983
    .line 984
    :cond_32
    :goto_1f
    move-object/from16 v10, v17

    .line 985
    .line 986
    goto/16 :goto_22

    .line 987
    .line 988
    :cond_33
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    .line 989
    .line 990
    move-object/from16 v6, v33

    .line 991
    .line 992
    if-eqz v2, :cond_34

    .line 993
    .line 994
    invoke-virtual {v6, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 995
    .line 996
    .line 997
    move-result v2

    .line 998
    if-eqz v2, :cond_34

    .line 999
    .line 1000
    const/16 v2, 0x400

    .line 1001
    .line 1002
    invoke-virtual {v6, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v2

    .line 1006
    if-nez v2, :cond_34

    .line 1007
    .line 1008
    const/16 v16, 0x1

    .line 1009
    .line 1010
    goto :goto_20

    .line 1011
    :cond_34
    invoke-static {v6, v8}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 1012
    .line 1013
    .line 1014
    move-result v2

    .line 1015
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v3

    .line 1019
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v4

    .line 1023
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 1024
    .line 1025
    invoke-virtual {v8, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v5

    .line 1029
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v5

    .line 1033
    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 1034
    .line 1035
    sub-int/2addr v4, v5

    .line 1036
    int-to-float v4, v4

    .line 1037
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v5

    .line 1041
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 1042
    .line 1043
    invoke-virtual {v8, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v2

    .line 1051
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 1052
    .line 1053
    sub-int/2addr v5, v2

    .line 1054
    int-to-float v2, v5

    .line 1055
    invoke-virtual {v9, v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1056
    .line 1057
    .line 1058
    :goto_20
    if-eqz v19, :cond_35

    .line 1059
    .line 1060
    goto :goto_1f

    .line 1061
    :cond_35
    if-nez v28, :cond_36

    .line 1062
    .line 1063
    invoke-virtual {v6, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v2

    .line 1067
    if-eqz v2, :cond_38

    .line 1068
    .line 1069
    const/16 v2, 0x400

    .line 1070
    .line 1071
    invoke-virtual {v6, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v2

    .line 1075
    if-nez v2, :cond_38

    .line 1076
    .line 1077
    :cond_36
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 1078
    .line 1079
    if-eqz v2, :cond_37

    .line 1080
    .line 1081
    if-eqz v29, :cond_37

    .line 1082
    .line 1083
    goto :goto_21

    .line 1084
    :cond_37
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v2

    .line 1088
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v3

    .line 1092
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 1093
    .line 1094
    .line 1095
    move-result v3

    .line 1096
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v4

    .line 1100
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 1101
    .line 1102
    .line 1103
    move-result v4

    .line 1104
    invoke-virtual {v9, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1105
    .line 1106
    .line 1107
    :cond_38
    :goto_21
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v2

    .line 1111
    if-nez v2, :cond_39

    .line 1112
    .line 1113
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 1114
    .line 1115
    .line 1116
    move-result v2

    .line 1117
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 1118
    .line 1119
    .line 1120
    move-result v3

    .line 1121
    if-eq v2, v3, :cond_39

    .line 1122
    .line 1123
    const/4 v5, 0x0

    .line 1124
    move-object/from16 v1, p0

    .line 1125
    .line 1126
    move-object/from16 v2, p3

    .line 1127
    .line 1128
    move-object v3, v6

    .line 1129
    move-object/from16 v4, p2

    .line 1130
    .line 1131
    move-object v6, v15

    .line 1132
    move-object/from16 v10, v17

    .line 1133
    .line 1134
    move-object v7, v14

    .line 1135
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;)V

    .line 1136
    .line 1137
    .line 1138
    :goto_22
    const/4 v1, 0x4

    .line 1139
    move-object/from16 v7, p3

    .line 1140
    .line 1141
    move-object/from16 v11, p4

    .line 1142
    .line 1143
    move-object v3, v9

    .line 1144
    move-object v2, v10

    .line 1145
    move/from16 v23, v13

    .line 1146
    .line 1147
    move-object v13, v14

    .line 1148
    move-object/from16 v35, v15

    .line 1149
    .line 1150
    move-object/from16 v28, v30

    .line 1151
    .line 1152
    move-object/from16 v9, p2

    .line 1153
    .line 1154
    goto/16 :goto_5a

    .line 1155
    .line 1156
    :cond_39
    move-object/from16 v2, v17

    .line 1157
    .line 1158
    goto :goto_23

    .line 1159
    :cond_3a
    move-object/from16 v2, v17

    .line 1160
    .line 1161
    move-object/from16 v6, v33

    .line 1162
    .line 1163
    :goto_23
    move/from16 v33, v16

    .line 1164
    .line 1165
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    .line 1166
    .line 1167
    const/16 v4, 0xc

    .line 1168
    .line 1169
    if-eqz v3, :cond_41

    .line 1170
    .line 1171
    invoke-virtual {v6, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1172
    .line 1173
    .line 1174
    move-result v1

    .line 1175
    if-eqz v1, :cond_41

    .line 1176
    .line 1177
    if-nez v27, :cond_41

    .line 1178
    .line 1179
    const/4 v1, 0x6

    .line 1180
    if-eq v7, v1, :cond_40

    .line 1181
    .line 1182
    const/16 v1, 0x400

    .line 1183
    .line 1184
    invoke-virtual {v6, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1185
    .line 1186
    .line 1187
    move-result v1

    .line 1188
    if-nez v1, :cond_40

    .line 1189
    .line 1190
    invoke-static {v7}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1191
    .line 1192
    .line 1193
    move-result v1

    .line 1194
    if-eqz v1, :cond_3b

    .line 1195
    .line 1196
    if-eqz v33, :cond_3b

    .line 1197
    .line 1198
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    invoke-virtual {v9, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1203
    .line 1204
    .line 1205
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    if-eqz v1, :cond_3f

    .line 1210
    .line 1211
    invoke-virtual {v1}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 1212
    .line 1213
    .line 1214
    move-result v1

    .line 1215
    const/4 v3, 0x1

    .line 1216
    if-eq v1, v3, :cond_3d

    .line 1217
    .line 1218
    const/4 v3, 0x2

    .line 1219
    if-eq v1, v3, :cond_3d

    .line 1220
    .line 1221
    const/4 v3, 0x3

    .line 1222
    if-eq v1, v3, :cond_3d

    .line 1223
    .line 1224
    const/4 v3, 0x4

    .line 1225
    if-eq v1, v3, :cond_3e

    .line 1226
    .line 1227
    const/16 v5, 0xb

    .line 1228
    .line 1229
    if-eq v1, v5, :cond_3e

    .line 1230
    .line 1231
    if-ne v1, v4, :cond_3c

    .line 1232
    .line 1233
    goto :goto_24

    .line 1234
    :cond_3c
    const/4 v1, 0x0

    .line 1235
    goto :goto_25

    .line 1236
    :cond_3d
    const/4 v1, 0x4

    .line 1237
    move v3, v1

    .line 1238
    :cond_3e
    :goto_24
    const/4 v1, 0x1

    .line 1239
    :goto_25
    if-eqz v1, :cond_45

    .line 1240
    .line 1241
    goto :goto_26

    .line 1242
    :cond_3f
    const/4 v3, 0x4

    .line 1243
    goto :goto_27

    .line 1244
    :cond_40
    const/4 v3, 0x4

    .line 1245
    const/4 v1, 0x3

    .line 1246
    if-ne v7, v1, :cond_42

    .line 1247
    .line 1248
    const/16 v1, 0x400

    .line 1249
    .line 1250
    invoke-virtual {v6, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1251
    .line 1252
    .line 1253
    move-result v1

    .line 1254
    if-eqz v1, :cond_42

    .line 1255
    .line 1256
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v1

    .line 1260
    const/4 v4, -0x1

    .line 1261
    invoke-virtual {v9, v1, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1262
    .line 1263
    .line 1264
    goto :goto_26

    .line 1265
    :cond_41
    const/4 v1, 0x4

    .line 1266
    move v3, v1

    .line 1267
    :cond_42
    :goto_26
    if-eqz v27, :cond_43

    .line 1268
    .line 1269
    invoke-static {v7}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v1

    .line 1273
    if-eqz v1, :cond_43

    .line 1274
    .line 1275
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v1

    .line 1279
    invoke-virtual {v9, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1280
    .line 1281
    .line 1282
    goto :goto_27

    .line 1283
    :cond_43
    const/high16 v1, 0x20000

    .line 1284
    .line 1285
    invoke-virtual {v6, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1286
    .line 1287
    .line 1288
    move-result v1

    .line 1289
    if-eqz v1, :cond_44

    .line 1290
    .line 1291
    goto :goto_27

    .line 1292
    :cond_44
    invoke-static {v6, v8}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 1293
    .line 1294
    .line 1295
    move-result v1

    .line 1296
    if-nez v1, :cond_46

    .line 1297
    .line 1298
    :cond_45
    :goto_27
    move-object/from16 v7, p3

    .line 1299
    .line 1300
    move-object/from16 v11, p4

    .line 1301
    .line 1302
    move-object v1, v9

    .line 1303
    move/from16 v23, v13

    .line 1304
    .line 1305
    move-object v13, v14

    .line 1306
    move-object/from16 v35, v15

    .line 1307
    .line 1308
    move-object/from16 v28, v30

    .line 1309
    .line 1310
    move-object/from16 v9, p2

    .line 1311
    .line 1312
    goto/16 :goto_59

    .line 1313
    .line 1314
    :cond_46
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1315
    .line 1316
    .line 1317
    move-result v1

    .line 1318
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 1319
    .line 1320
    .line 1321
    move-result v2

    .line 1322
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1323
    .line 1324
    .line 1325
    move-result v3

    .line 1326
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 1327
    .line 1328
    .line 1329
    move-result v4

    .line 1330
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1331
    .line 1332
    .line 1333
    move-result v5

    .line 1334
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1335
    .line 1336
    .line 1337
    move-result v9

    .line 1338
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v16

    .line 1342
    if-eqz v16, :cond_47

    .line 1343
    .line 1344
    const/16 v16, 0x1

    .line 1345
    .line 1346
    goto :goto_28

    .line 1347
    :cond_47
    const/16 v16, 0x0

    .line 1348
    .line 1349
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v17

    .line 1353
    if-eqz v17, :cond_48

    .line 1354
    .line 1355
    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 1356
    .line 1357
    .line 1358
    move-result v18

    .line 1359
    goto :goto_29

    .line 1360
    :cond_48
    const/16 v18, 0x0

    .line 1361
    .line 1362
    :goto_29
    move-object/from16 v34, v14

    .line 1363
    .line 1364
    move/from16 v14, v18

    .line 1365
    .line 1366
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1367
    .line 1368
    .line 1369
    move-result v18

    .line 1370
    if-eqz v18, :cond_4a

    .line 1371
    .line 1372
    move-object/from16 v35, v15

    .line 1373
    .line 1374
    iget v15, v11, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    .line 1375
    .line 1376
    if-nez v15, :cond_49

    .line 1377
    .line 1378
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v15

    .line 1382
    move/from16 v36, v7

    .line 1383
    .line 1384
    move-object/from16 v37, v10

    .line 1385
    .line 1386
    goto :goto_2a

    .line 1387
    :cond_49
    new-instance v15, Landroid/graphics/Rect;

    .line 1388
    .line 1389
    move/from16 v36, v7

    .line 1390
    .line 1391
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v7

    .line 1395
    invoke-direct {v15, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1396
    .line 1397
    .line 1398
    iget-object v7, v11, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastDisplayBounds:Landroid/graphics/Rect;

    .line 1399
    .line 1400
    move-object/from16 v37, v10

    .line 1401
    .line 1402
    iget v10, v11, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    .line 1403
    .line 1404
    invoke-static {v15, v7, v10}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1405
    .line 1406
    .line 1407
    goto :goto_2a

    .line 1408
    :cond_4a
    move/from16 v36, v7

    .line 1409
    .line 1410
    move-object/from16 v37, v10

    .line 1411
    .line 1412
    move-object/from16 v35, v15

    .line 1413
    .line 1414
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v15

    .line 1418
    :goto_2a
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_CUSTOM_SHELL_TRANSITION:Z

    .line 1419
    .line 1420
    iget-object v10, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1421
    .line 1422
    if-eqz v7, :cond_4b

    .line 1423
    .line 1424
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    .line 1425
    .line 1426
    .line 1427
    move-result v7

    .line 1428
    move-object/from16 v38, v11

    .line 1429
    .line 1430
    const/4 v11, 0x1

    .line 1431
    if-ne v7, v11, :cond_4c

    .line 1432
    .line 1433
    invoke-virtual {v10, v11}, Lcom/android/internal/policy/TransitionAnimation;->overrideDisplayId(I)V

    .line 1434
    .line 1435
    .line 1436
    goto :goto_2b

    .line 1437
    :cond_4b
    move-object/from16 v38, v11

    .line 1438
    .line 1439
    :cond_4c
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    .line 1440
    .line 1441
    .line 1442
    move-result v7

    .line 1443
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1444
    .line 1445
    if-eqz v7, :cond_4e

    .line 1446
    .line 1447
    and-int/lit8 v1, v4, 0x1

    .line 1448
    .line 1449
    if-eqz v1, :cond_4d

    .line 1450
    .line 1451
    const/4 v1, 0x1

    .line 1452
    goto :goto_2c

    .line 1453
    :cond_4d
    const/4 v1, 0x0

    .line 1454
    :goto_2c
    invoke-virtual {v10, v2, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v1

    .line 1458
    goto/16 :goto_31

    .line 1459
    .line 1460
    :cond_4e
    const/16 v2, 0x9

    .line 1461
    .line 1462
    if-ne v1, v2, :cond_4f

    .line 1463
    .line 1464
    invoke-virtual {v10}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v1

    .line 1468
    goto/16 :goto_31

    .line 1469
    .line 1470
    :cond_4f
    and-int/lit8 v2, v4, 0x10

    .line 1471
    .line 1472
    if-eqz v2, :cond_51

    .line 1473
    .line 1474
    if-eqz v5, :cond_50

    .line 1475
    .line 1476
    invoke-virtual {v10, v9}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v1

    .line 1480
    goto/16 :goto_31

    .line 1481
    .line 1482
    :cond_50
    invoke-virtual {v10, v9}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v1

    .line 1486
    goto/16 :goto_31

    .line 1487
    .line 1488
    :cond_51
    const/4 v2, 0x6

    .line 1489
    if-ne v3, v2, :cond_53

    .line 1490
    .line 1491
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 1492
    .line 1493
    if-eqz v2, :cond_52

    .line 1494
    .line 1495
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    .line 1496
    .line 1497
    .line 1498
    move-result v2

    .line 1499
    if-nez v2, :cond_53

    .line 1500
    .line 1501
    :cond_52
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 1502
    .line 1503
    invoke-direct {v1, v11, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1504
    .line 1505
    .line 1506
    const-wide/16 v4, 0x150

    .line 1507
    .line 1508
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1509
    .line 1510
    .line 1511
    goto/16 :goto_31

    .line 1512
    .line 1513
    :cond_53
    const/4 v2, 0x5

    .line 1514
    if-ne v1, v2, :cond_54

    .line 1515
    .line 1516
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    .line 1517
    .line 1518
    invoke-virtual {v10, v15, v1, v15}, Lcom/android/internal/policy/TransitionAnimation;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v1

    .line 1522
    goto/16 :goto_31

    .line 1523
    .line 1524
    :cond_54
    const/4 v7, 0x1

    .line 1525
    if-ne v14, v7, :cond_57

    .line 1526
    .line 1527
    if-eqz v16, :cond_55

    .line 1528
    .line 1529
    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$AnimationOptions;->getOverrideTaskTransition()Z

    .line 1530
    .line 1531
    .line 1532
    move-result v7

    .line 1533
    if-eqz v7, :cond_57

    .line 1534
    .line 1535
    :cond_55
    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v1

    .line 1539
    if-eqz v9, :cond_56

    .line 1540
    .line 1541
    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    .line 1542
    .line 1543
    .line 1544
    move-result v2

    .line 1545
    goto :goto_2d

    .line 1546
    :cond_56
    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    .line 1547
    .line 1548
    .line 1549
    move-result v2

    .line 1550
    :goto_2d
    invoke-virtual {v10, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v1

    .line 1554
    goto/16 :goto_31

    .line 1555
    .line 1556
    :cond_57
    const/16 v7, 0xc

    .line 1557
    .line 1558
    if-ne v14, v7, :cond_58

    .line 1559
    .line 1560
    if-eqz v9, :cond_58

    .line 1561
    .line 1562
    invoke-virtual {v10}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v1

    .line 1566
    goto/16 :goto_31

    .line 1567
    .line 1568
    :cond_58
    const/16 v7, 0xb

    .line 1569
    .line 1570
    if-ne v14, v7, :cond_59

    .line 1571
    .line 1572
    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v22

    .line 1576
    move-object/from16 v16, v10

    .line 1577
    .line 1578
    move/from16 v17, v1

    .line 1579
    .line 1580
    move/from16 v18, v12

    .line 1581
    .line 1582
    move/from16 v19, v9

    .line 1583
    .line 1584
    move-object/from16 v20, v15

    .line 1585
    .line 1586
    move-object/from16 v21, v15

    .line 1587
    .line 1588
    invoke-virtual/range {v16 .. v22}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v1

    .line 1592
    goto :goto_31

    .line 1593
    :cond_59
    const/4 v7, 0x2

    .line 1594
    if-ne v14, v7, :cond_5a

    .line 1595
    .line 1596
    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v21

    .line 1600
    move-object/from16 v16, v10

    .line 1601
    .line 1602
    move/from16 v17, v1

    .line 1603
    .line 1604
    move/from16 v18, v12

    .line 1605
    .line 1606
    move/from16 v19, v9

    .line 1607
    .line 1608
    move-object/from16 v20, v15

    .line 1609
    .line 1610
    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v1

    .line 1614
    goto :goto_31

    .line 1615
    :cond_5a
    const/4 v7, 0x3

    .line 1616
    if-eq v14, v7, :cond_5e

    .line 1617
    .line 1618
    const/4 v7, 0x4

    .line 1619
    if-ne v14, v7, :cond_5b

    .line 1620
    .line 1621
    goto :goto_2f

    .line 1622
    :cond_5b
    and-int/lit8 v1, v4, 0x8

    .line 1623
    .line 1624
    if-eqz v1, :cond_5c

    .line 1625
    .line 1626
    if-eqz v5, :cond_5c

    .line 1627
    .line 1628
    goto :goto_2e

    .line 1629
    :cond_5c
    if-ne v14, v2, :cond_5d

    .line 1630
    .line 1631
    :goto_2e
    const/4 v1, 0x0

    .line 1632
    goto/16 :goto_41

    .line 1633
    .line 1634
    :cond_5d
    invoke-static {v8, v6, v12, v10, v13}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v1

    .line 1638
    goto :goto_31

    .line 1639
    :cond_5e
    :goto_2f
    const/4 v2, 0x3

    .line 1640
    if-ne v14, v2, :cond_5f

    .line 1641
    .line 1642
    const/4 v2, 0x1

    .line 1643
    goto :goto_30

    .line 1644
    :cond_5f
    const/4 v2, 0x0

    .line 1645
    :goto_30
    move/from16 v18, v2

    .line 1646
    .line 1647
    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v22

    .line 1651
    invoke-virtual/range {v17 .. v17}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v23

    .line 1655
    move-object/from16 v16, v10

    .line 1656
    .line 1657
    move/from16 v17, v9

    .line 1658
    .line 1659
    move-object/from16 v19, v15

    .line 1660
    .line 1661
    move/from16 v20, v1

    .line 1662
    .line 1663
    move/from16 v21, v12

    .line 1664
    .line 1665
    invoke-virtual/range {v16 .. v23}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLocked(ZZLandroid/graphics/Rect;IILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v1

    .line 1669
    :goto_31
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 1670
    .line 1671
    if-eqz v2, :cond_78

    .line 1672
    .line 1673
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 1674
    .line 1675
    iget-object v4, v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 1676
    .line 1677
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1678
    .line 1679
    .line 1680
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1681
    .line 1682
    .line 1683
    move-result v5

    .line 1684
    iput v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    .line 1685
    .line 1686
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1687
    .line 1688
    .line 1689
    move-result v5

    .line 1690
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1691
    .line 1692
    .line 1693
    move-result v5

    .line 1694
    iput-boolean v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 1695
    .line 1696
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v5

    .line 1700
    iget-object v7, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    .line 1701
    .line 1702
    invoke-virtual {v7, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1703
    .line 1704
    .line 1705
    iput-object v6, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    .line 1706
    .line 1707
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v5

    .line 1711
    iput-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1712
    .line 1713
    if-eqz v5, :cond_60

    .line 1714
    .line 1715
    iget v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1716
    .line 1717
    goto :goto_32

    .line 1718
    :cond_60
    const/4 v8, -0x1

    .line 1719
    :goto_32
    iput v8, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskId:I

    .line 1720
    .line 1721
    if-eqz v5, :cond_61

    .line 1722
    .line 1723
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 1724
    .line 1725
    .line 1726
    move-result v5

    .line 1727
    goto :goto_33

    .line 1728
    :cond_61
    const/4 v5, 0x0

    .line 1729
    :goto_33
    iput v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    .line 1730
    .line 1731
    iget-object v5, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1732
    .line 1733
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 1734
    .line 1735
    .line 1736
    move-result v5

    .line 1737
    iput v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    .line 1738
    .line 1739
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v5

    .line 1743
    iput-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 1744
    .line 1745
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1746
    .line 1747
    if-eqz v5, :cond_64

    .line 1748
    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChangeForAppsEdgeActivity()Landroid/window/TransitionInfo$Change;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v5

    .line 1753
    if-eqz v5, :cond_63

    .line 1754
    .line 1755
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1756
    .line 1757
    .line 1758
    move-result v8

    .line 1759
    const/4 v9, 0x1

    .line 1760
    if-eq v8, v9, :cond_62

    .line 1761
    .line 1762
    goto :goto_34

    .line 1763
    :cond_62
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v5

    .line 1767
    goto :goto_35

    .line 1768
    :cond_63
    :goto_34
    const/4 v5, 0x0

    .line 1769
    :goto_35
    iput-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mOpeningAppsEdgeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1770
    .line 1771
    :cond_64
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_SHELL_TRANSITION:Z

    .line 1772
    .line 1773
    if-eqz v5, :cond_69

    .line 1774
    .line 1775
    invoke-virtual {v7}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 1776
    .line 1777
    .line 1778
    move-result v5

    .line 1779
    if-eqz v5, :cond_69

    .line 1780
    .line 1781
    iget-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1782
    .line 1783
    if-eqz v5, :cond_69

    .line 1784
    .line 1785
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    .line 1786
    .line 1787
    .line 1788
    move-result v5

    .line 1789
    if-eqz v5, :cond_69

    .line 1790
    .line 1791
    iget-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mChange:Landroid/window/TransitionInfo$Change;

    .line 1792
    .line 1793
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1794
    .line 1795
    .line 1796
    move-result v5

    .line 1797
    const/4 v8, 0x4

    .line 1798
    if-ne v5, v8, :cond_69

    .line 1799
    .line 1800
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v5

    .line 1804
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1805
    .line 1806
    .line 1807
    move-result v5

    .line 1808
    :cond_65
    add-int/lit8 v5, v5, -0x1

    .line 1809
    .line 1810
    if-ltz v5, :cond_67

    .line 1811
    .line 1812
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v8

    .line 1816
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v8

    .line 1820
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 1821
    .line 1822
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v9

    .line 1826
    if-eqz v9, :cond_65

    .line 1827
    .line 1828
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v9

    .line 1832
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    .line 1833
    .line 1834
    .line 1835
    move-result v9

    .line 1836
    if-eqz v9, :cond_65

    .line 1837
    .line 1838
    const/high16 v9, 0x100000

    .line 1839
    .line 1840
    invoke-virtual {v8, v9}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1841
    .line 1842
    .line 1843
    move-result v9

    .line 1844
    if-nez v9, :cond_66

    .line 1845
    .line 1846
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    .line 1847
    .line 1848
    .line 1849
    move-result v9

    .line 1850
    if-eqz v9, :cond_65

    .line 1851
    .line 1852
    :cond_66
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v5

    .line 1856
    goto :goto_36

    .line 1857
    :cond_67
    const/4 v5, 0x0

    .line 1858
    :goto_36
    if-eqz v5, :cond_68

    .line 1859
    .line 1860
    const/4 v5, 0x1

    .line 1861
    goto :goto_37

    .line 1862
    :cond_68
    const/4 v5, 0x0

    .line 1863
    :goto_37
    iput-boolean v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsFreeformMovingBehindSplitScreen:Z

    .line 1864
    .line 1865
    :cond_69
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 1866
    .line 1867
    if-eqz v5, :cond_6a

    .line 1868
    .line 1869
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    .line 1870
    .line 1871
    .line 1872
    move-result v5

    .line 1873
    iput-boolean v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mHasCustomDisplayChangeTransition:Z

    .line 1874
    .line 1875
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isSeparatedFromCustomDisplayChange()Z

    .line 1876
    .line 1877
    .line 1878
    move-result v5

    .line 1879
    iput-boolean v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mSeparatedFromCustomDisplayChange:Z

    .line 1880
    .line 1881
    :cond_6a
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 1882
    .line 1883
    if-eqz v5, :cond_6b

    .line 1884
    .line 1885
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMinimizeAnimState()I

    .line 1886
    .line 1887
    .line 1888
    move-result v5

    .line 1889
    iput v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizeAnimState:I

    .line 1890
    .line 1891
    iget-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizePoint:Landroid/graphics/PointF;

    .line 1892
    .line 1893
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMinimizePoint()Landroid/graphics/PointF;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v8

    .line 1897
    invoke-virtual {v5, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1898
    .line 1899
    .line 1900
    :cond_6b
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getPopOverAnimationNeeded()Z

    .line 1901
    .line 1902
    .line 1903
    move-result v5

    .line 1904
    iput-boolean v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsPopOverAnimationNeeded:Z

    .line 1905
    .line 1906
    iget v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    .line 1907
    .line 1908
    const/4 v8, 0x5

    .line 1909
    if-ne v5, v8, :cond_6c

    .line 1910
    .line 1911
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    .line 1912
    .line 1913
    .line 1914
    move-result v5

    .line 1915
    iput v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mFreeformStashScale:F

    .line 1916
    .line 1917
    :cond_6c
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    .line 1918
    .line 1919
    .line 1920
    move-result v5

    .line 1921
    iput v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mForceHidingTransit:I

    .line 1922
    .line 1923
    :try_start_0
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    .line 1924
    .line 1925
    .line 1926
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    iget-object v2, v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    .line 1928
    .line 1929
    if-eqz v5, :cond_70

    .line 1930
    .line 1931
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1932
    .line 1933
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1934
    .line 1935
    .line 1936
    const-string v8, "loadAnimation: Use affordance"

    .line 1937
    .line 1938
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    .line 1940
    .line 1941
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1942
    .line 1943
    .line 1944
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v5

    .line 1948
    move-object/from16 v8, v37

    .line 1949
    .line 1950
    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    .line 1952
    .line 1953
    iget v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    .line 1954
    .line 1955
    const/4 v8, 0x6

    .line 1956
    if-ne v5, v8, :cond_6d

    .line 1957
    .line 1958
    iget-object v5, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1959
    .line 1960
    invoke-static {v5}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 1961
    .line 1962
    .line 1963
    move-result v5

    .line 1964
    if-eqz v5, :cond_6d

    .line 1965
    .line 1966
    const/4 v5, 0x1

    .line 1967
    goto :goto_38

    .line 1968
    :cond_6d
    const/4 v5, 0x0

    .line 1969
    :goto_38
    if-eqz v5, :cond_6e

    .line 1970
    .line 1971
    if-eqz v1, :cond_6e

    .line 1972
    .line 1973
    const/4 v5, 0x1

    .line 1974
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v2

    .line 1978
    check-cast v2, Lcom/android/wm/shell/transition/AnimationLoader;

    .line 1979
    .line 1980
    invoke-virtual {v2}, Lcom/android/wm/shell/transition/AnimationLoader;->getCornerRadius()F

    .line 1981
    .line 1982
    .line 1983
    move-result v2

    .line 1984
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRoundedCornerRadius(F)V

    .line 1985
    .line 1986
    .line 1987
    :cond_6e
    iget v2, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    .line 1988
    .line 1989
    const/4 v5, 0x5

    .line 1990
    if-ne v2, v5, :cond_6f

    .line 1991
    .line 1992
    const/4 v2, 0x1

    .line 1993
    goto :goto_39

    .line 1994
    :cond_6f
    const/4 v2, 0x0

    .line 1995
    :goto_39
    if-eqz v2, :cond_77

    .line 1996
    .line 1997
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getAffordanceTargetFreeformTask()Z

    .line 1998
    .line 1999
    .line 2000
    move-result v2

    .line 2001
    if-nez v2, :cond_77

    .line 2002
    .line 2003
    const/4 v1, 0x0

    .line 2004
    goto/16 :goto_3e

    .line 2005
    .line 2006
    :cond_70
    move-object/from16 v8, v37

    .line 2007
    .line 2008
    iget-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2009
    .line 2010
    if-eqz v5, :cond_71

    .line 2011
    .line 2012
    invoke-virtual {v5}, Landroid/window/TransitionInfo$AnimationOptions;->getAnimations()I

    .line 2013
    .line 2014
    .line 2015
    move-result v5

    .line 2016
    if-nez v5, :cond_71

    .line 2017
    .line 2018
    iget-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2019
    .line 2020
    invoke-virtual {v5}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    .line 2021
    .line 2022
    .line 2023
    move-result v5

    .line 2024
    if-nez v5, :cond_71

    .line 2025
    .line 2026
    iget-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2027
    .line 2028
    invoke-virtual {v5}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    .line 2029
    .line 2030
    .line 2031
    move-result v5

    .line 2032
    if-nez v5, :cond_71

    .line 2033
    .line 2034
    iget-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2035
    .line 2036
    const/4 v7, 0x1

    .line 2037
    invoke-virtual {v5, v7}, Landroid/window/TransitionInfo$AnimationOptions;->getCustomActivityTransition(Z)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v5

    .line 2041
    if-nez v5, :cond_71

    .line 2042
    .line 2043
    iget-object v5, v4, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2044
    .line 2045
    const/4 v7, 0x0

    .line 2046
    invoke-virtual {v5, v7}, Landroid/window/TransitionInfo$AnimationOptions;->getCustomActivityTransition(Z)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v5

    .line 2050
    if-nez v5, :cond_71

    .line 2051
    .line 2052
    const/4 v5, 0x1

    .line 2053
    goto :goto_3a

    .line 2054
    :cond_71
    const/4 v5, 0x0

    .line 2055
    :goto_3a
    if-eqz v5, :cond_72

    .line 2056
    .line 2057
    const/high16 v5, 0x800000

    .line 2058
    .line 2059
    invoke-virtual {v6, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 2060
    .line 2061
    .line 2062
    move-result v5

    .line 2063
    if-eqz v5, :cond_72

    .line 2064
    .line 2065
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2066
    .line 2067
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2068
    .line 2069
    .line 2070
    const-string v5, "loadAnimation: has EMPTY custom animation"

    .line 2071
    .line 2072
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    .line 2074
    .line 2075
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2076
    .line 2077
    .line 2078
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v2

    .line 2082
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    .line 2084
    .line 2085
    goto :goto_3e

    .line 2086
    :cond_72
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 2087
    .line 2088
    .line 2089
    move-result v5

    .line 2090
    const/4 v7, 0x0

    .line 2091
    :goto_3b
    if-ge v7, v5, :cond_77

    .line 2092
    .line 2093
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v9

    .line 2097
    check-cast v9, Lcom/android/wm/shell/transition/AnimationLoader;

    .line 2098
    .line 2099
    invoke-virtual {v9}, Lcom/android/wm/shell/transition/AnimationLoader;->isAvailable()Z

    .line 2100
    .line 2101
    .line 2102
    move-result v11

    .line 2103
    if-nez v11, :cond_73

    .line 2104
    .line 2105
    goto :goto_3d

    .line 2106
    :cond_73
    invoke-virtual {v9}, Lcom/android/wm/shell/transition/AnimationLoader;->loadAnimationIfPossible()V

    .line 2107
    .line 2108
    .line 2109
    iget-object v11, v9, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2110
    .line 2111
    iget-boolean v14, v11, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationLoaded:Z

    .line 2112
    .line 2113
    if-eqz v14, :cond_76

    .line 2114
    .line 2115
    iget-object v1, v11, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimation:Landroid/view/animation/Animation;

    .line 2116
    .line 2117
    sget-object v2, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    .line 2118
    .line 2119
    if-ne v1, v2, :cond_74

    .line 2120
    .line 2121
    const/4 v2, 0x1

    .line 2122
    goto :goto_3c

    .line 2123
    :cond_74
    const/4 v2, 0x0

    .line 2124
    :goto_3c
    if-eqz v2, :cond_75

    .line 2125
    .line 2126
    const/4 v1, 0x0

    .line 2127
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2128
    .line 2129
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2130
    .line 2131
    .line 2132
    const-string v5, "loadAnimation: "

    .line 2133
    .line 2134
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    .line 2136
    .line 2137
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2138
    .line 2139
    .line 2140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2141
    .line 2142
    .line 2143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v2

    .line 2147
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2148
    .line 2149
    .line 2150
    goto :goto_3e

    .line 2151
    :cond_76
    :goto_3d
    add-int/lit8 v7, v7, 0x1

    .line 2152
    .line 2153
    goto :goto_3b

    .line 2154
    :cond_77
    :goto_3e
    invoke-virtual {v4}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->reset()V

    .line 2155
    .line 2156
    .line 2157
    goto :goto_3f

    .line 2158
    :catchall_0
    move-exception v0

    .line 2159
    invoke-virtual {v4}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->reset()V

    .line 2160
    .line 2161
    .line 2162
    throw v0

    .line 2163
    :cond_78
    :goto_3f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_CUSTOM_SHELL_TRANSITION:Z

    .line 2164
    .line 2165
    if-eqz v2, :cond_79

    .line 2166
    .line 2167
    const/4 v2, -0x1

    .line 2168
    invoke-virtual {v10, v2}, Lcom/android/internal/policy/TransitionAnimation;->overrideDisplayId(I)V

    .line 2169
    .line 2170
    .line 2171
    :cond_79
    if-eqz v1, :cond_7c

    .line 2172
    .line 2173
    invoke-virtual {v1}, Landroid/view/animation/Animation;->isInitialized()Z

    .line 2174
    .line 2175
    .line 2176
    move-result v2

    .line 2177
    if-nez v2, :cond_7b

    .line 2178
    .line 2179
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 2180
    .line 2181
    .line 2182
    move-result v2

    .line 2183
    if-eqz v2, :cond_7a

    .line 2184
    .line 2185
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v2

    .line 2189
    goto :goto_40

    .line 2190
    :cond_7a
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2191
    .line 2192
    .line 2193
    move-result-object v2

    .line 2194
    :goto_40
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 2195
    .line 2196
    .line 2197
    move-result v3

    .line 2198
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 2199
    .line 2200
    .line 2201
    move-result v2

    .line 2202
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 2203
    .line 2204
    .line 2205
    move-result v4

    .line 2206
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 2207
    .line 2208
    .line 2209
    move-result v5

    .line 2210
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2211
    .line 2212
    .line 2213
    :cond_7b
    const-wide/16 v2, 0xbb8

    .line 2214
    .line 2215
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 2216
    .line 2217
    .line 2218
    iget v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 2219
    .line 2220
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2221
    .line 2222
    .line 2223
    :cond_7c
    :goto_41
    move-object v15, v1

    .line 2224
    if-eqz v15, :cond_9c

    .line 2225
    .line 2226
    if-eqz v28, :cond_8b

    .line 2227
    .line 2228
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 2229
    .line 2230
    .line 2231
    move-result v1

    .line 2232
    const/4 v2, 0x4

    .line 2233
    and-int/2addr v1, v2

    .line 2234
    if-eqz v1, :cond_7d

    .line 2235
    .line 2236
    const/4 v1, 0x1

    .line 2237
    goto :goto_42

    .line 2238
    :cond_7d
    const/4 v1, 0x0

    .line 2239
    :goto_42
    if-nez v1, :cond_82

    .line 2240
    .line 2241
    const/4 v1, 0x1

    .line 2242
    move/from16 v3, v36

    .line 2243
    .line 2244
    if-eq v3, v1, :cond_7f

    .line 2245
    .line 2246
    const/4 v1, 0x2

    .line 2247
    if-eq v3, v1, :cond_7f

    .line 2248
    .line 2249
    const/4 v1, 0x3

    .line 2250
    if-eq v3, v1, :cond_7f

    .line 2251
    .line 2252
    if-ne v3, v2, :cond_7e

    .line 2253
    .line 2254
    goto :goto_43

    .line 2255
    :cond_7e
    const/4 v1, 0x0

    .line 2256
    goto :goto_44

    .line 2257
    :cond_7f
    :goto_43
    const/4 v1, 0x1

    .line 2258
    :goto_44
    if-eqz v1, :cond_83

    .line 2259
    .line 2260
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 2261
    .line 2262
    .line 2263
    move-result v1

    .line 2264
    const/4 v2, 0x1

    .line 2265
    if-eq v1, v2, :cond_81

    .line 2266
    .line 2267
    const/4 v2, 0x2

    .line 2268
    if-eq v1, v2, :cond_81

    .line 2269
    .line 2270
    const/4 v2, 0x3

    .line 2271
    if-eq v1, v2, :cond_81

    .line 2272
    .line 2273
    const/4 v2, 0x4

    .line 2274
    if-ne v1, v2, :cond_80

    .line 2275
    .line 2276
    goto :goto_45

    .line 2277
    :cond_80
    const/4 v1, 0x0

    .line 2278
    goto :goto_46

    .line 2279
    :cond_81
    :goto_45
    const/4 v1, 0x1

    .line 2280
    :goto_46
    if-eqz v1, :cond_83

    .line 2281
    .line 2282
    if-nez v12, :cond_83

    .line 2283
    .line 2284
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 2285
    .line 2286
    .line 2287
    move-result-object v1

    .line 2288
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v1

    .line 2292
    const v2, 0x10602dd

    .line 2293
    .line 2294
    .line 2295
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 2296
    .line 2297
    .line 2298
    move-result v26

    .line 2299
    goto :goto_47

    .line 2300
    :cond_82
    move/from16 v3, v36

    .line 2301
    .line 2302
    :cond_83
    :goto_47
    const/4 v1, 0x1

    .line 2303
    if-ne v12, v1, :cond_85

    .line 2304
    .line 2305
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 2306
    .line 2307
    .line 2308
    move-result v1

    .line 2309
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 2310
    .line 2311
    .line 2312
    move-result v1

    .line 2313
    if-eqz v1, :cond_85

    .line 2314
    .line 2315
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2316
    .line 2317
    .line 2318
    move-result-object v1

    .line 2319
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 2320
    .line 2321
    .line 2322
    move-result v1

    .line 2323
    add-int/lit8 v2, v1, 0x1

    .line 2324
    .line 2325
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 2326
    .line 2327
    .line 2328
    move-result v4

    .line 2329
    if-eqz v4, :cond_84

    .line 2330
    .line 2331
    sub-int v2, v2, v31

    .line 2332
    .line 2333
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v1

    .line 2337
    move-object/from16 v7, p3

    .line 2338
    .line 2339
    invoke-virtual {v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2340
    .line 2341
    .line 2342
    goto/16 :goto_4b

    .line 2343
    .line 2344
    :cond_84
    move-object/from16 v7, p3

    .line 2345
    .line 2346
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 2347
    .line 2348
    .line 2349
    move-result v4

    .line 2350
    if-eqz v4, :cond_8a

    .line 2351
    .line 2352
    add-int/2addr v2, v1

    .line 2353
    sub-int v2, v2, v31

    .line 2354
    .line 2355
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2356
    .line 2357
    .line 2358
    move-result-object v1

    .line 2359
    invoke-virtual {v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2360
    .line 2361
    .line 2362
    goto :goto_4b

    .line 2363
    :cond_85
    move-object/from16 v7, p3

    .line 2364
    .line 2365
    if-nez p5, :cond_86

    .line 2366
    .line 2367
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 2368
    .line 2369
    if-eqz v1, :cond_8a

    .line 2370
    .line 2371
    if-nez v25, :cond_8a

    .line 2372
    .line 2373
    :cond_86
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 2374
    .line 2375
    .line 2376
    move-result v1

    .line 2377
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 2378
    .line 2379
    .line 2380
    move-result v1

    .line 2381
    if-eqz v1, :cond_8a

    .line 2382
    .line 2383
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 2384
    .line 2385
    .line 2386
    move-result v1

    .line 2387
    if-eqz v1, :cond_8a

    .line 2388
    .line 2389
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 2390
    .line 2391
    if-eqz v1, :cond_89

    .line 2392
    .line 2393
    const/4 v1, 0x1

    .line 2394
    move-object/from16 v9, p2

    .line 2395
    .line 2396
    invoke-static {v9, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 2397
    .line 2398
    .line 2399
    move-result v1

    .line 2400
    :goto_48
    if-ltz v1, :cond_88

    .line 2401
    .line 2402
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v2

    .line 2406
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2407
    .line 2408
    .line 2409
    move-result-object v2

    .line 2410
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 2411
    .line 2412
    const/high16 v4, 0x100000

    .line 2413
    .line 2414
    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 2415
    .line 2416
    .line 2417
    move-result v4

    .line 2418
    if-eqz v4, :cond_87

    .line 2419
    .line 2420
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isHomeOrRecents(Landroid/window/TransitionInfo$Change;)Z

    .line 2421
    .line 2422
    .line 2423
    move-result v2

    .line 2424
    if-eqz v2, :cond_87

    .line 2425
    .line 2426
    const/4 v1, 0x1

    .line 2427
    goto :goto_49

    .line 2428
    :cond_87
    add-int/lit8 v1, v1, -0x1

    .line 2429
    .line 2430
    goto :goto_48

    .line 2431
    :cond_88
    const/4 v1, 0x0

    .line 2432
    :goto_49
    if-eqz v1, :cond_8c

    .line 2433
    .line 2434
    goto :goto_4a

    .line 2435
    :cond_89
    move-object/from16 v9, p2

    .line 2436
    .line 2437
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2438
    .line 2439
    .line 2440
    move-result-object v1

    .line 2441
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 2442
    .line 2443
    .line 2444
    move-result v1

    .line 2445
    add-int/lit8 v2, v1, 0x1

    .line 2446
    .line 2447
    add-int/2addr v2, v1

    .line 2448
    sub-int v2, v2, v31

    .line 2449
    .line 2450
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2451
    .line 2452
    .line 2453
    move-result-object v1

    .line 2454
    invoke-virtual {v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2455
    .line 2456
    .line 2457
    goto :goto_4c

    .line 2458
    :cond_8a
    :goto_4b
    move-object/from16 v9, p2

    .line 2459
    .line 2460
    goto :goto_4c

    .line 2461
    :cond_8b
    move-object/from16 v9, p2

    .line 2462
    .line 2463
    move-object/from16 v7, p3

    .line 2464
    .line 2465
    move/from16 v3, v36

    .line 2466
    .line 2467
    :cond_8c
    :goto_4c
    move/from16 v1, v26

    .line 2468
    .line 2469
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 2470
    .line 2471
    if-eqz v2, :cond_8d

    .line 2472
    .line 2473
    invoke-virtual {v15}, Landroid/view/animation/Animation;->hasRoundedCornerRadius()Z

    .line 2474
    .line 2475
    .line 2476
    move-result v2

    .line 2477
    if-eqz v2, :cond_8d

    .line 2478
    .line 2479
    invoke-virtual {v15}, Landroid/view/animation/Animation;->getRoundedCornerRadius()F

    .line 2480
    .line 2481
    .line 2482
    move-result v2

    .line 2483
    goto :goto_4e

    .line 2484
    :cond_8d
    invoke-virtual {v15}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    .line 2485
    .line 2486
    .line 2487
    move-result v2

    .line 2488
    if-eqz v2, :cond_8f

    .line 2489
    .line 2490
    if-eqz v28, :cond_8f

    .line 2491
    .line 2492
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2493
    .line 2494
    .line 2495
    move-result-object v2

    .line 2496
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 2497
    .line 2498
    move-object/from16 v4, v32

    .line 2499
    .line 2500
    invoke-virtual {v4, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 2501
    .line 2502
    .line 2503
    move-result-object v2

    .line 2504
    if-nez v2, :cond_8e

    .line 2505
    .line 2506
    goto :goto_4d

    .line 2507
    :cond_8e
    invoke-static {v2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    .line 2508
    .line 2509
    .line 2510
    move-result v2

    .line 2511
    goto :goto_4e

    .line 2512
    :cond_8f
    :goto_4d
    const/4 v2, 0x0

    .line 2513
    :goto_4e
    move v8, v2

    .line 2514
    invoke-static {v9, v6, v15, v1}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I

    .line 2515
    .line 2516
    .line 2517
    move-result v26

    .line 2518
    if-eqz v28, :cond_90

    .line 2519
    .line 2520
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION:Z

    .line 2521
    .line 2522
    if-eqz v1, :cond_92

    .line 2523
    .line 2524
    invoke-virtual {v15}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    .line 2525
    .line 2526
    .line 2527
    move-result v1

    .line 2528
    if-nez v1, :cond_92

    .line 2529
    .line 2530
    :cond_90
    invoke-virtual {v15}, Landroid/view/animation/Animation;->hasExtension()Z

    .line 2531
    .line 2532
    .line 2533
    move-result v1

    .line 2534
    if-eqz v1, :cond_92

    .line 2535
    .line 2536
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 2537
    .line 2538
    .line 2539
    move-result v1

    .line 2540
    if-nez v1, :cond_91

    .line 2541
    .line 2542
    move-object/from16 v11, p4

    .line 2543
    .line 2544
    move-object/from16 v1, v38

    .line 2545
    .line 2546
    invoke-static {v6, v15, v7, v11}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 2547
    .line 2548
    .line 2549
    move-object/from16 v5, v30

    .line 2550
    .line 2551
    goto :goto_4f

    .line 2552
    :cond_91
    move-object/from16 v11, p4

    .line 2553
    .line 2554
    move-object/from16 v1, v38

    .line 2555
    .line 2556
    new-instance v2, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda2;

    .line 2557
    .line 2558
    invoke-direct {v2, v6, v15, v11}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda2;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    .line 2559
    .line 2560
    .line 2561
    move-object/from16 v5, v30

    .line 2562
    .line 2563
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2564
    .line 2565
    .line 2566
    goto :goto_4f

    .line 2567
    :cond_92
    move-object/from16 v11, p4

    .line 2568
    .line 2569
    move-object/from16 v5, v30

    .line 2570
    .line 2571
    move-object/from16 v1, v38

    .line 2572
    .line 2573
    :goto_4f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 2574
    .line 2575
    if-eqz v2, :cond_93

    .line 2576
    .line 2577
    if-eqz v29, :cond_93

    .line 2578
    .line 2579
    const/4 v1, 0x0

    .line 2580
    move-object/from16 v22, v1

    .line 2581
    .line 2582
    goto :goto_52

    .line 2583
    :cond_93
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 2584
    .line 2585
    .line 2586
    move-result v2

    .line 2587
    if-eqz v2, :cond_95

    .line 2588
    .line 2589
    new-instance v2, Landroid/graphics/Rect;

    .line 2590
    .line 2591
    iget v3, v1, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    .line 2592
    .line 2593
    if-nez v3, :cond_94

    .line 2594
    .line 2595
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2596
    .line 2597
    .line 2598
    move-result-object v1

    .line 2599
    goto :goto_50

    .line 2600
    :cond_94
    new-instance v3, Landroid/graphics/Rect;

    .line 2601
    .line 2602
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2603
    .line 2604
    .line 2605
    move-result-object v4

    .line 2606
    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2607
    .line 2608
    .line 2609
    iget-object v4, v1, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastDisplayBounds:Landroid/graphics/Rect;

    .line 2610
    .line 2611
    iget v1, v1, Lcom/android/wm/shell/transition/CounterRotatorHelper;->mLastRotationDelta:I

    .line 2612
    .line 2613
    invoke-static {v3, v4, v1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 2614
    .line 2615
    .line 2616
    move-object v1, v3

    .line 2617
    :goto_50
    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2618
    .line 2619
    .line 2620
    goto :goto_51

    .line 2621
    :cond_95
    new-instance v2, Landroid/graphics/Rect;

    .line 2622
    .line 2623
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2624
    .line 2625
    .line 2626
    move-result-object v1

    .line 2627
    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2628
    .line 2629
    .line 2630
    :goto_51
    const/4 v1, 0x0

    .line 2631
    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2632
    .line 2633
    .line 2634
    move-object/from16 v22, v2

    .line 2635
    .line 2636
    :goto_52
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    .line 2637
    .line 2638
    .line 2639
    move-result v1

    .line 2640
    const/4 v2, 0x0

    .line 2641
    cmpl-float v1, v1, v2

    .line 2642
    .line 2643
    if-lez v1, :cond_97

    .line 2644
    .line 2645
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    .line 2646
    .line 2647
    .line 2648
    move-result v1

    .line 2649
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2650
    .line 2651
    cmpg-float v1, v1, v2

    .line 2652
    .line 2653
    if-gez v1, :cond_97

    .line 2654
    .line 2655
    invoke-virtual {v15}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    .line 2656
    .line 2657
    .line 2658
    move-result v1

    .line 2659
    if-nez v1, :cond_97

    .line 2660
    .line 2661
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    .line 2662
    .line 2663
    .line 2664
    move-result v23

    .line 2665
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 2666
    .line 2667
    .line 2668
    move-result-object v1

    .line 2669
    if-eqz v28, :cond_96

    .line 2670
    .line 2671
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2672
    .line 2673
    .line 2674
    move-result-object v2

    .line 2675
    if-eqz v2, :cond_96

    .line 2676
    .line 2677
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2678
    .line 2679
    .line 2680
    move-result-object v1

    .line 2681
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 2682
    .line 2683
    :cond_96
    move-object/from16 v20, v1

    .line 2684
    .line 2685
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2686
    .line 2687
    .line 2688
    move-result-object v16

    .line 2689
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2690
    .line 2691
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2692
    .line 2693
    move-object/from16 v4, v34

    .line 2694
    .line 2695
    move-object/from16 v14, v35

    .line 2696
    .line 2697
    move-object/from16 v3, v35

    .line 2698
    .line 2699
    move-object/from16 v17, v4

    .line 2700
    .line 2701
    move-object/from16 v18, v1

    .line 2702
    .line 2703
    move-object/from16 v19, v2

    .line 2704
    .line 2705
    move/from16 v21, v8

    .line 2706
    .line 2707
    invoke-static/range {v14 .. v23}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;F)V

    .line 2708
    .line 2709
    .line 2710
    goto :goto_53

    .line 2711
    :cond_97
    move-object/from16 v4, v34

    .line 2712
    .line 2713
    move-object/from16 v3, v35

    .line 2714
    .line 2715
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2716
    .line 2717
    .line 2718
    move-result-object v16

    .line 2719
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2720
    .line 2721
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2722
    .line 2723
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 2724
    .line 2725
    .line 2726
    move-result-object v20

    .line 2727
    move-object v14, v3

    .line 2728
    move-object/from16 v17, v4

    .line 2729
    .line 2730
    move-object/from16 v18, v1

    .line 2731
    .line 2732
    move-object/from16 v19, v2

    .line 2733
    .line 2734
    move/from16 v21, v8

    .line 2735
    .line 2736
    invoke-static/range {v14 .. v22}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 2737
    .line 2738
    .line 2739
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 2740
    .line 2741
    .line 2742
    move-result-object v1

    .line 2743
    if-eqz v1, :cond_98

    .line 2744
    .line 2745
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 2746
    .line 2747
    .line 2748
    move-result-object v14

    .line 2749
    const/4 v15, 0x4

    .line 2750
    move-object/from16 v1, p0

    .line 2751
    .line 2752
    move-object v2, v3

    .line 2753
    move-object/from16 v35, v3

    .line 2754
    .line 2755
    move-object v3, v4

    .line 2756
    move/from16 v23, v13

    .line 2757
    .line 2758
    move-object v13, v4

    .line 2759
    move-object v4, v6

    .line 2760
    move-object/from16 v28, v5

    .line 2761
    .line 2762
    move-object v5, v14

    .line 2763
    move-object v14, v6

    .line 2764
    move v6, v8

    .line 2765
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachThumbnail(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V

    .line 2766
    .line 2767
    .line 2768
    move v3, v15

    .line 2769
    goto :goto_54

    .line 2770
    :cond_98
    move-object/from16 v35, v3

    .line 2771
    .line 2772
    move-object/from16 v28, v5

    .line 2773
    .line 2774
    move-object v14, v6

    .line 2775
    move/from16 v23, v13

    .line 2776
    .line 2777
    move-object v13, v4

    .line 2778
    const/4 v1, 0x4

    .line 2779
    move v3, v1

    .line 2780
    :goto_54
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_WITH_DIM:Z

    .line 2781
    .line 2782
    if-eqz v1, :cond_9d

    .line 2783
    .line 2784
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->isTransitionWithDim()Z

    .line 2785
    .line 2786
    .line 2787
    move-result v1

    .line 2788
    if-eqz v1, :cond_9d

    .line 2789
    .line 2790
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDimTransitionProvider:Lcom/android/wm/shell/transition/DimTransitionProvider;

    .line 2791
    .line 2792
    iget v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 2793
    .line 2794
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2795
    .line 2796
    .line 2797
    if-eqz v12, :cond_9a

    .line 2798
    .line 2799
    const/4 v1, 0x0

    .line 2800
    :cond_99
    :goto_55
    move-object v15, v1

    .line 2801
    goto :goto_56

    .line 2802
    :cond_9a
    const v1, 0x10a00af

    .line 2803
    .line 2804
    .line 2805
    invoke-virtual {v10, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 2806
    .line 2807
    .line 2808
    move-result-object v1

    .line 2809
    if-eqz v1, :cond_99

    .line 2810
    .line 2811
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2812
    .line 2813
    .line 2814
    goto :goto_55

    .line 2815
    :goto_56
    if-eqz v15, :cond_9d

    .line 2816
    .line 2817
    invoke-static {v14, v9}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 2818
    .line 2819
    .line 2820
    move-result v1

    .line 2821
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDimTransitionProvider:Lcom/android/wm/shell/transition/DimTransitionProvider;

    .line 2822
    .line 2823
    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 2824
    .line 2825
    .line 2826
    move-result-object v1

    .line 2827
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 2828
    .line 2829
    .line 2830
    move-result-object v1

    .line 2831
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2832
    .line 2833
    .line 2834
    move-result-object v4

    .line 2835
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2836
    .line 2837
    .line 2838
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 2839
    .line 2840
    invoke-static {v2, v1, v4, v7, v11}, Lcom/android/wm/shell/transition/DimTransitionProvider;->attachDimTransitionSurface(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 2841
    .line 2842
    .line 2843
    move-result-object v1

    .line 2844
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 2845
    .line 2846
    if-eqz v2, :cond_9b

    .line 2847
    .line 2848
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2849
    .line 2850
    .line 2851
    move-result-object v2

    .line 2852
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 2853
    .line 2854
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 2855
    .line 2856
    .line 2857
    move-result-object v2

    .line 2858
    const v5, -0x1fb15203

    .line 2859
    .line 2860
    .line 2861
    const-string v6, "attach dim transition, change=%s"

    .line 2862
    .line 2863
    const/4 v8, 0x0

    .line 2864
    invoke-static {v4, v5, v8, v6, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2865
    .line 2866
    .line 2867
    goto :goto_57

    .line 2868
    :cond_9b
    const/4 v8, 0x0

    .line 2869
    :goto_57
    new-instance v2, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;

    .line 2870
    .line 2871
    invoke-direct {v2, v0, v1, v13, v8}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;I)V

    .line 2872
    .line 2873
    .line 2874
    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2875
    .line 2876
    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2877
    .line 2878
    const/16 v20, 0x0

    .line 2879
    .line 2880
    const/16 v21, 0x0

    .line 2881
    .line 2882
    const/16 v22, 0x0

    .line 2883
    .line 2884
    move-object/from16 v14, v35

    .line 2885
    .line 2886
    move-object/from16 v16, v1

    .line 2887
    .line 2888
    move-object/from16 v17, v2

    .line 2889
    .line 2890
    move-object/from16 v18, v4

    .line 2891
    .line 2892
    move-object/from16 v19, v5

    .line 2893
    .line 2894
    invoke-static/range {v14 .. v22}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    .line 2895
    .line 2896
    .line 2897
    goto :goto_58

    .line 2898
    :cond_9c
    move-object/from16 v9, p2

    .line 2899
    .line 2900
    move-object/from16 v7, p3

    .line 2901
    .line 2902
    move-object/from16 v11, p4

    .line 2903
    .line 2904
    move/from16 v23, v13

    .line 2905
    .line 2906
    move-object/from16 v28, v30

    .line 2907
    .line 2908
    move-object/from16 v13, v34

    .line 2909
    .line 2910
    const/4 v3, 0x4

    .line 2911
    :cond_9d
    :goto_58
    move-object v1, v7

    .line 2912
    move-object v8, v9

    .line 2913
    move-object v2, v11

    .line 2914
    :goto_59
    move/from16 v16, v33

    .line 2915
    .line 2916
    move/from16 v39, v3

    .line 2917
    .line 2918
    move-object v3, v1

    .line 2919
    move/from16 v1, v39

    .line 2920
    .line 2921
    :goto_5a
    add-int/lit8 v4, v31, -0x1

    .line 2922
    .line 2923
    const/4 v5, 0x2

    .line 2924
    move-object v10, v7

    .line 2925
    move-object v14, v13

    .line 2926
    move-object/from16 v6, v28

    .line 2927
    .line 2928
    move-object/from16 v15, v35

    .line 2929
    .line 2930
    move/from16 v13, p5

    .line 2931
    .line 2932
    move v7, v4

    .line 2933
    move/from16 v4, v23

    .line 2934
    .line 2935
    goto/16 :goto_13

    .line 2936
    .line 2937
    :cond_9e
    move-object/from16 v28, v6

    .line 2938
    .line 2939
    move-object v7, v10

    .line 2940
    move-object v1, v11

    .line 2941
    move-object v13, v14

    .line 2942
    move-object/from16 v35, v15

    .line 2943
    .line 2944
    move-object v10, v3

    .line 2945
    if-eqz v26, :cond_9f

    .line 2946
    .line 2947
    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 2948
    .line 2949
    .line 2950
    move-result-object v3

    .line 2951
    const/4 v4, 0x3

    .line 2952
    new-array v4, v4, [F

    .line 2953
    .line 2954
    invoke-virtual {v3}, Landroid/graphics/Color;->red()F

    .line 2955
    .line 2956
    .line 2957
    move-result v5

    .line 2958
    const/4 v6, 0x0

    .line 2959
    aput v5, v4, v6

    .line 2960
    .line 2961
    invoke-virtual {v3}, Landroid/graphics/Color;->green()F

    .line 2962
    .line 2963
    .line 2964
    move-result v5

    .line 2965
    const/4 v11, 0x1

    .line 2966
    aput v5, v4, v11

    .line 2967
    .line 2968
    invoke-virtual {v3}, Landroid/graphics/Color;->blue()F

    .line 2969
    .line 2970
    .line 2971
    move-result v3

    .line 2972
    const/4 v5, 0x2

    .line 2973
    aput v3, v4, v5

    .line 2974
    .line 2975
    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 2976
    .line 2977
    .line 2978
    move-result v3

    .line 2979
    if-ge v6, v3, :cond_9f

    .line 2980
    .line 2981
    invoke-virtual {v8, v6}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 2982
    .line 2983
    .line 2984
    move-result-object v3

    .line 2985
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    .line 2986
    .line 2987
    .line 2988
    move-result v3

    .line 2989
    new-instance v5, Landroid/view/SurfaceControl$Builder;

    .line 2990
    .line 2991
    invoke-direct {v5}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 2992
    .line 2993
    .line 2994
    const-string v11, "animation-background"

    .line 2995
    .line 2996
    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 2997
    .line 2998
    .line 2999
    move-result-object v5

    .line 3000
    const-string v11, "DefaultTransitionHandler"

    .line 3001
    .line 3002
    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 3003
    .line 3004
    .line 3005
    move-result-object v5

    .line 3006
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 3007
    .line 3008
    .line 3009
    move-result-object v5

    .line 3010
    iget-object v11, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 3011
    .line 3012
    iget-object v11, v11, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mLeashes:Landroid/util/SparseArray;

    .line 3013
    .line 3014
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 3015
    .line 3016
    .line 3017
    move-result-object v3

    .line 3018
    check-cast v3, Landroid/view/SurfaceControl;

    .line 3019
    .line 3020
    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 3021
    .line 3022
    .line 3023
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 3024
    .line 3025
    .line 3026
    move-result-object v3

    .line 3027
    invoke-virtual {v10, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 3028
    .line 3029
    .line 3030
    move-result-object v5

    .line 3031
    const/4 v11, -0x1

    .line 3032
    invoke-virtual {v5, v3, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 3033
    .line 3034
    .line 3035
    move-result-object v5

    .line 3036
    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3037
    .line 3038
    .line 3039
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3040
    .line 3041
    .line 3042
    add-int/lit8 v6, v6, 0x1

    .line 3043
    .line 3044
    goto :goto_5b

    .line 3045
    :cond_9f
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    .line 3046
    .line 3047
    .line 3048
    move-result v3

    .line 3049
    if-lez v3, :cond_a0

    .line 3050
    .line 3051
    const/4 v3, 0x1

    .line 3052
    invoke-virtual {v10, v3}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 3053
    .line 3054
    .line 3055
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 3056
    .line 3057
    .line 3058
    move-result-object v3

    .line 3059
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 3060
    .line 3061
    .line 3062
    move-result v4

    .line 3063
    if-eqz v4, :cond_a0

    .line 3064
    .line 3065
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3066
    .line 3067
    .line 3068
    move-result-object v4

    .line 3069
    check-cast v4, Ljava/util/function/Consumer;

    .line 3070
    .line 3071
    invoke-interface {v4, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3072
    .line 3073
    .line 3074
    goto :goto_5c

    .line 3075
    :cond_a0
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 3076
    .line 3077
    .line 3078
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_INFORM_SCREEN_ROTATION_ANIMATION_STARTED_FOR_CAPTURED_BLUR:Z

    .line 3079
    .line 3080
    if-eqz v3, :cond_a3

    .line 3081
    .line 3082
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 3083
    .line 3084
    .line 3085
    move-result v3

    .line 3086
    const/4 v4, 0x6

    .line 3087
    if-ne v3, v4, :cond_a3

    .line 3088
    .line 3089
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mCapturedBlurHelper:Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;

    .line 3090
    .line 3091
    if-eqz v3, :cond_a3

    .line 3092
    .line 3093
    const/4 v3, 0x1

    .line 3094
    invoke-static {v9, v3}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 3095
    .line 3096
    .line 3097
    move-result v3

    .line 3098
    :goto_5d
    if-ltz v3, :cond_a3

    .line 3099
    .line 3100
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 3101
    .line 3102
    .line 3103
    move-result-object v4

    .line 3104
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3105
    .line 3106
    .line 3107
    move-result-object v4

    .line 3108
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 3109
    .line 3110
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->isRotationAnimation()Z

    .line 3111
    .line 3112
    .line 3113
    move-result v4

    .line 3114
    if-eqz v4, :cond_a2

    .line 3115
    .line 3116
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mCapturedBlurHelper:Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;

    .line 3117
    .line 3118
    iget-wide v4, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMaxRotationAnimationDuration:J

    .line 3119
    .line 3120
    iget-object v6, v3, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;->mBrThread:Ljava/lang/Thread;

    .line 3121
    .line 3122
    if-eqz v6, :cond_a1

    .line 3123
    .line 3124
    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    .line 3125
    .line 3126
    .line 3127
    move-result v6

    .line 3128
    if-nez v6, :cond_a3

    .line 3129
    .line 3130
    :cond_a1
    new-instance v6, Ljava/lang/Thread;

    .line 3131
    .line 3132
    new-instance v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper$$ExternalSyntheticLambda0;

    .line 3133
    .line 3134
    invoke-direct {v7, v3, v4, v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;J)V

    .line 3135
    .line 3136
    .line 3137
    const-string v4, "ScreenRotationBroadcast"

    .line 3138
    .line 3139
    invoke-direct {v6, v7, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3140
    .line 3141
    .line 3142
    iput-object v6, v3, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;->mBrThread:Ljava/lang/Thread;

    .line 3143
    .line 3144
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 3145
    .line 3146
    .line 3147
    goto :goto_5e

    .line 3148
    :cond_a2
    add-int/lit8 v3, v3, -0x1

    .line 3149
    .line 3150
    goto :goto_5d

    .line 3151
    :cond_a3
    :goto_5e
    new-instance v3, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;

    .line 3152
    .line 3153
    const/4 v4, 0x2

    .line 3154
    move-object/from16 v5, v35

    .line 3155
    .line 3156
    invoke-direct {v3, v5, v4}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 3157
    .line 3158
    .line 3159
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 3160
    .line 3161
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 3162
    .line 3163
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3164
    .line 3165
    .line 3166
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    .line 3167
    .line 3168
    .line 3169
    invoke-static {}, Landroid/window/TransitionMetrics;->getInstance()Landroid/window/TransitionMetrics;

    .line 3170
    .line 3171
    .line 3172
    move-result-object v0

    .line 3173
    move-object/from16 v1, p1

    .line 3174
    .line 3175
    invoke-virtual {v0, v1}, Landroid/window/TransitionMetrics;->reportAnimationStart(Landroid/os/IBinder;)V

    .line 3176
    .line 3177
    .line 3178
    invoke-virtual {v13}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;->run()V

    .line 3179
    .line 3180
    .line 3181
    goto :goto_60

    .line 3182
    :cond_a4
    move-object v1, v8

    .line 3183
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3184
    .line 3185
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3186
    .line 3187
    const-string v3, "Got a duplicate startAnimation call for "

    .line 3188
    .line 3189
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3190
    .line 3191
    .line 3192
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3193
    .line 3194
    .line 3195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3196
    .line 3197
    .line 3198
    move-result-object v1

    .line 3199
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3200
    .line 3201
    .line 3202
    throw v0

    .line 3203
    :cond_a5
    :goto_5f
    move-object v7, v10

    .line 3204
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 3205
    .line 3206
    .line 3207
    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 3208
    .line 3209
    .line 3210
    const/4 v0, 0x0

    .line 3211
    invoke-interface {v5, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 3212
    .line 3213
    .line 3214
    :goto_60
    const/4 v0, 0x1

    .line 3215
    return v0
.end method

.method public final startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-static/range {p2 .. p3}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    new-instance v10, Lcom/android/wm/shell/transition/ScreenRotationAnimation;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 11
    .line 12
    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 13
    .line 14
    move-object/from16 v11, p3

    .line 15
    .line 16
    invoke-virtual {v11, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    move-object v2, v10

    .line 25
    move-object/from16 v6, p1

    .line 26
    .line 27
    move-object/from16 v7, p2

    .line 28
    .line 29
    move/from16 v9, p4

    .line 30
    .line 31
    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;-><init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/TransactionPool;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V

    .line 32
    .line 33
    .line 34
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_RECENTS_TRANSITION_WITH_DISPLAY_CHANGE:Z

    .line 35
    .line 36
    const/4 v8, 0x2

    .line 37
    const/4 v2, 0x3

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v12, 0x1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getOverrideDisplayChangeBackColor()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v3, -0x1

    .line 47
    if-eq v1, v3, :cond_1

    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getOverrideDisplayChangeBackColor()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget-object v4, v10, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 60
    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    new-array v5, v2, [F

    .line 64
    .line 65
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    int-to-float v6, v6

    .line 70
    const/high16 v7, 0x437f0000    # 255.0f

    .line 71
    .line 72
    div-float/2addr v6, v7

    .line 73
    aput v6, v5, v9

    .line 74
    .line 75
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    int-to-float v6, v6

    .line 80
    div-float/2addr v6, v7

    .line 81
    aput v6, v5, v12

    .line 82
    .line 83
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    int-to-float v3, v3

    .line 88
    div-float/2addr v3, v7

    .line 89
    aput v3, v5, v8

    .line 90
    .line 91
    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 95
    .line 96
    .line 97
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .line 101
    .line 102
    new-instance v13, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .line 106
    .line 107
    new-instance v14, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;

    .line 108
    .line 109
    move-object v2, v14

    .line 110
    move-object v3, v1

    .line 111
    move-object v4, v10

    .line 112
    move-object/from16 v5, p5

    .line 113
    .line 114
    move-object v6, v13

    .line 115
    move-object/from16 v7, p6

    .line 116
    .line 117
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/ScreenRotationAnimation;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda5;)V

    .line 118
    .line 119
    .line 120
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 121
    .line 122
    if-eqz v2, :cond_5

    .line 123
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    const/high16 v3, 0x10000000

    .line 129
    .line 130
    and-int/2addr v2, v3

    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    const/high16 v3, 0x20000000

    .line 138
    .line 139
    and-int/2addr v2, v3

    .line 140
    if-eqz v2, :cond_2

    .line 141
    .line 142
    move v2, v12

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    move v2, v9

    .line 145
    :goto_0
    sget v3, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->$r8$clinit:I

    .line 146
    .line 147
    new-array v3, v8, [I

    .line 148
    .line 149
    if-eqz v2, :cond_3

    .line 150
    .line 151
    const v4, 0x7f0101fe

    .line 152
    .line 153
    .line 154
    aput v4, v3, v9

    .line 155
    .line 156
    const v4, 0x7f0101fd

    .line 157
    .line 158
    .line 159
    aput v4, v3, v12

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    const v4, 0x7f0101fb

    .line 163
    .line 164
    .line 165
    aput v4, v3, v9

    .line 166
    .line 167
    const v4, 0x7f0101fa

    .line 168
    .line 169
    .line 170
    aput v4, v3, v12

    .line 171
    .line 172
    :goto_1
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 173
    .line 174
    if-eqz v4, :cond_4

    .line 175
    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string/jumbo v5, "selectDisplayChangeAnimationResID: fastAnimation="

    .line 179
    .line 180
    .line 181
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const-string v4, "ChangeTransitionProvider"

    .line 192
    .line 193
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    :cond_4
    iget v5, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 197
    .line 198
    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 199
    .line 200
    aget v7, v3, v9

    .line 201
    .line 202
    aget v8, v3, v12

    .line 203
    .line 204
    move-object v2, v10

    .line 205
    move-object v3, v1

    .line 206
    move-object v4, v14

    .line 207
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->buildAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;FLcom/android/wm/shell/common/ShellExecutor;II)Z

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_DISPLAY_CHANGE:Z

    .line 212
    .line 213
    if-eqz v2, :cond_7

    .line 214
    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    if-eqz v2, :cond_6

    .line 220
    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    const/16 v3, 0xf

    .line 230
    .line 231
    if-ne v2, v3, :cond_6

    .line 232
    .line 233
    move v9, v12

    .line 234
    :cond_6
    if-eqz v9, :cond_7

    .line 235
    .line 236
    iget v5, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 237
    .line 238
    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 239
    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    move-object v2, v10

    .line 257
    move-object v3, v1

    .line 258
    move-object v4, v14

    .line 259
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->buildAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;FLcom/android/wm/shell/common/ShellExecutor;II)Z

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_7
    iget v5, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    .line 264
    .line 265
    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 266
    .line 267
    const/4 v7, -0x1

    .line 268
    const/4 v8, -0x1

    .line 269
    move-object v2, v10

    .line 270
    move-object v3, v1

    .line 271
    move-object v4, v14

    .line 272
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->buildAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;FLcom/android/wm/shell/common/ShellExecutor;II)Z

    .line 273
    .line 274
    .line 275
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    sub-int/2addr v2, v12

    .line 280
    :goto_3
    if-ltz v2, :cond_8

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Landroid/animation/Animator;

    .line 287
    .line 288
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-object/from16 v4, p5

    .line 292
    .line 293
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    add-int/lit8 v2, v2, -0x1

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_8
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_INFORM_SCREEN_ROTATION_ANIMATION_STARTED_FOR_CAPTURED_BLUR:Z

    .line 300
    .line 301
    if-eqz v2, :cond_a

    .line 302
    .line 303
    const-wide/16 v2, 0x0

    .line 304
    .line 305
    iput-wide v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMaxRotationAnimationDuration:J

    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    sub-int/2addr v2, v12

    .line 312
    :goto_4
    if-ltz v2, :cond_9

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    check-cast v3, Landroid/animation/Animator;

    .line 319
    .line 320
    iget-wide v4, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMaxRotationAnimationDuration:J

    .line 321
    .line 322
    invoke-virtual {v3}, Landroid/animation/Animator;->getDuration()J

    .line 323
    .line 324
    .line 325
    move-result-wide v6

    .line 326
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 327
    .line 328
    .line 329
    move-result-wide v3

    .line 330
    iput-wide v3, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMaxRotationAnimationDuration:J

    .line 331
    .line 332
    add-int/lit8 v2, v2, -0x1

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_9
    move-object/from16 v2, p2

    .line 336
    .line 337
    invoke-virtual {v2, v12}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(Z)V

    .line 338
    .line 339
    .line 340
    :cond_a
    return-void
.end method
