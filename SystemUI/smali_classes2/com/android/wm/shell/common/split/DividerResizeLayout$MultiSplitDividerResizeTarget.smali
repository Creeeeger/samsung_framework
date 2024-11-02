.class public final Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;
.super Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mInnerDirection:I

.field public mInnerPosition:I

.field public mOuterPosition:I

.field public final mTmpRootBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerDirection:I

    .line 8
    .line 9
    new-instance p2, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mTmpRootBounds:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget-boolean p2, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    .line 22
    .line 23
    const/4 p4, 0x1

    .line 24
    const/16 p5, 0x18

    .line 25
    .line 26
    if-eq p2, p5, :cond_0

    .line 27
    .line 28
    const/16 p5, 0x30

    .line 29
    .line 30
    if-eq p2, p5, :cond_0

    .line 31
    .line 32
    const/16 p5, 0x48

    .line 33
    .line 34
    if-eq p2, p5, :cond_0

    .line 35
    .line 36
    const/16 p5, 0x60

    .line 37
    .line 38
    if-eq p2, p5, :cond_0

    .line 39
    .line 40
    move p2, p3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move p2, p4

    .line 43
    :goto_0
    if-eqz p2, :cond_1

    .line 44
    .line 45
    move p3, p4

    .line 46
    :cond_1
    if-eqz p3, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->initInnerDirection()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 52
    .line 53
    iget p2, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 54
    .line 55
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerPosition:I

    .line 56
    .line 57
    iget p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 58
    .line 59
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mOuterPosition:I

    .line 60
    .line 61
    :cond_2
    return-void
.end method


# virtual methods
.method public final calculateBoundsForPosition(ILandroid/graphics/Rect;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mOuterPosition:I

    .line 10
    .line 11
    move v2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, p1

    .line 14
    :goto_0
    iget v3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    iget v7, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerSize:I

    .line 29
    .line 30
    iget-object v8, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 31
    .line 32
    move-object v4, p2

    .line 33
    invoke-static/range {v2 .. v8}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    sget-boolean v1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 42
    .line 43
    iget-boolean v1, v1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    const/16 v3, 0x18

    .line 54
    .line 55
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    .line 56
    .line 57
    if-eq v4, v3, :cond_2

    .line 58
    .line 59
    const/16 v3, 0x30

    .line 60
    .line 61
    if-eq v4, v3, :cond_2

    .line 62
    .line 63
    const/16 v3, 0x48

    .line 64
    .line 65
    if-eq v4, v3, :cond_2

    .line 66
    .line 67
    const/16 v3, 0x60

    .line 68
    .line 69
    if-eq v4, v3, :cond_2

    .line 70
    .line 71
    move v3, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v3, v1

    .line 74
    :goto_1
    if-eqz v3, :cond_3

    .line 75
    .line 76
    move v2, v1

    .line 77
    :cond_3
    :goto_2
    if-eqz v2, :cond_5

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mTmpRootBounds:Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 85
    .line 86
    iget-boolean v2, v2, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 87
    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerPosition:I

    .line 92
    .line 93
    :goto_3
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerDirection:I

    .line 94
    .line 95
    iget v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerSize:I

    .line 96
    .line 97
    invoke-static {p1, p0, p2, v1, v0}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForCellWithPosition(IILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 98
    .line 99
    .line 100
    :cond_5
    return-void
.end method

.method public final getDirection()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerDirection:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    .line 13
    .line 14
    :goto_0
    return p0
.end method

.method public final initDirection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    and-int/lit8 v0, v1, 0x28

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    and-int/lit8 v0, v1, 0x50

    .line 17
    .line 18
    :goto_0
    invoke-static {v0}, Lcom/android/wm/shell/util/StageUtils;->convertStagePositionToDockSide(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    .line 23
    .line 24
    return-void
.end method

.method public final initInnerDirection()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    .line 10
    .line 11
    if-eq v2, v1, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x30

    .line 14
    .line 15
    if-eq v2, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x48

    .line 18
    .line 19
    if-eq v2, v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x60

    .line 22
    .line 23
    if-eq v2, v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    :goto_0
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    and-int/lit8 v0, v2, 0x50

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    and-int/lit8 v0, v2, 0x28

    .line 42
    .line 43
    :goto_1
    invoke-static {v0}, Lcom/android/wm/shell/util/StageUtils;->convertStagePositionToDockSide(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerDirection:I

    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final initialize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/16 v3, 0x18

    .line 10
    .line 11
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mStageConfigPosition:I

    .line 12
    .line 13
    if-eq v4, v3, :cond_0

    .line 14
    .line 15
    const/16 v3, 0x30

    .line 16
    .line 17
    if-eq v4, v3, :cond_0

    .line 18
    .line 19
    const/16 v3, 0x48

    .line 20
    .line 21
    if-eq v4, v3, :cond_0

    .line 22
    .line 23
    const/16 v3, 0x60

    .line 24
    .line 25
    if-eq v4, v3, :cond_0

    .line 26
    .line 27
    move v3, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, v1

    .line 30
    :goto_0
    if-eqz v3, :cond_1

    .line 31
    .line 32
    move v2, v1

    .line 33
    :cond_1
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->initInnerDirection()V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 39
    .line 40
    iget v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 41
    .line 42
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerPosition:I

    .line 43
    .line 44
    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 45
    .line 46
    iput v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mOuterPosition:I

    .line 47
    .line 48
    :cond_2
    invoke-super {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->initialize()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MultiSplit"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", mInnerDir="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;->mInnerDirection:I

    .line 21
    .line 22
    const-string/jumbo v1, "}"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
