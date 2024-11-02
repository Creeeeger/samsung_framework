.class public final Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;


# instance fields
.field public mDimValue1:F

.field public mDimValue2:F

.field public final mDisplayId:I

.field public mEndImeTop:I

.field public mHasImeFocus:Z

.field public mImeShown:Z

.field public mLastYOffset:I

.field public mStartImeTop:I

.field public mTargetYOffset:I

.field public mTaskBoundsAdjusted:Z

.field public mYOffsetForIme:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    return-void
.end method


# virtual methods
.method public final adjustSurfaceLayoutForIme(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    .line 2
    .line 3
    const v1, 0x3a83126f    # 0.001f

    .line 4
    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-gtz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    .line 13
    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v0, v2

    .line 22
    :goto_1
    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 23
    .line 24
    if-eqz v4, :cond_3

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    iget-object v5, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    iget-object v5, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v6, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 38
    .line 39
    invoke-virtual {v5, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 40
    .line 41
    .line 42
    iget-object v5, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    int-to-float v6, v6

    .line 47
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    int-to-float v5, v5

    .line 50
    invoke-virtual {p1, p2, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-virtual {v4, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iget-object v5, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    iget v6, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 71
    .line 72
    add-int/2addr v5, v6

    .line 73
    invoke-virtual {p1, p3, p2, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 74
    .line 75
    .line 76
    iget-object p2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {v4, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds2(Landroid/graphics/Rect;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 82
    .line 83
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 84
    .line 85
    invoke-virtual {p2, v3, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 86
    .line 87
    .line 88
    iget-object p2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 89
    .line 90
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 91
    .line 92
    int-to-float p3, p3

    .line 93
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 94
    .line 95
    int-to-float p2, p2

    .line 96
    invoke-virtual {p1, p4, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 97
    .line 98
    .line 99
    move p2, v2

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    move p2, v3

    .line 102
    :goto_2
    if-eqz v0, :cond_6

    .line 103
    .line 104
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    .line 105
    .line 106
    invoke-virtual {p1, p5, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    .line 111
    .line 112
    cmpl-float p3, p3, v1

    .line 113
    .line 114
    if-lez p3, :cond_4

    .line 115
    .line 116
    move p3, v2

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move p3, v3

    .line 119
    :goto_3
    invoke-virtual {p2, p5, p3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 120
    .line 121
    .line 122
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    .line 123
    .line 124
    invoke-virtual {p1, p6, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    .line 129
    .line 130
    cmpl-float p0, p0, v1

    .line 131
    .line 132
    if-lez p0, :cond_5

    .line 133
    .line 134
    move v3, v2

    .line 135
    :cond_5
    invoke-virtual {p1, p6, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    move v2, p2

    .line 140
    :goto_4
    return v2
.end method

.method public final getMinTopStackBottom()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 30
    .line 31
    return p0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 39
    .line 40
    return p0

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 48
    .line 49
    return p0
.end method

.method public final onImeControlTargetChanged(IZ)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_4

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 9
    .line 10
    if-eqz p1, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 17
    .line 18
    const-string p2, "onImeControlTargetChanged"

    .line 19
    .line 20
    invoke-virtual {p0, p2, p1, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(Ljava/lang/String;ZZ)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 24
    .line 25
    move-object p2, p1

    .line 26
    check-cast p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 27
    .line 28
    iget v0, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 29
    .line 30
    iget-object v1, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 31
    .line 32
    iget-object v2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    move-object v3, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v3, v2

    .line 39
    :goto_0
    if-nez v0, :cond_2

    .line 40
    .line 41
    move-object v1, v2

    .line 42
    :cond_2
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getBottomStages()Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->applyLayoutOffsetTargetForMultiSplit(Landroid/window/WindowContainerTransaction;ILjava/util/ArrayList;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object v2, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    .line 70
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 71
    .line 72
    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-virtual {v0, v3, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 75
    .line 76
    .line 77
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 78
    .line 79
    invoke-virtual {v0, v2, v4, v4}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 80
    .line 81
    .line 82
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 85
    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 87
    .line 88
    .line 89
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v4, v4}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 92
    .line 93
    .line 94
    :goto_1
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 97
    .line 98
    .line 99
    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public final onImeEndPositioning(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_3

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-eqz p1, :cond_3

    .line 17
    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    .line 23
    .line 24
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    .line 25
    .line 26
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 27
    .line 28
    int-to-float p1, p1

    .line 29
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    .line 30
    .line 31
    int-to-float p2, p2

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    .line 34
    invoke-static {p2, p1, v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    float-to-int p1, p1

    .line 39
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 44
    .line 45
    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_1
    return-void
.end method

.method public final onImePositionChanged(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    int-to-float p1, p2

    .line 20
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    .line 21
    .line 22
    int-to-float v0, p2

    .line 23
    sub-float/2addr p1, v0

    .line 24
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    .line 25
    .line 26
    sub-int/2addr v0, p2

    .line 27
    int-to-float p2, v0

    .line 28
    div-float/2addr p1, p2

    .line 29
    const/4 p2, 0x0

    .line 30
    mul-float v0, p1, p2

    .line 31
    .line 32
    add-float/2addr v0, p2

    .line 33
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    .line 34
    .line 35
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    .line 36
    .line 37
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 38
    .line 39
    int-to-float p2, p2

    .line 40
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    .line 41
    .line 42
    int-to-float v0, v0

    .line 43
    invoke-static {v0, p2, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    float-to-int p1, p1

    .line 48
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 53
    .line 54
    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    return-void
.end method

.method public final onImeStartPositioning(IIIZZ)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDisplayId:I

    .line 3
    .line 4
    if-ne p1, v1, :cond_1b

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 7
    .line 8
    iget-boolean v2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_14

    .line 13
    .line 14
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 15
    .line 16
    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 17
    .line 18
    iget-object v4, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v2, v4

    .line 27
    check-cast v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemStagePosition(Landroid/window/WindowContainerToken;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v3, v1}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v2, v4

    .line 39
    check-cast v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v2, -0x1

    .line 54
    if-eq v1, v2, :cond_3

    .line 55
    .line 56
    :goto_1
    move v2, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move v2, v0

    .line 59
    :goto_2
    iput-boolean v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 60
    .line 61
    const-string v5, "SplitLayout"

    .line 62
    .line 63
    const-string v6, "onImeStartPositioning"

    .line 64
    .line 65
    if-nez v2, :cond_7

    .line 66
    .line 67
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    move v2, v3

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    move v2, v0

    .line 74
    :goto_3
    if-eqz v2, :cond_5

    .line 75
    .line 76
    sget-boolean v2, Lcom/android/wm/shell/common/split/SplitLayout;->DEBUG:Z

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v7, "onImeStartPositioning: start animation, showing="

    .line 81
    .line 82
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v7, ", shownTop="

    .line 89
    .line 90
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v7, ", reason=AdjustedByIme"

    .line 97
    .line 98
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    if-nez p4, :cond_6

    .line 110
    .line 111
    iget-object p0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 112
    .line 113
    invoke-virtual {p0, v6, v3, v0}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setInteractive(Ljava/lang/String;ZZ)V

    .line 114
    .line 115
    .line 116
    :cond_6
    return v0

    .line 117
    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    .line 118
    .line 119
    move v2, p2

    .line 120
    goto :goto_5

    .line 121
    :cond_8
    move v2, p3

    .line 122
    :goto_5
    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    .line 123
    .line 124
    if-eqz p4, :cond_9

    .line 125
    .line 126
    move p2, p3

    .line 127
    :cond_9
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    .line 128
    .line 129
    iput-boolean p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 130
    .line 131
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 132
    .line 133
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 134
    .line 135
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 136
    .line 137
    iget-object v2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 138
    .line 139
    if-eqz p2, :cond_a

    .line 140
    .line 141
    and-int/lit8 p2, v1, 0x40

    .line 142
    .line 143
    if-eqz p2, :cond_b

    .line 144
    .line 145
    if-nez p5, :cond_b

    .line 146
    .line 147
    if-eqz p4, :cond_b

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_a
    if-ne v1, v3, :cond_b

    .line 151
    .line 152
    if-nez p5, :cond_b

    .line 153
    .line 154
    invoke-static {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-nez p2, :cond_b

    .line 159
    .line 160
    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 161
    .line 162
    if-eqz p2, :cond_b

    .line 163
    .line 164
    :goto_6
    move p2, v3

    .line 165
    goto :goto_7

    .line 166
    :cond_b
    move p2, v0

    .line 167
    :goto_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 168
    .line 169
    .line 170
    move-result p4

    .line 171
    int-to-float p4, p4

    .line 172
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    int-to-float v1, v1

    .line 177
    div-float/2addr p4, v1

    .line 178
    const v1, 0x40038e39

    .line 179
    .line 180
    .line 181
    cmpl-float p4, p4, v1

    .line 182
    .line 183
    if-ltz p4, :cond_c

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getMinTopStackBottom()I

    .line 186
    .line 187
    .line 188
    move-result p4

    .line 189
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 190
    .line 191
    add-int/2addr p4, v1

    .line 192
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    .line 193
    .line 194
    int-to-float v1, v1

    .line 195
    const/high16 v2, 0x43200000    # 160.0f

    .line 196
    .line 197
    div-float/2addr v1, v2

    .line 198
    sub-int/2addr p3, p4

    .line 199
    const/high16 p4, 0x43040000    # 132.0f

    .line 200
    .line 201
    mul-float/2addr v1, p4

    .line 202
    const/high16 p4, 0x3f000000    # 0.5f

    .line 203
    .line 204
    add-float/2addr v1, p4

    .line 205
    float-to-int p4, v1

    .line 206
    if-lt p3, p4, :cond_c

    .line 207
    .line 208
    move p3, v3

    .line 209
    goto :goto_8

    .line 210
    :cond_c
    move p3, v0

    .line 211
    :goto_8
    if-eqz p2, :cond_12

    .line 212
    .line 213
    iget p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mEndImeTop:I

    .line 214
    .line 215
    iget p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mStartImeTop:I

    .line 216
    .line 217
    sub-int/2addr p2, p4

    .line 218
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 223
    .line 224
    iget-object v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 225
    .line 226
    if-eqz p4, :cond_d

    .line 227
    .line 228
    iget-object p4, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 229
    .line 230
    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 231
    .line 232
    .line 233
    move-result p4

    .line 234
    if-eqz p4, :cond_d

    .line 235
    .line 236
    iget-object p4, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 237
    .line 238
    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTopStageBottom()I

    .line 239
    .line 240
    .line 241
    move-result p4

    .line 242
    goto :goto_9

    .line 243
    :cond_d
    iget p4, v1, Landroid/graphics/Rect;->bottom:I

    .line 244
    .line 245
    :goto_9
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->getMinTopStackBottom()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz p3, :cond_e

    .line 250
    .line 251
    sub-int/2addr p4, v2

    .line 252
    goto :goto_a

    .line 253
    :cond_e
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 254
    .line 255
    const p4, 0x3f333333    # 0.7f

    .line 256
    .line 257
    .line 258
    if-eqz p3, :cond_f

    .line 259
    .line 260
    iget-object p3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 261
    .line 262
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 267
    .line 268
    sub-int/2addr v2, p3

    .line 269
    iget-object p3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 270
    .line 271
    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getTopStageBottom()I

    .line 272
    .line 273
    .line 274
    move-result p3

    .line 275
    int-to-float v1, v2

    .line 276
    mul-float/2addr v1, p4

    .line 277
    float-to-int p4, v1

    .line 278
    sub-int p4, p3, p4

    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_f
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 282
    .line 283
    .line 284
    move-result p3

    .line 285
    int-to-float p3, p3

    .line 286
    mul-float/2addr p3, p4

    .line 287
    float-to-int p4, p3

    .line 288
    :goto_a
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 289
    .line 290
    if-nez p3, :cond_11

    .line 291
    .line 292
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    .line 293
    .line 294
    if-eqz p3, :cond_10

    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_10
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    .line 298
    .line 299
    .line 300
    move-result p2

    .line 301
    goto :goto_c

    .line 302
    :cond_11
    :goto_b
    iget-object p3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 303
    .line 304
    invoke-static {p3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerRadius(Landroid/content/Context;)I

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    iget-object v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 309
    .line 310
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 319
    .line 320
    add-int/2addr v1, p3

    .line 321
    sub-int/2addr p2, v1

    .line 322
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    .line 323
    .line 324
    .line 325
    move-result p2

    .line 326
    :goto_c
    neg-int p2, p2

    .line 327
    goto :goto_d

    .line 328
    :cond_12
    move p2, v0

    .line 329
    :goto_d
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    .line 330
    .line 331
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 332
    .line 333
    if-eq p2, p3, :cond_14

    .line 334
    .line 335
    if-eqz p2, :cond_13

    .line 336
    .line 337
    move p3, v3

    .line 338
    goto :goto_e

    .line 339
    :cond_13
    move p3, v0

    .line 340
    :goto_e
    iput-boolean p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTaskBoundsAdjusted:Z

    .line 341
    .line 342
    check-cast v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 343
    .line 344
    invoke-virtual {v4, p2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setLayoutOffsetTargetFromIme(ILcom/android/wm/shell/common/split/SplitLayout;)V

    .line 345
    .line 346
    .line 347
    goto :goto_f

    .line 348
    :cond_14
    iget-boolean p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTaskBoundsAdjusted:Z

    .line 349
    .line 350
    if-eqz p3, :cond_15

    .line 351
    .line 352
    if-nez p2, :cond_15

    .line 353
    .line 354
    sget-boolean p2, Lcom/android/wm/shell/common/split/SplitLayout;->DEBUG:Z

    .line 355
    .line 356
    const-string p2, "onImeStartPositioning. y offset is 0 but task adjusted. reset task bounds."

    .line 357
    .line 358
    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTaskBoundsAdjusted:Z

    .line 362
    .line 363
    check-cast v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 364
    .line 365
    invoke-virtual {v4, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setLayoutOffsetTargetFromIme(ILcom/android/wm/shell/common/split/SplitLayout;)V

    .line 366
    .line 367
    .line 368
    :cond_15
    :goto_f
    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 369
    .line 370
    if-eqz p2, :cond_17

    .line 371
    .line 372
    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 373
    .line 374
    if-eqz p2, :cond_17

    .line 375
    .line 376
    if-eqz p5, :cond_16

    .line 377
    .line 378
    goto :goto_10

    .line 379
    :cond_16
    move p2, v0

    .line 380
    goto :goto_11

    .line 381
    :cond_17
    :goto_10
    move p2, v3

    .line 382
    :goto_11
    invoke-virtual {p1, v6, p2, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(Ljava/lang/String;ZZ)V

    .line 383
    .line 384
    .line 385
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 386
    .line 387
    if-eqz p2, :cond_1a

    .line 388
    .line 389
    iget-object p2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 390
    .line 391
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 392
    .line 393
    .line 394
    move-result p2

    .line 395
    if-eqz p2, :cond_1a

    .line 396
    .line 397
    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 398
    .line 399
    if-eqz p2, :cond_19

    .line 400
    .line 401
    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 402
    .line 403
    if-nez p2, :cond_18

    .line 404
    .line 405
    goto :goto_12

    .line 406
    :cond_18
    move p2, v0

    .line 407
    goto :goto_13

    .line 408
    :cond_19
    :goto_12
    move p2, v3

    .line 409
    :goto_13
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 410
    .line 411
    invoke-virtual {p1, v6, p2, v3}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setInteractive(Ljava/lang/String;ZZ)V

    .line 412
    .line 413
    .line 414
    :cond_1a
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    .line 415
    .line 416
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 417
    .line 418
    if-eq p1, p0, :cond_1b

    .line 419
    .line 420
    move v0, v3

    .line 421
    :cond_1b
    :goto_14
    return v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mHasImeFocus:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mImeShown:Z

    .line 5
    .line 6
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mTargetYOffset:I

    .line 7
    .line 8
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mLastYOffset:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue1:F

    .line 14
    .line 15
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mDimValue2:F

    .line 16
    .line 17
    return-void
.end method
