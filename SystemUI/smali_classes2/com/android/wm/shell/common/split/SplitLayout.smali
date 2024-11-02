.class public final Lcom/android/wm/shell/common/split/SplitLayout;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBounds1:Landroid/graphics/Rect;

.field public final mBounds2:Landroid/graphics/Rect;

.field public final mBounds3:Landroid/graphics/Rect;

.field public mCellDividePosition:I

.field public final mCellDividerBounds:Landroid/graphics/Rect;

.field public mCellInitialized:Z

.field public mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field public final mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

.field public mCellStageWindowConfigPosition:I

.field public mContext:Landroid/content/Context;

.field public mDensity:I

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public mDividePosition:I

.field public final mDividerBounds:Landroid/graphics/Rect;

.field public mDividerFlingAnimator:Landroid/animation/ValueAnimator;

.field public mDividerInsets:I

.field public mDividerSize:I

.field mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field public mDividerWindowWidth:I

.field public mFontScale:F

.field public mFontWeightAdjustment:I

.field public mFreezeDividerWindow:Z

.field public final mHostAndCellArea:Landroid/graphics/Rect;

.field public final mHostBounds:Landroid/graphics/Rect;

.field public final mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

.field public mInitialized:Z

.field public final mInsetsState:Landroid/view/InsetsState;

.field public final mInvisibleBounds:Landroid/graphics/Rect;

.field public mLocale:Ljava/util/Locale;

.field public final mNavigationBarRect:Landroid/graphics/Rect;

.field public mOrientation:I

.field public mPossibleSplitDivision:I

.field public final mRootBounds:Landroid/graphics/Rect;

.field public mRotation:I

.field public final mSharedPreferences:Landroid/content/SharedPreferences;

.field public mSplitDivision:I

.field public final mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

.field public mSplitScreenFeasibleMode:I

.field public final mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

.field public mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field public mUiMode:I

.field public final mWinBounds1:Landroid/graphics/Rect;

.field public final mWinBounds2:Landroid/graphics/Rect;

.field public final mWinBounds3:Landroid/graphics/Rect;

.field public mWinToken1:Landroid/window/WindowContainerToken;

.field public mWinToken2:Landroid/window/WindowContainerToken;

.field public mWinToken3:Landroid/window/WindowContainerToken;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/wm/shell/common/split/SplitLayout;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;I)V
    .locals 11

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/common/split/SplitLayout;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;II)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 4
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 6
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 8
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    .line 10
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    .line 11
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2}, Landroid/view/InsetsState;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    const/4 v9, 0x0

    .line 12
    iput-boolean v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 13
    iput-boolean v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    .line 14
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 15
    iput v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    .line 16
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostAndCellArea:Landroid/graphics/Rect;

    .line 17
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 18
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds3:Landroid/graphics/Rect;

    .line 19
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    .line 20
    iput v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 21
    iput-boolean v9, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    .line 22
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    .line 23
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mNavigationBarRect:Landroid/graphics/Rect;

    const/4 v2, 0x2

    .line 24
    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    const/4 v2, -0x1

    .line 25
    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    .line 26
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v2, :cond_0

    move/from16 v2, p10

    .line 27
    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    .line 28
    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 29
    iget v2, v7, Landroid/content/res/Configuration;->orientation:I

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mOrientation:I

    .line 30
    iget-object v2, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    .line 31
    iget v2, v7, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    move-object v2, p4

    .line 32
    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    move-object/from16 v2, p6

    .line 33
    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v2, p7

    .line 34
    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 35
    new-instance v2, Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    move-object/from16 v5, p5

    invoke-direct {v2, p1, v3, p3, v5}, Lcom/android/wm/shell/common/split/SplitWindowManager;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;)V

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 36
    iget-object v2, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mLocale:Ljava/util/Locale;

    .line 37
    iget v2, v7, Landroid/content/res/Configuration;->fontScale:F

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontScale:F

    .line 38
    iget v2, v7, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontWeightAdjustment:I

    .line 39
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v2, :cond_1

    .line 40
    new-instance v10, Lcom/android/wm/shell/common/split/SplitWindowManager;

    const-string v2, "Cell"

    .line 41
    invoke-static {p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-object v1, v10

    move-object v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/common/split/SplitWindowManager;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Z)V

    iput-object v10, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 43
    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 44
    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    if-eqz v1, :cond_2

    .line 45
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "video_controls_pref"

    invoke-virtual {v1, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSharedPreferences:Landroid/content/SharedPreferences;

    :cond_2
    move-object/from16 v1, p8

    .line 46
    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 47
    new-instance v1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-direct {v1, p0, v2, v9}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;II)V

    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 48
    new-instance v1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    move/from16 v2, p9

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    .line 49
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerConfig(Landroid/content/Context;)V

    .line 50
    iget-object v1, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 51
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 52
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    .line 53
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 54
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateInvisibleRect()V

    return-void
.end method

.method public static isLandscape(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final applyLayoutOffsetTargetForMultiSplit(Landroid/window/WindowContainerTransaction;ILjava/util/ArrayList;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez p2, :cond_3

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 16
    .line 17
    if-ltz p2, :cond_8

    .line 18
    .line 19
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 24
    .line 25
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 26
    .line 27
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 28
    .line 29
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ne v6, v3, :cond_0

    .line 34
    .line 35
    move-object v6, v1

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget v6, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 45
    .line 46
    and-int/lit8 v6, v6, 0x40

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    :goto_1
    move-object v6, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move-object v6, v0

    .line 53
    :goto_2
    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 54
    .line 55
    invoke-virtual {p1, v7, v6}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 56
    .line 57
    .line 58
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 59
    .line 60
    invoke-virtual {p1, v5, v4, v4}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 69
    .line 70
    if-ltz v5, :cond_8

    .line 71
    .line 72
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 77
    .line 78
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 79
    .line 80
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 81
    .line 82
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-ne v7, v3, :cond_4

    .line 87
    .line 88
    move-object v7, v1

    .line 89
    goto :goto_5

    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_5

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    iget v7, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 98
    .line 99
    and-int/lit8 v7, v7, 0x40

    .line 100
    .line 101
    if-eqz v7, :cond_6

    .line 102
    .line 103
    :goto_4
    move-object v7, v2

    .line 104
    goto :goto_5

    .line 105
    :cond_6
    move-object v7, v0

    .line 106
    :goto_5
    new-instance v8, Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-direct {v8, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 112
    .line 113
    .line 114
    iget-object v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 115
    .line 116
    invoke-virtual {p1, v9, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 117
    .line 118
    .line 119
    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 120
    .line 121
    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 122
    .line 123
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-nez v8, :cond_7

    .line 132
    .line 133
    iget-object v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {p0, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    iget-object v9, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 140
    .line 141
    invoke-virtual {v8, v9, v4}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 145
    .line 146
    .line 147
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 148
    .line 149
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    int-to-float v7, v7

    .line 154
    iget-object v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    invoke-virtual {p0, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-virtual {v8}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    div-float/2addr v7, v8

    .line 165
    const/high16 v8, 0x3f000000    # 0.5f

    .line 166
    .line 167
    add-float/2addr v7, v8

    .line 168
    float-to-int v7, v7

    .line 169
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    int-to-float v9, v9

    .line 174
    iget-object v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    invoke-virtual {p0, v10}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v10}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    div-float/2addr v9, v10

    .line 185
    add-float/2addr v9, v8

    .line 186
    float-to-int v8, v9

    .line 187
    invoke-virtual {p1, v6, v7, v8}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_7
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 192
    .line 193
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 194
    .line 195
    iget v8, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 196
    .line 197
    iget v6, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 198
    .line 199
    invoke-virtual {p1, v7, v8, v6}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 200
    .line 201
    .line 202
    :goto_6
    goto/16 :goto_3

    .line 203
    .line 204
    :cond_8
    return-void
.end method

.method public final applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 3
    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 4
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    move p2, v3

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, p2

    goto :goto_3

    .line 7
    :cond_3
    :goto_2
    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 8
    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 9
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    :goto_3
    return v3
.end method

.method public final applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 7

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds3:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    iget-object v2, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 13
    iget-object v2, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 14
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 15
    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    move p4, v3

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    invoke-static {v1, v0}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    goto :goto_2

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 19
    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    invoke-virtual {v4, v5}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 20
    :cond_3
    iget-object p4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p4, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 21
    iget-object p4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result v4

    invoke-virtual {p1, p4, v4}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 22
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 23
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    move p4, v3

    .line 24
    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move v3, p4

    goto :goto_4

    .line 25
    :cond_6
    :goto_3
    iget-object p4, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p4, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 26
    iget-object p4, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getSmallestWidthDp(Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {p1, p4, v1}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 27
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 28
    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    :goto_4
    return v3
.end method

.method public final createCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostAndCellArea:Landroid/graphics/Rect;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 44
    .line 45
    iget v2, v8, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    sub-int/2addr v1, v2

    .line 48
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 49
    .line 50
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 53
    .line 54
    add-int/2addr v1, v2

    .line 55
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 59
    .line 60
    iget v2, v8, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    sub-int/2addr v1, v2

    .line 63
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 66
    .line 67
    iget v2, v8, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    add-int/2addr v1, v2

    .line 70
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 71
    .line 72
    :goto_1
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    iget v6, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    move-object v2, v1

    .line 95
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 96
    .line 97
    .line 98
    return-object v1
.end method

.method public flingDividePosition(IIILjava/lang/Runnable;)V
    .locals 1

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    if-ne p1, p2, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 10
    .line 11
    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    .line 15
    .line 16
    .line 17
    if-eqz p4, :cond_1

    .line 18
    .line 19
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/16 p0, 0x34

    .line 23
    .line 24
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 37
    .line 38
    .line 39
    :cond_3
    filled-new-array {p1, p2}, [I

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    int-to-long p2, p3

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    new-instance p2, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    new-instance p2, Lcom/android/wm/shell/common/split/SplitLayout$1;

    .line 72
    .line 73
    invoke-direct {p2, p0, p4}, Lcom/android/wm/shell/common/split/SplitLayout$1;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final flingDividerToCenter()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 8
    .line 9
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 10
    .line 11
    new-instance v2, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;

    .line 12
    .line 13
    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    .line 14
    .line 15
    .line 16
    const/16 v3, 0x1c2

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final flingDividerToDismiss(IZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 19
    .line 20
    :goto_0
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 21
    .line 22
    new-instance v2, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    invoke-direct {v2, p0, p2, p1}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;ZI)V

    .line 25
    .line 26
    .line 27
    const/16 p1, 0x1c2

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final getBounds1()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getBounds2()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getCellDividerLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public final getCellSide()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    and-int/lit8 v0, p0, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    and-int/lit8 p0, p0, 0x40

    .line 16
    .line 17
    if-eqz p0, :cond_3

    .line 18
    .line 19
    const/4 p0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    and-int/lit8 v0, p0, 0x8

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    and-int/lit8 p0, p0, 0x20

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/4 p0, -0x1

    .line 34
    :goto_0
    return p0
.end method

.method public final getCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    or-int/2addr v0, v1

    .line 20
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    not-int v1, v1

    .line 40
    and-int/2addr v0, v1

    .line 41
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY_IGNORING_CUTOUT:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    not-int v1, v1

    .line 50
    and-int/2addr v0, v1

    .line 51
    :cond_2
    if-eqz p0, :cond_3

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-class p0, Landroid/view/WindowManager;

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Landroid/view/WindowManager;

    .line 66
    .line 67
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_0
    return-object p0
.end method

.method public final getDividerLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public final getDividerPositionAsFraction()F
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    add-int/2addr p0, v0

    .line 27
    int-to-float p0, p0

    .line 28
    div-float/2addr p0, v1

    .line 29
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    add-int/2addr p0, v0

    .line 37
    int-to-float p0, p0

    .line 38
    div-float/2addr p0, v1

    .line 39
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    :goto_1
    int-to-float v0, v0

    .line 42
    div-float/2addr p0, v0

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method

.method public final getDividerSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHostBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getInitBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 8
    .line 9
    new-instance v1, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getRefBounds1(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    neg-int v0, v0

    .line 11
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    neg-int p0, p0

    .line 14
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getRefBounds2(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    neg-int v0, v0

    .line 11
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    neg-int p0, p0

    .line 14
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getRefCellDividerBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 11
    .line 12
    neg-int v1, v1

    .line 13
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    neg-int p0, p0

    .line 16
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final getRefDividerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    neg-int v0, v0

    .line 11
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    neg-int p0, p0

    .line 14
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getRefHostBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    neg-int v1, v1

    .line 10
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    neg-int p0, p0

    .line 13
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final getSmallestWidthDp(Landroid/graphics/Rect;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 7
    .line 8
    if-nez p1, :cond_4

    .line 9
    .line 10
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget v2, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 39
    .line 40
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p1, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    or-int/2addr v1, v2

    .line 55
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    not-int v2, v2

    .line 71
    and-int/2addr v1, v2

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 73
    .line 74
    invoke-virtual {v2, p1, v1, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .line 108
    int-to-float p1, p1

    .line 109
    div-float/2addr p1, p0

    .line 110
    float-to-int p0, p1

    .line 111
    return p0
.end method

.method public final getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 10

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    new-instance v9, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 33
    .line 34
    xor-int/lit8 v6, v0, 0x1

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 p0, 0x2

    .line 41
    :goto_1
    move v8, p0

    .line 42
    move-object v1, v9

    .line 43
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V

    .line 44
    .line 45
    .line 46
    return-object v9
.end method

.method public final init()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayImeController;->addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final initDividerPosition(Landroid/graphics/Rect;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect2:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 22
    .line 23
    if-eqz v3, :cond_6

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    :goto_0
    sub-int/2addr v3, v4

    .line 37
    int-to-float v3, v3

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    :goto_1
    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 50
    .line 51
    sub-int/2addr v4, v5

    .line 52
    int-to-float v4, v4

    .line 53
    div-float/2addr v3, v4

    .line 54
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    :goto_2
    int-to-float v4, v4

    .line 70
    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 71
    .line 72
    int-to-float v5, v5

    .line 73
    sub-float/2addr v4, v5

    .line 74
    goto :goto_6

    .line 75
    :cond_3
    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 76
    .line 77
    int-to-float v3, v3

    .line 78
    if-eqz p2, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    :goto_3
    int-to-float v4, v4

    .line 90
    div-float/2addr v3, v4

    .line 91
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    goto :goto_5

    .line 102
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    goto :goto_5

    .line 107
    :cond_6
    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 108
    .line 109
    int-to-float v3, v3

    .line 110
    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_7

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    goto :goto_4

    .line 121
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    :goto_4
    int-to-float v4, v4

    .line 126
    div-float/2addr v3, v4

    .line 127
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_8

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    goto :goto_5

    .line 138
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    :goto_5
    int-to-float v4, v4

    .line 143
    :goto_6
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 144
    .line 145
    if-eqz v5, :cond_a

    .line 146
    .line 147
    if-eqz v2, :cond_a

    .line 148
    .line 149
    mul-float/2addr v4, v3

    .line 150
    float-to-int v2, v4

    .line 151
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_9

    .line 156
    .line 157
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_9
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 161
    .line 162
    :goto_7
    add-int/2addr v2, v0

    .line 163
    goto :goto_8

    .line 164
    :cond_a
    mul-float/2addr v4, v3

    .line 165
    const/high16 v0, 0x3f000000    # 0.5f

    .line 166
    .line 167
    add-float/2addr v4, v0

    .line 168
    float-to-int v2, v4

    .line 169
    :goto_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 170
    .line 171
    if-eqz v0, :cond_d

    .line 172
    .line 173
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 174
    .line 175
    int-to-float v0, v0

    .line 176
    if-eqz p2, :cond_b

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    goto :goto_9

    .line 183
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    :goto_9
    int-to-float p1, p1

    .line 188
    div-float/2addr v0, p1

    .line 189
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_c

    .line 194
    .line 195
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    goto :goto_a

    .line 200
    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    :goto_a
    int-to-float p1, p1

    .line 205
    mul-float/2addr p1, v0

    .line 206
    float-to-int p1, p1

    .line 207
    const/4 p2, 0x0

    .line 208
    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    .line 210
    .line 211
    .line 212
    :cond_d
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 213
    .line 214
    invoke-virtual {p1, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 219
    .line 220
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 221
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 10
    .line 11
    iget v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 12
    .line 13
    const/4 v4, -0x1

    .line 14
    if-eq v0, v4, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v3

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 23
    .line 24
    if-nez v0, :cond_5

    .line 25
    .line 26
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {p1, v0, v4, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mNavigationBarRect:Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    move v0, v2

    .line 75
    goto :goto_2

    .line 76
    :cond_5
    :goto_1
    move v0, v3

    .line 77
    :goto_2
    if-eqz v0, :cond_8

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_8

    .line 90
    .line 91
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 92
    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v4, "insetsChanged. and update layout for newInsets="

    .line 102
    .line 103
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v4, "SplitLayout"

    .line 114
    .line 115
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :cond_7
    move v0, v2

    .line 119
    goto :goto_3

    .line 120
    :cond_8
    move v0, v3

    .line 121
    :goto_3
    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 122
    .line 123
    .line 124
    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 125
    .line 126
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 127
    .line 128
    if-nez v1, :cond_a

    .line 129
    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    check-cast v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 133
    .line 134
    invoke-virtual {v4, p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleLayoutSizeChange(Lcom/android/wm/shell/common/split/SplitLayout;Z)V

    .line 135
    .line 136
    .line 137
    :cond_9
    return-void

    .line 138
    :cond_a
    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    .line 139
    .line 140
    if-eqz v1, :cond_b

    .line 141
    .line 142
    return-void

    .line 143
    :cond_b
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 146
    .line 147
    if-eqz v1, :cond_c

    .line 148
    .line 149
    invoke-virtual {v1, p1, v2}, Lcom/android/wm/shell/common/split/DividerView;->onInsetsChanged(Landroid/view/InsetsState;Z)V

    .line 150
    .line 151
    .line 152
    :cond_c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 153
    .line 154
    if-eqz v1, :cond_d

    .line 155
    .line 156
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 157
    .line 158
    if-eqz v1, :cond_d

    .line 159
    .line 160
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 161
    .line 162
    if-eqz v1, :cond_d

    .line 163
    .line 164
    invoke-virtual {v1, p1, v2}, Lcom/android/wm/shell/common/split/DividerView;->onInsetsChanged(Landroid/view/InsetsState;Z)V

    .line 165
    .line 166
    .line 167
    :cond_d
    if-eqz v0, :cond_e

    .line 168
    .line 169
    check-cast v4, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 170
    .line 171
    invoke-virtual {v4, p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleLayoutSizeChange(Lcom/android/wm/shell/common/split/SplitLayout;Z)V

    .line 172
    .line 173
    .line 174
    :cond_e
    return-void
.end method

.method public final insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->insetsChanged(Landroid/view/InsetsState;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final isLandscape()Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final isSplitScreenFeasible(Z)Z
    .locals 9

    .line 1
    new-instance v8, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v3, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 24
    .line 25
    iget v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const/4 p0, 0x2

    .line 41
    move v7, p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v7, v0

    .line 44
    :goto_0
    move-object v0, v8

    .line 45
    move v5, p1

    .line 46
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final isVerticalDivision()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;
    .locals 13

    .line 1
    new-instance v3, Landroid/graphics/Rect;

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    move-object/from16 v1, p4

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    int-to-float v4, v1

    .line 21
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    int-to-float v5, v1

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    sub-int/2addr v1, v2

    .line 36
    int-to-float v6, v1

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr v0, v1

    .line 46
    int-to-float v7, v0

    .line 47
    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [F

    .line 49
    .line 50
    fill-array-data v0, :array_0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    new-instance v12, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;

    .line 58
    .line 59
    move-object v0, v12

    .line 60
    move-object v1, p0

    .line 61
    move-object v2, p2

    .line 62
    move/from16 v8, p5

    .line 63
    .line 64
    move/from16 v9, p6

    .line 65
    .line 66
    move-object v10, p1

    .line 67
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFFFLandroid/view/SurfaceControl$Transaction;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    .line 72
    .line 73
    return-object v11

    .line 74
    nop

    .line 75
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final release(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController;->mPositionProcessors:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p0
.end method

.method public final releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final resetDividerPosition()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds1:Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mWinBounds2:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final rotateTo(I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    .line 2
    .line 3
    sub-int v0, p1, v0

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x4

    .line 6
    .line 7
    rem-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    rem-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Rect;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-direct {p1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    iget v7, v3, Landroid/graphics/Rect;->right:I

    .line 36
    .line 37
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_4

    .line 63
    .line 64
    :cond_2
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    .line 65
    .line 66
    if-eqz v5, :cond_5

    .line 67
    .line 68
    iget v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    .line 69
    .line 70
    if-ne v5, v2, :cond_3

    .line 71
    .line 72
    move v1, v2

    .line 73
    :cond_3
    if-eqz v1, :cond_5

    .line 74
    .line 75
    :cond_4
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    xor-int/2addr v0, v2

    .line 82
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    .line 83
    .line 84
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {p0, v0, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 91
    .line 92
    invoke-virtual {p0, v4, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->initDividerPosition(Landroid/graphics/Rect;Z)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final setCellDividePosition(ILandroid/window/WindowContainerTransaction;Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/common/split/SplitLayout;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "setCellDividePosition: "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " -> "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "SplitLayout"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellAndHostBounds(I)V

    .line 42
    .line 43
    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 47
    .line 48
    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 49
    .line 50
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public final setCellDividerRatio(FIZZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {p2, v0}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    const/4 v2, 0x0

    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move p3, v2

    .line 38
    :goto_1
    if-eqz p4, :cond_2

    .line 39
    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    .line 42
    sub-float p1, v3, p1

    .line 43
    .line 44
    :cond_2
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_2
    sub-int/2addr v1, p3

    .line 60
    int-to-float p3, v1

    .line 61
    mul-float/2addr p3, p1

    .line 62
    const/high16 p1, 0x3f000000    # 0.5f

    .line 63
    .line 64
    add-float/2addr p3, p1

    .line 65
    float-to-int p1, p3

    .line 66
    add-int/2addr v0, p1

    .line 67
    if-eqz p4, :cond_4

    .line 68
    .line 69
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 70
    .line 71
    sub-int/2addr v0, p1

    .line 72
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellStageWindowConfigPosition(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellAndHostBounds(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 87
    .line 88
    const/4 p2, 0x0

    .line 89
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    .line 4
    .line 5
    .line 6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p1, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    .line 35
    .line 36
    :cond_0
    if-eqz p3, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 39
    .line 40
    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 41
    .line 42
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final setDivideRatio(FZZ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 p2, 0x0

    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move p3, p2

    .line 39
    :goto_1
    const/high16 v1, 0x3f000000    # 0.5f

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    :goto_2
    sub-int/2addr v2, p3

    .line 57
    int-to-float p3, v2

    .line 58
    mul-float/2addr p3, p1

    .line 59
    add-float/2addr p3, v1

    .line 60
    float-to-int p1, p3

    .line 61
    add-int/2addr v0, p1

    .line 62
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 69
    .line 70
    const/4 p3, 0x0

    .line 71
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final setDividerAtBorder(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 19
    .line 20
    :goto_0
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setDividerInteractive(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setInteractive(Ljava/lang/String;ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final snapToTarget(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Z)V
    .locals 4

    .line 1
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0xfa

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v0, v3, :cond_0

    .line 10
    .line 11
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 12
    .line 13
    new-instance v1, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;

    .line 14
    .line 15
    invoke-direct {v1, p0, p3, p2}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 23
    .line 24
    new-instance p3, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    invoke-direct {p3, p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 34
    .line 35
    new-instance p3, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda2;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-direct {p3, p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividePosition(IIILjava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final splitSwitching(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda11;)V
    .locals 14

    .line 1
    move-object v7, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    move-result-object v8

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v2, v8, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v1

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move v3, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget v3, v8, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    :goto_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget v4, v8, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v4, v1

    .line 31
    :goto_2
    if-eqz v0, :cond_3

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    :goto_3
    invoke-virtual {v8, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 40
    .line 41
    iget-object v2, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_4

    .line 50
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_4
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v9, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 59
    .line 60
    new-instance v4, Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v10, Landroid/graphics/Rect;

    .line 66
    .line 67
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v11, Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v10, v4, v9, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    .line 76
    .line 77
    .line 78
    iget-object v12, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 79
    .line 80
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    neg-int v0, v0

    .line 83
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 84
    .line 85
    neg-int v1, v1

    .line 86
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 87
    .line 88
    .line 89
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 90
    .line 91
    neg-int v0, v0

    .line 92
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 93
    .line 94
    neg-int v1, v1

    .line 95
    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 96
    .line 97
    .line 98
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 99
    .line 100
    neg-int v0, v0

    .line 101
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 102
    .line 103
    neg-int v1, v1

    .line 104
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 112
    .line 113
    neg-int v0, v0

    .line 114
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 115
    .line 116
    neg-int v1, v1

    .line 117
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 118
    .line 119
    .line 120
    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 121
    .line 122
    neg-int v0, v0

    .line 123
    int-to-float v5, v0

    .line 124
    iget v0, v8, Landroid/graphics/Rect;->top:I

    .line 125
    .line 126
    neg-int v0, v0

    .line 127
    int-to-float v6, v0

    .line 128
    move-object v0, p0

    .line 129
    move-object v1, p1

    .line 130
    move-object/from16 v2, p2

    .line 131
    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout;->moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 141
    .line 142
    neg-int v0, v0

    .line 143
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 144
    .line 145
    neg-int v1, v1

    .line 146
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 147
    .line 148
    .line 149
    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 150
    .line 151
    int-to-float v5, v0

    .line 152
    iget v0, v8, Landroid/graphics/Rect;->top:I

    .line 153
    .line 154
    int-to-float v6, v0

    .line 155
    move-object v0, p0

    .line 156
    move-object v1, p1

    .line 157
    move-object/from16 v2, p3

    .line 158
    .line 159
    move-object v4, v10

    .line 160
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout;->moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    new-instance v3, Landroid/graphics/Rect;

    .line 169
    .line 170
    iget-object v0, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 171
    .line 172
    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 173
    .line 174
    .line 175
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 176
    .line 177
    neg-int v0, v0

    .line 178
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 179
    .line 180
    neg-int v1, v1

    .line 181
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 182
    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    const/4 v6, 0x0

    .line 186
    move-object v0, p0

    .line 187
    move-object v1, p1

    .line 188
    move-object v4, v11

    .line 189
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/common/split/SplitLayout;->moveSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/animation/ValueAnimator;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 194
    .line 195
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 196
    .line 197
    .line 198
    filled-new-array {v13, v10, v0}, [Landroid/animation/Animator;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 203
    .line 204
    .line 205
    const-wide/16 v2, 0x15e

    .line 206
    .line 207
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 208
    .line 209
    .line 210
    new-instance v0, Lcom/android/wm/shell/common/split/SplitLayout$2;

    .line 211
    .line 212
    move-object/from16 v2, p4

    .line 213
    .line 214
    invoke-direct {v0, p0, v9, v2, v8}, Lcom/android/wm/shell/common/split/SplitLayout$2;-><init>(Lcom/android/wm/shell/common/split/SplitLayout;ILjava/util/function/Consumer;Landroid/graphics/Rect;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public final update(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p0, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;)V

    .line 37
    .line 38
    .line 39
    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 48
    .line 49
    invoke-virtual {p1, p0, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :cond_2
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->reset()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p0, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final updateBounds(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;)V

    return-void
.end method

.method public final updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;)V
    .locals 7

    .line 2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayStableInsets(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {p4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11
    :goto_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    move-result v0

    .line 14
    :goto_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz v3, :cond_6

    .line 15
    iget-boolean v6, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    if-nez v6, :cond_3

    .line 16
    iget-boolean v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeVideoControls:Z

    if-eqz v3, :cond_6

    .line 17
    :cond_3
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 19
    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 20
    iget-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    invoke-virtual {p4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "video_controls_mode"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/16 v0, 0xa0

    goto :goto_3

    :cond_4
    const/16 v0, 0xd7

    goto :goto_3

    :cond_5
    const/16 v0, 0xb4

    .line 22
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0xa

    div-int/2addr v1, v0

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 23
    iput v1, p4, Landroid/graphics/Rect;->top:I

    .line 24
    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    iput v5, p3, Landroid/graphics/Rect;->bottom:I

    iput v5, p3, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    .line 25
    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, v0

    .line 26
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sub-int v0, p3, v0

    iput v0, p4, Landroid/graphics/Rect;->left:I

    .line 27
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Rect;->right:I

    .line 28
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 29
    iget p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Rect;->left:I

    goto :goto_4

    .line 30
    :cond_7
    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    .line 31
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    sub-int v0, p3, v0

    iput v0, p4, Landroid/graphics/Rect;->top:I

    .line 32
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    .line 33
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 34
    iget p4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    add-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 35
    :goto_4
    invoke-static {p1, v4}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 36
    invoke-static {p2, v5}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 37
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz p1, :cond_8

    .line 38
    iput-boolean v5, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeVideoControls:Z

    .line 39
    :cond_8
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SNAP_ALGORITHM:Z

    if-eqz p1, :cond_9

    .line 40
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 41
    :cond_9
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz p1, :cond_a

    .line 42
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellAndHostBounds(I)V

    :cond_a
    return-void
.end method

.method public final updateCellAndHostBounds(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostAndCellArea:Landroid/graphics/Rect;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSide()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    .line 36
    .line 37
    if-ne v0, v3, :cond_1

    .line 38
    .line 39
    const-string v2, "CellUtil"

    .line 40
    .line 41
    const-string v3, "calcBoundsForPosition. dockSide invalid. "

    .line 42
    .line 43
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {p1, v0, v4, v1, v2}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForCellWithPosition(IILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-static {p1, v3, v5, v1, v2}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForCellWithPosition(IILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 55
    .line 56
    .line 57
    :goto_1
    sget-boolean v2, Lcom/android/wm/shell/common/split/SplitLayout;->DEBUG:Z

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string/jumbo v3, "updateCellAndHostBounds: mHostAndCellArea="

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", cell="

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", host="

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", cellDividePos="

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, ", cellSide="

    .line 97
    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, ", cellConfigPos="

    .line 105
    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 110
    .line 111
    invoke-static {p1}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, ", Callers="

    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const/4 p1, 0x5

    .line 124
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string v1, "SplitLayout"

    .line 136
    .line 137
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 141
    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    .line 145
    .line 146
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 147
    .line 148
    .line 149
    const/4 v1, 0x1

    .line 150
    if-eq v0, v1, :cond_6

    .line 151
    .line 152
    const/4 v1, 0x2

    .line 153
    if-eq v0, v1, :cond_5

    .line 154
    .line 155
    const/4 v1, 0x3

    .line 156
    if-eq v0, v1, :cond_4

    .line 157
    .line 158
    const/4 v1, 0x4

    .line 159
    if-eq v0, v1, :cond_3

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    .line 165
    .line 166
    add-int v2, v0, v1

    .line 167
    .line 168
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 169
    .line 170
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 171
    .line 172
    sub-int/2addr v0, v2

    .line 173
    sub-int/2addr v0, v1

    .line 174
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_4
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 178
    .line 179
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    .line 180
    .line 181
    sub-int/2addr v0, v1

    .line 182
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 183
    .line 184
    sub-int/2addr v0, v2

    .line 185
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 186
    .line 187
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 188
    .line 189
    add-int/2addr v0, v1

    .line 190
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 194
    .line 195
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    .line 196
    .line 197
    add-int/2addr v0, v1

    .line 198
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 199
    .line 200
    add-int/2addr v0, v2

    .line 201
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 202
    .line 203
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 204
    .line 205
    sub-int/2addr v0, v1

    .line 206
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_6
    iget v0, v4, Landroid/graphics/Rect;->right:I

    .line 210
    .line 211
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    .line 212
    .line 213
    sub-int v2, v0, v1

    .line 214
    .line 215
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 216
    .line 217
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 218
    .line 219
    add-int/2addr v0, v2

    .line 220
    add-int/2addr v0, v1

    .line 221
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 222
    .line 223
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 237
    .line 238
    if-eqz v2, :cond_7

    .line 239
    .line 240
    iget-boolean v2, v1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsCellDivider:Z

    .line 241
    .line 242
    if-eqz v2, :cond_7

    .line 243
    .line 244
    iget-object v2, v1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 245
    .line 246
    if-eqz v2, :cond_7

    .line 247
    .line 248
    iget-object v3, v1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 249
    .line 250
    if-eqz v3, :cond_7

    .line 251
    .line 252
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 257
    .line 258
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 259
    .line 260
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 261
    .line 262
    iget-object p1, v1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 263
    .line 264
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, v1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 268
    .line 269
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 270
    .line 271
    const/4 v0, 0x0

    .line 272
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/common/split/DividerView;->onInsetsChanged(Landroid/view/InsetsState;Z)V

    .line 273
    .line 274
    .line 275
    :cond_7
    return-void
.end method

.method public final updateCellStageWindowConfigPosition(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final updateConfiguration(Landroid/content/res/Configuration;)Z
    .locals 14

    .line 1
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 14
    .line 15
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 16
    .line 17
    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 18
    .line 19
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 20
    .line 21
    iget v6, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 22
    .line 23
    iget v7, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 24
    .line 25
    iget v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mOrientation:I

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    iget-object v10, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 29
    .line 30
    if-ne v8, v2, :cond_0

    .line 31
    .line 32
    iget v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    .line 33
    .line 34
    if-ne v8, v0, :cond_0

    .line 35
    .line 36
    iget v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    .line 37
    .line 38
    if-ne v8, v3, :cond_0

    .line 39
    .line 40
    iget v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mUiMode:I

    .line 41
    .line 42
    if-ne v8, v4, :cond_0

    .line 43
    .line 44
    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_0

    .line 49
    .line 50
    iget-object v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLocale:Ljava/util/Locale;

    .line 51
    .line 52
    invoke-virtual {v8, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_0

    .line 57
    .line 58
    iget v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontScale:F

    .line 59
    .line 60
    cmpl-float v8, v8, v6

    .line 61
    .line 62
    if-nez v8, :cond_0

    .line 63
    .line 64
    iget v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontWeightAdjustment:I

    .line 65
    .line 66
    if-ne v8, v7, :cond_0

    .line 67
    .line 68
    return v9

    .line 69
    :cond_0
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    .line 70
    .line 71
    const/4 v11, 0x1

    .line 72
    const/4 v12, 0x5

    .line 73
    if-eqz v8, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-nez v8, :cond_4

    .line 80
    .line 81
    iget v8, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 82
    .line 83
    if-eq v8, v12, :cond_4

    .line 84
    .line 85
    iget v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    .line 86
    .line 87
    if-ne v8, v11, :cond_1

    .line 88
    .line 89
    move v8, v11

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move v8, v9

    .line 92
    :goto_0
    if-eqz v8, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->isSplitScreenFeasible(Z)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-virtual {p0, v9}, Lcom/android/wm/shell/common/split/SplitLayout;->isSplitScreenFeasible(Z)Z

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    if-eqz v8, :cond_2

    .line 103
    .line 104
    iput v11, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    if-eqz v13, :cond_3

    .line 108
    .line 109
    iput v9, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    .line 110
    .line 111
    :cond_3
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string/jumbo v9, "split feasible changed, splitDivision="

    .line 114
    .line 115
    .line 116
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget v9, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    .line 120
    .line 121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    const-string v9, "SplitLayout"

    .line 129
    .line 130
    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_4
    iget-object v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {v8, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    iput-object v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    iget-object v8, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 142
    .line 143
    invoke-virtual {v8, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 144
    .line 145
    .line 146
    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mOrientation:I

    .line 147
    .line 148
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 149
    .line 150
    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 154
    .line 155
    .line 156
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    .line 157
    .line 158
    iput v3, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    .line 159
    .line 160
    iput v4, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mUiMode:I

    .line 161
    .line 162
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 163
    .line 164
    if-eqz v0, :cond_5

    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 167
    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 171
    .line 172
    .line 173
    :cond_5
    iput-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mLocale:Ljava/util/Locale;

    .line 174
    .line 175
    iput v6, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontScale:F

    .line 176
    .line 177
    iput v7, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mFontWeightAdjustment:I

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 184
    .line 185
    if-eqz v1, :cond_6

    .line 186
    .line 187
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 188
    .line 189
    if-ne p1, v12, :cond_6

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    xor-int/2addr p1, v11

    .line 196
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    .line 197
    .line 198
    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    invoke-virtual {p0, p1, v10}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 205
    .line 206
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerConfig(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->initDividerPosition(Landroid/graphics/Rect;Z)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateInvisibleRect()V

    .line 215
    .line 216
    .line 217
    return v11
.end method

.method public final updateDivideBounds(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mParallaxOffset:Landroid/graphics/Point;

    .line 7
    .line 8
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 9
    .line 10
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 13
    .line 14
    check-cast v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 15
    .line 16
    invoke-virtual {v1, v0, p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanging(IILcom/android/wm/shell/common/split/SplitLayout;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final updateDividerConfig(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const v1, 0x1050251

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v1, 0x1050250

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const v1, 0x1050157

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_0
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v2}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v3, v2

    .line 57
    :goto_1
    const/4 v4, 0x1

    .line 58
    invoke-virtual {p1, v4}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getRadius()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    :cond_3
    const/4 v4, 0x2

    .line 73
    invoke-virtual {p1, v4}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/view/RoundedCorner;->getRadius()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    :cond_4
    const/4 v5, 0x3

    .line 88
    invoke-virtual {p1, v5}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    :cond_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 107
    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 111
    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 115
    .line 116
    iput v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    .line 124
    .line 125
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER_SIZE_FOLD:Z

    .line 126
    .line 127
    if-eqz p1, :cond_7

    .line 128
    .line 129
    const p1, 0x7f071228

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    const p1, 0x7f071227

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 141
    .line 142
    :goto_3
    iget p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 143
    .line 144
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerInsets:I

    .line 145
    .line 146
    mul-int/2addr v0, v4

    .line 147
    add-int/2addr v0, p1

    .line 148
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerWindowWidth:I

    .line 149
    .line 150
    return-void
.end method

.method public final updateInvisibleRect()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 14
    .line 15
    div-int/lit8 v3, v3, 0x2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    div-int/lit8 v4, v4, 0x2

    .line 32
    .line 33
    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v1, v2

    .line 49
    :goto_2
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    :goto_3
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final updateSnapAlgorithm(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getSnapAlgorithm(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->initDividerPosition(Landroid/graphics/Rect;Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
