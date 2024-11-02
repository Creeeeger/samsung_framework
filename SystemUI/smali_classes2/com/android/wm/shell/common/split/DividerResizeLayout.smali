.class public Lcom/android/wm/shell/common/split/DividerResizeLayout;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BLUR_PRESET:[F

.field public static final DARK_BLUR_PRESET:[F

.field public static final DEBUG:Z

.field public static final ONE_EASING:Landroid/view/animation/Interpolator;

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;

.field public static final SINE_OUT_60:Landroid/view/animation/Interpolator;

.field public static final WINDOW_ALPHA_ANIM_DURATION:J


# instance fields
.field public mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

.field public mAttachedToWindow:Z

.field public mBackgroundColor:I

.field public mCellHostStageType:I

.field public mCornerRadius:I

.field public mDividerSize:I

.field public mDividerView:Lcom/android/wm/shell/common/split/DividerView;

.field public mFinishRunnable:Ljava/lang/Runnable;

.field public final mFinishTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

.field public mFirstLayoutCalled:Z

.field public final mGuideBarBounds:Landroid/graphics/Rect;

.field public mGuideBarView:Landroid/widget/ImageView;

.field public mGuideViewBarThickness:I

.field public mHalfSplitStageType:I

.field public mHandler:Landroid/os/Handler;

.field public final mHeavyWorkRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

.field public mIsMultiSplitActive:Z

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field public mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

.field public final mResizeTargets:Landroid/util/SparseArray;

.field public final mRestrictedBounds:Landroid/graphics/Rect;

.field public final mRootBounds:Landroid/graphics/Rect;

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final mStableInsets:Landroid/graphics/Rect;

.field public mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final mTransparentRegion:Landroid/graphics/Region;

.field public mWindowAdded:Z

.field public mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$monAnimationFinished(Lcom/android/wm/shell/common/split/DividerResizeLayout;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "onAnimationFinished: "

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "DividerResizeLayout"

    .line 15
    .line 16
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    const-string p1, "onAnimationFinished"

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->postFinishRunnableIfPossible(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DEBUG:Z

    .line 4
    .line 5
    const/4 v0, 0x7

    .line 6
    new-array v1, v0, [F

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    sput-object v1, Lcom/android/wm/shell/common/split/DividerResizeLayout;->BLUR_PRESET:[F

    .line 12
    .line 13
    new-array v0, v0, [F

    .line 14
    .line 15
    fill-array-data v0, :array_1

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DARK_BLUR_PRESET:[F

    .line 19
    .line 20
    new-instance v0, Landroid/animation/RectEvaluator;

    .line 21
    .line 22
    new-instance v1, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 31
    .line 32
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 33
    .line 34
    const v1, 0x3e2e147b    # 0.17f

    .line 35
    .line 36
    .line 37
    const v2, 0x3ecccccd    # 0.4f

    .line 38
    .line 39
    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    .line 42
    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->SINE_OUT_60:Landroid/view/animation/Interpolator;

    .line 46
    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 48
    .line 49
    const/high16 v1, 0x3e800000    # 0.25f

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    const v4, 0x3e6147ae    # 0.22f

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->ONE_EASING:Landroid/view/animation/Interpolator;

    .line 59
    .line 60
    sget-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    const-wide/16 v0, 0xfa

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-wide/16 v0, 0x96

    .line 68
    .line 69
    :goto_0
    sput-wide v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->WINDOW_ALPHA_ANIM_DURATION:J

    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 4
        0x437a0000    # 250.0f
        0x0
        0x41000000    # 8.0f
        0x41eb3333    # 29.4f
        0x437f0000    # 255.0f
        0x0
        0x43658000    # 229.5f
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x437a0000    # 250.0f
        0x0
        0x41000000    # 8.0f
        0x41eb3333    # 29.4f
        0x437f0000    # 255.0f
        0x0
        0x4358cccd    # 216.8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAdded:Z

    .line 6
    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    .line 7
    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 8
    new-instance p3, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;I)V

    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    .line 9
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 10
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mGuideBarBounds:Landroid/graphics/Rect;

    .line 11
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    .line 12
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 13
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 14
    new-instance p2, Landroid/graphics/Region;

    invoke-direct {p2}, Landroid/graphics/Region;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    const/4 p2, -0x1

    .line 15
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHalfSplitStageType:I

    .line 16
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mCellHostStageType:I

    .line 17
    new-instance p2, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;I)V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHeavyWorkRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    .line 18
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    const-string/jumbo p2, "window"

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 20
    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/common/split/DividerResizeLayout;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/common/split/DividerResizeLayout;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final createResizeTarget(I)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const v0, 0x7f0a060d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 11
    .line 12
    const v1, 0x7f0a0603

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    const v0, 0x7f0a0a32

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .line 40
    const v1, 0x7f0a0a2e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    if-ne p1, v0, :cond_2

    .line 62
    .line 63
    const v0, 0x7f0a0236

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .line 72
    const v1, 0x7f0a0235

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/widget/ImageView;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v3, Landroid/graphics/Rect;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 91
    .line 92
    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 93
    .line 94
    .line 95
    move-object v2, v3

    .line 96
    :goto_0
    move-object v4, v0

    .line 97
    move-object v5, v1

    .line 98
    move-object v6, v2

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/4 v0, 0x0

    .line 101
    move-object v4, v0

    .line 102
    move-object v5, v4

    .line 103
    move-object v6, v5

    .line 104
    :goto_1
    if-eqz v4, :cond_5

    .line 105
    .line 106
    if-nez v5, :cond_3

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    new-instance v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;

    .line 114
    .line 115
    move-object v1, v0

    .line 116
    move-object v2, p0

    .line 117
    move v3, p1

    .line 118
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/common/split/DividerResizeLayout$MultiSplitDividerResizeTarget;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    new-instance v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DefaultDividerResizeTarget;

    .line 123
    .line 124
    move-object v1, v0

    .line 125
    move-object v2, p0

    .line 126
    move v3, p1

    .line 127
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DefaultDividerResizeTarget;-><init>(Lcom/android/wm/shell/common/split/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 131
    .line 132
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    :goto_3
    const-string p0, "DividerResizeLayout"

    .line 137
    .line 138
    const-string p1, "createResizeTarget: failed, cannot found views"

    .line 139
    .line 140
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 8
    .line 9
    .line 10
    return v0
.end method

.method public final init(Lcom/android/wm/shell/common/split/DividerView;Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeAlgorithm:Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 20
    .line 21
    iget p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 22
    .line 23
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerSize:I

    .line 24
    .line 25
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerRadius(Landroid/content/Context;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mCornerRadius:I

    .line 32
    .line 33
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const p3, 0x7f070951

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget-object p3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget-object p3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    or-int/2addr p3, p4

    .line 68
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    or-int/2addr p3, p4

    .line 73
    iget-object p4, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p4, p1, p3, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 84
    .line 85
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    .line 103
    .line 104
    if-eqz p1, :cond_0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRestrictedBounds:Landroid/graphics/Rect;

    .line 108
    .line 109
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 110
    .line 111
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    .line 112
    .line 113
    const/4 p2, 0x1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mCellHostStageType:I

    .line 133
    .line 134
    if-nez p1, :cond_2

    .line 135
    .line 136
    move p1, p2

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    move p1, v0

    .line 139
    :goto_1
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHalfSplitStageType:I

    .line 140
    .line 141
    :cond_3
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 142
    .line 143
    const/16 p3, 0xa2b

    .line 144
    .line 145
    const/16 p4, 0x318

    .line 146
    .line 147
    const/4 v1, -0x2

    .line 148
    invoke-direct {p1, p3, p4, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 152
    .line 153
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 154
    .line 155
    or-int/lit8 p3, p3, 0x10

    .line 156
    .line 157
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 158
    .line 159
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 160
    .line 161
    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 162
    .line 163
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 164
    .line 165
    .line 166
    move-result p3

    .line 167
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 170
    .line 171
    iget-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 172
    .line 173
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 174
    .line 175
    .line 176
    move-result p3

    .line 177
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 178
    .line 179
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 180
    .line 181
    const p3, 0x800033

    .line 182
    .line 183
    .line 184
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 190
    .line 191
    const/16 p3, 0x40

    .line 192
    .line 193
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    .line 194
    .line 195
    const-string p3, "DividerResizeLayout"

    .line 196
    .line 197
    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    sget-boolean p1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 201
    .line 202
    if-eqz p1, :cond_4

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    const p4, 0x1060425

    .line 214
    .line 215
    .line 216
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p1, p4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mBackgroundColor:I

    .line 222
    .line 223
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 224
    .line 225
    .line 226
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 229
    .line 230
    .line 231
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    .line 232
    .line 233
    if-eqz p1, :cond_6

    .line 234
    .line 235
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 236
    .line 237
    iget-boolean p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 238
    .line 239
    if-eqz p1, :cond_6

    .line 240
    .line 241
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    .line 242
    .line 243
    iget p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHalfSplitStageType:I

    .line 244
    .line 245
    if-nez p4, :cond_5

    .line 246
    .line 247
    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 248
    .line 249
    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    .line 250
    .line 251
    .line 252
    move-result-object p4

    .line 253
    goto :goto_3

    .line 254
    :cond_5
    iget-object p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 255
    .line 256
    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    .line 257
    .line 258
    .line 259
    move-result-object p4

    .line 260
    :goto_3
    invoke-virtual {p1, p4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 261
    .line 262
    .line 263
    :cond_6
    sget-boolean p1, Lcom/android/wm/shell/common/split/DividerResizeController;->USE_GUIDE_VIEW_EFFECTS:Z

    .line 264
    .line 265
    const/4 p4, 0x2

    .line 266
    if-eqz p1, :cond_c

    .line 267
    .line 268
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getFocusedStageType()I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 275
    .line 276
    iget-boolean v1, v1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 277
    .line 278
    if-eqz v1, :cond_9

    .line 279
    .line 280
    if-eq p1, p4, :cond_8

    .line 281
    .line 282
    iget p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mCellHostStageType:I

    .line 283
    .line 284
    if-ne p1, p4, :cond_7

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_7
    invoke-virtual {p0, p4}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_8
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_9
    iget-boolean p4, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    .line 296
    .line 297
    if-eqz p4, :cond_a

    .line 298
    .line 299
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHalfSplitStageType:I

    .line 300
    .line 301
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_a
    if-nez p1, :cond_b

    .line 306
    .line 307
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_c
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    .line 316
    .line 317
    if-eqz p1, :cond_d

    .line 318
    .line 319
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mIsMultiSplitActive:Z

    .line 320
    .line 321
    if-eqz p1, :cond_d

    .line 322
    .line 323
    invoke-virtual {p0, p4}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    .line 324
    .line 325
    .line 326
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 327
    .line 328
    iget-boolean p1, p1, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 329
    .line 330
    if-eqz p1, :cond_d

    .line 331
    .line 332
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mCellHostStageType:I

    .line 333
    .line 334
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    .line 335
    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->createResizeTarget(I)V

    .line 342
    .line 343
    .line 344
    :goto_5
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 345
    .line 346
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    sub-int/2addr p1, p2

    .line 351
    :goto_6
    if-ltz p1, :cond_f

    .line 352
    .line 353
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 354
    .line 355
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object p2

    .line 359
    check-cast p2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 360
    .line 361
    if-eqz p2, :cond_e

    .line 362
    .line 363
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->initialize()V

    .line 364
    .line 365
    .line 366
    sget-boolean p4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DEBUG:Z

    .line 367
    .line 368
    if-eqz p4, :cond_e

    .line 369
    .line 370
    new-instance p4, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v0, "init: "

    .line 373
    .line 374
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    :cond_e
    add-int/lit8 p1, p1, -0x1

    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_f
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 391
    .line 392
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHeavyWorkRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    .line 393
    .line 394
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    .line 396
    .line 397
    return-void
.end method

.method public final loadSnapshotsForResizeTarget()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_a

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 18
    .line 19
    if-eqz v2, :cond_9

    .line 20
    .line 21
    iget v3, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mTaskId:I

    .line 22
    .line 23
    const/4 v4, -0x1

    .line 24
    const-string v5, "DividerResizeLayout"

    .line 25
    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "loadSnapshot: Cannot find taskId for "

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_0
    iget-object v4, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->this$0:Lcom/android/wm/shell/common/split/DividerResizeLayout;

    .line 48
    .line 49
    iget-object v6, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 50
    .line 51
    invoke-virtual {v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_8

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    if-nez v6, :cond_1

    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasProtectedContent()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    iput-boolean v6, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->containsSecureLayer()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    sget-boolean v7, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DEBUG:Z

    .line 76
    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v8, "loadSnapshot: "

    .line 82
    .line 83
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v8, ", hasProtectedContent="

    .line 90
    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-boolean v8, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    .line 95
    .line 96
    const-string v9, ", containsSecureLayer="

    .line 97
    .line 98
    invoke-static {v7, v8, v9, v6, v5}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-boolean v7, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mHasProtectedContent:Z

    .line 102
    .line 103
    iget-object v8, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    .line 104
    .line 105
    iget-object v2, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 106
    .line 107
    if-eqz v7, :cond_3

    .line 108
    .line 109
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const v5, 0x7f0604b9

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const v4, 0x7f080cb9

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    const/16 v4, 0x4c

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 155
    .line 156
    .line 157
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasWallpaperBitmap()Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-eqz v7, :cond_4

    .line 169
    .line 170
    iget v7, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mBackgroundColor:I

    .line 171
    .line 172
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    int-to-float v7, v7

    .line 177
    const v9, 0x3f666666    # 0.9f

    .line 178
    .line 179
    .line 180
    mul-float/2addr v7, v9

    .line 181
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    iget v9, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mBackgroundColor:I

    .line 186
    .line 187
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    iget v10, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mBackgroundColor:I

    .line 192
    .line 193
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    iget v11, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mBackgroundColor:I

    .line 198
    .line 199
    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    invoke-static {v7, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->createSnapshotBitmapWithWallpaper(I)Landroid/graphics/Bitmap;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    goto :goto_1

    .line 212
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    :goto_1
    invoke-static {v4}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->access$100(Lcom/android/wm/shell/common/split/DividerResizeLayout;)Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    new-instance v9, Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 221
    .line 222
    invoke-direct {v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 234
    .line 235
    and-int/lit8 v7, v7, 0x20

    .line 236
    .line 237
    const/4 v10, 0x0

    .line 238
    if-eqz v7, :cond_5

    .line 239
    .line 240
    move v7, v1

    .line 241
    goto :goto_2

    .line 242
    :cond_5
    move v7, v10

    .line 243
    :goto_2
    if-eqz v7, :cond_6

    .line 244
    .line 245
    sget-object v7, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DARK_BLUR_PRESET:[F

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_6
    sget-object v7, Lcom/android/wm/shell/common/split/DividerResizeLayout;->BLUR_PRESET:[F

    .line 249
    .line 250
    :goto_3
    aget v10, v7, v10

    .line 251
    .line 252
    invoke-virtual {v9, v10}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 253
    .line 254
    .line 255
    aget v10, v7, v1

    .line 256
    .line 257
    invoke-virtual {v9, v10}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    .line 258
    .line 259
    .line 260
    const/4 v10, 0x2

    .line 261
    aget v10, v7, v10

    .line 262
    .line 263
    invoke-virtual {v9, v10}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    .line 264
    .line 265
    .line 266
    const/4 v10, 0x3

    .line 267
    aget v10, v7, v10

    .line 268
    .line 269
    invoke-virtual {v9, v10}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    .line 270
    .line 271
    .line 272
    const/4 v10, 0x4

    .line 273
    aget v10, v7, v10

    .line 274
    .line 275
    invoke-virtual {v9, v10}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    .line 276
    .line 277
    .line 278
    const/4 v10, 0x5

    .line 279
    aget v10, v7, v10

    .line 280
    .line 281
    invoke-virtual {v9, v10}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    .line 282
    .line 283
    .line 284
    const/4 v10, 0x6

    .line 285
    aget v7, v7, v10

    .line 286
    .line 287
    invoke-virtual {v9, v7}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->applyToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    new-instance v9, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string v10, "loadSnapshot: w="

    .line 297
    .line 298
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v10, " h="

    .line 309
    .line 310
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 328
    .line 329
    .line 330
    if-eqz v7, :cond_7

    .line 331
    .line 332
    move-object v3, v7

    .line 333
    :cond_7
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    .line 335
    .line 336
    if-eqz v6, :cond_9

    .line 337
    .line 338
    iget-object v2, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 339
    .line 340
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 341
    .line 342
    and-int/lit16 v5, v3, 0x2000

    .line 343
    .line 344
    if-nez v5, :cond_9

    .line 345
    .line 346
    or-int/lit16 v3, v3, 0x2000

    .line 347
    .line 348
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 349
    .line 350
    iget-boolean v3, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAdded:Z

    .line 351
    .line 352
    if-eqz v3, :cond_9

    .line 353
    .line 354
    iget-object v3, v4, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 355
    .line 356
    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_8
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v4, "loadSnapshot: Failed to get snapshot for "

    .line 363
    .line 364
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, -0x1

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_a
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DEBUG:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "onAttachedToWindow: mTransparentRegion="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "DividerResizeLayout"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_0
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->onReadyToShow()V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mTransparentRegion:Landroid/graphics/Region;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 27
    .line 28
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 5
    .line 6
    if-nez p1, :cond_2

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 10
    .line 11
    sget-boolean p2, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DEBUG:Z

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string p2, "DividerResizeLayout"

    .line 16
    .line 17
    const-string p3, "onFirstLayout"

    .line 18
    .line 19
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->onReadyToShow()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final onReadyToShow()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "onReadyToShow: mActionDropRunnable="

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "DividerResizeLayout"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;->run()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mActionDropRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    :cond_1
    const-string v0, "onReadyToShow"

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->postFinishRunnableIfPossible(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final postFinishRunnableIfPossible(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/DividerResizeLayout;->shouldDeferRemove(Z)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const-string/jumbo p2, "postFinishRunnableIfPossible: reason="

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "DividerResizeLayout"

    .line 23
    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishTimeoutRunnable:Lcom/android/wm/shell/common/split/DividerResizeLayout$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFinishRunnable:Ljava/lang/Runnable;

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final shouldDeferRemove(Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mFirstLayoutCalled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mAttachedToWindow:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_8

    .line 15
    .line 16
    if-eqz p1, :cond_7

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mWindowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    goto :goto_5

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sub-int/2addr p1, v1

    .line 30
    :goto_1
    if-ltz p1, :cond_6

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->mResizeTargets:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    move v3, v1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v3, v2

    .line 49
    :goto_2
    if-nez v3, :cond_4

    .line 50
    .line 51
    iget-object v3, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    if-nez v3, :cond_4

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    move v0, v2

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    :goto_3
    move v0, v1

    .line 63
    :goto_4
    if-eqz v0, :cond_5

    .line 64
    .line 65
    :goto_5
    move p0, v1

    .line 66
    goto :goto_6

    .line 67
    :cond_5
    add-int/lit8 p1, p1, -0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    move p0, v2

    .line 71
    :goto_6
    if-eqz p0, :cond_7

    .line 72
    .line 73
    goto :goto_7

    .line 74
    :cond_7
    move v1, v2

    .line 75
    :cond_8
    :goto_7
    return v1
.end method
