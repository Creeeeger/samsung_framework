.class public Lcom/android/wm/shell/splitscreen/StageCoordinator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# instance fields
.field public mAppPairStarted:Z

.field public mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

.field public mCellDividerVisible:Z

.field public final mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

.field public final mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field public mCellStageWindowConfigPosition:I

.field public final mContext:Landroid/content/Context;

.field public final mCurrentPackageNameList:Ljava/util/ArrayList;

.field public final mDelayedHandleLayoutSizeChange:Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayId:I

.field public final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

.field public mDividerLeashHidden:Z

.field public mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

.field public mDividerVisible:Z

.field public final mExcludeLoggingPackages:Ljava/util/List;

.field public mExitSplitScreenOnHide:Z

.field public mIsDividerRemoteAnimating:Z

.field public mIsDropEntering:Z

.field public mIsExiting:Z

.field public mIsFlexPanelMode:Z

.field public mIsFolded:Z

.field public mIsOpeningHomeDuringSplit:Z

.field public mIsRecentsInSplitAnimating:Z

.field public mIsRootTranslucent:Z

.field public mIsVideoControls:Z

.field public mKeyguardShowing:Z

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public mLastMainSplitDivision:I

.field public final mLastPackageNameList:Ljava/util/ArrayList;

.field public mLastReportedCellStageWinConfigPosition:I

.field public mLastReportedMainStageWinConfigPosition:I

.field public mLastReportedSideStageWinConfigPosition:I

.field public mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

.field public mLastTransactionType:I

.field public final mListeners:Ljava/util/List;

.field public final mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

.field public final mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field public mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field public mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

.field public mOrientation:I

.field public final mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

.field public final mPausingTasks:Ljava/util/ArrayList;

.field public final mRecentTasks:Ljava/util/Optional;

.field mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mRootTaskLeash:Landroid/view/SurfaceControl;

.field public mSeqForAsyncTransaction:J

.field public final mSharedPrefListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;

.field public mShouldUpdateRecents:Z

.field public mShowDecorImmediately:Z

.field public final mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

.field public final mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field public mSideStagePosition:I

.field public mSkipFlexPanelUpdate:Z

.field public final mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

.field public mSplitDivision:I

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public mSplitLayoutChangedForLaunchAdjacent:Z

.field public mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

.field public final mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field public final mSplitUnsupportedToast:Landroid/widget/Toast;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field public final mTempRect3:Landroid/graphics/Rect;

.field public mTmpConfigAfterFoldDismiss:Landroid/content/res/Configuration;

.field public mTopStageAfterFoldDismiss:I

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public mWillBeVideoControls:Z


# direct methods
.method public static -$$Nest$monRemoteAnimationFinishedOrCancelled(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    invoke-direct {p1, p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    const/4 v0, 0x7

    .line 45
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 49
    .line 50
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v5, p5

    move-object/from16 v15, p8

    move-object/from16 v3, p9

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Landroid/view/SurfaceSession;

    invoke-direct {v4}, Landroid/view/SurfaceSession;-><init>()V

    .line 3
    new-instance v11, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v11, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v11, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 4
    new-instance v14, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v14, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v14, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 5
    new-instance v13, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v13, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v12, 0x0

    .line 6
    iput v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    const/4 v7, 0x1

    .line 7
    iput v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 8
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 10
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 11
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    .line 12
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    const/4 v7, -0x1

    .line 13
    iput v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 14
    iput-boolean v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFolded:Z

    .line 15
    iput-boolean v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    .line 16
    iput-boolean v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    .line 17
    iput-boolean v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 18
    iput-boolean v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeVideoControls:Z

    .line 19
    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    invoke-direct {v7, v6, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDelayedHandleLayoutSizeChange:Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    .line 20
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    .line 21
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    const-string v7, "com.sec.android.app.launcher"

    const-string v8, "com.android.systemui"

    .line 22
    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExcludeLoggingPackages:Ljava/util/List;

    const-wide/16 v7, -0x1

    .line 23
    iput-wide v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSeqForAsyncTransaction:J

    .line 24
    iput v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    .line 25
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect:Landroid/graphics/Rect;

    .line 26
    new-instance v9, Landroid/content/res/Configuration;

    invoke-direct {v9}, Landroid/content/res/Configuration;-><init>()V

    iput-object v9, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 27
    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    invoke-direct {v7, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    .line 28
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-eqz v7, :cond_0

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

    invoke-direct {v7, v6, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move-object v8, v7

    .line 29
    iput v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 30
    iput v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    .line 31
    iput-boolean v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayoutChangedForLaunchAdjacent:Z

    .line 32
    iput-boolean v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    .line 33
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 38
    iput v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    move-object/from16 v7, p3

    .line 39
    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 40
    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 41
    new-instance v12, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-direct {v12}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;-><init>()V

    iput-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    move-object/from16 v12, p11

    .line 42
    iput-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v7, p12

    .line 43
    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 44
    invoke-virtual {v2, v0, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->createRootTask(ILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 45
    new-instance v7, Lcom/android/wm/shell/splitscreen/MainStage;

    move-object/from16 p12, v7

    move-object/from16 v17, v8

    move-object/from16 v8, p1

    move-object v0, v9

    move-object/from16 v9, p4

    move-object/from16 v18, v10

    move/from16 v10, p2

    const/4 v2, 0x0

    move-object/from16 v12, p3

    move-object/from16 v16, v13

    move-object v13, v4

    move-object/from16 v19, v14

    move-object/from16 v14, p10

    invoke-direct/range {v7 .. v14}, Lcom/android/wm/shell/splitscreen/MainStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 46
    new-instance v14, Lcom/android/wm/shell/splitscreen/SideStage;

    move-object v7, v14

    move-object/from16 v11, v19

    move-object v2, v14

    move-object/from16 v14, p10

    invoke-direct/range {v7 .. v14}, Lcom/android/wm/shell/splitscreen/SideStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 47
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v2, :cond_1

    .line 48
    new-instance v2, Lcom/android/wm/shell/splitscreen/CellStage;

    move-object v7, v2

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p2

    move-object/from16 v11, v16

    move-object/from16 v12, p3

    move-object v13, v4

    move-object/from16 v14, p10

    invoke-direct/range {v7 .. v14}, Lcom/android/wm/shell/splitscreen/CellStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 49
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 50
    iput-object v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v0, p6

    .line 51
    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object/from16 v0, p7

    .line 52
    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 53
    iput-object v3, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 54
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 55
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 56
    invoke-virtual/range {p4 .. p4}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-direct {v4, v1, v7}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v2, v4}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 57
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    if-eqz v0, :cond_2

    .line 58
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;

    invoke-direct {v0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSharedPrefListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;

    const-string/jumbo v2, "video_controls_pref"

    .line 59
    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 60
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 61
    :cond_2
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    const/4 v4, 0x2

    invoke-direct {v2, v6, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-direct {v0, v3, v15, v2, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 62
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 63
    invoke-virtual {v15, v6}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    const v0, 0x7f1304ce

    const/4 v2, 0x0

    .line 64
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 65
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    iput-boolean v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 66
    new-instance v7, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayController;)V

    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 67
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-eqz v0, :cond_3

    move-object/from16 v0, v17

    .line 68
    iput-object v0, v15, Lcom/android/wm/shell/transition/Transitions;->mRecentTransitionCallback:Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

    .line 69
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_3

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerRecentTransitionCallback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellTransitions"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, v18

    .line 71
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 72
    :cond_4
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v6, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendStatusToListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/splitscreen/MainStage;",
            "Lcom/android/wm/shell/splitscreen/SideStage;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/split/SplitLayout;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;)V"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v5, p7

    move-object/from16 v0, p11

    move-object/from16 v3, p12

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    .line 76
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 77
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 78
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v1, 0x0

    .line 79
    iput v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    const/4 v2, 0x1

    .line 80
    iput v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 81
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 83
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 84
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    .line 85
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    const/4 v2, -0x1

    .line 86
    iput v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 87
    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFolded:Z

    .line 88
    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    .line 89
    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    .line 90
    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 91
    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeVideoControls:Z

    .line 92
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDelayedHandleLayoutSizeChange:Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    const-string v2, "com.sec.android.app.launcher"

    const-string v4, "com.android.systemui"

    .line 95
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mExcludeLoggingPackages:Ljava/util/List;

    const-wide/16 v9, -0x1

    .line 96
    iput-wide v9, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSeqForAsyncTransaction:J

    .line 97
    iput v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    .line 98
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect:Landroid/graphics/Rect;

    .line 99
    new-instance v9, Landroid/content/res/Configuration;

    invoke-direct {v9}, Landroid/content/res/Configuration;-><init>()V

    iput-object v9, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 100
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    .line 101
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 102
    :cond_0
    iput v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 103
    iput v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    .line 104
    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayoutChangedForLaunchAdjacent:Z

    .line 105
    iput-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iput-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    move v2, p2

    .line 111
    iput v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    move-object v2, p3

    .line 112
    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v2, p4

    .line 113
    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object/from16 v2, p5

    .line 114
    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    move-object/from16 v2, p6

    .line 115
    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 116
    iput-object v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v2, p8

    .line 117
    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object/from16 v2, p9

    .line 118
    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 119
    iput-object v3, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v2, p10

    .line 120
    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 121
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    const/4 v10, 0x5

    invoke-direct {v4, p0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-direct {v2, v3, v0, v4, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 122
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-direct {v2}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;-><init>()V

    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    move-object/from16 v4, p13

    .line 123
    iput-object v4, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v2, p14

    .line 124
    iput-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 125
    invoke-virtual {v5, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 126
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 127
    iput-object v6, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 128
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    const v0, 0x7f1304ce

    .line 129
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 130
    new-instance v10, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p0

    move-object/from16 v3, p12

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayController;)V

    iput-object v10, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 131
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendStatusToListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    .line 134
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public static addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    .line 5
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 6
    .line 7
    const-string v0, "android.activity.launchRootTaskToken"

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string p1, "android:activity.startedFromWindowTypeLauncher"

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const-string p1, "android.activity.launchDisplayId"

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string p1, "android.pendingIntent.backgroundActivityAllowed"

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const-string p1, "android.pendingIntent.backgroundActivityAllowedByPermission"

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 7
    .line 8
    and-int/lit8 v2, v0, 0x8

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return v3

    .line 14
    :cond_0
    and-int/lit8 v0, v0, 0x20

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 21
    .line 22
    if-ne p0, v1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move v3, v2

    .line 26
    :goto_0
    return v3

    .line 27
    :cond_3
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 28
    .line 29
    and-int/lit8 v2, v0, 0x10

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    return v3

    .line 35
    :cond_4
    and-int/lit8 v0, v0, 0x40

    .line 36
    .line 37
    const/4 v2, 0x5

    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget p0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 42
    .line 43
    if-ne p0, v1, :cond_6

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_6
    move v3, v2

    .line 47
    :goto_1
    return v3
.end method

.method public static isSameIntentRequested(Landroid/app/TaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget p0, p0, Landroid/app/TaskInfo;->userId:I

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p0, p1, :cond_1

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 49
    :goto_1
    return p0
.end method

.method public static isVideoControlsTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isVideoControlsActivity(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static isVisibleTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ne p0, p1, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 45
    :goto_1
    return p0
.end method

.method public static rotateMultiSplitClockwise(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x2

    .line 8
    const/16 v4, 0x48

    .line 9
    .line 10
    const/16 v5, 0x30

    .line 11
    .line 12
    const/16 v6, 0x18

    .line 13
    .line 14
    if-eq v0, v3, :cond_9

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x4

    .line 18
    const/16 v9, 0x60

    .line 19
    .line 20
    if-eq v0, v2, :cond_6

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    if-eq v0, v8, :cond_3

    .line 24
    .line 25
    if-eq v0, v2, :cond_0

    .line 26
    .line 27
    const/4 p0, -0x1

    .line 28
    return p0

    .line 29
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 36
    .line 37
    iput v7, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 38
    .line 39
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 40
    .line 41
    if-ne v0, v4, :cond_1

    .line 42
    .line 43
    iput v6, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-ne v0, v9, :cond_2

    .line 47
    .line 48
    iput v4, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 49
    .line 50
    :cond_2
    :goto_0
    return v3

    .line 51
    :cond_3
    iput v1, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 52
    .line 53
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 54
    .line 55
    if-ne v0, v5, :cond_4

    .line 56
    .line 57
    iput v9, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    if-ne v0, v9, :cond_5

    .line 61
    .line 62
    iput v4, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 63
    .line 64
    :cond_5
    :goto_1
    return v2

    .line 65
    :cond_6
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 66
    .line 67
    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 72
    .line 73
    iput v7, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 74
    .line 75
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 76
    .line 77
    if-ne v0, v6, :cond_7

    .line 78
    .line 79
    iput v5, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_7
    if-ne v0, v5, :cond_8

    .line 83
    .line 84
    iput v9, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 85
    .line 86
    :cond_8
    :goto_2
    return v8

    .line 87
    :cond_9
    iput v1, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 88
    .line 89
    iget v0, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 90
    .line 91
    if-ne v0, v6, :cond_a

    .line 92
    .line 93
    iput v5, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_a
    if-ne v0, v4, :cond_b

    .line 97
    .line 98
    iput v6, p0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 99
    .line 100
    :cond_b
    :goto_3
    return v2
.end method

.method public static sendMessageProxyService(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V
    .locals 5

    .line 1
    const-class v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 8
    .line 9
    new-instance v1, Landroid/os/Message;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v3, "stage_position"

    .line 20
    .line 21
    .line 22
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 23
    .line 24
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v3, "split_create_mode"

    .line 28
    .line 29
    .line 30
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitCreateMode:I

    .line 31
    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "stage_ratio"

    .line 36
    .line 37
    .line 38
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    .line 39
    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 41
    .line 42
    .line 43
    const-string v3, "cell_ratio"

    .line 44
    .line 45
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 48
    .line 49
    .line 50
    const-string v3, "launch_task_id"

    .line 51
    .line 52
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string v3, "main_stage_intent"

    .line 58
    .line 59
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    .line 60
    .line 61
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    .line 63
    .line 64
    const-string/jumbo v3, "side_stage_intent"

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 68
    .line 69
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    .line 71
    .line 72
    const-string v3, "main_stage_user_handle"

    .line 73
    .line 74
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    .line 75
    .line 76
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v3, "side_stage_user_handle"

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 83
    .line 84
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    .line 86
    .line 87
    const-string v3, "left_top_task_id"

    .line 88
    .line 89
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    .line 90
    .line 91
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v3, "right_bottom_task_id"

    .line 95
    .line 96
    .line 97
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    .line 98
    .line 99
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    const-string v3, "cell_task_id"

    .line 103
    .line 104
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    .line 105
    .line 106
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    const-string/jumbo v3, "tap_task_id"

    .line 110
    .line 111
    .line 112
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    .line 113
    .line 114
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    const-string/jumbo v3, "tap_intent"

    .line 118
    .line 119
    .line 120
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapIntent:Landroid/content/Intent;

    .line 121
    .line 122
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    .line 124
    .line 125
    const-string/jumbo v3, "tap_user_handle"

    .line 126
    .line 127
    .line 128
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapUserHandle:Landroid/os/UserHandle;

    .line 129
    .line 130
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    .line 132
    .line 133
    const-string v3, "cell_stage_intent"

    .line 134
    .line 135
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageIntent:Landroid/content/Intent;

    .line 136
    .line 137
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    .line 139
    .line 140
    const-string v3, "cell_stage_user_handle"

    .line 141
    .line 142
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageUserHandle:Landroid/os/UserHandle;

    .line 143
    .line 144
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    .line 146
    .line 147
    const-string v3, "grouped_recent_vertically"

    .line 148
    .line 149
    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mAppsStackedVertically:Z

    .line 150
    .line 151
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    const-string v3, "change_app_intent"

    .line 155
    .line 156
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppIntent:Landroid/content/Intent;

    .line 157
    .line 158
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    .line 160
    .line 161
    const-string v3, "change_app_user_handle"

    .line 162
    .line 163
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppUserHandle:Landroid/os/UserHandle;

    .line 164
    .line 165
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    .line 167
    .line 168
    const-string v3, "change_app_stage_type"

    .line 169
    .line 170
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppStageType:I

    .line 171
    .line 172
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    const-string v3, "cell_stage_position"

    .line 176
    .line 177
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 178
    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    const-string v3, "launch_from"

    .line 183
    .line 184
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchFrom:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string/jumbo v3, "split_division"

    .line 190
    .line 191
    .line 192
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 193
    .line 194
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    const-string/jumbo v3, "pending_intent"

    .line 198
    .line 199
    .line 200
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 201
    .line 202
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    .line 204
    .line 205
    const-string/jumbo v3, "remote_transition"

    .line 206
    .line 207
    .line 208
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 209
    .line 210
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 214
    .line 215
    .line 216
    iput p1, v1, Landroid/os/Message;->what:I

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    :try_start_0
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mMessenger:Landroid/os/Messenger;

    .line 222
    .line 223
    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :catch_0
    move-exception p0

    .line 228
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 229
    .line 230
    .line 231
    :goto_0
    return-void
.end method

.method public static shouldBreakPairedTaskInRecents(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p0, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq p0, v1, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-eq p0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x9

    .line 18
    .line 19
    if-eq p0, v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0xb

    .line 22
    .line 23
    if-eq p0, v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0xd

    .line 26
    .line 27
    if-eq p0, v1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :cond_0
    return v0
.end method


# virtual methods
.method public final addCellDividerBarToTransition(Landroid/window/TransitionInfo;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "StageCoordinator"

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance v2, Landroid/window/TransitionInfo$Change;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v3, v0}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefCellDividerBounds()Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    .line 37
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    const/4 p0, 0x3

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p0, 0x4

    .line 53
    :goto_0
    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 54
    .line 55
    .line 56
    const/high16 p0, 0x400000

    .line 57
    .line 58
    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 62
    .line 63
    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p1, "addCellDividerBarToTransition:[MST] leash="

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, ", Callers="

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x7

    .line 80
    invoke-static {p1, p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    :goto_1
    const-string p0, "addDividerBarToTransition but leash was released or not be created"

    .line 85
    .line 86
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "StageCoordinator"

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance v2, Landroid/window/TransitionInfo$Change;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v3, v0}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    .line 33
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 34
    .line 35
    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const/4 p0, 0x3

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x4

    .line 49
    :goto_0
    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 50
    .line 51
    .line 52
    const/high16 p0, 0x400000

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 58
    .line 59
    .line 60
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_LOG:Z

    .line 61
    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p1, "addDividerBarToTransition:[MST] leash="

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, ", Callers="

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x7

    .line 80
    invoke-static {p1, p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :cond_3
    :goto_1
    const-string p0, "addDividerBarToTransition but leash was released or not be created"

    .line 85
    .line 86
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final applyCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 11
    .line 12
    const-string v2, "StageCoordinator"

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const-string p0, "applyCellDividerVisibility: skip, divider is remote animating!"

    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    const-string v1, "applyCellDividerVisibility: cancel, prev animator"

    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 44
    .line 45
    .line 46
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "applyCellDividerVisibility: vis="

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefCellDividerBounds()Landroid/graphics/Rect;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect3:Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 74
    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    .line 79
    .line 80
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 81
    .line 82
    .line 83
    const p0, 0x7fffffff

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 87
    .line 88
    .line 89
    iget p0, v2, Landroid/graphics/Rect;->left:I

    .line 90
    .line 91
    int-to-float p0, p0

    .line 92
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 93
    .line 94
    int-to-float v1, v1

    .line 95
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const/4 v1, 0x2

    .line 110
    new-array v1, v1, [F

    .line 111
    .line 112
    fill-array-data v1, :array_0

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda10;

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 131
    .line 132
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;

    .line 133
    .line 134
    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 157
    .line 158
    .line 159
    :goto_0
    return-void

    .line 160
    nop

    .line 161
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final applyCellHostResizeTransition(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "StageCoordinator"

    .line 12
    .line 13
    const-string p1, "applyCellHostResizeTransition: cannot find cell host token"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    const-string v1, "cell_start"

    .line 21
    .line 22
    invoke-virtual {p1, p0, v0, v1}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 16
    .line 17
    const p1, -0xb385b71

    .line 18
    .line 19
    .line 20
    const-string v0, "   Skip animating divider bar due to divider leash not ready."

    .line 21
    .line 22
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 27
    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 35
    .line 36
    const p1, -0x42a56eb2

    .line 37
    .line 38
    .line 39
    const-string v0, "   Skip animating divider bar due to it\'s remote animating."

    .line 40
    .line 41
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    .line 65
    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 72
    .line 73
    .line 74
    const v1, 0x7fffffff

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 78
    .line 79
    .line 80
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    int-to-float v1, v1

    .line 83
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 84
    .line 85
    int-to-float v2, v2

    .line 86
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 93
    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const/4 v3, 0x2

    .line 101
    new-array v3, v3, [F

    .line 102
    .line 103
    fill-array-data v3, :array_0

    .line 104
    .line 105
    .line 106
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iput-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 111
    .line 112
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda10;

    .line 113
    .line 114
    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 121
    .line 122
    new-instance v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;

    .line 123
    .line 124
    invoke-direct {v3, p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 150
    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 160
    .line 161
    .line 162
    :cond_7
    return-void

    .line 163
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onSplitScreenExit()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearSplitPairedInRecents(I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v5, -0x1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ne v6, v5, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    .line 48
    .line 49
    iget-object v4, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 50
    .line 51
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 52
    .line 53
    invoke-virtual {p2, v4, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 54
    .line 55
    .line 56
    iget-object v4, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 57
    .line 58
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 59
    .line 60
    invoke-virtual {p2, v4, v2}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 61
    .line 62
    .line 63
    iget-object v2, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    .line 65
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 66
    .line 67
    invoke-virtual {p2, v2, v1}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 68
    .line 69
    .line 70
    iget-object v2, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    .line 72
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 73
    .line 74
    invoke-virtual {p2, v2, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 79
    .line 80
    invoke-virtual {v2, p2, v1, v3}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;ZZ)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p2, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    .line 84
    .line 85
    .line 86
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 87
    .line 88
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 89
    .line 90
    invoke-virtual {p2, v6, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 94
    .line 95
    .line 96
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 97
    .line 98
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 99
    .line 100
    invoke-virtual {p2, v2, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete()V

    .line 104
    .line 105
    .line 106
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 107
    .line 108
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 109
    .line 110
    invoke-virtual {p2, v2, v1}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v3}, Landroid/window/WindowContainerTransaction;->setDismissSplit(Z)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 117
    .line 118
    invoke-virtual {v2, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 119
    .line 120
    .line 121
    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    .line 122
    .line 123
    invoke-direct {p2, p0, p1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 127
    .line 128
    .line 129
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 130
    .line 131
    if-eqz p2, :cond_3

    .line 132
    .line 133
    iput v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 134
    .line 135
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v2, "applyExitSplitScreen, reason = "

    .line 138
    .line 139
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    const-string v2, "StageCoordinator"

    .line 154
    .line 155
    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    if-ne p1, v0, :cond_4

    .line 161
    .line 162
    move v1, v3

    .line 163
    :cond_4
    invoke-virtual {p0, p3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->logExitToStage(IZ)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_5
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 168
    .line 169
    const/4 v4, -0x1

    .line 170
    const/4 v5, 0x0

    .line 171
    const/4 v6, -0x1

    .line 172
    const/4 v7, 0x0

    .line 173
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    move v3, p3

    .line 180
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    .line 181
    .line 182
    .line 183
    :goto_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 184
    .line 185
    if-eqz p1, :cond_6

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 190
    .line 191
    .line 192
    :cond_6
    :goto_3
    return-void
.end method

.method public final checkNonResizableTaskAndStartTask(III)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isAllTasksResizable(III)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    invoke-virtual {p2, p1, p3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 18
    .line 19
    .line 20
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 21
    .line 22
    const-string p3, "dismiss_recent_pair"

    .line 23
    .line 24
    invoke-virtual {p2, p1, p3}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 30
    .line 31
    .line 32
    const-string p0, "StageCoordinator"

    .line 33
    .line 34
    const-string p1, "include non resizable task"

    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public final clearRequestIfPresented()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 12
    .line 13
    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final clearSplitPairedInRecents(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->shouldBreakPairedTaskInRecents(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final dismissSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;Z)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 8
    .line 9
    const/4 v5, -0x1

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-ne v6, v1, :cond_1

    .line 30
    .line 31
    move v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v1, v5

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 35
    .line 36
    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 37
    .line 38
    if-ne v6, v4, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v3, v4

    .line 42
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    move v2, v1

    .line 50
    move v1, v0

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-virtual {v6, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    move v1, v0

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_6
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    move v7, v2

    .line 81
    move v2, v1

    .line 82
    move v1, v7

    .line 83
    goto :goto_3

    .line 84
    :cond_7
    move v1, v5

    .line 85
    :goto_2
    move v2, v1

    .line 86
    :goto_3
    if-eq v1, v5, :cond_a

    .line 87
    .line 88
    if-ne v2, v5, :cond_8

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_8
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 92
    .line 93
    if-eqz p1, :cond_9

    .line 94
    .line 95
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareAndStartDismissTransition(IILandroid/window/WindowContainerTransaction;Z)V

    .line 96
    .line 97
    .line 98
    :cond_9
    return-void

    .line 99
    :cond_a
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string p2, "dismissSplitTask: failed, cannot find "

    .line 102
    .line 103
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const-string p1, "StageCoordinator"

    .line 114
    .line 115
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "StageCoordinator mDisplayId="

    .line 12
    .line 13
    invoke-static {p2, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 18
    .line 19
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "mDividerVisible="

    .line 38
    .line 39
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 43
    .line 44
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, "isSplitActive="

    .line 63
    .line 64
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 68
    .line 69
    iget-boolean v3, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 70
    .line 71
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, "isSplitVisible="

    .line 90
    .line 91
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v3, "MainStage"

    .line 117
    .line 118
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string/jumbo v3, "stagePosition="

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    const-string v5, "UNKNOWN"

    .line 147
    .line 148
    const-string v6, "SPLIT_POSITION_BOTTOM_OR_RIGHT"

    .line 149
    .line 150
    const/4 v7, 0x1

    .line 151
    const-string v8, "SPLIT_POSITION_TOP_OR_LEFT"

    .line 152
    .line 153
    const-string v9, "SPLIT_POSITION_UNDEFINED"

    .line 154
    .line 155
    const/4 v10, -0x1

    .line 156
    if-eq v4, v10, :cond_2

    .line 157
    .line 158
    if-eqz v4, :cond_1

    .line 159
    .line 160
    if-eq v4, v7, :cond_0

    .line 161
    .line 162
    move-object v4, v5

    .line 163
    goto :goto_0

    .line 164
    :cond_0
    move-object v4, v6

    .line 165
    goto :goto_0

    .line 166
    :cond_1
    move-object v4, v8

    .line 167
    goto :goto_0

    .line 168
    :cond_2
    move-object v4, v9

    .line 169
    :goto_0
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v4, "isActive="

    .line 188
    .line 189
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-boolean v4, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 193
    .line 194
    invoke-static {p2, v4, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v4, "MainStageListener"

    .line 209
    .line 210
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 221
    .line 222
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v4, "SideStage"

    .line 234
    .line 235
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 257
    .line 258
    if-eq v4, v10, :cond_5

    .line 259
    .line 260
    if-eqz v4, :cond_4

    .line 261
    .line 262
    if-eq v4, v7, :cond_3

    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_3
    move-object v5, v6

    .line 266
    goto :goto_1

    .line 267
    :cond_4
    move-object v5, v8

    .line 268
    goto :goto_1

    .line 269
    :cond_5
    move-object v5, v9

    .line 270
    :goto_1
    invoke-static {p2, v5, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 271
    .line 272
    .line 273
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 274
    .line 275
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-instance p2, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v4, "SideStageListener"

    .line 287
    .line 288
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 299
    .line 300
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 304
    .line 305
    if-eqz p2, :cond_6

    .line 306
    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v4, "CellStage"

    .line 316
    .line 317
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    new-instance p2, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 339
    .line 340
    invoke-static {v3}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 355
    .line 356
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    new-instance p2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v3, "CellStageListener"

    .line 368
    .line 369
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 380
    .line 381
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :cond_6
    iget-boolean p2, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 385
    .line 386
    if-eqz p2, :cond_7

    .line 387
    .line 388
    new-instance p2, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v1, "SplitLayout"

    .line 397
    .line 398
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p2

    .line 405
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 409
    .line 410
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string v2, "bounds1="

    .line 422
    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    iget-object v2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 427
    .line 428
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v2, "dividerBounds="

    .line 451
    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    iget-object v2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 456
    .line 457
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v2, "bounds2="

    .line 480
    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    iget-object v2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 485
    .line 486
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 501
    .line 502
    if-eqz v1, :cond_7

    .line 503
    .line 504
    const-string v1, "bounds3="

    .line 505
    .line 506
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    iget-object p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 511
    .line 512
    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p2

    .line 516
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object p2

    .line 523
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 527
    .line 528
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 529
    .line 530
    .line 531
    move-result p2

    .line 532
    if-nez p2, :cond_8

    .line 533
    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    const-string v0, "mPausingTasks="

    .line 543
    .line 544
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p0

    .line 554
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    :cond_8
    return-void
.end method

.method public final exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    .line 14
    .line 15
    .line 16
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_RUNESTONE_LOGGING:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/core/RunestoneLogger;->sendDismissMultiWindowState(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, v2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 39
    .line 40
    .line 41
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iput-boolean v2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    .line 58
    .line 59
    iget-object v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 60
    .line 61
    iget-object v4, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 62
    .line 63
    invoke-virtual {v4, p2, v3}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iput-object v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 71
    .line 72
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 73
    .line 74
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v4, Landroid/graphics/Rect;

    .line 82
    .line 83
    iget-object v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 101
    .line 102
    invoke-virtual {p1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 103
    .line 104
    .line 105
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0, p2, p1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 117
    .line 118
    .line 119
    iput-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    .line 125
    .line 126
    .line 127
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 128
    .line 129
    iget-object p1, v4, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 130
    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    move v2, v3

    .line 135
    :goto_1
    if-nez v2, :cond_3

    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerPositionAsFraction()F

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    iget v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    invoke-virtual/range {v4 .. v10}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logEnter(FIIIIZ)V

    .line 164
    .line 165
    .line 166
    :cond_3
    return-void
.end method

.method public final getActivateSplitPosition(Landroid/app/TaskInfo;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId:I

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId2:I

    .line 14
    .line 15
    iget v4, p1, Landroid/app/TaskInfo;->taskId:I

    .line 16
    .line 17
    if-ne v3, v4, :cond_1

    .line 18
    .line 19
    iget p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    iget v3, p1, Landroid/app/TaskInfo;->taskId:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    .line 27
    .line 28
    return p0

    .line 29
    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent:Landroid/content/Intent;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object p1, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 50
    .line 51
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    .line 52
    .line 53
    return p0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent2:Landroid/content/Intent;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 71
    .line 72
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    .line 73
    .line 74
    return p0

    .line 75
    :cond_4
    :goto_0
    return v1
.end method

.method public final getBottomStages()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    and-int/lit8 v1, v1, 0x40

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    and-int/lit8 v1, v1, 0x40

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 37
    .line 38
    and-int/lit8 v1, v1, 0x40

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    return-object v0
.end method

.method public final getCellHostStageType()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, -0x1

    .line 19
    return p0
.end method

.method public final getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v12, Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {v12, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/view/RemoteAnimationTarget;

    .line 16
    .line 17
    move-object v2, v1

    .line 18
    const/4 v3, -0x1

    .line 19
    const/4 v4, -0x1

    .line 20
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const v9, 0x7fffffff

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Point;

    .line 33
    .line 34
    move-object v10, v0

    .line 35
    const/4 v11, 0x0

    .line 36
    invoke-direct {v0, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/app/WindowConfiguration;

    .line 40
    .line 41
    move-object v13, v0

    .line 42
    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v14, 0x1

    .line 46
    const/4 v15, 0x0

    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    const/16 v17, 0x0

    .line 50
    .line 51
    const/16 v18, 0x0

    .line 52
    .line 53
    const/16 v19, 0x7f2

    .line 54
    .line 55
    move-object v11, v12

    .line 56
    invoke-direct/range {v2 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method

.method public final getFocusedStageType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x2

    .line 34
    return p0

    .line 35
    :cond_2
    const/4 p0, -0x1

    .line 36
    return p0
.end method

.method public final getInvertedCurrentPosition()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 20
    .line 21
    if-gt v1, v0, :cond_2

    .line 22
    .line 23
    if-ge p0, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    add-int/2addr v1, p0

    .line 27
    sub-int/2addr v1, v0

    .line 28
    if-ne v1, v0, :cond_1

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    :cond_1
    return v1

    .line 33
    :cond_2
    :goto_0
    return v0
.end method

.method public final getMainStageBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    return-object p0
.end method

.method public final getMainStagePosition()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMainStageWinConfigPosition()I
    .locals 7

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_b

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 14
    .line 15
    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 16
    .line 17
    if-eqz v5, :cond_7

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 22
    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_7

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v1, 0x60

    .line 34
    .line 35
    const/16 v2, 0x30

    .line 36
    .line 37
    const/16 v5, 0x48

    .line 38
    .line 39
    const/16 v6, 0x18

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 44
    .line 45
    and-int/2addr v0, v4

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 49
    .line 50
    if-nez p0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v1, v5

    .line 54
    :goto_0
    return v1

    .line 55
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 56
    .line 57
    if-nez p0, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v2, v6

    .line 61
    :goto_1
    return v2

    .line 62
    :cond_3
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 63
    .line 64
    and-int/2addr v0, v3

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 68
    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move v1, v2

    .line 73
    :goto_2
    return v1

    .line 74
    :cond_5
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 75
    .line 76
    if-nez p0, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    move v5, v6

    .line 80
    :goto_3
    return v5

    .line 81
    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_9

    .line 86
    .line 87
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 88
    .line 89
    if-nez p0, :cond_8

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_8
    move v1, v3

    .line 93
    :goto_4
    return v1

    .line 94
    :cond_9
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 95
    .line 96
    if-nez p0, :cond_a

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_a
    move v2, v4

    .line 100
    :goto_5
    return v2

    .line 101
    :cond_b
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_d

    .line 106
    .line 107
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 108
    .line 109
    if-nez p0, :cond_c

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_c
    move v1, v3

    .line 113
    :goto_6
    return v1

    .line 114
    :cond_d
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 115
    .line 116
    if-nez p0, :cond_e

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_e
    move v2, v4

    .line 120
    :goto_7
    return v2
.end method

.method public final getSideStageBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getHostBounds()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    return-object p0
.end method

.method public final getSideStageWinConfigPosition()I
    .locals 7

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_b

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 14
    .line 15
    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 16
    .line 17
    if-eqz v5, :cond_7

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 22
    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_7

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v1, 0x30

    .line 34
    .line 35
    const/16 v2, 0x60

    .line 36
    .line 37
    const/16 v5, 0x18

    .line 38
    .line 39
    const/16 v6, 0x48

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 44
    .line 45
    and-int/2addr v0, v4

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 49
    .line 50
    if-nez p0, :cond_0

    .line 51
    .line 52
    move v2, v6

    .line 53
    :cond_0
    return v2

    .line 54
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 55
    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    move v1, v5

    .line 59
    :cond_2
    return v1

    .line 60
    :cond_3
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 61
    .line 62
    and-int/2addr v0, v3

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 66
    .line 67
    if-nez p0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move v1, v2

    .line 71
    :goto_0
    return v1

    .line 72
    :cond_5
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 73
    .line 74
    if-nez p0, :cond_6

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    move v5, v6

    .line 78
    :goto_1
    return v5

    .line 79
    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_9

    .line 84
    .line 85
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 86
    .line 87
    if-nez p0, :cond_8

    .line 88
    .line 89
    move v1, v3

    .line 90
    :cond_8
    return v1

    .line 91
    :cond_9
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 92
    .line 93
    if-nez p0, :cond_a

    .line 94
    .line 95
    move v2, v4

    .line 96
    :cond_a
    return v2

    .line 97
    :cond_b
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_d

    .line 102
    .line 103
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 104
    .line 105
    if-nez p0, :cond_c

    .line 106
    .line 107
    move v1, v3

    .line 108
    :cond_c
    return v1

    .line 109
    :cond_d
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 110
    .line 111
    if-nez p0, :cond_e

    .line 112
    .line 113
    move v2, v4

    .line 114
    :cond_e
    return v2
.end method

.method public final getSplitCreateMode()I
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 7
    .line 8
    iput v1, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 15
    .line 16
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 17
    .line 18
    iput p0, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final getSplitDivision()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    xor-int/lit8 p0, p0, 0x1

    .line 13
    .line 14
    return p0
.end method

.method public final getSplitItemPosition(Landroid/window/WindowContainerToken;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 27
    .line 28
    return p0

    .line 29
    :cond_2
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 30
    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-object p1, v2, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 42
    .line 43
    if-ne p1, v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 51
    .line 52
    :goto_0
    return p0

    .line 53
    :cond_4
    return v0
.end method

.method public final getSplitItemStage(Landroid/window/WindowContainerToken;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    const/4 p0, 0x2

    .line 38
    return p0

    .line 39
    :cond_3
    return v0
.end method

.method public final getSplitItemStagePosition(Landroid/window/WindowContainerToken;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 40
    .line 41
    return p0

    .line 42
    :cond_3
    return v0
.end method

.method public getSplitTransitions()Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStageAtPosition(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 26
    .line 27
    if-ne v0, p1, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final getStageOfTask(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_0

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_1

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v1, :cond_1

    return-object v0

    .line 6
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final getStageToken(I)Landroid/window/WindowContainerToken;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 11
    .line 12
    :cond_0
    return-object v0

    .line 13
    :cond_1
    const/4 v1, 0x1

    .line 14
    if-ne p1, v1, :cond_3

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 23
    .line 24
    :cond_2
    return-object v0

    .line 25
    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    if-ne p1, v1, :cond_4

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    .line 36
    if-eqz p0, :cond_4

    .line 37
    .line 38
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 39
    .line 40
    :cond_4
    return-object v0
.end method

.method public final getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x1

    .line 4
    return p0

    .line 5
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 16
    .line 17
    if-ne p1, p0, :cond_2

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 p0, 0x1

    .line 22
    :goto_0
    return p0
.end method

.method public final getStageWinConfigPositionByType(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 24
    .line 25
    return p0

    .line 26
    :cond_2
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final getTaskIdByStageType(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_2
    const/4 p0, -0x1

    .line 35
    return p0
.end method

.method public final getTopStageBottom()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    and-int/lit8 v0, v0, 0x10

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    return p0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 38
    .line 39
    and-int/lit8 v0, v0, 0x10

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/graphics/Rect;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 53
    .line 54
    .line 55
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 56
    .line 57
    return p0

    .line 58
    :cond_2
    const/4 p0, 0x0

    .line 59
    return p0
.end method

.method public final handleLayoutSizeChange(Lcom/android/wm/shell/common/split/SplitLayout;Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move p2, v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 13
    .line 14
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/wm/shell/common/HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDelayedHandleLayoutSizeChange:Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateSnapAlgorithm(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 35
    .line 36
    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 51
    .line 52
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-wide v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSeqForAsyncTransaction:J

    .line 56
    .line 57
    const-wide/16 v8, 0x1

    .line 58
    .line 59
    add-long/2addr v6, v8

    .line 60
    iput-wide v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSeqForAsyncTransaction:J

    .line 61
    .line 62
    const-wide/16 v8, 0x0

    .line 63
    .line 64
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    iput-wide v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSeqForAsyncTransaction:J

    .line 69
    .line 70
    invoke-virtual {v5, v6, v7}, Landroid/window/WindowContainerTransaction;->setSeqForAsyncTransaction(J)V

    .line 71
    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    if-eqz p2, :cond_4

    .line 76
    .line 77
    const-string p2, "handle_layout_size_change"

    .line 78
    .line 79
    invoke-virtual {v5, v1, p2}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 83
    .line 84
    .line 85
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 86
    .line 87
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 88
    .line 89
    if-nez p2, :cond_5

    .line 90
    .line 91
    move-object v7, v6

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    move-object v7, v0

    .line 94
    :goto_0
    if-nez p2, :cond_6

    .line 95
    .line 96
    move-object p2, v0

    .line 97
    goto :goto_1

    .line 98
    :cond_6
    move-object p2, v6

    .line 99
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->overrideStageCoordinatorRootConfig(Landroid/window/WindowContainerTransaction;)V

    .line 100
    .line 101
    .line 102
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 103
    .line 104
    iget-object v9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 105
    .line 106
    if-eqz v8, :cond_7

    .line 107
    .line 108
    iget-boolean v8, v9, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 109
    .line 110
    if-eqz v8, :cond_7

    .line 111
    .line 112
    iget-object v7, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 113
    .line 114
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 115
    .line 116
    iget-object v8, v9, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 117
    .line 118
    invoke-virtual {p1, v5, v7, p2, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    goto :goto_2

    .line 123
    :cond_7
    iget-object v7, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 124
    .line 125
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 126
    .line 127
    invoke-virtual {p1, v5, v7, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    :goto_2
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 132
    .line 133
    if-eqz v7, :cond_8

    .line 134
    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v8, "handleLayoutSizeChange: wct="

    .line 138
    .line 139
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v8, ", isSplitScreenVisible="

    .line 146
    .line 147
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v8, ", callers="

    .line 154
    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const/4 v8, 0x3

    .line 159
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const-string v8, "StageCoordinator"

    .line 171
    .line 172
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_8
    sget-boolean v7, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 176
    .line 177
    if-eqz v7, :cond_a

    .line 178
    .line 179
    if-eqz p2, :cond_a

    .line 180
    .line 181
    if-eqz v3, :cond_a

    .line 182
    .line 183
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 184
    .line 185
    const-string v3, "handleLayoutSizeChange"

    .line 186
    .line 187
    invoke-virtual {p2, v3, v1, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(Ljava/lang/String;ZZ)V

    .line 188
    .line 189
    .line 190
    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;

    .line 191
    .line 192
    const/4 v3, 0x1

    .line 193
    invoke-direct {p2, p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 194
    .line 195
    .line 196
    new-instance v7, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;

    .line 197
    .line 198
    const/4 v8, 0x2

    .line 199
    invoke-direct {v7, p0, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 200
    .line 201
    .line 202
    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 203
    .line 204
    iget-object v10, v8, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 205
    .line 206
    if-eqz v10, :cond_9

    .line 207
    .line 208
    iput-boolean v3, v10, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 209
    .line 210
    iput-object v4, v10, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 211
    .line 212
    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8, v4, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 218
    .line 219
    .line 220
    :cond_9
    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 221
    .line 222
    const/4 v10, 0x6

    .line 223
    invoke-virtual {v3, v10, v5, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 228
    .line 229
    invoke-direct {v5, v8, v3, v7, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    .line 230
    .line 231
    .line 232
    iput-object v5, v8, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 233
    .line 234
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 235
    .line 236
    if-eqz p2, :cond_b

    .line 237
    .line 238
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 239
    .line 240
    const v3, -0x1f2b8afc

    .line 241
    .line 242
    .line 243
    const-string v5, "  splitTransition  deduced Resize split screen"

    .line 244
    .line 245
    invoke-static {p2, v3, v1, v5, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_a
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 250
    .line 251
    invoke-virtual {p2, v5}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 252
    .line 253
    .line 254
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    .line 255
    .line 256
    .line 257
    if-eqz v2, :cond_d

    .line 258
    .line 259
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 260
    .line 261
    invoke-virtual {p2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v6, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    .line 272
    .line 273
    .line 274
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 275
    .line 276
    if-eqz p0, :cond_c

    .line 277
    .line 278
    invoke-virtual {v9, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    .line 279
    .line 280
    .line 281
    :cond_c
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 285
    .line 286
    .line 287
    :cond_d
    return-void
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-boolean v1, v4, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x6

    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eq v2, v1, :cond_0

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 43
    .line 44
    iput-boolean v5, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    .line 45
    .line 46
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_1
    return-object v3

    .line 53
    :cond_2
    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 54
    .line 55
    iget v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 56
    .line 57
    if-eq v6, v7, :cond_3

    .line 58
    .line 59
    return-object v3

    .line 60
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const/4 v10, 0x0

    .line 73
    if-ne v9, v5, :cond_4

    .line 74
    .line 75
    move v9, v5

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    move v9, v10

    .line 78
    :goto_0
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 79
    .line 80
    if-eqz v11, :cond_5

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    const/4 v12, 0x5

    .line 87
    if-ne v11, v12, :cond_5

    .line 88
    .line 89
    move v11, v5

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    move v11, v10

    .line 92
    :goto_1
    if-eqz v8, :cond_6

    .line 93
    .line 94
    if-nez v9, :cond_7

    .line 95
    .line 96
    :cond_6
    iget-boolean v12, v4, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 97
    .line 98
    if-nez v12, :cond_8

    .line 99
    .line 100
    if-eqz v8, :cond_8

    .line 101
    .line 102
    if-eqz v11, :cond_8

    .line 103
    .line 104
    :cond_7
    new-instance v11, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda16;

    .line 105
    .line 106
    invoke-direct {v11, v2, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda16;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 107
    .line 108
    .line 109
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 110
    .line 111
    invoke-virtual {v12, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 112
    .line 113
    .line 114
    :cond_8
    iput-boolean v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsOpeningHomeDuringSplit:Z

    .line 115
    .line 116
    iget-boolean v11, v4, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 117
    .line 118
    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 119
    .line 120
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 121
    .line 122
    if-eqz v11, :cond_3c

    .line 123
    .line 124
    sget-boolean v11, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 125
    .line 126
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 127
    .line 128
    if-eqz v11, :cond_9

    .line 129
    .line 130
    iget v11, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 131
    .line 132
    int-to-long v13, v11

    .line 133
    invoke-static {v6}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    move/from16 v16, v6

    .line 146
    .line 147
    int-to-long v5, v10

    .line 148
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    move-object/from16 v18, v3

    .line 153
    .line 154
    move-object/from16 v17, v4

    .line 155
    .line 156
    int-to-long v3, v10

    .line 157
    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 158
    .line 159
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    filled-new-array {v13, v11, v5, v3}, [Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    const/16 v4, 0x51

    .line 176
    .line 177
    const-string v5, "  split is active so using splitTransition to handle request. triggerTask=%d type=%s mainChildren=%d sideChildren=%d"

    .line 178
    .line 179
    const v6, 0x9da899c

    .line 180
    .line 181
    .line 182
    invoke-static {v10, v6, v4, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_9
    move-object/from16 v18, v3

    .line 187
    .line 188
    move-object/from16 v17, v4

    .line 189
    .line 190
    move/from16 v16, v6

    .line 191
    .line 192
    :goto_2
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 193
    .line 194
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 202
    .line 203
    if-eqz v4, :cond_1b

    .line 204
    .line 205
    invoke-static/range {v16 .. v16}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    iget-object v7, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRunningTaskInfoList:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    .line 210
    .line 211
    if-eqz v6, :cond_15

    .line 212
    .line 213
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    const/4 v9, 0x1

    .line 218
    if-eq v6, v9, :cond_e

    .line 219
    .line 220
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    .line 221
    .line 222
    if-eqz v6, :cond_15

    .line 223
    .line 224
    if-eqz v7, :cond_d

    .line 225
    .line 226
    iget-object v6, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    .line 227
    .line 228
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_a

    .line 233
    .line 234
    iget-object v6, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    goto :goto_4

    .line 241
    :cond_a
    iget-object v6, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    const/4 v9, 0x0

    .line 248
    :cond_b
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    if-eqz v10, :cond_c

    .line 253
    .line 254
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    check-cast v10, Ljava/lang/Integer;

    .line 259
    .line 260
    iget-object v11, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    .line 261
    .line 262
    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    if-nez v10, :cond_b

    .line 267
    .line 268
    add-int/lit8 v9, v9, 0x1

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_c
    move v6, v9

    .line 272
    goto :goto_4

    .line 273
    :cond_d
    iget-object v6, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    .line 274
    .line 275
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    :goto_4
    const/4 v9, 0x1

    .line 280
    if-ne v6, v9, :cond_15

    .line 281
    .line 282
    :cond_e
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 283
    .line 284
    if-eqz v6, :cond_f

    .line 285
    .line 286
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    move-object/from16 v9, p2

    .line 291
    .line 292
    const/4 v10, 0x0

    .line 293
    invoke-virtual {v0, v3, v6, v9, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;Z)V

    .line 294
    .line 295
    .line 296
    :cond_f
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 297
    .line 298
    if-eqz v6, :cond_13

    .line 299
    .line 300
    iget-boolean v6, v5, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 301
    .line 302
    if-eqz v6, :cond_13

    .line 303
    .line 304
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-nez v4, :cond_10

    .line 309
    .line 310
    move-object/from16 v4, v17

    .line 311
    .line 312
    const/4 v6, 0x1

    .line 313
    goto :goto_5

    .line 314
    :cond_10
    const/4 v6, 0x1

    .line 315
    if-ne v4, v6, :cond_11

    .line 316
    .line 317
    move-object/from16 v4, v18

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_11
    const/4 v4, 0x0

    .line 321
    :goto_5
    if-eqz v4, :cond_12

    .line 322
    .line 323
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    invoke-virtual {v0, v3, v4, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    .line 328
    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_12
    invoke-virtual {v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    const/4 v10, 0x0

    .line 336
    invoke-virtual {v0, v3, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 337
    .line 338
    .line 339
    :goto_6
    const/4 v11, 0x2

    .line 340
    invoke-virtual {v12, v1, v5, v11, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;IIZ)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_9

    .line 344
    .line 345
    :cond_13
    const/4 v6, 0x1

    .line 346
    const/4 v10, 0x0

    .line 347
    const/4 v11, 0x2

    .line 348
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-nez v4, :cond_14

    .line 353
    .line 354
    move v4, v6

    .line 355
    goto :goto_7

    .line 356
    :cond_14
    move v4, v10

    .line 357
    :goto_7
    invoke-virtual {v0, v4, v3, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v12, v1, v4, v11, v10}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;IIZ)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_9

    .line 364
    .line 365
    :cond_15
    move-object/from16 v9, p2

    .line 366
    .line 367
    const/4 v10, 0x0

    .line 368
    const/4 v11, 0x2

    .line 369
    if-eqz v8, :cond_17

    .line 370
    .line 371
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    if-nez v5, :cond_17

    .line 378
    .line 379
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    if-nez v4, :cond_16

    .line 384
    .line 385
    move v5, v10

    .line 386
    goto :goto_8

    .line 387
    :cond_16
    const/4 v5, 0x1

    .line 388
    :goto_8
    invoke-virtual {v12, v1, v5, v11, v10}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;IIZ)V

    .line 389
    .line 390
    .line 391
    goto :goto_9

    .line 392
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-nez v5, :cond_18

    .line 397
    .line 398
    if-eqz v8, :cond_18

    .line 399
    .line 400
    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePositionByAdjacentTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 401
    .line 402
    .line 403
    iget-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 404
    .line 405
    const/4 v5, 0x1

    .line 406
    xor-int/2addr v4, v5

    .line 407
    const/4 v6, -0x1

    .line 408
    const/4 v10, 0x0

    .line 409
    invoke-virtual {v0, v3, v10, v6, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    .line 410
    .line 411
    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    iget-boolean v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 417
    .line 418
    xor-int/2addr v5, v6

    .line 419
    const/16 v6, 0x3ec

    .line 420
    .line 421
    invoke-virtual {v12, v1, v4, v6, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    .line 422
    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_18
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 426
    .line 427
    if-eqz v5, :cond_1a

    .line 428
    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    if-eqz v5, :cond_1a

    .line 434
    .line 435
    if-eqz v8, :cond_1a

    .line 436
    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    if-nez v5, :cond_1a

    .line 442
    .line 443
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    const/4 v5, 0x2

    .line 448
    if-ne v4, v5, :cond_1a

    .line 449
    .line 450
    iget v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 451
    .line 452
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 453
    .line 454
    const/high16 v6, 0x3f000000    # 0.5f

    .line 455
    .line 456
    const/4 v10, 0x0

    .line 457
    const/4 v11, 0x1

    .line 458
    invoke-virtual {v5, v6, v4, v11, v10}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v4, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterMultiSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 462
    .line 463
    .line 464
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    .line 465
    .line 466
    if-eqz v4, :cond_19

    .line 467
    .line 468
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellHostResizeTransition(Landroid/window/WindowContainerTransaction;)V

    .line 469
    .line 470
    .line 471
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    const/16 v5, 0x44c

    .line 476
    .line 477
    invoke-virtual {v12, v1, v4, v5, v10}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    .line 478
    .line 479
    .line 480
    :cond_1a
    :goto_9
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    .line 481
    .line 482
    if-eqz v1, :cond_37

    .line 483
    .line 484
    invoke-static/range {v16 .. v16}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-eqz v1, :cond_37

    .line 489
    .line 490
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 491
    .line 492
    if-eqz v7, :cond_37

    .line 493
    .line 494
    iget-object v2, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    .line 495
    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    if-nez v2, :cond_37

    .line 505
    .line 506
    iget-object v2, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mClosingTaskIds:Landroid/util/ArraySet;

    .line 507
    .line 508
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    const-string v4, "addToClosingTaskIds: #"

    .line 518
    .line 519
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v1, ", "

    .line 526
    .line 527
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    iget-object v1, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 531
    .line 532
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    const-string v2, "StageTaskListener"

    .line 540
    .line 541
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    goto/16 :goto_1a

    .line 545
    .line 546
    :cond_1b
    if-eqz v8, :cond_37

    .line 547
    .line 548
    if-eqz v9, :cond_37

    .line 549
    .line 550
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 551
    .line 552
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 553
    .line 554
    const/4 v4, 0x1

    .line 555
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/common/split/SplitWindowManager;->sendSplitStateChangedInfo(Z)V

    .line 556
    .line 557
    .line 558
    const/4 v1, 0x0

    .line 559
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    .line 560
    .line 561
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 562
    .line 563
    const/4 v4, 0x3

    .line 564
    if-eqz v1, :cond_1f

    .line 565
    .line 566
    iget v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 567
    .line 568
    const/4 v6, -0x1

    .line 569
    if-eq v1, v6, :cond_1f

    .line 570
    .line 571
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    const/4 v9, 0x2

    .line 576
    if-eq v1, v9, :cond_1d

    .line 577
    .line 578
    if-ne v1, v4, :cond_1c

    .line 579
    .line 580
    goto :goto_a

    .line 581
    :cond_1c
    const/4 v1, 0x0

    .line 582
    goto :goto_b

    .line 583
    :cond_1d
    :goto_a
    const/4 v1, 0x1

    .line 584
    :goto_b
    if-nez v1, :cond_1e

    .line 585
    .line 586
    const/4 v1, 0x1

    .line 587
    invoke-virtual {v0, v6, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 588
    .line 589
    .line 590
    goto :goto_c

    .line 591
    :cond_1e
    const/4 v1, 0x1

    .line 592
    :goto_c
    const/4 v6, 0x0

    .line 593
    invoke-virtual {v0, v6, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 594
    .line 595
    .line 596
    new-instance v6, Landroid/window/WindowContainerTransaction;

    .line 597
    .line 598
    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 599
    .line 600
    .line 601
    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 602
    .line 603
    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 604
    .line 605
    invoke-virtual {v6, v9, v1}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v15, v6}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 609
    .line 610
    .line 611
    :cond_1f
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 612
    .line 613
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 614
    .line 615
    .line 616
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 617
    .line 618
    if-eqz v6, :cond_2d

    .line 619
    .line 620
    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 621
    .line 622
    if-eqz v6, :cond_20

    .line 623
    .line 624
    iget v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 625
    .line 626
    const/4 v10, 0x1

    .line 627
    if-ne v9, v10, :cond_20

    .line 628
    .line 629
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    .line 630
    .line 631
    .line 632
    move-result-object v9

    .line 633
    iget-object v11, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 634
    .line 635
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    .line 636
    .line 637
    .line 638
    move-result v6

    .line 639
    sget-object v13, Lcom/android/internal/R$styleable;->Window:[I

    .line 640
    .line 641
    invoke-virtual {v9, v11, v6, v13}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;

    .line 642
    .line 643
    .line 644
    move-result-object v6

    .line 645
    if-eqz v6, :cond_20

    .line 646
    .line 647
    iget-object v6, v6, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    .line 648
    .line 649
    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z

    .line 650
    .line 651
    .line 652
    move-result v6

    .line 653
    xor-int/2addr v6, v10

    .line 654
    goto :goto_d

    .line 655
    :cond_20
    const/4 v6, 0x1

    .line 656
    :goto_d
    if-eqz v6, :cond_2d

    .line 657
    .line 658
    iget-boolean v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRecentsInSplitAnimating:Z

    .line 659
    .line 660
    if-nez v6, :cond_2d

    .line 661
    .line 662
    invoke-virtual/range {v17 .. v17}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    .line 663
    .line 664
    .line 665
    move-result v6

    .line 666
    if-nez v6, :cond_26

    .line 667
    .line 668
    invoke-virtual/range {v17 .. v17}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 669
    .line 670
    .line 671
    move-result v6

    .line 672
    if-nez v6, :cond_21

    .line 673
    .line 674
    goto :goto_f

    .line 675
    :cond_21
    invoke-virtual/range {v18 .. v18}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    .line 676
    .line 677
    .line 678
    move-result v6

    .line 679
    if-nez v6, :cond_25

    .line 680
    .line 681
    invoke-virtual/range {v18 .. v18}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 682
    .line 683
    .line 684
    move-result v6

    .line 685
    if-nez v6, :cond_22

    .line 686
    .line 687
    goto :goto_e

    .line 688
    :cond_22
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 689
    .line 690
    if-eqz v6, :cond_24

    .line 691
    .line 692
    iget-boolean v6, v5, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 693
    .line 694
    if-eqz v6, :cond_24

    .line 695
    .line 696
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    .line 697
    .line 698
    .line 699
    move-result v6

    .line 700
    if-nez v6, :cond_23

    .line 701
    .line 702
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 703
    .line 704
    .line 705
    move-result v6

    .line 706
    if-nez v6, :cond_24

    .line 707
    .line 708
    :cond_23
    const/4 v6, 0x2

    .line 709
    goto :goto_10

    .line 710
    :cond_24
    const/4 v6, -0x1

    .line 711
    goto :goto_10

    .line 712
    :cond_25
    :goto_e
    const/4 v6, 0x1

    .line 713
    goto :goto_10

    .line 714
    :cond_26
    :goto_f
    const/4 v6, 0x0

    .line 715
    :goto_10
    if-eqz v6, :cond_29

    .line 716
    .line 717
    const/4 v9, 0x1

    .line 718
    if-ne v6, v9, :cond_27

    .line 719
    .line 720
    goto :goto_11

    .line 721
    :cond_27
    const/4 v9, 0x2

    .line 722
    if-ne v6, v9, :cond_28

    .line 723
    .line 724
    const/4 v6, 0x0

    .line 725
    invoke-virtual {v0, v1, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    .line 729
    .line 730
    .line 731
    :cond_28
    const/4 v9, 0x1

    .line 732
    goto :goto_14

    .line 733
    :cond_29
    :goto_11
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 734
    .line 735
    if-eqz v9, :cond_2b

    .line 736
    .line 737
    iget-boolean v9, v5, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 738
    .line 739
    if-eqz v9, :cond_2b

    .line 740
    .line 741
    if-nez v6, :cond_2a

    .line 742
    .line 743
    move-object/from16 v6, v17

    .line 744
    .line 745
    goto :goto_12

    .line 746
    :cond_2a
    move-object/from16 v6, v18

    .line 747
    .line 748
    :goto_12
    const/4 v9, 0x1

    .line 749
    invoke-virtual {v0, v1, v6, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    .line 750
    .line 751
    .line 752
    const/4 v10, 0x0

    .line 753
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    .line 754
    .line 755
    .line 756
    goto :goto_14

    .line 757
    :cond_2b
    const/4 v9, 0x1

    .line 758
    const/4 v10, 0x0

    .line 759
    if-nez v6, :cond_2c

    .line 760
    .line 761
    move v6, v9

    .line 762
    goto :goto_13

    .line 763
    :cond_2c
    move v6, v10

    .line 764
    :goto_13
    invoke-virtual {v0, v6, v1, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v0, v10, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 768
    .line 769
    .line 770
    :goto_14
    invoke-virtual {v3, v1, v9}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    .line 771
    .line 772
    .line 773
    :cond_2d
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 774
    .line 775
    .line 776
    move-result v6

    .line 777
    const/4 v9, 0x2

    .line 778
    if-eq v6, v9, :cond_32

    .line 779
    .line 780
    if-ne v6, v4, :cond_2e

    .line 781
    .line 782
    goto :goto_18

    .line 783
    :cond_2e
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 784
    .line 785
    move-object/from16 v4, v17

    .line 786
    .line 787
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    if-eqz v1, :cond_30

    .line 792
    .line 793
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    const/4 v4, 0x1

    .line 798
    if-eq v1, v4, :cond_2f

    .line 799
    .line 800
    goto :goto_16

    .line 801
    :cond_2f
    :goto_15
    const/4 v1, -0x1

    .line 802
    goto :goto_17

    .line 803
    :cond_30
    const/4 v4, 0x1

    .line 804
    :goto_16
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 805
    .line 806
    move-object/from16 v6, v18

    .line 807
    .line 808
    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    if-eqz v1, :cond_31

    .line 813
    .line 814
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 815
    .line 816
    .line 817
    move-result v1

    .line 818
    if-eq v1, v4, :cond_2f

    .line 819
    .line 820
    :cond_31
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 821
    .line 822
    if-eqz v1, :cond_37

    .line 823
    .line 824
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 825
    .line 826
    invoke-virtual {v5, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    if-eqz v1, :cond_37

    .line 831
    .line 832
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 833
    .line 834
    .line 835
    move-result v1

    .line 836
    if-ne v1, v4, :cond_37

    .line 837
    .line 838
    goto :goto_15

    .line 839
    :goto_17
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 840
    .line 841
    .line 842
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 843
    .line 844
    if-eqz v1, :cond_37

    .line 845
    .line 846
    const/4 v1, 0x0

    .line 847
    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 848
    .line 849
    .line 850
    goto :goto_1a

    .line 851
    :cond_32
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    if-nez v2, :cond_33

    .line 856
    .line 857
    iget-object v2, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 858
    .line 859
    if-eqz v2, :cond_35

    .line 860
    .line 861
    :cond_33
    iget-object v2, v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 862
    .line 863
    if-eqz v2, :cond_34

    .line 864
    .line 865
    const/4 v2, 0x1

    .line 866
    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsOpeningHomeDuringSplit:Z

    .line 867
    .line 868
    goto :goto_19

    .line 869
    :cond_34
    const/4 v2, 0x1

    .line 870
    :goto_19
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 871
    .line 872
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 873
    .line 874
    .line 875
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 876
    .line 877
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 878
    .line 879
    invoke-virtual {v3, v0, v2}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v15, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 883
    .line 884
    .line 885
    :cond_35
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    if-nez v0, :cond_36

    .line 890
    .line 891
    const-string v0, "evict_all_children"

    .line 892
    .line 893
    invoke-virtual {v1, v7, v0}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    .line 894
    .line 895
    .line 896
    return-object v1

    .line 897
    :cond_36
    const/4 v0, 0x0

    .line 898
    return-object v0

    .line 899
    :cond_37
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 900
    .line 901
    .line 902
    move-result v1

    .line 903
    if-eqz v1, :cond_39

    .line 904
    .line 905
    if-eqz v8, :cond_39

    .line 906
    .line 907
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 908
    .line 909
    if-nez v1, :cond_38

    .line 910
    .line 911
    goto :goto_1b

    .line 912
    :cond_38
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 913
    .line 914
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 915
    .line 916
    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    .line 917
    .line 918
    if-eqz v1, :cond_39

    .line 919
    .line 920
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 921
    .line 922
    .line 923
    :cond_39
    :goto_1b
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    .line 924
    .line 925
    .line 926
    move-result v1

    .line 927
    if-eqz v1, :cond_3b

    .line 928
    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 930
    .line 931
    .line 932
    move-result v0

    .line 933
    if-eqz v0, :cond_3a

    .line 934
    .line 935
    goto :goto_1c

    .line 936
    :cond_3a
    const/4 v3, 0x0

    .line 937
    :cond_3b
    :goto_1c
    return-object v3

    .line 938
    :cond_3c
    move-object/from16 v9, p2

    .line 939
    .line 940
    if-eqz v8, :cond_3f

    .line 941
    .line 942
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    if-eqz v3, :cond_3f

    .line 947
    .line 948
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 949
    .line 950
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 951
    .line 952
    .line 953
    iget-boolean v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    .line 954
    .line 955
    if-nez v4, :cond_3d

    .line 956
    .line 957
    const/4 v4, 0x0

    .line 958
    return-object v4

    .line 959
    :cond_3d
    const/4 v4, 0x0

    .line 960
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 961
    .line 962
    if-eqz v5, :cond_3e

    .line 963
    .line 964
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 965
    .line 966
    .line 967
    move-result-object v5

    .line 968
    invoke-virtual {v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 969
    .line 970
    .line 971
    move-result v5

    .line 972
    const/4 v6, 0x2

    .line 973
    if-ne v5, v6, :cond_3e

    .line 974
    .line 975
    const/4 v5, 0x1

    .line 976
    invoke-virtual {v0, v3, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v15, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 980
    .line 981
    .line 982
    return-object v4

    .line 983
    :cond_3e
    const/4 v5, 0x1

    .line 984
    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePositionByAdjacentTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 985
    .line 986
    .line 987
    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 988
    .line 989
    xor-int/2addr v2, v5

    .line 990
    const/4 v6, -0x1

    .line 991
    invoke-virtual {v0, v3, v4, v6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    .line 992
    .line 993
    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 995
    .line 996
    .line 997
    move-result-object v2

    .line 998
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 999
    .line 1000
    xor-int/2addr v0, v5

    .line 1001
    const/16 v4, 0x3ec

    .line 1002
    .line 1003
    invoke-virtual {v12, v1, v2, v4, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    .line 1004
    .line 1005
    .line 1006
    goto :goto_1d

    .line 1007
    :cond_3f
    const/4 v4, 0x0

    .line 1008
    move-object v3, v4

    .line 1009
    :goto_1d
    return-object v3
.end method

.method public final hasSameRatioInGroupedTasks(Lcom/android/wm/shell/util/SplitBounds;Z)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastSplitStateInfo:Lcom/android/wm/shell/util/SplitBounds;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v2, p0, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    .line 9
    .line 10
    iget v3, p1, Lcom/android/wm/shell/util/SplitBounds;->topTaskPercent:F

    .line 11
    .line 12
    cmpl-float v2, v2, v3

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    :cond_0
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget v2, p0, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    .line 19
    .line 20
    iget v3, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTaskPercent:F

    .line 21
    .line 22
    cmpl-float v2, v2, v3

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    if-eqz p2, :cond_3

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget p2, p0, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    .line 32
    .line 33
    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTopTaskPercent:F

    .line 34
    .line 35
    cmpl-float p2, p2, v2

    .line 36
    .line 37
    if-nez p2, :cond_4

    .line 38
    .line 39
    :cond_3
    if-eqz v0, :cond_5

    .line 40
    .line 41
    iget p0, p0, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    .line 42
    .line 43
    iget p1, p1, Lcom/android/wm/shell/util/SplitBounds;->cellLeftTaskPercent:F

    .line 44
    .line 45
    cmpl-float p0, p0, p1

    .line 46
    .line 47
    if-eqz p0, :cond_5

    .line 48
    .line 49
    :cond_4
    return v1

    .line 50
    :cond_5
    const/4 p0, 0x1

    .line 51
    return p0
.end method

.method public final isInSubDisplay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 6
    .line 7
    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    :goto_0
    return p0
.end method

.method public final isLandscape()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isMultiSplitActive()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 10
    .line 11
    return p0
.end method

.method public final isMultiSplitScreenVisible()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method public final isSplitScreenVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isVerticalDivision()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda12;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p5, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const/4 p5, 0x0

    .line 8
    invoke-static {p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p6, p1, p3, p4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p6, p1, p2, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p1, "StageCoordinator"

    .line 30
    .line 31
    const-string p2, "Pending intent and shortcut are null is invalid case."

    .line 32
    .line 33
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 37
    .line 38
    invoke-virtual {p0, v0, p6}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/WindowContainerTransaction;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final logExitToStage(IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v1

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v4, v3

    .line 23
    :goto_1
    if-nez p2, :cond_2

    .line 24
    .line 25
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 26
    .line 27
    :cond_2
    move v5, v1

    .line 28
    if-nez p2, :cond_3

    .line 29
    .line 30
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move p2, v3

    .line 38
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    move v1, p1

    .line 45
    move v3, v4

    .line 46
    move v4, v5

    .line 47
    move v5, p2

    .line 48
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final maximizeSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, -0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    move v0, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v0, v4

    .line 40
    :goto_0
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 41
    .line 42
    if-ne v0, v4, :cond_4

    .line 43
    .line 44
    iget-object v0, v5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 45
    .line 46
    const-string v4, "StageCoordinator"

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    .line 51
    .line 52
    if-ne v0, v3, :cond_3

    .line 53
    .line 54
    const-string p1, "maximizeSplitTask: during splitTransition"

    .line 55
    .line 56
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string p2, "maximizeSplitTask: failed, cannot find "

    .line 63
    .line 64
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    move v2, v0

    .line 79
    :goto_1
    if-eqz p2, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 83
    .line 84
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 85
    .line 86
    .line 87
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 88
    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 94
    .line 95
    .line 96
    :cond_6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 97
    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, p2, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitMaximizeChangeTransition(Landroid/window/WindowContainerTransaction;I)V

    .line 101
    .line 102
    .line 103
    :cond_7
    invoke-virtual {p0, v2, p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, p2, p0, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 4
    .line 5
    if-eq p4, v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move-object v5, p4

    .line 17
    move-object v6, p5

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 19
    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    if-eqz p4, :cond_3

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    check-cast p4, Landroid/window/TransitionInfo$Change;

    .line 46
    .line 47
    const/high16 p5, 0x800000

    .line 48
    .line 49
    invoke-virtual {p4, p5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    if-eqz p5, :cond_2

    .line 54
    .line 55
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    const/4 p5, 0x2

    .line 60
    if-ne p4, p5, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 p1, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move p1, p3

    .line 66
    :goto_1
    if-eqz p1, :cond_4

    .line 67
    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p1, "mergeAnimation: keep current transition, new="

    .line 71
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p1, "SplitScreenTransitions"

    .line 83
    .line 84
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    sub-int/2addr p2, p3

    .line 95
    :goto_2
    if-ltz p2, :cond_5

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    check-cast p4, Landroid/animation/Animator;

    .line 102
    .line 103
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 104
    .line 105
    iget-object p5, p5, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 106
    .line 107
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;

    .line 111
    .line 112
    invoke-direct {v0, p4, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Landroid/animation/Animator;I)V

    .line 113
    .line 114
    .line 115
    check-cast p5, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 116
    .line 117
    invoke-virtual {p5, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 p2, p2, -0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    :goto_3
    return-void
.end method

.method public final moveSplitToFreeform(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;Z)V
    .locals 5

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p2, 0x1

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, p2

    .line 21
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 25
    .line 26
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x2

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    move v3, p2

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 46
    .line 47
    if-eqz v3, :cond_6

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 50
    .line 51
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsToken(Landroid/window/WindowContainerToken;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_6

    .line 56
    .line 57
    move v3, v4

    .line 58
    :goto_1
    if-nez v3, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    if-ne v3, p2, :cond_5

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    goto :goto_2

    .line 72
    :cond_5
    if-ne v3, v4, :cond_6

    .line 73
    .line 74
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v3, Landroid/graphics/Rect;

    .line 80
    .line 81
    iget-object p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 84
    .line 85
    .line 86
    move-object p2, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    move-object p2, v2

    .line 89
    :goto_2
    if-eqz p2, :cond_7

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_7

    .line 96
    .line 97
    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setChangeTransitStartBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 98
    .line 99
    .line 100
    :cond_7
    const-string/jumbo p2, "split_to_freeform"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1, v1, p2}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->dismissSplitTask(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerTransaction;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

    .line 110
    .line 111
    return-void

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

    .line 114
    .line 115
    throw p1
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda9;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget v2, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 11
    .line 12
    iget v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v2, v0

    .line 19
    :goto_0
    if-eqz v2, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 22
    .line 23
    iget-boolean v2, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 43
    .line 44
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCornerRadiusForStages(Landroid/view/SurfaceControl$Transaction;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    and-int/lit8 v1, v1, 0x4

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 65
    .line 66
    const v2, 0x7f1304ce

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 70
    .line 71
    .line 72
    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 73
    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    iget p2, p2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 77
    .line 78
    if-nez p2, :cond_6

    .line 79
    .line 80
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 81
    .line 82
    if-eq p2, p1, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_6

    .line 89
    .line 90
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    .line 91
    .line 92
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 93
    .line 94
    if-eq p1, p2, :cond_6

    .line 95
    .line 96
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    .line 97
    .line 98
    if-eqz p2, :cond_5

    .line 99
    .line 100
    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 101
    .line 102
    if-nez p2, :cond_6

    .line 103
    .line 104
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitDivision(IZ)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string p2, "Restore main Split Division="

    .line 113
    .line 114
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string p2, "StageCoordinator"

    .line 127
    .line 128
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    const/4 p1, -0x1

    .line 132
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    .line 133
    .line 134
    :cond_6
    return-void
.end method

.method public final onDoubleTappedDivider()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 10
    .line 11
    .line 12
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    move-object v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v4

    .line 23
    :goto_0
    iget-object v5, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 24
    .line 25
    const v6, 0x7ffffffe

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v5, v5, v1, v6}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 33
    .line 34
    if-nez v7, :cond_1

    .line 35
    .line 36
    move-object v7, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v7, v3

    .line 39
    :goto_1
    iget-object v8, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 40
    .line 41
    invoke-static {v0, v8, v8, v1, v6}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 48
    .line 49
    iget-object v7, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 50
    .line 51
    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda11;

    .line 52
    .line 53
    invoke-direct {v8, p0, v0, v5, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v0, v2, v7, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->splitSwitching(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda11;)V

    .line 57
    .line 58
    .line 59
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 64
    .line 65
    const-string v1, "double tap"

    .line 66
    .line 67
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x0

    .line 72
    const-string v5, "Switch split position: %s"

    .line 73
    .line 74
    const v6, -0x3ec4ba35

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v6, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 101
    .line 102
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 103
    .line 104
    if-nez v5, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    invoke-static {v0, v4}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getMainStagePositionFromSplitPosition(IZ)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateMainStageState(II)Z

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->getSideStagePositionFromSplitPosition(IZ)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {p0, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->updateSideStageState(II)Z

    .line 119
    .line 120
    .line 121
    const/16 v4, 0x184

    .line 122
    .line 123
    const/4 v5, 0x5

    .line 124
    const/4 v6, 0x0

    .line 125
    const/4 v7, 0x0

    .line 126
    const/4 v8, 0x0

    .line 127
    iget v9, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStagePosition:I

    .line 128
    .line 129
    iget v10, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastMainStageUid:I

    .line 130
    .line 131
    iget v11, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStagePosition:I

    .line 132
    .line 133
    iget v12, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSideStageUid:I

    .line 134
    .line 135
    const/4 v13, 0x0

    .line 136
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 139
    .line 140
    .line 141
    move-result v14

    .line 142
    invoke-static/range {v4 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 143
    .line 144
    .line 145
    :goto_2
    return-void
.end method

.method public onFoldedStateChanged(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFolded:Z

    .line 7
    .line 8
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 9
    .line 10
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Save main Split Division="

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "StageCoordinator"

    .line 39
    .line 40
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 44
    .line 45
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastMainSplitDivision:I

    .line 46
    .line 47
    :cond_1
    if-nez p1, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 51
    .line 52
    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x1

    .line 62
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    move v1, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    goto :goto_1

    .line 89
    :cond_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    :goto_0
    const/4 v1, 0x0

    .line 100
    :cond_7
    :goto_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 101
    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 105
    .line 106
    return-void

    .line 107
    :cond_8
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 108
    .line 109
    const/4 v4, 0x3

    .line 110
    if-eqz v0, :cond_9

    .line 111
    .line 112
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 113
    .line 114
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 121
    .line 122
    invoke-virtual {v0, p1, p0, v1, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_9
    if-nez v1, :cond_a

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_a
    move-object p1, v3

    .line 130
    :goto_2
    invoke-virtual {p0, p1, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    .line 131
    .line 132
    .line 133
    :goto_3
    return-void
.end method

.method public final onFreeformToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;ZLjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 10
    .line 11
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 12
    .line 13
    new-instance v6, Landroid/window/WindowContainerTransaction;

    .line 14
    .line 15
    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    move-object/from16 v8, p7

    .line 20
    .line 21
    invoke-virtual {v6, v5, v7, v8}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 22
    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v6, v5, v3}, Landroid/window/WindowContainerTransaction;->setChangeTransitStartBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 27
    .line 28
    .line 29
    :cond_0
    const/16 v3, 0x10

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz p2, :cond_6

    .line 33
    .line 34
    and-int/lit8 v8, v2, 0x40

    .line 35
    .line 36
    if-nez v8, :cond_2

    .line 37
    .line 38
    and-int/lit8 v9, v2, 0x20

    .line 39
    .line 40
    if-eqz v9, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v9, v5

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    move v9, v7

    .line 46
    :goto_1
    if-eqz v2, :cond_3

    .line 47
    .line 48
    if-eqz v9, :cond_3

    .line 49
    .line 50
    move v9, v5

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move v9, v7

    .line 53
    :goto_2
    and-int/2addr v2, v3

    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    if-eqz v8, :cond_5

    .line 57
    .line 58
    :cond_4
    move v5, v7

    .line 59
    :cond_5
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 66
    .line 67
    invoke-static {v2, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move/from16 p1, v4

    .line 72
    .line 73
    move-object/from16 p2, v1

    .line 74
    .line 75
    move/from16 p3, v9

    .line 76
    .line 77
    move/from16 p4, v5

    .line 78
    .line 79
    move-object/from16 p5, v6

    .line 80
    .line 81
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTaskAndIntent(ILandroid/content/Intent;IILandroid/window/WindowContainerTransaction;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_6
    const/16 v1, 0x8

    .line 86
    .line 87
    if-nez v2, :cond_7

    .line 88
    .line 89
    if-eqz p4, :cond_8

    .line 90
    .line 91
    :cond_7
    if-eq v2, v3, :cond_9

    .line 92
    .line 93
    if-ne v2, v1, :cond_8

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_8
    move v8, v7

    .line 97
    goto :goto_4

    .line 98
    :cond_9
    :goto_3
    move v8, v5

    .line 99
    :goto_4
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 100
    .line 101
    const/16 v10, 0x20

    .line 102
    .line 103
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 104
    .line 105
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 106
    .line 107
    const/4 v13, -0x1

    .line 108
    const/4 v14, 0x0

    .line 109
    if-eqz v9, :cond_17

    .line 110
    .line 111
    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-nez v9, :cond_17

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_17

    .line 124
    .line 125
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    .line 126
    .line 127
    if-eqz v9, :cond_a

    .line 128
    .line 129
    iget-boolean v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 130
    .line 131
    if-nez v9, :cond_17

    .line 132
    .line 133
    :cond_a
    if-eqz p4, :cond_13

    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    if-ne v9, v7, :cond_c

    .line 144
    .line 145
    if-ne v2, v1, :cond_b

    .line 146
    .line 147
    or-int/lit8 v13, v13, 0x20

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_b
    if-ne v2, v10, :cond_e

    .line 151
    .line 152
    or-int/lit8 v13, v13, 0x8

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_c
    if-ne v2, v3, :cond_d

    .line 156
    .line 157
    or-int/lit8 v13, v13, 0x40

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_d
    const/16 v1, 0x40

    .line 161
    .line 162
    if-ne v2, v1, :cond_e

    .line 163
    .line 164
    or-int/lit8 v13, v13, 0x10

    .line 165
    .line 166
    :cond_e
    :goto_5
    if-ne v9, v7, :cond_f

    .line 167
    .line 168
    move v1, v5

    .line 169
    goto :goto_6

    .line 170
    :cond_f
    move v1, v7

    .line 171
    :goto_6
    invoke-virtual {v0, v8, v1, v6, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    .line 172
    .line 173
    .line 174
    if-eqz p6, :cond_10

    .line 175
    .line 176
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 181
    .line 182
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 183
    .line 184
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 189
    .line 190
    const/4 v3, 0x4

    .line 191
    const-string v9, "natural_swtiching"

    .line 192
    .line 193
    invoke-virtual {v6, v1, v3, v9}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v2, v3, v9}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 197
    .line 198
    .line 199
    :cond_10
    invoke-virtual {v0, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const/4 v2, 0x2

    .line 204
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 209
    .line 210
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 211
    .line 212
    iget-object v9, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    .line 213
    .line 214
    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    move v12, v5

    .line 219
    :goto_7
    if-ge v12, v10, :cond_11

    .line 220
    .line 221
    invoke-virtual {v9, v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 226
    .line 227
    iget-object v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 228
    .line 229
    invoke-virtual {v6, v15, v3, v7}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 230
    .line 231
    .line 232
    add-int/lit8 v12, v12, 0x1

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_11
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 236
    .line 237
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 238
    .line 239
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->size()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    move v9, v5

    .line 246
    :goto_8
    if-ge v9, v3, :cond_12

    .line 247
    .line 248
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->valueAt(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 253
    .line 254
    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 255
    .line 256
    invoke-virtual {v6, v10, v1, v7}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 257
    .line 258
    .line 259
    add-int/lit8 v9, v9, 0x1

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_12
    invoke-virtual {v0, v7, v8, v14, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    goto :goto_a

    .line 267
    :cond_13
    if-eqz v2, :cond_14

    .line 268
    .line 269
    move v1, v2

    .line 270
    goto :goto_9

    .line 271
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 276
    .line 277
    invoke-static {v2, v1}, Lcom/android/wm/shell/util/StageUtils;->getMultiSplitLaunchPosition(IZ)I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    :goto_9
    invoke-virtual {v0, v13, v1, v14, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    move v13, v1

    .line 286
    move-object v1, v2

    .line 287
    :goto_a
    invoke-virtual {v6, v4, v1}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_15

    .line 295
    .line 296
    invoke-virtual {v11, v6}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_15
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 301
    .line 302
    const/high16 v2, 0x3f000000    # 0.5f

    .line 303
    .line 304
    invoke-virtual {v1, v2, v13, v7, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v13, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterMultiSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 308
    .line 309
    .line 310
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    .line 311
    .line 312
    if-eqz v1, :cond_16

    .line 313
    .line 314
    if-nez p6, :cond_16

    .line 315
    .line 316
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellHostResizeTransition(Landroid/window/WindowContainerTransaction;)V

    .line 317
    .line 318
    .line 319
    :cond_16
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 320
    .line 321
    const/4 v2, 0x0

    .line 322
    const/16 v3, 0x44c

    .line 323
    .line 324
    const/4 v4, 0x0

    .line 325
    move-object/from16 p1, v1

    .line 326
    .line 327
    move-object/from16 p2, v6

    .line 328
    .line 329
    move-object/from16 p3, v2

    .line 330
    .line 331
    move-object/from16 p4, p0

    .line 332
    .line 333
    move/from16 p5, v3

    .line 334
    .line 335
    move/from16 p6, v4

    .line 336
    .line 337
    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_17
    if-eqz v2, :cond_1a

    .line 342
    .line 343
    if-eq v2, v1, :cond_18

    .line 344
    .line 345
    if-ne v2, v10, :cond_19

    .line 346
    .line 347
    :cond_18
    move v7, v5

    .line 348
    :cond_19
    const/4 v1, -0x1

    .line 349
    const/4 v2, 0x0

    .line 350
    const/4 v3, 0x0

    .line 351
    move-object/from16 p1, p0

    .line 352
    .line 353
    move/from16 p2, v1

    .line 354
    .line 355
    move/from16 p3, v8

    .line 356
    .line 357
    move-object/from16 p4, v2

    .line 358
    .line 359
    move-object/from16 p5, v3

    .line 360
    .line 361
    move/from16 p6, v7

    .line 362
    .line 363
    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    goto :goto_b

    .line 368
    :cond_1a
    invoke-virtual {v0, v13, v8, v14, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    :goto_b
    invoke-virtual {v6, v4, v1}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-eqz v1, :cond_1b

    .line 380
    .line 381
    invoke-virtual {v11, v6}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 382
    .line 383
    .line 384
    goto :goto_d

    .line 385
    :cond_1b
    iget-boolean v1, v12, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 386
    .line 387
    if-eqz v1, :cond_1c

    .line 388
    .line 389
    const/16 v1, 0x3ed

    .line 390
    .line 391
    goto :goto_c

    .line 392
    :cond_1c
    const/16 v1, 0x3ec

    .line 393
    .line 394
    :goto_c
    invoke-virtual {v0, v6, v14, v8, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    .line 395
    .line 396
    .line 397
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 398
    .line 399
    const/4 v3, 0x0

    .line 400
    const/4 v4, 0x0

    .line 401
    move-object/from16 p1, v2

    .line 402
    .line 403
    move-object/from16 p2, v6

    .line 404
    .line 405
    move-object/from16 p3, v3

    .line 406
    .line 407
    move-object/from16 p4, p0

    .line 408
    .line 409
    move/from16 p5, v1

    .line 410
    .line 411
    move/from16 p6, v4

    .line 412
    .line 413
    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 414
    .line 415
    .line 416
    :goto_d
    return-void
.end method

.method public final onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/view/Choreographer;->getVsyncId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    .line 3
    .line 4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    .line 39
    .line 40
    .line 41
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    .line 55
    .line 56
    .line 57
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 63
    .line 64
    const-string v1, "onSplitResizeStart"

    .line 65
    .line 66
    invoke-virtual {p1, v1, v0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerInteractive(Ljava/lang/String;ZZ)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;

    .line 70
    .line 71
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 75
    .line 76
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    iput-boolean v5, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 82
    .line 83
    iput-object v3, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 84
    .line 85
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 94
    .line 95
    const/4 v4, 0x6

    .line 96
    invoke-virtual {v2, v4, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 101
    .line 102
    invoke-direct {v2, v1, p2, v3, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    .line 103
    .line 104
    .line 105
    iput-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 106
    .line 107
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 108
    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 112
    .line 113
    const-string p2, "  splitTransition  deduced Resize split screen"

    .line 114
    .line 115
    const v1, -0x1f2b8afc

    .line 116
    .line 117
    .line 118
    invoke-static {p1, v1, v0, p2, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 136
    .line 137
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 138
    .line 139
    .line 140
    new-instance p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    .line 141
    .line 142
    invoke-direct {p2, p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerPositionAsFraction()F

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 155
    .line 156
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 157
    .line 158
    if-nez p2, :cond_6

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_6
    const/4 p2, 0x0

    .line 162
    cmpg-float p2, p1, p2

    .line 163
    .line 164
    if-lez p2, :cond_b

    .line 165
    .line 166
    const/high16 p2, 0x3f800000    # 1.0f

    .line 167
    .line 168
    cmpl-float p2, p1, p2

    .line 169
    .line 170
    if-ltz p2, :cond_7

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_7
    iget p2, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    .line 174
    .line 175
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_8

    .line 180
    .line 181
    move p2, v5

    .line 182
    goto :goto_2

    .line 183
    :cond_8
    move p2, v0

    .line 184
    :goto_2
    if-nez p2, :cond_9

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_9
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    .line 188
    .line 189
    move v0, v5

    .line 190
    :goto_3
    if-nez v0, :cond_a

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_a
    const/16 v1, 0x184

    .line 194
    .line 195
    const/4 v2, 0x4

    .line 196
    const/4 v3, 0x0

    .line 197
    const/4 v4, 0x0

    .line 198
    iget v5, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    .line 199
    .line 200
    const/4 v6, 0x0

    .line 201
    const/4 v7, 0x0

    .line 202
    const/4 v8, 0x0

    .line 203
    const/4 v9, 0x0

    .line 204
    const/4 v10, 0x0

    .line 205
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    invoke-static/range {v1 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 212
    .line 213
    .line 214
    :cond_b
    :goto_4
    return-void
.end method

.method public final onLayoutSizeChanging(IILcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, p3, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 20
    .line 21
    .line 22
    iget p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 25
    .line 26
    if-nez p3, :cond_0

    .line 27
    .line 28
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 29
    .line 30
    iget-object p3, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 37
    .line 38
    iget-object p3, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    .line 46
    .line 47
    if-nez p3, :cond_1

    .line 48
    .line 49
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 50
    .line 51
    iget-object p3, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 58
    .line 59
    iget-object p3, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final onRecentsInSplitAnimationCanceled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 8
    .line 9
    .line 10
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRecentsInSplitAnimating:Z

    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    .line 23
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onRecentsInSplitAnimationFinish(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 18
    .line 19
    if-ge v1, v2, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ne v6, v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v6, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    invoke-direct {v6, v5, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_0

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v6, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;

    .line 69
    .line 70
    invoke-direct {v6, v5, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 91
    .line 92
    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v3, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->canShow()Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_1

    .line 103
    .line 104
    invoke-virtual {v4, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 105
    .line 106
    .line 107
    :cond_1
    return-void

    .line 108
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 115
    .line 116
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 117
    .line 118
    invoke-virtual {p1, p2, v3}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 125
    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRecentsInSplitAnimating:Z

    .line 129
    .line 130
    :cond_4
    return-void
.end method

.method public final onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    .line 45
    .line 46
    const/4 v0, 0x6

    .line 47
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 51
    .line 52
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onRootTaskAppeared()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    .line 37
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    .line 41
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    invoke-virtual {v0, v2, v3, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 48
    .line 49
    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 50
    .line 51
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    .line 55
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 56
    .line 57
    invoke-virtual {v0, v3, v5, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 58
    .line 59
    .line 60
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 65
    .line 66
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 67
    .line 68
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 69
    .line 70
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    .line 72
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 73
    .line 74
    invoke-virtual {v0, v3, v5, v4}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 78
    .line 79
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 80
    .line 81
    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 82
    .line 83
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 84
    .line 85
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 86
    .line 87
    .line 88
    iget-object v1, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 89
    .line 90
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 103
    .line 104
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 108
    .line 109
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 110
    .line 111
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 117
    .line 118
    .line 119
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_0
    return-void
.end method

.method public final onRootTaskVanished()V
    .locals 3

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x6

    .line 17
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onSnappedToDismiss(IZZ)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_DIVIDER_SA_LOGGING:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "1005"

    .line 6
    .line 7
    const-string v1, "Move divider"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 17
    .line 18
    if-ne v3, v0, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 22
    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    :goto_0
    move v3, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v3, v1

    .line 28
    :goto_1
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    move-object v6, v4

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    move-object v6, v5

    .line 37
    :goto_2
    sget-boolean v7, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 38
    .line 39
    if-nez v7, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0, v6, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_4
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    .line 46
    .line 47
    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 48
    .line 49
    if-eqz v7, :cond_11

    .line 50
    .line 51
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 52
    .line 53
    iget-boolean v7, v7, Lcom/android/wm/shell/common/split/DividerResizeController;->mIsResizing:Z

    .line 54
    .line 55
    if-eqz v7, :cond_11

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_11

    .line 62
    .line 63
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 64
    .line 65
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    .line 70
    if-eqz v6, :cond_5

    .line 71
    .line 72
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 73
    .line 74
    invoke-virtual {v3, v6}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 75
    .line 76
    .line 77
    :cond_5
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 78
    .line 79
    iget-object v7, v6, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 80
    .line 81
    if-eqz v7, :cond_6

    .line 82
    .line 83
    iget-boolean v7, v7, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    .line 84
    .line 85
    if-eqz v7, :cond_6

    .line 86
    .line 87
    move v7, v0

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    move v7, v1

    .line 90
    :goto_3
    const-string v9, "StageCoordinator"

    .line 91
    .line 92
    if-eqz v7, :cond_c

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellSide()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eq v5, v0, :cond_8

    .line 105
    .line 106
    const/4 v6, 0x3

    .line 107
    if-ne v5, v6, :cond_7

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_7
    move v5, v1

    .line 111
    goto :goto_5

    .line 112
    :cond_8
    :goto_4
    move v5, v0

    .line 113
    :goto_5
    if-eqz v5, :cond_9

    .line 114
    .line 115
    const/16 v5, 0x28

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_9
    const/16 v5, 0x50

    .line 119
    .line 120
    :goto_6
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageWinConfigPositionByType(I)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    and-int/2addr v5, v6

    .line 125
    if-eqz p2, :cond_a

    .line 126
    .line 127
    and-int/lit8 v6, v5, 0x60

    .line 128
    .line 129
    if-eqz v6, :cond_b

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_a
    and-int/lit8 v6, v5, 0x18

    .line 133
    .line 134
    if-eqz v6, :cond_b

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_b
    move v0, v1

    .line 138
    :goto_7
    const-string v1, "onSnappedToDismissMultiSplit: cell divider action, hostStageType="

    .line 139
    .line 140
    const-string v6, ", hostPos="

    .line 141
    .line 142
    invoke-static {v1, v4, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v5}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v5, ", dismissToHostStage="

    .line 154
    .line 155
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 169
    .line 170
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 171
    .line 172
    invoke-virtual {p0, v3, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 176
    .line 177
    const/4 v5, 0x2

    .line 178
    const/4 v6, 0x1

    .line 179
    move-object v1, v3

    .line 180
    move-object v2, p0

    .line 181
    move v3, v4

    .line 182
    move v4, v5

    .line 183
    move v5, v6

    .line 184
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    .line 185
    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_c
    iget v6, v6, Lcom/android/wm/shell/common/split/DividerResizeController;->mHalfSplitStageType:I

    .line 189
    .line 190
    if-nez v6, :cond_d

    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_d
    move-object v4, v5

    .line 194
    :goto_8
    invoke-virtual {p0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageWinConfigPositionByType(I)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz p2, :cond_e

    .line 199
    .line 200
    and-int/lit8 v7, v5, 0x60

    .line 201
    .line 202
    if-eqz v7, :cond_f

    .line 203
    .line 204
    goto :goto_9

    .line 205
    :cond_e
    and-int/lit8 v7, v5, 0x18

    .line 206
    .line 207
    if-eqz v7, :cond_f

    .line 208
    .line 209
    :goto_9
    move v1, v0

    .line 210
    :cond_f
    const-string v7, "onSnappedToDismissMultiSplit: halfStageType="

    .line 211
    .line 212
    const-string v10, ", halfPos="

    .line 213
    .line 214
    invoke-static {v7, v6, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-static {v5}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v5, ", dismissToHalfStage="

    .line 226
    .line 227
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    if-eqz v1, :cond_10

    .line 241
    .line 242
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 246
    .line 247
    const/4 v4, 0x2

    .line 248
    const/4 v5, 0x1

    .line 249
    move-object v1, v3

    .line 250
    move-object v2, p0

    .line 251
    move v3, v6

    .line 252
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    .line 253
    .line 254
    .line 255
    goto :goto_a

    .line 256
    :cond_10
    invoke-virtual {p0, v6, v3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 257
    .line 258
    .line 259
    const/4 v0, 0x2

    .line 260
    invoke-virtual {v8, v3, p0, v6, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)V

    .line 261
    .line 262
    .line 263
    :goto_a
    return-void

    .line 264
    :cond_11
    xor-int/lit8 v4, v3, 0x1

    .line 265
    .line 266
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 267
    .line 268
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 269
    .line 270
    .line 271
    const/4 v7, 0x0

    .line 272
    if-eqz p3, :cond_12

    .line 273
    .line 274
    invoke-virtual {p0, v5, v3, v7, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;Z)V

    .line 275
    .line 276
    .line 277
    :cond_12
    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 278
    .line 279
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 280
    .line 281
    invoke-virtual {v5, v3, v7}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 282
    .line 283
    .line 284
    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 285
    .line 286
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 287
    .line 288
    invoke-virtual {v5, v3, v7}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 289
    .line 290
    .line 291
    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 292
    .line 293
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 294
    .line 295
    invoke-virtual {v5, v3, v1}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v4, v5, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 299
    .line 300
    .line 301
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 302
    .line 303
    if-eqz v0, :cond_13

    .line 304
    .line 305
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 306
    .line 307
    invoke-virtual {v5, v0}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 308
    .line 309
    .line 310
    :cond_13
    const/4 v0, 0x4

    .line 311
    invoke-virtual {v8, v5, p0, v4, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)V

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method public onSplitScreenEnter()V
    .locals 0

    .line 1
    return-void
.end method

.method public onSplitScreenExit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "SplitBackgroundController"

    .line 22
    .line 23
    const-string v1, "attachTo: new root coming."

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->detach()V

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 32
    .line 33
    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "Split Background Layer"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "SplitBackgroundController.onDisplayAreaAppeared"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 64
    .line 65
    iget-object v2, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 66
    .line 67
    iput-object v0, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->getDisplayBounds()Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->setCrop(Landroid/graphics/Rect;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v3, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 83
    .line 84
    const/4 v4, -0x1

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 86
    .line 87
    .line 88
    iget-object v3, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    .line 89
    .line 90
    invoke-virtual {v2, v3, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 97
    .line 98
    .line 99
    iput-boolean v1, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 102
    .line 103
    if-nez p1, :cond_1

    .line 104
    .line 105
    new-instance p1, Lcom/android/wm/shell/common/split/SplitLayout;

    .line 106
    .line 107
    const-string v1, "StageCoordinatorSplitDivider"

    .line 108
    .line 109
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    .line 113
    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 114
    .line 115
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    .line 116
    .line 117
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 118
    .line 119
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 120
    .line 121
    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 122
    .line 123
    const/4 v9, 0x2

    .line 124
    iget v10, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 125
    .line 126
    move-object v0, p1

    .line 127
    move-object v4, p0

    .line 128
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/common/split/SplitLayout;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;II)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 132
    .line 133
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 134
    .line 135
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 136
    .line 137
    invoke-virtual {p2, v0, p1}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 141
    .line 142
    iput-object p0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 143
    .line 144
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 145
    .line 146
    iget-object v0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 147
    .line 148
    iput-object p2, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 149
    .line 150
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 151
    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 155
    .line 156
    iput-object p2, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 157
    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskAppeared()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p0, "\n Unknown task appeared: "

    .line 173
    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p2
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    .line 7
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_8

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v3, Landroid/graphics/Rect;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    move v0, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v0, v2

    .line 43
    :goto_0
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFolded:Z

    .line 44
    .line 45
    const/4 v4, 0x5

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 49
    .line 50
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 51
    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 56
    .line 57
    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 58
    .line 59
    if-ne v3, v4, :cond_2

    .line 60
    .line 61
    :goto_1
    move v3, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v3, v2

    .line 64
    :goto_2
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 65
    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    const-string p0, "StageCoordinator"

    .line 79
    .line 80
    const-string p1, "onTaskInfoChanged ignore - device type is differents folded state."

    .line 81
    .line 82
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 87
    .line 88
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 89
    .line 90
    const/4 v3, -0x1

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 94
    .line 95
    if-eq v0, v3, :cond_4

    .line 96
    .line 97
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpConfigAfterFoldDismiss:Landroid/content/res/Configuration;

    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    move v1, v2

    .line 116
    :goto_3
    if-eqz v1, :cond_6

    .line 117
    .line 118
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 119
    .line 120
    if-nez p1, :cond_6

    .line 121
    .line 122
    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 131
    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 136
    .line 137
    if-eqz p1, :cond_7

    .line 138
    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 142
    .line 143
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 144
    .line 145
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 146
    .line 147
    if-ne p1, v4, :cond_7

    .line 148
    .line 149
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 150
    .line 151
    if-ne p1, v3, :cond_7

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSplitDivisionIfNeeded()V

    .line 154
    .line 155
    .line 156
    :cond_7
    return-void

    .line 157
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p0, "\n Unknown task info changed: "

    .line 168
    .line 169
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskVanished()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 17
    .line 18
    const-string p1, "StageCoordinator"

    .line 19
    .line 20
    const-string v1, "mSplitLayout is set to null"

    .line 21
    .line 22
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->detach()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p0, "\n Unknown task vanished: "

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public final onTransitionAnimationComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 15
    .line 16
    .line 17
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 23
    .line 24
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 29
    .line 30
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "onSyncAppsReady: SyncId="

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v2, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mSyncAppsId:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "DividerResizeController"

    .line 64
    .line 65
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    const-string/jumbo v1, "sync_apps_ready"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/DividerResizeController;->stopWaitingForSyncAppsCallback(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRecentsInSplitAnimating:Z

    .line 80
    .line 81
    :cond_3
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    .line 82
    .line 83
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 14
    .line 15
    invoke-virtual {p2, p3, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->onConsumed()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->onConsumed()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->onConsumed()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method public final overrideStageCoordinatorRootConfig(Landroid/window/WindowContainerTransaction;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    :cond_0
    iget v0, v2, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 35
    .line 36
    iget v1, v2, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {v4, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    .line 42
    .line 43
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, v2, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 54
    .line 55
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget-object v5, v2, Lcom/android/wm/shell/common/DisplayLayout;->mTempRect:Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {v0, v5, v3, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, v2, Lcom/android/wm/shell/common/DisplayLayout;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0, v4}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {v2, v4, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    int-to-float v1, v1

    .line 100
    div-float/2addr v1, v0

    .line 101
    const/high16 v2, 0x3f000000    # 0.5f

    .line 102
    .line 103
    add-float/2addr v1, v2

    .line 104
    float-to-int v1, v1

    .line 105
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    int-to-float v3, v3

    .line 110
    div-float/2addr v3, v0

    .line 111
    add-float/2addr v3, v2

    .line 112
    float-to-int v0, v3

    .line 113
    invoke-virtual {p1, p0, v1, v0}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p1, p0, v3, v3}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_1
    return-void
.end method

.method public final prepareActiveSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZF)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 v0, 0x1

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V

    .line 19
    .line 20
    .line 21
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 27
    .line 28
    invoke-virtual {p1, v2, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 36
    .line 37
    .line 38
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 39
    .line 40
    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    .line 42
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 43
    .line 44
    invoke-virtual {p1, p2, p3, v0}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 48
    .line 49
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitLayout(Landroid/window/WindowContainerTransaction;ZF)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public prepareAndStartDismissTransition(IILandroid/window/WindowContainerTransaction;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p3, Landroid/window/WindowContainerTransaction;

    .line 9
    .line 10
    invoke-direct {p3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 11
    .line 12
    .line 13
    :goto_0
    move-object v2, p3

    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;Z)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 23
    .line 24
    invoke-virtual {v2, p3}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 25
    .line 26
    .line 27
    :cond_1
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 28
    .line 29
    const/4 p4, 0x1

    .line 30
    const/4 v1, 0x2

    .line 31
    if-eqz p3, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    if-ne p2, v1, :cond_2

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p0, v2, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {p0, v2, v0, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    const/4 v6, 0x1

    .line 53
    move-object v3, p0

    .line 54
    move v4, p1

    .line 55
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-virtual {p0, p1, v2, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 63
    .line 64
    invoke-virtual {p2, v2, p0, p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final prepareBringSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZF)V
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, p3, v1, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const-string p2, "StageCoordinator"

    .line 19
    .line 20
    const-string p3, "When the App Pair is starting, it does not reparent on the mainStage."

    .line 21
    .line 22
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitLayout(Landroid/window/WindowContainerTransaction;ZF)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_4

    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 37
    .line 38
    const/4 p3, 0x1

    .line 39
    invoke-virtual {p2, p1, p3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    .line 45
    iget-object v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 46
    .line 47
    sget-object v3, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES:[I

    .line 48
    .line 49
    sget-object v4, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    const/4 v6, 0x1

    .line 53
    move-object v0, p1

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;

    .line 55
    .line 56
    .line 57
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasChild()Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    const/4 v0, 0x0

    .line 68
    if-eqz p3, :cond_2

    .line 69
    .line 70
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 71
    .line 72
    if-eqz p3, :cond_2

    .line 73
    .line 74
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-boolean p2, p2, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitLayout(Landroid/window/WindowContainerTransaction;ZF)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_0
    return-void
.end method

.method public final prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 12
    .line 13
    const/4 v6, -0x1

    .line 14
    if-ne v1, v6, :cond_5

    .line 15
    .line 16
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const-string v8, ", "

    .line 21
    .line 22
    const-string v9, ""

    .line 23
    .line 24
    const-string v10, "] before startAnimation()."

    .line 25
    .line 26
    const-string v11, " to have been called with ["

    .line 27
    .line 28
    const-string v12, "Expected onTaskVanished on "

    .line 29
    .line 30
    const-string v13, "StageCoordinator"

    .line 31
    .line 32
    if-eqz v7, :cond_2

    .line 33
    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    :goto_0
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 41
    .line 42
    .line 43
    move-result v15

    .line 44
    if-ge v14, v15, :cond_1

    .line 45
    .line 46
    if-eqz v14, :cond_0

    .line 47
    .line 48
    move-object v15, v8

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move-object v15, v9

    .line 51
    :goto_1
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v15, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    .line 55
    .line 56
    invoke-virtual {v15, v14}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->keyAt(I)I

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v14, v14, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v13, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_5

    .line 99
    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const/4 v14, 0x0

    .line 106
    :goto_2
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-ge v14, v15, :cond_4

    .line 111
    .line 112
    if-eqz v14, :cond_3

    .line 113
    .line 114
    move-object v15, v8

    .line 115
    goto :goto_3

    .line 116
    :cond_3
    move-object v15, v9

    .line 117
    :goto_3
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v15, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    .line 121
    .line 122
    invoke-virtual {v15, v14}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->keyAt(I)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    add-int/lit8 v14, v14, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-static {v13, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_5
    new-instance v7, Landroid/util/ArrayMap;

    .line 161
    .line 162
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 163
    .line 164
    .line 165
    const/4 v8, 0x1

    .line 166
    move-object/from16 v9, p3

    .line 167
    .line 168
    invoke-static {v9, v8}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    :goto_4
    if-ltz v10, :cond_9

    .line 173
    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    check-cast v11, Landroid/window/TransitionInfo$Change;

    .line 183
    .line 184
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    if-nez v12, :cond_6

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_6
    invoke-virtual {v0, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    if-nez v13, :cond_7

    .line 196
    .line 197
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    invoke-virtual {v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    if-eq v13, v6, :cond_8

    .line 206
    .line 207
    :cond_7
    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 208
    .line 209
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    invoke-virtual {v7, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    :cond_8
    :goto_5
    add-int/lit8 v10, v10, -0x1

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->shouldBreakPairedTaskInRecents(I)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    if-eqz v9, :cond_a

    .line 228
    .line 229
    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda17;

    .line 230
    .line 231
    const/4 v10, 0x0

    .line 232
    invoke-direct {v9, v7, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;I)V

    .line 233
    .line 234
    .line 235
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 236
    .line 237
    invoke-virtual {v11, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_a
    const/4 v10, 0x0

    .line 242
    :goto_6
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 243
    .line 244
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 245
    .line 246
    const/4 v12, 0x0

    .line 247
    if-eqz v9, :cond_b

    .line 248
    .line 249
    if-eqz p6, :cond_b

    .line 250
    .line 251
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v2, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 255
    .line 256
    .line 257
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 258
    .line 259
    invoke-virtual {v2, v0, v12}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 260
    .line 261
    .line 262
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 263
    .line 264
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_b
    iput-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 269
    .line 270
    invoke-virtual {v0, v10, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 271
    .line 272
    .line 273
    iget-object v9, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 274
    .line 275
    invoke-virtual {v2, v9, v12}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 276
    .line 277
    .line 278
    iget-object v9, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 279
    .line 280
    invoke-virtual {v2, v9, v12}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 281
    .line 282
    .line 283
    if-eq v1, v6, :cond_e

    .line 284
    .line 285
    if-nez v1, :cond_c

    .line 286
    .line 287
    iget-object v7, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_c
    iget-object v7, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 291
    .line 292
    :goto_7
    invoke-virtual {v2, v7}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 293
    .line 294
    .line 295
    if-nez v1, :cond_d

    .line 296
    .line 297
    iget-object v7, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_d
    iget-object v7, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 301
    .line 302
    :goto_8
    const/4 v9, 0x0

    .line 303
    invoke-virtual {v2, v7, v9, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 304
    .line 305
    .line 306
    goto :goto_a

    .line 307
    :cond_e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    invoke-interface {v9}, Ljava/util/Set;->size()I

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    sub-int/2addr v9, v8

    .line 316
    :goto_9
    if-ltz v9, :cond_f

    .line 317
    .line 318
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    check-cast v10, Landroid/view/SurfaceControl;

    .line 323
    .line 324
    invoke-virtual {v3, v10}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 325
    .line 326
    .line 327
    add-int/lit8 v9, v9, -0x1

    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_f
    :goto_a
    if-ne v1, v6, :cond_10

    .line 331
    .line 332
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 333
    .line 334
    const/4 v15, -0x1

    .line 335
    const/16 v16, 0x0

    .line 336
    .line 337
    const/16 v17, -0x1

    .line 338
    .line 339
    const/16 v18, 0x0

    .line 340
    .line 341
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 342
    .line 343
    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 344
    .line 345
    .line 346
    move-result v19

    .line 347
    move/from16 v14, p2

    .line 348
    .line 349
    invoke-virtual/range {v13 .. v19}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    .line 350
    .line 351
    .line 352
    goto :goto_c

    .line 353
    :cond_10
    if-nez v1, :cond_11

    .line 354
    .line 355
    goto :goto_b

    .line 356
    :cond_11
    const/4 v8, 0x0

    .line 357
    :goto_b
    move/from16 v1, p2

    .line 358
    .line 359
    invoke-virtual {v0, v1, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->logExitToStage(IZ)V

    .line 360
    .line 361
    .line 362
    :goto_c
    const/4 v1, 0x0

    .line 363
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 364
    .line 365
    .line 366
    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 367
    .line 368
    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 369
    .line 370
    .line 371
    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 372
    .line 373
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 374
    .line 375
    .line 376
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 377
    .line 378
    if-eqz v4, :cond_12

    .line 379
    .line 380
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 384
    .line 385
    .line 386
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 387
    .line 388
    invoke-virtual {v2, v0, v12}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 389
    .line 390
    .line 391
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 392
    .line 393
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 394
    .line 395
    .line 396
    :cond_12
    return-void
.end method

.method public final prepareEnterMultiSplitScreen(ILandroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellStageWindowConfigPosition(IZ)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 18
    .line 19
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellStageWindowConfigPosition(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    .line 31
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 32
    .line 33
    invoke-virtual {p2, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onSplitScreenEnter()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 5
    .line 6
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move-object v3, p2

    .line 22
    move v4, p3

    .line 23
    move v5, p4

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareBringSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZF)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v5, 0x0

    .line 29
    move-object v0, p0

    .line 30
    move-object v1, p1

    .line 31
    move-object v2, p2

    .line 32
    move v3, p3

    .line 33
    move v4, p4

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareActiveSplit(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZF)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mToSplit:Z

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->adjustChildTaskWindowingModeIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    .line 33
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    sget-object v6, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    .line 37
    .line 38
    sget-object v7, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    .line 39
    .line 40
    move-object v3, p1

    .line 41
    move v8, p2

    .line 42
    invoke-virtual/range {v3 .. v8}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    .line 47
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 48
    .line 49
    invoke-virtual {p1, p2, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 50
    .line 51
    .line 52
    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mToSplit:Z

    .line 53
    .line 54
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 55
    .line 56
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 57
    .line 58
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    if-ne p1, v2, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v4

    .line 21
    :goto_0
    invoke-virtual {v3, p2, v1, p3}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;ZZ)Z

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    if-ne p1, v2, :cond_3

    .line 26
    .line 27
    move p3, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_3
    move p3, v4

    .line 30
    :goto_1
    invoke-virtual {v3, p2, p3, v2}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;ZZ)Z

    .line 31
    .line 32
    .line 33
    :goto_2
    if-nez p1, :cond_4

    .line 34
    .line 35
    move p3, v2

    .line 36
    goto :goto_3

    .line 37
    :cond_4
    move p3, v4

    .line 38
    :goto_3
    invoke-virtual {v0, p2, p3}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    .line 39
    .line 40
    .line 41
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 42
    .line 43
    if-eqz p3, :cond_5

    .line 44
    .line 45
    iget p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 46
    .line 47
    const/4 v0, -0x1

    .line 48
    if-eq p3, v0, :cond_5

    .line 49
    .line 50
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCoverDisplaySplitLayoutIfNeeded()Z

    .line 53
    .line 54
    .line 55
    :cond_5
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 56
    .line 57
    if-eqz p3, :cond_7

    .line 58
    .line 59
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 60
    .line 61
    iget-boolean p3, p3, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 62
    .line 63
    if-eqz p3, :cond_7

    .line 64
    .line 65
    const/4 p3, 0x2

    .line 66
    if-ne p1, p3, :cond_6

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    move v2, v4

    .line 70
    :goto_4
    invoke-virtual {p0, p2, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 71
    .line 72
    .line 73
    :cond_7
    return-void
.end method

.method public final prepareMultiSplitDismissChangeTransition(ILandroid/window/WindowContainerTransaction;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 4
    .line 5
    const-string v2, "StageCoordinator"

    .line 6
    .line 7
    if-eqz v1, :cond_8

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move v4, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v4, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz v0, :cond_7

    .line 44
    .line 45
    if-eqz v5, :cond_7

    .line 46
    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_2
    if-eqz p3, :cond_3

    .line 51
    .line 52
    const/4 p3, 0x4

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move p3, v3

    .line 55
    :goto_1
    if-ne p1, v4, :cond_4

    .line 56
    .line 57
    const-string p3, "half_dismiss"

    .line 58
    .line 59
    invoke-virtual {p2, v5, v3, p3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0, v3, p3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    if-ne p1, v1, :cond_5

    .line 67
    .line 68
    const-string v1, "cell_dismiss"

    .line 69
    .line 70
    invoke-virtual {p2, v0, p3, v1}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 71
    .line 72
    .line 73
    move-object p3, v1

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const-string v0, "cell_host_dismiss"

    .line 76
    .line 77
    invoke-virtual {p2, v5, p3, v0}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 78
    .line 79
    .line 80
    move-object p3, v0

    .line 81
    :goto_2
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda7;

    .line 94
    .line 95
    invoke-direct {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda7;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    const/4 v1, 0x2

    .line 106
    invoke-virtual {p2, p0, v1, p3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 107
    .line 108
    .line 109
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string/jumbo p2, "prepareMultiSplitDismissChangeTransition: dismiss="

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, ", hasMovingToFreeform="

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string/jumbo p2, "prepareMultiSplitDismissChangeTransition: failed, dismissStageToken="

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p0, ", cellHostStageToken="

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p0, ", cellStageToken="

    .line 160
    .line 161
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_8
    :goto_5
    const-string/jumbo p0, "prepareMultiSplitDismissChangeTransition: failed, invalid cell host"

    .line 176
    .line 177
    .line 178
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public prepareSplitDismissChangeTransition(Landroid/window/WindowContainerTransaction;ILandroid/window/TransitionRequestInfo;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareMultiSplitDismissChangeTransition(ILandroid/window/WindowContainerTransaction;Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v4, 0x1

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 27
    .line 28
    move v7, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v0, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    const-string v10, "StageCoordinator"

    .line 42
    .line 43
    if-eqz v8, :cond_d

    .line 44
    .line 45
    if-nez v9, :cond_2

    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_2
    const/4 v11, 0x2

    .line 50
    const/4 v12, 0x4

    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    if-eqz v13, :cond_3

    .line 58
    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    if-ne v14, v12, :cond_3

    .line 64
    .line 65
    iget-object v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 66
    .line 67
    const-string/jumbo v14, "split_to_close(triggerTask)"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v13, v11, v14}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

    .line 74
    .line 75
    if-eqz v13, :cond_4

    .line 76
    .line 77
    move v13, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v13, 0x0

    .line 80
    :goto_1
    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    if-eqz v13, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 86
    .line 87
    const-string/jumbo v5, "split_to_close"

    .line 88
    .line 89
    .line 90
    if-eqz v15, :cond_6

    .line 91
    .line 92
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v15

    .line 96
    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    invoke-virtual {v15}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    if-eqz v15, :cond_6

    .line 105
    .line 106
    invoke-virtual {v1, v8, v11, v5}, Landroid/window/WindowContainerTransaction;->orderedSetChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    invoke-virtual {v1, v8, v11, v5}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 111
    .line 112
    .line 113
    :goto_2
    if-eqz v3, :cond_7

    .line 114
    .line 115
    move v5, v12

    .line 116
    goto :goto_4

    .line 117
    :cond_7
    if-eqz v13, :cond_8

    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_8

    .line 124
    .line 125
    iget v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 126
    .line 127
    const-string/jumbo v5, "split_to_freeform(hasAppsEdge)"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3, v5}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMovingToFreeformTaskToken:Landroid/window/WindowContainerToken;

    .line 134
    .line 135
    invoke-virtual {v1, v0, v4}, Landroid/window/WindowContainerTransaction;->addChangeTransitFlags(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 136
    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    goto :goto_4

    .line 140
    :cond_8
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_9

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_9
    move v4, v11

    .line 148
    :goto_3
    move v5, v4

    .line 149
    :goto_4
    if-eqz v5, :cond_b

    .line 150
    .line 151
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 152
    .line 153
    const-string/jumbo v3, "split_to_full"

    .line 154
    .line 155
    .line 156
    if-eqz v0, :cond_a

    .line 157
    .line 158
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_a

    .line 171
    .line 172
    invoke-virtual {v1, v9, v5, v3}, Landroid/window/WindowContainerTransaction;->orderedSetChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_a
    invoke-virtual {v1, v9, v5, v3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 177
    .line 178
    .line 179
    :cond_b
    :goto_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 180
    .line 181
    if-eqz v0, :cond_c

    .line 182
    .line 183
    const-string v0, "2090"

    .line 184
    .line 185
    const-string v1, "From split dismiss"

    .line 186
    .line 187
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string/jumbo v1, "prepareSplitDismissChangeTransition: dismiss="

    .line 193
    .line 194
    .line 195
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v1, ", expand="

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-static {v7}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v1, ", hasMovingToFreeform="

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_d
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string/jumbo v1, "prepareSplitDismissChangeTransition: failed, dismissStageToken="

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", expandStageToken="

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method public final prepareSplitLayout(Landroid/window/WindowContainerTransaction;ZF)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v0, "prepareSplitLayout: reset resize anim, "

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0xa

    .line 21
    .line 22
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v0, "StageCoordinator"

    .line 34
    .line 35
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    move p2, v1

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    cmpl-float v0, p3, v0

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 46
    .line 47
    invoke-virtual {v0, p3, v2, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    if-eqz p2, :cond_4

    .line 52
    .line 53
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 54
    .line 55
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    move v0, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v0, v1

    .line 62
    :goto_0
    invoke-virtual {p3, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerAtBorder(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    .line 69
    .line 70
    .line 71
    :goto_1
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 72
    .line 73
    invoke-virtual {p0, p3, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 74
    .line 75
    .line 76
    if-eqz p2, :cond_5

    .line 77
    .line 78
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 79
    .line 80
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 81
    .line 82
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 83
    .line 84
    invoke-virtual {p1, p2, v1}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 85
    .line 86
    .line 87
    :cond_5
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 88
    .line 89
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 90
    .line 91
    invoke-virtual {p1, p2, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 98
    .line 99
    .line 100
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 101
    .line 102
    if-eqz p0, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroid/window/WindowContainerTransaction;->setChangeTransitionRequest(I)V

    .line 105
    .line 106
    .line 107
    :cond_6
    return-void
.end method

.method public prepareSplitMaximizeChangeTransition(Landroid/window/WindowContainerTransaction;I)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "StageCoordinator"

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 17
    .line 18
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 19
    .line 20
    if-eqz v5, :cond_5

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    const-string/jumbo p0, "prepareMultiSplitMaximizeChangeTransition: failed, cannot find token"

    .line 38
    .line 39
    .line 40
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    const-string v6, "maximize_multi_split"

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroid/window/WindowContainerToken;

    .line 90
    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1, v3, v1, v6}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_4

    .line 102
    .line 103
    move v1, v2

    .line 104
    :cond_4
    invoke-virtual {p1, v5, v1, v6}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 105
    .line 106
    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string/jumbo p1, "prepareMultiSplitMaximizeChangeTransition: expand="

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    :goto_1
    const-string/jumbo p0, "prepareMultiSplitMaximizeChangeTransition: failed, invalid cell host"

    .line 131
    .line 132
    .line 133
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :goto_2
    return-void

    .line 137
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageTaskListenerByStageType(I)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-nez p2, :cond_7

    .line 142
    .line 143
    move v3, v2

    .line 144
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageToken(I)Landroid/window/WindowContainerToken;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    if-eqz v3, :cond_a

    .line 153
    .line 154
    if-nez p0, :cond_8

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    const-string v5, "maximize_split"

    .line 158
    .line 159
    invoke-virtual {p1, v3, v1, v5}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasAppsEdgeActivityOnTop()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_9

    .line 167
    .line 168
    move v1, v2

    .line 169
    :cond_9
    invoke-virtual {p1, p0, v1, v5}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 170
    .line 171
    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string/jumbo p1, "prepareSplitMaximizeChangeTransition: expand="

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_a
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string/jumbo p2, "prepareSplitMaximizeChangeTransition: failed, dismissStageToken="

    .line 198
    .line 199
    .line 200
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string p2, ", expandStageToken="

    .line 207
    .line 208
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public final reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    .line 10
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    .line 23
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 24
    .line 25
    sget-object v5, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    .line 26
    .line 27
    sget-object v6, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    .line 28
    .line 29
    move-object v2, p1

    .line 30
    move v7, p3

    .line 31
    invoke-virtual/range {v2 .. v7}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x1

    .line 41
    if-nez v1, :cond_e

    .line 42
    .line 43
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 44
    .line 45
    iget p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mStageType:I

    .line 46
    .line 47
    if-ne p2, v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move p2, v1

    .line 55
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x0

    .line 60
    if-eqz v3, :cond_7

    .line 61
    .line 62
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x10

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    move v4, v2

    .line 69
    :cond_3
    if-nez p2, :cond_4

    .line 70
    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    :cond_4
    if-ne p2, v2, :cond_6

    .line 74
    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    :cond_5
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 78
    .line 79
    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :cond_6
    move v4, v2

    .line 84
    goto :goto_3

    .line 85
    :cond_7
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 86
    .line 87
    and-int/lit8 v3, v3, 0x8

    .line 88
    .line 89
    if-eqz v3, :cond_8

    .line 90
    .line 91
    move v3, v2

    .line 92
    goto :goto_2

    .line 93
    :cond_8
    move v3, v4

    .line 94
    :goto_2
    if-nez p2, :cond_9

    .line 95
    .line 96
    if-eqz v3, :cond_a

    .line 97
    .line 98
    :cond_9
    if-ne p2, v2, :cond_b

    .line 99
    .line 100
    if-eqz v3, :cond_b

    .line 101
    .line 102
    :cond_a
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 103
    .line 104
    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :cond_b
    :goto_3
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 109
    .line 110
    if-eqz p2, :cond_d

    .line 111
    .line 112
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 113
    .line 114
    iget v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    .line 115
    .line 116
    iget-object v5, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 117
    .line 118
    if-nez v3, :cond_c

    .line 119
    .line 120
    iget v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 121
    .line 122
    int-to-float v3, v3

    .line 123
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    int-to-float v6, v6

    .line 128
    div-float/2addr v3, v6

    .line 129
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    int-to-float v5, v5

    .line 134
    mul-float/2addr v5, v3

    .line 135
    float-to-int v3, v5

    .line 136
    iput v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_c
    iget v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividePosition:I

    .line 140
    .line 141
    int-to-float v3, v3

    .line 142
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    int-to-float v6, v6

    .line 147
    div-float/2addr v3, v6

    .line 148
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    int-to-float v5, v5

    .line 153
    mul-float/2addr v5, v3

    .line 154
    float-to-int v3, v5

    .line 155
    iput v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 156
    .line 157
    :cond_d
    :goto_4
    invoke-virtual {p0, v1, v4, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    .line 158
    .line 159
    .line 160
    :cond_e
    iput-boolean v2, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mToSplit:Z

    .line 161
    .line 162
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public final resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;
    .locals 5

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 13
    .line 14
    if-eq p1, v1, :cond_6

    .line 15
    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    if-eq p1, v0, :cond_4

    .line 19
    .line 20
    if-ne p1, v2, :cond_3

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {v3, p1}, Lcom/android/wm/shell/util/StageUtils;->getMultiSplitLaunchPosition(IZ)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    :cond_1
    invoke-virtual {p0, p2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellStageWindowConfigPosition(IZ)V

    .line 33
    .line 34
    .line 35
    if-eqz p4, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 38
    .line 39
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellStageWindowConfigPosition(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 45
    .line 46
    invoke-virtual {p0, p1, p4, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p3, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string p2, "Unknown stage="

    .line 59
    .line 60
    invoke-static {p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 69
    .line 70
    invoke-static {p3, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 75
    .line 76
    invoke-static {p3, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_6
    if-eqz p2, :cond_b

    .line 81
    .line 82
    iget-boolean p1, v4, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 83
    .line 84
    if-eqz p1, :cond_b

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-ne p1, p2, :cond_7

    .line 91
    .line 92
    move v0, v3

    .line 93
    goto :goto_0

    .line 94
    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-ne p1, p2, :cond_8

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_8
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 102
    .line 103
    if-ne p1, p2, :cond_9

    .line 104
    .line 105
    move v0, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_9
    move v0, v1

    .line 108
    :goto_0
    if-eq v0, v1, :cond_a

    .line 109
    .line 110
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_a
    const-string p0, "StageCoordinator"

    .line 115
    .line 116
    const-string p1, "No stage type nor split position specified to resolve start stage"

    .line 117
    .line 118
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_b
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 123
    .line 124
    .line 125
    :goto_1
    return-object p3
.end method

.method public final resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_8

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    if-eqz p1, :cond_4

    if-ne p1, v0, :cond_3

    if-eq p2, v1, :cond_0

    .line 2
    invoke-virtual {p0, p2, p5, p4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    :goto_0
    if-nez p3, :cond_1

    .line 4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 5
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p2, p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-static {p3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    goto/16 :goto_5

    .line 6
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown stage="

    .line 7
    invoke-static {p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eq p2, v1, :cond_5

    .line 9
    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result p1

    .line 10
    invoke-virtual {p0, p1, p5, p4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result p2

    :goto_2
    if-nez p3, :cond_6

    .line 12
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 13
    :cond_6
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p2, p0, :cond_7

    goto :goto_3

    :cond_7
    move-object v2, v3

    :goto_3
    invoke-static {p3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    goto :goto_5

    :cond_8
    if-eq p2, v1, :cond_b

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 15
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne p2, p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    move v2, v0

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_5

    :cond_a
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_5

    :cond_b
    const-string p0, "StageCoordinator"

    const-string p1, "No stage type nor split position specified to resolve start stage"

    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object p3
.end method

.method public final rotateMultiSplitWithTransition()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    .line 32
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    .line 36
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v4, 0x0

    .line 48
    :goto_0
    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 49
    .line 50
    iput v5, v3, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    iput v5, v3, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 57
    .line 58
    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 59
    .line 60
    iput v5, v3, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 61
    .line 62
    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->rotateMultiSplitClockwise(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    .line 63
    .line 64
    .line 65
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 66
    .line 67
    const/high16 v6, 0x3f000000    # 0.5f

    .line 68
    .line 69
    const/4 v7, 0x1

    .line 70
    invoke-virtual {v5, v6, v7, v7}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v5, "rotate_split"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0, v7, v5}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1, v7, v5}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    invoke-virtual {v2, v4, v7, v5}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {p0, v3, v7, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    .line 94
    .line 95
    .line 96
    return v7

    .line 97
    :cond_3
    :goto_1
    const-string p0, "StageCoordinator"

    .line 98
    .line 99
    const-string/jumbo v0, "rotateMultiSplitWithTransition: failed, split isn\'t activated"

    .line 100
    .line 101
    .line 102
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    const/4 p0, 0x0

    .line 106
    return p0
.end method

.method public final sendOnBoundsChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    if-ltz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v4, Landroid/graphics/Rect;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-interface {v2, v4, v3, v5}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public final sendPairLoggingLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastPackageNameList:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCurrentPackageNameList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    xor-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "1004"

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/4 v0, 0x3

    .line 49
    if-ne p0, v0, :cond_2

    .line 50
    .line 51
    const-string p0, "1045"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string p0, "1044"

    .line 55
    .line 56
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final sendSplitDirectionSaLogging()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, "Vertical split"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "Horizontal split"

    .line 16
    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne p0, v1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v1, 0x0

    .line 34
    :goto_1
    if-eqz v1, :cond_3

    .line 35
    .line 36
    const-string p0, "Vertical device"

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    const-string p0, "Horizontal device"

    .line 40
    .line 41
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, " + "

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v0, "1025"

    .line 62
    .line 63
    invoke-static {v0, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final sendStatusToListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-interface {p1, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v3, Landroid/graphics/Rect;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {p1, v3, v0, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 45
    .line 46
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    .line 52
    .line 53
    .line 54
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public final setAnimScaleSetting(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    .line 4
    .line 5
    cmpl-float v0, v0, p1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "setAnimScaleSetting: "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "->"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "SplitScreenTransitions"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final setCellSplitVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 6
    .line 7
    return-void
.end method

.method public final setCellStageWindowConfigPosition(IZ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVerticalDivision()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    and-int/lit8 v0, p1, 0x8

    .line 25
    .line 26
    if-nez v0, :cond_5

    .line 27
    .line 28
    :cond_1
    if-nez p2, :cond_4

    .line 29
    .line 30
    and-int/lit8 p1, p1, 0x10

    .line 31
    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-eqz p2, :cond_3

    .line 36
    .line 37
    and-int/lit8 v0, p1, 0x20

    .line 38
    .line 39
    if-nez v0, :cond_5

    .line 40
    .line 41
    :cond_3
    if-nez p2, :cond_4

    .line 42
    .line 43
    and-int/lit8 p1, p1, 0x40

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    move-object v1, v2

    .line 49
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 52
    .line 53
    return-void
.end method

.method public final setDividerSizeIfNeeded(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateDividerConfig(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string/jumbo v1, "update_flex_panel"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 33
    .line 34
    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 35
    .line 36
    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_a

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string/jumbo v0, "show"

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "hide"

    .line 17
    .line 18
    :goto_0
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 27
    .line 28
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v2, -0x25b68203

    .line 33
    .line 34
    .line 35
    const-string v4, "Request to %s divider bar from %s."

    .line 36
    .line 37
    invoke-static {v3, v2, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 52
    .line 53
    const p1, 0x51feb992

    .line 54
    .line 55
    .line 56
    const-string p2, "   Defer showing divider bar due to keyguard showing."

    .line 57
    .line 58
    invoke-static {p0, p1, v1, p2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void

    .line 62
    :cond_3
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 65
    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 73
    .line 74
    if-ltz v2, :cond_4

    .line 75
    .line 76
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    .line 81
    .line 82
    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 83
    .line 84
    invoke-interface {v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 94
    .line 95
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 96
    .line 97
    iput-boolean v2, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerVisible:Z

    .line 98
    .line 99
    if-nez v2, :cond_6

    .line 100
    .line 101
    iget-object v2, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    .line 102
    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    iget-boolean v3, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsPendingFirstAutoOpenDividerPanel:Z

    .line 106
    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanelAutoOpen:Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 112
    .line 113
    .line 114
    iput-boolean v1, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsPendingFirstAutoOpenDividerPanel:Z

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v3, "removeCallbacks() DividerPanel first auto open / mIsFirstAutoOpenDividerPanel: "

    .line 119
    .line 120
    .line 121
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-boolean v3, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsFirstAutoOpenDividerPanel:Z

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v3, "SplitWindowManager"

    .line 134
    .line 135
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_5
    iget-object v2, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/DividerPanel;->removeDividerPanel()V

    .line 141
    .line 142
    .line 143
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 144
    .line 145
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    .line 146
    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 150
    .line 151
    .line 152
    :cond_6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION_SA_LOGGING:Z

    .line 153
    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendSplitDirectionSaLogging()V

    .line 157
    .line 158
    .line 159
    :cond_7
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 160
    .line 161
    if-eqz p1, :cond_9

    .line 162
    .line 163
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 164
    .line 165
    if-eqz p0, :cond_8

    .line 166
    .line 167
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 168
    .line 169
    const p1, -0x42a56eb2

    .line 170
    .line 171
    .line 172
    const-string p2, "   Skip animating divider bar due to it\'s remote animating."

    .line 173
    .line 174
    invoke-static {p0, p1, v1, p2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_8
    return-void

    .line 178
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 179
    .line 180
    .line 181
    :cond_a
    return-void
.end method

.method public final setLayoutOffsetTargetFromIme(ILcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getBottomStages()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->applyLayoutOffsetTargetForMultiSplit(Landroid/window/WindowContainerTransaction;ILjava/util/ArrayList;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_0
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 33
    .line 34
    :goto_0
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    .line 36
    iget-object v2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget-object p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 42
    .line 43
    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 44
    .line 45
    .line 46
    iget-object p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 47
    .line 48
    invoke-virtual {v0, p1, v3, v3}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v4, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v3, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 61
    .line 62
    invoke-virtual {v0, p1, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 63
    .line 64
    .line 65
    iget-object p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 66
    .line 67
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    iget-object p1, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, v4, v3}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    int-to-float v1, v1

    .line 98
    iget-object v2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {p2, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    div-float/2addr v1, v2

    .line 109
    const/high16 v2, 0x3f000000    # 0.5f

    .line 110
    .line 111
    add-float/2addr v1, v2

    .line 112
    float-to-int v1, v1

    .line 113
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    int-to-float v3, v3

    .line 118
    iget-object v4, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {p2, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->getDisplayLayout(Landroid/content/Context;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    div-float/2addr v3, p2

    .line 129
    add-float/2addr v3, v2

    .line 130
    float-to-int p2, v3

    .line 131
    invoke-virtual {v0, p1, v1, p2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    iget-object p1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 136
    .line 137
    iget-object p2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 138
    .line 139
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 140
    .line 141
    iget p2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 142
    .line 143
    invoke-virtual {v0, p1, v1, p2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    .line 144
    .line 145
    .line 146
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    .line 10
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 11
    .line 12
    invoke-virtual {p1, p0, p2}, Landroid/window/WindowContainerTransaction;->setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V
    .locals 4

    .line 2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitDivision(IZ)Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 4
    :goto_0
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    if-ne v0, p1, :cond_2

    .line 5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 7
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_2
    if-ltz p2, :cond_3

    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    .line 10
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 11
    invoke-interface {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    if-nez p3, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 16
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 17
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    :cond_5
    :goto_3
    return-void
.end method

.method public final setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public final setSideStagePositionByAdjacentTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    and-int/lit16 v0, v0, 0x1000

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p2, v0}, Landroid/window/WindowContainerTransaction;->setChangeStagePosition(Z)V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayoutChangedForLaunchAdjacent:Z

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayoutChangedForLaunchAdjacent:Z

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVideoControlsTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    move p1, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move p1, v2

    .line 46
    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeVideoControls:Z

    .line 47
    .line 48
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_LAUNCH_ADJACENT:Z

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    if-nez p1, :cond_4

    .line 57
    .line 58
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 59
    .line 60
    if-nez v1, :cond_5

    .line 61
    .line 62
    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_1
    if-nez p1, :cond_6

    .line 66
    .line 67
    return-void

    .line 68
    :cond_6
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeVideoControls:Z

    .line 69
    .line 70
    if-eqz p1, :cond_7

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateVideoControlsState(ZLandroid/view/SurfaceControl$Transaction;Z)V

    .line 74
    .line 75
    .line 76
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 77
    .line 78
    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 79
    .line 80
    if-nez p1, :cond_9

    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    :cond_9
    :goto_3
    return-void
.end method

.method public final setSplitCreateMode(IZ)Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_2
    new-instance v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 27
    .line 28
    iput v2, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitDivision()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 35
    .line 36
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 37
    .line 38
    iput v2, v0, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 39
    .line 40
    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->convertCreateMode(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ne p1, v2, :cond_3

    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_3
    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->rotateMultiSplitClockwise(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ne p1, v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final setSplitDivision(IZ)Z
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    const-string v2, "StageCoordinator"

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    xor-int/2addr p1, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    .line 18
    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 22
    .line 23
    iget v3, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    .line 24
    .line 25
    if-ne v3, v0, :cond_2

    .line 26
    .line 27
    move v3, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v3, v1

    .line 30
    :goto_0
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iget p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mPossibleSplitDivision:I

    .line 33
    .line 34
    if-eq p1, p2, :cond_3

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo v3, "split division not feasible, so change: "

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move p1, p2

    .line 55
    :cond_3
    :goto_1
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 56
    .line 57
    if-ne p2, p1, :cond_4

    .line 58
    .line 59
    return v1

    .line 60
    :cond_4
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 61
    .line 62
    if-nez p2, :cond_5

    .line 63
    .line 64
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 65
    .line 66
    if-eqz p2, :cond_6

    .line 67
    .line 68
    :cond_5
    const-string/jumbo p2, "setSplitDivision: nextSplitDivision="

    .line 69
    .line 70
    .line 71
    const-string v1, "   Caller="

    .line 72
    .line 73
    invoke-static {p2, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const/4 v1, 0x5

    .line 78
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_6
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 93
    .line 94
    if-eqz p2, :cond_7

    .line 95
    .line 96
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 97
    .line 98
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDividerFadeAnimation:Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    if-eqz p2, :cond_7

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 103
    .line 104
    .line 105
    :cond_7
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 106
    .line 107
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 110
    .line 111
    iget v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    .line 112
    .line 113
    if-eq v2, p1, :cond_8

    .line 114
    .line 115
    iput p1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitDivision:I

    .line 116
    .line 117
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateSnapAlgorithm(I)V

    .line 118
    .line 119
    .line 120
    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 121
    .line 122
    const/4 p2, 0x0

    .line 123
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 124
    .line 125
    .line 126
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION_SA_LOGGING:Z

    .line 127
    .line 128
    if-eqz p1, :cond_9

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendSplitDirectionSaLogging()V

    .line 131
    .line 132
    .line 133
    :cond_9
    return v0
.end method

.method public final setSplitsVisible(ZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 6
    .line 7
    iput-boolean p1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 8
    .line 9
    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 10
    .line 11
    iput-boolean p1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerLeashHidden:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateDividerLeashVisible(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iput-boolean v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 39
    .line 40
    iput-boolean v1, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iput-boolean v2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 44
    .line 45
    iput-boolean v2, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 46
    .line 47
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 50
    .line 51
    if-eqz v0, :cond_9

    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSkipFlexPanelUpdate:Z

    .line 54
    .line 55
    if-nez v0, :cond_9

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 68
    .line 69
    iget v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerSizeIfNeeded(Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    if-nez p1, :cond_9

    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 84
    .line 85
    if-eqz v4, :cond_9

    .line 86
    .line 87
    :cond_4
    if-eqz v0, :cond_5

    .line 88
    .line 89
    const-string v4, "flex_panel_finish"

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    const-string/jumbo v4, "video_controls_finish"

    .line 93
    .line 94
    .line 95
    :goto_1
    const/4 v5, 0x0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    .line 101
    .line 102
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCornerRadiusForStages(Landroid/view/SurfaceControl$Transaction;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    invoke-virtual {p0, v5, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setVideoControlsMode(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 111
    .line 112
    .line 113
    :cond_7
    :goto_2
    invoke-virtual {v3, v2, v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_8

    .line 123
    .line 124
    const-string p0, "StageCoordinator"

    .line 125
    .line 126
    const-string p2, "When pip is entered in Split, there is no need to evict side children."

    .line 127
    .line 128
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_8
    if-nez p2, :cond_9

    .line 133
    .line 134
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 135
    .line 136
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 137
    .line 138
    .line 139
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 140
    .line 141
    invoke-virtual {p2, v0, v4}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 145
    .line 146
    invoke-virtual {v0, p2, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 150
    .line 151
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 152
    .line 153
    .line 154
    :cond_9
    :goto_3
    iput-boolean p1, v3, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsDividerVisible:Z

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->canShow()Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_a

    .line 161
    .line 162
    invoke-virtual {v3, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_a
    invoke-virtual {v3, v2, v1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 167
    .line 168
    .line 169
    :goto_4
    return-void
.end method

.method public final setVideoControlsMode(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 6
    .line 7
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCornerRadiusForStages(Landroid/view/SurfaceControl$Transaction;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    move-object/from16 v10, p4

    .line 10
    .line 11
    iget-object v11, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 12
    .line 13
    invoke-virtual {v11, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v12, 0x1

    .line 18
    const/4 v13, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v12

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v13

    .line 24
    :goto_0
    const/4 v1, 0x6

    .line 25
    if-nez v0, :cond_47

    .line 26
    .line 27
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 28
    .line 29
    iget-boolean v3, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    return v13

    .line 34
    :cond_1
    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 35
    .line 36
    iput-boolean v13, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    .line 37
    .line 38
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 50
    .line 51
    invoke-virtual {v6, v3, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    move v3, v12

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v3, v13

    .line 61
    :goto_1
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;

    .line 62
    .line 63
    invoke-direct {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    move v5, v13

    .line 78
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    if-ge v5, v14, :cond_5

    .line 87
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    check-cast v14, Landroid/window/TransitionInfo$Change;

    .line 97
    .line 98
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    if-eqz v15, :cond_4

    .line 103
    .line 104
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    invoke-static {v14}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    if-eqz v14, :cond_4

    .line 113
    .line 114
    invoke-virtual {v15}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    if-ne v14, v12, :cond_4

    .line 119
    .line 120
    move v5, v12

    .line 121
    goto :goto_4

    .line 122
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    :goto_3
    move v5, v13

    .line 126
    :goto_4
    move v14, v13

    .line 127
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 136
    .line 137
    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 138
    .line 139
    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 140
    .line 141
    const-string v13, "StageCoordinator"

    .line 142
    .line 143
    if-ge v14, v15, :cond_2d

    .line 144
    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    check-cast v15, Landroid/window/TransitionInfo$Change;

    .line 154
    .line 155
    move-object/from16 v16, v11

    .line 156
    .line 157
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    if-ne v11, v1, :cond_6

    .line 162
    .line 163
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    and-int/lit8 v11, v11, 0x20

    .line 168
    .line 169
    if-eqz v11, :cond_6

    .line 170
    .line 171
    iget-object v11, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 172
    .line 173
    invoke-virtual {v11, v9}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    if-nez v11, :cond_7

    .line 181
    .line 182
    move/from16 v19, v3

    .line 183
    .line 184
    move/from16 v20, v5

    .line 185
    .line 186
    move/from16 v17, v14

    .line 187
    .line 188
    goto/16 :goto_17

    .line 189
    .line 190
    :cond_7
    iget-object v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 191
    .line 192
    move/from16 v17, v14

    .line 193
    .line 194
    iget-object v14, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 195
    .line 196
    iget-object v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 197
    .line 198
    invoke-virtual {v1, v14}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    const/4 v14, 0x4

    .line 203
    if-eqz v1, :cond_f

    .line 204
    .line 205
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_8

    .line 214
    .line 215
    const/4 v1, 0x1

    .line 216
    const/4 v7, 0x0

    .line 217
    invoke-virtual {v6, v1, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 218
    .line 219
    .line 220
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 221
    .line 222
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v11, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 226
    .line 227
    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 228
    .line 229
    invoke-virtual {v1, v11, v7}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_a

    .line 236
    .line 237
    :cond_8
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_e

    .line 246
    .line 247
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 248
    .line 249
    if-eqz v1, :cond_9

    .line 250
    .line 251
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-ne v1, v14, :cond_9

    .line 256
    .line 257
    iget-boolean v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isSleeping:Z

    .line 258
    .line 259
    if-eqz v1, :cond_9

    .line 260
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v7, "In the process of unfolding, the visible of split should be maintained."

    .line 264
    .line 265
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_9
    const/4 v1, 0x0

    .line 280
    invoke-virtual {v6, v1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 281
    .line 282
    .line 283
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-nez v1, :cond_a

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_a
    const/4 v1, 0x0

    .line 295
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-ge v1, v7, :cond_c

    .line 304
    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 314
    .line 315
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    if-eqz v11, :cond_b

    .line 320
    .line 321
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    invoke-static {v7}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    if-eqz v7, :cond_b

    .line 330
    .line 331
    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    const/4 v12, 0x1

    .line 336
    if-ne v7, v12, :cond_b

    .line 337
    .line 338
    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    const/4 v11, 0x2

    .line 343
    if-ne v7, v11, :cond_b

    .line 344
    .line 345
    const/4 v1, 0x1

    .line 346
    goto :goto_9

    .line 347
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_c
    :goto_8
    const/4 v1, 0x0

    .line 351
    :goto_9
    if-eqz v1, :cond_d

    .line 352
    .line 353
    const/4 v1, 0x0

    .line 354
    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateDividerLeashVisible(Z)V

    .line 355
    .line 356
    .line 357
    :cond_d
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 358
    .line 359
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 360
    .line 361
    .line 362
    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 363
    .line 364
    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 365
    .line 366
    const/4 v11, 0x1

    .line 367
    invoke-virtual {v1, v7, v11}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 371
    .line 372
    .line 373
    :cond_e
    :goto_a
    move/from16 v19, v3

    .line 374
    .line 375
    move/from16 v20, v5

    .line 376
    .line 377
    goto/16 :goto_17

    .line 378
    .line 379
    :cond_f
    invoke-virtual {v6, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 384
    .line 385
    if-eqz v2, :cond_1e

    .line 386
    .line 387
    if-eqz v3, :cond_1e

    .line 388
    .line 389
    new-instance v2, Landroid/graphics/Rect;

    .line 390
    .line 391
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 392
    .line 393
    .line 394
    if-nez v1, :cond_10

    .line 395
    .line 396
    const/16 v18, 0x1

    .line 397
    .line 398
    goto :goto_b

    .line 399
    :cond_10
    const/16 v18, 0x0

    .line 400
    .line 401
    :goto_b
    if-eqz v18, :cond_11

    .line 402
    .line 403
    iget-object v14, v11, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 404
    .line 405
    goto :goto_c

    .line 406
    :cond_11
    iget-object v14, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 407
    .line 408
    iget-object v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 409
    .line 410
    :goto_c
    sget-boolean v19, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 411
    .line 412
    if-eqz v19, :cond_15

    .line 413
    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 415
    .line 416
    .line 417
    move-result v19

    .line 418
    if-eqz v19, :cond_15

    .line 419
    .line 420
    move/from16 v19, v3

    .line 421
    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 427
    .line 428
    .line 429
    move-result-object v8

    .line 430
    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 431
    .line 432
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    move/from16 v20, v5

    .line 437
    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-ne v5, v8, :cond_12

    .line 443
    .line 444
    const/4 v5, 0x0

    .line 445
    goto :goto_d

    .line 446
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-ne v5, v8, :cond_13

    .line 451
    .line 452
    const/4 v5, 0x1

    .line 453
    goto :goto_d

    .line 454
    :cond_13
    iget v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 455
    .line 456
    if-ne v5, v8, :cond_14

    .line 457
    .line 458
    const/4 v5, 0x2

    .line 459
    goto :goto_d

    .line 460
    :cond_14
    const/4 v5, -0x1

    .line 461
    :goto_d
    if-ne v5, v3, :cond_16

    .line 462
    .line 463
    const/4 v3, 0x1

    .line 464
    goto :goto_e

    .line 465
    :cond_15
    move/from16 v19, v3

    .line 466
    .line 467
    move/from16 v20, v5

    .line 468
    .line 469
    :cond_16
    const/4 v3, 0x0

    .line 470
    :goto_e
    iget-object v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 471
    .line 472
    iget-object v8, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    .line 473
    .line 474
    invoke-virtual {v14, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v8

    .line 478
    move-object/from16 v21, v13

    .line 479
    .line 480
    iget-object v13, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 481
    .line 482
    if-eqz v8, :cond_18

    .line 483
    .line 484
    if-eqz v3, :cond_17

    .line 485
    .line 486
    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    invoke-virtual {v13, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 491
    .line 492
    .line 493
    goto :goto_f

    .line 494
    :cond_17
    invoke-virtual {v5, v13}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    .line 495
    .line 496
    .line 497
    goto :goto_f

    .line 498
    :cond_18
    iget-object v8, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    .line 499
    .line 500
    invoke-virtual {v14, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v8

    .line 504
    if-eqz v8, :cond_1a

    .line 505
    .line 506
    if-eqz v3, :cond_19

    .line 507
    .line 508
    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v13, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 513
    .line 514
    .line 515
    goto :goto_f

    .line 516
    :cond_19
    invoke-virtual {v5, v13}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds2(Landroid/graphics/Rect;)V

    .line 517
    .line 518
    .line 519
    goto :goto_f

    .line 520
    :cond_1a
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 521
    .line 522
    if-eqz v3, :cond_1b

    .line 523
    .line 524
    iget-object v3, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    .line 525
    .line 526
    invoke-virtual {v14, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    if-eqz v3, :cond_1b

    .line 531
    .line 532
    iget-object v3, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 533
    .line 534
    invoke-virtual {v13, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 535
    .line 536
    .line 537
    iget-object v3, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 538
    .line 539
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 540
    .line 541
    neg-int v5, v5

    .line 542
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 543
    .line 544
    neg-int v3, v3

    .line 545
    invoke-virtual {v13, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 546
    .line 547
    .line 548
    :goto_f
    const/4 v3, 0x1

    .line 549
    goto :goto_10

    .line 550
    :cond_1b
    const/4 v3, 0x0

    .line 551
    :goto_10
    if-eqz v3, :cond_1c

    .line 552
    .line 553
    invoke-virtual {v2, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 554
    .line 555
    .line 556
    :cond_1c
    if-eqz v3, :cond_1f

    .line 557
    .line 558
    if-eqz v18, :cond_1d

    .line 559
    .line 560
    invoke-virtual {v15, v2}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 561
    .line 562
    .line 563
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 564
    .line 565
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 566
    .line 567
    invoke-virtual {v15, v3, v5}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 575
    .line 576
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 577
    .line 578
    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 579
    .line 580
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 585
    .line 586
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 587
    .line 588
    iput v2, v3, Landroid/graphics/Point;->y:I

    .line 589
    .line 590
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 611
    .line 612
    .line 613
    move-result-object v8

    .line 614
    iget v8, v8, Landroid/graphics/Point;->x:I

    .line 615
    .line 616
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 617
    .line 618
    .line 619
    move-result-object v13

    .line 620
    iget v13, v13, Landroid/graphics/Point;->y:I

    .line 621
    .line 622
    invoke-virtual {v9, v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v10, v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    int-to-float v5, v8

    .line 630
    int-to-float v8, v13

    .line 631
    invoke-virtual {v3, v2, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 632
    .line 633
    .line 634
    goto :goto_11

    .line 635
    :cond_1d
    invoke-virtual {v15, v2}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 636
    .line 637
    .line 638
    goto :goto_11

    .line 639
    :cond_1e
    move/from16 v19, v3

    .line 640
    .line 641
    move/from16 v20, v5

    .line 642
    .line 643
    move-object/from16 v21, v13

    .line 644
    .line 645
    :cond_1f
    :goto_11
    if-nez v1, :cond_28

    .line 646
    .line 647
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 648
    .line 649
    iget-object v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 650
    .line 651
    iget v2, v2, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 652
    .line 653
    if-eqz v2, :cond_20

    .line 654
    .line 655
    const/4 v2, 0x1

    .line 656
    goto :goto_12

    .line 657
    :cond_20
    const/4 v2, 0x0

    .line 658
    :goto_12
    if-eqz v2, :cond_28

    .line 659
    .line 660
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 661
    .line 662
    if-eqz v2, :cond_21

    .line 663
    .line 664
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 665
    .line 666
    iget v3, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 667
    .line 668
    if-ne v2, v3, :cond_21

    .line 669
    .line 670
    move-object v7, v0

    .line 671
    goto :goto_13

    .line 672
    :cond_21
    iget-object v2, v12, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 673
    .line 674
    if-eqz v2, :cond_22

    .line 675
    .line 676
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 677
    .line 678
    iget v3, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 679
    .line 680
    if-ne v2, v3, :cond_22

    .line 681
    .line 682
    move-object v7, v12

    .line 683
    goto :goto_13

    .line 684
    :cond_22
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 685
    .line 686
    if-eqz v2, :cond_23

    .line 687
    .line 688
    iget-object v2, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 689
    .line 690
    if-eqz v2, :cond_23

    .line 691
    .line 692
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 693
    .line 694
    iget v3, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 695
    .line 696
    if-ne v2, v3, :cond_23

    .line 697
    .line 698
    goto :goto_13

    .line 699
    :cond_23
    const/4 v7, 0x0

    .line 700
    :goto_13
    if-eqz v7, :cond_28

    .line 701
    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 703
    .line 704
    .line 705
    move-result v2

    .line 706
    const/4 v3, 0x3

    .line 707
    if-ne v2, v3, :cond_28

    .line 708
    .line 709
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 710
    .line 711
    if-eqz v2, :cond_26

    .line 712
    .line 713
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 714
    .line 715
    iget-object v3, v11, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 716
    .line 717
    iget-object v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 718
    .line 719
    check-cast v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 720
    .line 721
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemStagePosition(Landroid/window/WindowContainerToken;)I

    .line 722
    .line 723
    .line 724
    move-result v2

    .line 725
    and-int/lit8 v3, v2, 0x10

    .line 726
    .line 727
    if-eqz v3, :cond_28

    .line 728
    .line 729
    new-instance v3, Landroid/graphics/Rect;

    .line 730
    .line 731
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 732
    .line 733
    .line 734
    iget-object v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 735
    .line 736
    and-int/lit8 v2, v2, 0x28

    .line 737
    .line 738
    if-eqz v2, :cond_25

    .line 739
    .line 740
    iget v2, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 741
    .line 742
    and-int/lit8 v2, v2, 0x10

    .line 743
    .line 744
    if-eqz v2, :cond_24

    .line 745
    .line 746
    iget-object v2, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 747
    .line 748
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 749
    .line 750
    .line 751
    iget-object v2, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 752
    .line 753
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 754
    .line 755
    neg-int v7, v7

    .line 756
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 757
    .line 758
    neg-int v2, v2

    .line 759
    invoke-virtual {v3, v7, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 760
    .line 761
    .line 762
    goto :goto_14

    .line 763
    :cond_24
    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 768
    .line 769
    .line 770
    goto :goto_14

    .line 771
    :cond_25
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    .line 772
    .line 773
    .line 774
    :goto_14
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 775
    .line 776
    neg-int v2, v2

    .line 777
    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 778
    .line 779
    neg-int v7, v7

    .line 780
    invoke-virtual {v3, v2, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 784
    .line 785
    .line 786
    move-result v2

    .line 787
    iget-object v5, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 788
    .line 789
    iget v5, v5, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 790
    .line 791
    add-int/2addr v2, v5

    .line 792
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 793
    .line 794
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    invoke-virtual {v10, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 799
    .line 800
    .line 801
    goto :goto_16

    .line 802
    :cond_26
    iget v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 803
    .line 804
    if-nez v2, :cond_27

    .line 805
    .line 806
    goto :goto_15

    .line 807
    :cond_27
    move-object v12, v0

    .line 808
    :goto_15
    if-ne v7, v12, :cond_28

    .line 809
    .line 810
    new-instance v2, Landroid/graphics/Rect;

    .line 811
    .line 812
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 813
    .line 814
    .line 815
    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 816
    .line 817
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    .line 818
    .line 819
    .line 820
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 821
    .line 822
    neg-int v5, v5

    .line 823
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 824
    .line 825
    neg-int v7, v7

    .line 826
    invoke-virtual {v2, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 830
    .line 831
    .line 832
    move-result v5

    .line 833
    iget-object v3, v3, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 834
    .line 835
    iget v3, v3, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 836
    .line 837
    add-int/2addr v5, v3

    .line 838
    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 839
    .line 840
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-virtual {v10, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 845
    .line 846
    .line 847
    :cond_28
    :goto_16
    if-nez v1, :cond_29

    .line 848
    .line 849
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    if-nez v1, :cond_2c

    .line 854
    .line 855
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 856
    .line 857
    .line 858
    move-result v1

    .line 859
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 860
    .line 861
    .line 862
    move-result v1

    .line 863
    if-nez v1, :cond_2c

    .line 864
    .line 865
    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 866
    .line 867
    .line 868
    move-result v1

    .line 869
    const/4 v2, 0x1

    .line 870
    if-ne v1, v2, :cond_2c

    .line 871
    .line 872
    iput-boolean v2, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mContainShowFullscreenChange:Z

    .line 873
    .line 874
    goto/16 :goto_17

    .line 875
    .line 876
    :cond_29
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 877
    .line 878
    .line 879
    move-result v2

    .line 880
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 881
    .line 882
    .line 883
    move-result v2

    .line 884
    const-string v3, " before startAnimation()."

    .line 885
    .line 886
    const-string v5, " to have been called with "

    .line 887
    .line 888
    if-eqz v2, :cond_2a

    .line 889
    .line 890
    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 891
    .line 892
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 893
    .line 894
    .line 895
    move-result v2

    .line 896
    if-nez v2, :cond_2c

    .line 897
    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    .line 899
    .line 900
    const-string v7, "Expected onTaskAppeared on "

    .line 901
    .line 902
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    iget v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 912
    .line 913
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v2

    .line 923
    move-object/from16 v8, v21

    .line 924
    .line 925
    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .line 927
    .line 928
    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 929
    .line 930
    const/4 v3, 0x1

    .line 931
    invoke-virtual {v4, v1, v3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V

    .line 932
    .line 933
    .line 934
    goto :goto_17

    .line 935
    :cond_2a
    move-object/from16 v8, v21

    .line 936
    .line 937
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 938
    .line 939
    .line 940
    move-result v2

    .line 941
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 942
    .line 943
    .line 944
    move-result v2

    .line 945
    if-eqz v2, :cond_2c

    .line 946
    .line 947
    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 948
    .line 949
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 950
    .line 951
    .line 952
    move-result v2

    .line 953
    if-eqz v2, :cond_2c

    .line 954
    .line 955
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    .line 956
    .line 957
    if-eqz v2, :cond_2b

    .line 958
    .line 959
    if-eqz v20, :cond_2b

    .line 960
    .line 961
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 962
    .line 963
    .line 964
    move-result v2

    .line 965
    const/4 v7, 0x4

    .line 966
    if-eq v2, v7, :cond_2c

    .line 967
    .line 968
    :cond_2b
    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 969
    .line 970
    const/4 v7, 0x0

    .line 971
    invoke-virtual {v4, v1, v7, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V

    .line 972
    .line 973
    .line 974
    new-instance v2, Ljava/lang/StringBuilder;

    .line 975
    .line 976
    const-string v7, "Expected onTaskVanished on "

    .line 977
    .line 978
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    iget v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 988
    .line 989
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    :cond_2c
    :goto_17
    add-int/lit8 v14, v17, 0x1

    .line 1003
    .line 1004
    move-object/from16 v8, p2

    .line 1005
    .line 1006
    move-object/from16 v11, v16

    .line 1007
    .line 1008
    move/from16 v3, v19

    .line 1009
    .line 1010
    move/from16 v5, v20

    .line 1011
    .line 1012
    const/4 v1, 0x6

    .line 1013
    const/4 v7, 0x0

    .line 1014
    const/4 v12, 0x1

    .line 1015
    const/4 v13, 0x0

    .line 1016
    goto/16 :goto_5

    .line 1017
    .line 1018
    :cond_2d
    move-object/from16 v16, v11

    .line 1019
    .line 1020
    move-object v8, v13

    .line 1021
    new-instance v1, Landroid/util/ArraySet;

    .line 1022
    .line 1023
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1024
    .line 1025
    .line 1026
    iget-object v3, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    .line 1027
    .line 1028
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1029
    .line 1030
    .line 1031
    move-result v5

    .line 1032
    const/4 v9, -0x1

    .line 1033
    add-int/2addr v5, v9

    .line 1034
    :goto_18
    if-ltz v5, :cond_2f

    .line 1035
    .line 1036
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v9

    .line 1040
    check-cast v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;

    .line 1041
    .line 1042
    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->shouldDismissStage()Z

    .line 1043
    .line 1044
    .line 1045
    move-result v10

    .line 1046
    if-eqz v10, :cond_2e

    .line 1047
    .line 1048
    iget-object v9, v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mStageTaskListener:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 1049
    .line 1050
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1051
    .line 1052
    .line 1053
    :cond_2e
    add-int/lit8 v5, v5, -0x1

    .line 1054
    .line 1055
    goto :goto_18

    .line 1056
    :cond_2f
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 1057
    .line 1058
    if-eqz v5, :cond_30

    .line 1059
    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v5

    .line 1064
    if-eqz v5, :cond_30

    .line 1065
    .line 1066
    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 1067
    .line 1068
    .line 1069
    move-result v5

    .line 1070
    if-nez v5, :cond_30

    .line 1071
    .line 1072
    const/4 v5, 0x1

    .line 1073
    goto :goto_19

    .line 1074
    :cond_30
    const/4 v5, 0x0

    .line 1075
    :goto_19
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 1076
    .line 1077
    .line 1078
    move-result v9

    .line 1079
    if-eqz v9, :cond_31

    .line 1080
    .line 1081
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 1082
    .line 1083
    .line 1084
    move-result v9

    .line 1085
    if-eqz v9, :cond_31

    .line 1086
    .line 1087
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 1088
    .line 1089
    .line 1090
    move-result v9

    .line 1091
    const/4 v10, 0x1

    .line 1092
    if-eq v9, v10, :cond_31

    .line 1093
    .line 1094
    if-eqz v5, :cond_45

    .line 1095
    .line 1096
    :cond_31
    const-string v9, "Somehow removed the last task in a stage outside of a proper transition."

    .line 1097
    .line 1098
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    .line 1100
    .line 1101
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1102
    .line 1103
    if-eqz v9, :cond_32

    .line 1104
    .line 1105
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    const-string v10, "Dismiss Split Debugging mMainStage.getChildCount()="

    .line 1108
    .line 1109
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 1113
    .line 1114
    .line 1115
    move-result v10

    .line 1116
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    const-string v10, " mSideStage.getChildCount()="

    .line 1120
    .line 1121
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 1125
    .line 1126
    .line 1127
    move-result v10

    .line 1128
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    const-string v10, " dismissStages.size()="

    .line 1132
    .line 1133
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 1137
    .line 1138
    .line 1139
    move-result v10

    .line 1140
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    const-string v10, " isCellStageEmpty="

    .line 1144
    .line 1145
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    const-string v10, " isSplitActive="

    .line 1152
    .line 1153
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    iget-boolean v10, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 1157
    .line 1158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    const-string v10, " isSplitScreenVisible="

    .line 1162
    .line 1163
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v10

    .line 1170
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v9

    .line 1177
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    .line 1179
    .line 1180
    :cond_32
    iget-boolean v9, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    .line 1181
    .line 1182
    if-eqz v9, :cond_33

    .line 1183
    .line 1184
    const-string v0, "In the process of starting the App Pair, skip the process"

    .line 1185
    .line 1186
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    .line 1188
    .line 1189
    const/4 v0, 0x0

    .line 1190
    return v0

    .line 1191
    :cond_33
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    .line 1192
    .line 1193
    if-eqz v8, :cond_35

    .line 1194
    .line 1195
    const/4 v8, 0x0

    .line 1196
    :goto_1a
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1197
    .line 1198
    .line 1199
    move-result v9

    .line 1200
    if-ge v8, v9, :cond_35

    .line 1201
    .line 1202
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v9

    .line 1206
    check-cast v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;

    .line 1207
    .line 1208
    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->shouldDismissStage()Z

    .line 1209
    .line 1210
    .line 1211
    move-result v10

    .line 1212
    if-nez v10, :cond_34

    .line 1213
    .line 1214
    iget-object v9, v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mStageTaskListener:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 1215
    .line 1216
    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 1217
    .line 1218
    .line 1219
    move-result v9

    .line 1220
    if-nez v9, :cond_34

    .line 1221
    .line 1222
    const/4 v9, 0x0

    .line 1223
    return v9

    .line 1224
    :cond_34
    add-int/lit8 v8, v8, 0x1

    .line 1225
    .line 1226
    goto :goto_1a

    .line 1227
    :cond_35
    const/4 v3, 0x2

    .line 1228
    invoke-virtual {v6, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearSplitPairedInRecents(I)V

    .line 1229
    .line 1230
    .line 1231
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 1232
    .line 1233
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 1237
    .line 1238
    .line 1239
    move-result v8

    .line 1240
    const/4 v9, 0x1

    .line 1241
    if-ne v8, v9, :cond_36

    .line 1242
    .line 1243
    const/4 v8, 0x0

    .line 1244
    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v9

    .line 1248
    check-cast v9, Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 1249
    .line 1250
    invoke-virtual {v6, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 1251
    .line 1252
    .line 1253
    move-result v8

    .line 1254
    if-eqz v8, :cond_37

    .line 1255
    .line 1256
    :cond_36
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 1257
    .line 1258
    .line 1259
    move-result v8

    .line 1260
    if-nez v8, :cond_38

    .line 1261
    .line 1262
    :cond_37
    const/4 v8, 0x1

    .line 1263
    goto :goto_1b

    .line 1264
    :cond_38
    const/4 v8, 0x0

    .line 1265
    :goto_1b
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 1266
    .line 1267
    if-eqz v9, :cond_43

    .line 1268
    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v9

    .line 1273
    if-eqz v9, :cond_43

    .line 1274
    .line 1275
    const/4 v9, 0x1

    .line 1276
    xor-int/lit8 v2, v8, 0x1

    .line 1277
    .line 1278
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 1279
    .line 1280
    .line 1281
    move-result v4

    .line 1282
    if-ne v4, v9, :cond_39

    .line 1283
    .line 1284
    const/4 v4, 0x0

    .line 1285
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v1

    .line 1289
    check-cast v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 1290
    .line 1291
    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 1292
    .line 1293
    .line 1294
    move-result v1

    .line 1295
    const/4 v4, 0x2

    .line 1296
    if-eq v1, v4, :cond_3a

    .line 1297
    .line 1298
    :cond_39
    if-eqz v5, :cond_3b

    .line 1299
    .line 1300
    :cond_3a
    const/4 v2, 0x2

    .line 1301
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 1302
    .line 1303
    .line 1304
    move-result v1

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 1306
    .line 1307
    .line 1308
    move-result v4

    .line 1309
    if-nez v4, :cond_3c

    .line 1310
    .line 1311
    const/4 v4, 0x1

    .line 1312
    goto :goto_1c

    .line 1313
    :cond_3c
    const/4 v5, 0x1

    .line 1314
    if-ne v4, v5, :cond_3d

    .line 1315
    .line 1316
    const/4 v4, 0x0

    .line 1317
    goto :goto_1c

    .line 1318
    :cond_3d
    const/4 v4, -0x1

    .line 1319
    :goto_1c
    iget-object v5, v7, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 1320
    .line 1321
    if-ne v5, v0, :cond_3e

    .line 1322
    .line 1323
    move-object v0, v12

    .line 1324
    :cond_3e
    const/4 v7, 0x0

    .line 1325
    invoke-virtual {v6, v2, v3, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareMultiSplitDismissChangeTransition(ILandroid/window/WindowContainerTransaction;Z)V

    .line 1326
    .line 1327
    .line 1328
    const/4 v8, 0x2

    .line 1329
    if-ne v2, v8, :cond_3f

    .line 1330
    .line 1331
    invoke-virtual {v6, v3, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 1332
    .line 1333
    .line 1334
    goto :goto_1d

    .line 1335
    :cond_3f
    if-ne v2, v1, :cond_40

    .line 1336
    .line 1337
    const/4 v7, 0x1

    .line 1338
    invoke-virtual {v6, v3, v5, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    .line 1339
    .line 1340
    .line 1341
    goto :goto_1d

    .line 1342
    :cond_40
    const/4 v7, 0x1

    .line 1343
    if-ne v2, v4, :cond_41

    .line 1344
    .line 1345
    invoke-virtual {v6, v3, v0, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    .line 1346
    .line 1347
    .line 1348
    goto :goto_1e

    .line 1349
    :cond_41
    :goto_1d
    move v4, v1

    .line 1350
    :goto_1e
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 1351
    .line 1352
    const/4 v5, 0x1

    .line 1353
    const/16 v7, 0xa

    .line 1354
    .line 1355
    move-object v1, v3

    .line 1356
    move-object/from16 v2, p0

    .line 1357
    .line 1358
    move v3, v4

    .line 1359
    move v4, v7

    .line 1360
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    .line 1364
    .line 1365
    .line 1366
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 1367
    .line 1368
    if-eqz v0, :cond_42

    .line 1369
    .line 1370
    iget-boolean v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    .line 1371
    .line 1372
    if-eqz v0, :cond_42

    .line 1373
    .line 1374
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 1375
    .line 1376
    const/4 v1, 0x0

    .line 1377
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V

    .line 1378
    .line 1379
    .line 1380
    :cond_42
    const/4 v0, 0x0

    .line 1381
    return v0

    .line 1382
    :cond_43
    iget-boolean v0, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mContainShowFullscreenChange:Z

    .line 1383
    .line 1384
    if-nez v0, :cond_44

    .line 1385
    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 1387
    .line 1388
    .line 1389
    move-result v0

    .line 1390
    if-eqz v0, :cond_44

    .line 1391
    .line 1392
    move v0, v8

    .line 1393
    goto :goto_1f

    .line 1394
    :cond_44
    const/4 v0, -0x1

    .line 1395
    :goto_1f
    const/4 v1, 0x1

    .line 1396
    invoke-virtual {v6, v0, v3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 1397
    .line 1398
    .line 1399
    move-object/from16 v11, v16

    .line 1400
    .line 1401
    const/4 v0, 0x2

    .line 1402
    invoke-virtual {v11, v3, v6, v8, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)V

    .line 1403
    .line 1404
    .line 1405
    iget-boolean v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 1406
    .line 1407
    if-eqz v0, :cond_45

    .line 1408
    .line 1409
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 1410
    .line 1411
    const/4 v1, 0x0

    .line 1412
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 1413
    .line 1414
    .line 1415
    :cond_45
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1416
    .line 1417
    if-eqz v0, :cond_46

    .line 1418
    .line 1419
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 1420
    .line 1421
    .line 1422
    move-result v0

    .line 1423
    and-int/lit16 v0, v0, 0x100

    .line 1424
    .line 1425
    if-eqz v0, :cond_46

    .line 1426
    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 1428
    .line 1429
    .line 1430
    move-result v0

    .line 1431
    const/high16 v1, 0x20000

    .line 1432
    .line 1433
    and-int/2addr v0, v1

    .line 1434
    if-eqz v0, :cond_46

    .line 1435
    .line 1436
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 1437
    .line 1438
    .line 1439
    move-result v0

    .line 1440
    if-eqz v0, :cond_46

    .line 1441
    .line 1442
    const/4 v0, 0x0

    .line 1443
    invoke-virtual {v6, v0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(ZZ)V

    .line 1444
    .line 1445
    .line 1446
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 1447
    .line 1448
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1449
    .line 1450
    .line 1451
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1452
    .line 1453
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1454
    .line 1455
    const/4 v3, 0x1

    .line 1456
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v2, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 1460
    .line 1461
    .line 1462
    :cond_46
    const/4 v0, 0x0

    .line 1463
    return v0

    .line 1464
    :cond_47
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 1465
    .line 1466
    if-eqz v0, :cond_49

    .line 1467
    .line 1468
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    .line 1469
    .line 1470
    .line 1471
    move-result v0

    .line 1472
    if-eqz v0, :cond_49

    .line 1473
    .line 1474
    iget-object v8, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 1475
    .line 1476
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1477
    .line 1478
    .line 1479
    new-instance v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 1480
    .line 1481
    const/4 v0, 0x5

    .line 1482
    invoke-direct {v1, v0, v7}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 1483
    .line 1484
    .line 1485
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 1486
    .line 1487
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    .line 1489
    .line 1490
    move-object v0, v8

    .line 1491
    move-object/from16 v2, p2

    .line 1492
    .line 1493
    move-object/from16 v3, p3

    .line 1494
    .line 1495
    move-object/from16 v4, p4

    .line 1496
    .line 1497
    move-object/from16 v5, p5

    .line 1498
    .line 1499
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateKeyguard(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1500
    .line 1501
    .line 1502
    move-result v0

    .line 1503
    if-nez v0, :cond_48

    .line 1504
    .line 1505
    const/4 v13, 0x0

    .line 1506
    goto :goto_20

    .line 1507
    :cond_48
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 1508
    .line 1509
    move-object/from16 v1, p1

    .line 1510
    .line 1511
    move-object/from16 v2, p2

    .line 1512
    .line 1513
    move-object/from16 v3, p3

    .line 1514
    .line 1515
    move-object/from16 v4, p4

    .line 1516
    .line 1517
    move-object/from16 v5, p5

    .line 1518
    .line 1519
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1520
    .line 1521
    .line 1522
    const/4 v13, 0x1

    .line 1523
    :goto_20
    if-eqz v13, :cond_52

    .line 1524
    .line 1525
    const/4 v0, 0x1

    .line 1526
    return v0

    .line 1527
    :cond_49
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 1528
    .line 1529
    if-eqz v0, :cond_52

    .line 1530
    .line 1531
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    .line 1532
    .line 1533
    .line 1534
    move-result v0

    .line 1535
    if-eqz v0, :cond_52

    .line 1536
    .line 1537
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    .line 1538
    .line 1539
    if-eqz v0, :cond_50

    .line 1540
    .line 1541
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 1542
    .line 1543
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1544
    .line 1545
    .line 1546
    move-object/from16 v8, p2

    .line 1547
    .line 1548
    const/4 v0, 0x6

    .line 1549
    const/4 v1, 0x0

    .line 1550
    invoke-static {v8, v0, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v2

    .line 1558
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1559
    .line 1560
    .line 1561
    move-result v2

    .line 1562
    const/4 v3, -0x1

    .line 1563
    add-int/2addr v2, v3

    .line 1564
    :goto_21
    if-ltz v2, :cond_4e

    .line 1565
    .line 1566
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v3

    .line 1570
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v3

    .line 1574
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 1575
    .line 1576
    move-object v4, v3

    .line 1577
    :goto_22
    if-eqz v4, :cond_4c

    .line 1578
    .line 1579
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v5

    .line 1583
    if-eqz v5, :cond_4a

    .line 1584
    .line 1585
    const/4 v4, 0x1

    .line 1586
    goto :goto_24

    .line 1587
    :cond_4a
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v5

    .line 1591
    if-nez v5, :cond_4b

    .line 1592
    .line 1593
    goto :goto_23

    .line 1594
    :cond_4b
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v4

    .line 1598
    invoke-virtual {v8, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v4

    .line 1602
    goto :goto_22

    .line 1603
    :cond_4c
    :goto_23
    move v4, v1

    .line 1604
    :goto_24
    if-eqz v4, :cond_4d

    .line 1605
    .line 1606
    goto :goto_25

    .line 1607
    :cond_4d
    invoke-virtual {v0, v3}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 1608
    .line 1609
    .line 1610
    :goto_25
    add-int/lit8 v2, v2, -0x1

    .line 1611
    .line 1612
    goto :goto_21

    .line 1613
    :cond_4e
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v0

    .line 1617
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1618
    .line 1619
    .line 1620
    move-result v0

    .line 1621
    const/4 v1, 0x1

    .line 1622
    xor-int/2addr v0, v1

    .line 1623
    if-eqz v0, :cond_53

    .line 1624
    .line 1625
    invoke-virtual {v11, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 1626
    .line 1627
    .line 1628
    move-result v0

    .line 1629
    if-eqz v0, :cond_4f

    .line 1630
    .line 1631
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 1632
    .line 1633
    invoke-virtual {v0, v9}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 1634
    .line 1635
    .line 1636
    :cond_4f
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 1637
    .line 1638
    move-object/from16 v1, p1

    .line 1639
    .line 1640
    move-object/from16 v2, p2

    .line 1641
    .line 1642
    move-object/from16 v3, p3

    .line 1643
    .line 1644
    move-object/from16 v4, p4

    .line 1645
    .line 1646
    move-object/from16 v5, p5

    .line 1647
    .line 1648
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animatePendingSplitWithDisplayChange(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1649
    .line 1650
    .line 1651
    const/4 v0, 0x1

    .line 1652
    return v0

    .line 1653
    :cond_50
    move-object/from16 v8, p2

    .line 1654
    .line 1655
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 1656
    .line 1657
    move-object/from16 v1, p1

    .line 1658
    .line 1659
    move-object/from16 v2, p2

    .line 1660
    .line 1661
    move-object/from16 v3, p3

    .line 1662
    .line 1663
    move-object/from16 v4, p4

    .line 1664
    .line 1665
    move-object/from16 v5, p5

    .line 1666
    .line 1667
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animatePendingSplitWithDisplayChange(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1668
    .line 1669
    .line 1670
    move-result v0

    .line 1671
    if-eqz v0, :cond_53

    .line 1672
    .line 1673
    invoke-virtual {v11, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 1674
    .line 1675
    .line 1676
    move-result v0

    .line 1677
    if-eqz v0, :cond_51

    .line 1678
    .line 1679
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 1680
    .line 1681
    invoke-virtual {v0, v9}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 1682
    .line 1683
    .line 1684
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1685
    .line 1686
    .line 1687
    :cond_51
    const/4 v0, 0x1

    .line 1688
    return v0

    .line 1689
    :cond_52
    move-object/from16 v8, p2

    .line 1690
    .line 1691
    :cond_53
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    .line 1692
    .line 1693
    if-eqz v0, :cond_54

    .line 1694
    .line 1695
    invoke-virtual {v6, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCornerRadiusForStages(Landroid/view/SurfaceControl$Transaction;)V

    .line 1696
    .line 1697
    .line 1698
    :cond_54
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1699
    .line 1700
    .line 1701
    move-result v0

    .line 1702
    return v0
.end method

.method public final startIntent(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;II)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v8, p2

    .line 5
    .line 6
    move/from16 v9, p3

    .line 7
    .line 8
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, p0, v1, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/content/Intent;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 18
    .line 19
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 20
    .line 21
    iget-object v10, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x1

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, v10, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 28
    .line 29
    xor-int/lit8 v10, v0, 0x1

    .line 30
    .line 31
    new-instance v13, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;

    .line 32
    .line 33
    invoke-direct {v13, p0, v10, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator$3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ZI)V

    .line 34
    .line 35
    .line 36
    new-instance v14, Landroid/window/WindowContainerTransaction;

    .line 37
    .line 38
    invoke-direct {v14}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    move-object v0, p0

    .line 43
    move/from16 v2, p3

    .line 44
    .line 45
    move-object/from16 v3, p4

    .line 46
    .line 47
    move-object v4, v14

    .line 48
    move/from16 v5, p5

    .line 49
    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v10, :cond_1

    .line 55
    .line 56
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 57
    .line 58
    iget v1, v1, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    if-ne v1, v2, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v12, v11

    .line 65
    :goto_0
    if-eqz v12, :cond_1

    .line 66
    .line 67
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 68
    .line 69
    invoke-virtual {p0, v1, v14, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v14, v7, v8, v0}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 73
    .line 74
    .line 75
    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 76
    .line 77
    invoke-virtual {v0, v13, v14}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/WindowContainerTransaction;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    if-eqz p6, :cond_3

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v9, 0x0

    .line 90
    move-object v0, p0

    .line 91
    move-object/from16 v1, p1

    .line 92
    .line 93
    move-object/from16 v3, p2

    .line 94
    .line 95
    move/from16 v5, p6

    .line 96
    .line 97
    move-object v6, v9

    .line 98
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;ILandroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    new-instance v13, Landroid/window/WindowContainerTransaction;

    .line 103
    .line 104
    invoke-direct {v13}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 105
    .line 106
    .line 107
    const/4 v1, -0x1

    .line 108
    const/4 v4, 0x0

    .line 109
    move-object v0, p0

    .line 110
    move/from16 v2, p3

    .line 111
    .line 112
    move-object/from16 v3, p4

    .line 113
    .line 114
    move/from16 v5, p5

    .line 115
    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 121
    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_4

    .line 135
    .line 136
    invoke-virtual {p0, v13, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-virtual {v13, v7, v8, v0}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskInDexDisplay(Landroid/app/PendingIntent;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 151
    .line 152
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 153
    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    iget-object v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 157
    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 169
    .line 170
    iget-object v4, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 171
    .line 172
    if-eqz v3, :cond_5

    .line 173
    .line 174
    if-eqz v4, :cond_5

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_5

    .line 181
    .line 182
    iget-object v1, v4, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 183
    .line 184
    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_5

    .line 193
    .line 194
    move v11, v12

    .line 195
    :cond_5
    if-nez v11, :cond_a

    .line 196
    .line 197
    :cond_6
    const/4 v1, -0x1

    .line 198
    if-eq v9, v1, :cond_a

    .line 199
    .line 200
    if-eqz v0, :cond_7

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    .line 204
    .line 205
    if-eqz v0, :cond_8

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    invoke-virtual {v2, v13}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_8
    iget-boolean v0, v10, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 218
    .line 219
    if-eqz v0, :cond_9

    .line 220
    .line 221
    const/16 v0, 0x3ed

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_9
    const/16 v0, 0x3ec

    .line 225
    .line 226
    :goto_1
    iget-boolean v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 227
    .line 228
    xor-int/2addr v1, v12

    .line 229
    const/4 v2, 0x0

    .line 230
    invoke-virtual {p0, v13, v2, v9, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 234
    .line 235
    iget-boolean v3, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 236
    .line 237
    xor-int/2addr v3, v12

    .line 238
    move-object/from16 p1, v1

    .line 239
    .line 240
    move-object/from16 p2, v13

    .line 241
    .line 242
    move-object/from16 p3, v2

    .line 243
    .line 244
    move-object/from16 p4, p0

    .line 245
    .line 246
    move/from16 p5, v0

    .line 247
    .line 248
    move/from16 p6, v3

    .line 249
    .line 250
    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_a
    :goto_2
    invoke-virtual {v2, v13}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 255
    .line 256
    .line 257
    return-void
.end method

.method public final startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;ILandroid/os/Bundle;)V
    .locals 6

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    sget-object p4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 4
    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    move-object p2, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/high16 v3, 0x42000000    # 32.0f

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v2, p2

    .line 16
    move-object v5, p4

    .line 17
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :goto_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskInDexDisplay(Landroid/app/PendingIntent;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 36
    .line 37
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 38
    .line 39
    invoke-static {p2, p4, p3, p0, p5}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->makeStartIntentOpts(Landroid/content/Intent;Landroid/os/UserHandle;III)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 44
    .line 45
    const/4 p1, 0x3

    .line 46
    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendMessageProxyService(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 47
    .line 48
    .line 49
    const-string p0, "StageCoordinator"

    .line 50
    .line 51
    const-string/jumbo p1, "pending split screen by start intent to cell"

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 59
    .line 60
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 61
    .line 62
    .line 63
    const/4 p1, -0x1

    .line 64
    invoke-virtual {p0, p1, p5, p6, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, p2, p3, p1}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 69
    .line 70
    .line 71
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_STACKING:Z

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 98
    .line 99
    const/4 p2, 0x0

    .line 100
    const/high16 p3, 0x3f000000    # 0.5f

    .line 101
    .line 102
    const/4 p4, 0x1

    .line 103
    invoke-virtual {p1, p3, p5, p4, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p0, p5, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterMultiSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 107
    .line 108
    .line 109
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyCellHostResizeTransition(Landroid/window/WindowContainerTransaction;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    const/16 v4, 0x44c

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    move-object v3, p0

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 31

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    move-object/from16 v15, p3

    .line 8
    .line 9
    move-object/from16 v11, p4

    .line 10
    .line 11
    move-object/from16 v10, p5

    .line 12
    .line 13
    iget-object v9, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 14
    .line 15
    invoke-virtual {v9, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v8, v9, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v7, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 22
    .line 23
    iget-object v6, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 24
    .line 25
    iget-object v5, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 26
    .line 27
    if-eqz v0, :cond_27

    .line 28
    .line 29
    iget-object v4, v9, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 30
    .line 31
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 32
    .line 33
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/16 v16, 0x0

    .line 40
    .line 41
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v17

    .line 45
    move-object/from16 v18, v4

    .line 46
    .line 47
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ge v2, v4, :cond_9

    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 62
    .line 63
    move-object/from16 v17, v8

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    if-eqz v8, :cond_8

    .line 70
    .line 71
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    .line 72
    .line 73
    .line 74
    move-result v19

    .line 75
    if-nez v19, :cond_0

    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_0
    iget v10, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 80
    .line 81
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    iget-object v13, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_1

    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_1
    invoke-virtual {v12, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-virtual {v12, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageType(Lcom/android/wm/shell/splitscreen/StageTaskListener;)I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-nez v1, :cond_3

    .line 104
    .line 105
    if-nez v10, :cond_3

    .line 106
    .line 107
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    if-nez v13, :cond_2

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    const/4 v15, 0x6

    .line 122
    if-ne v13, v15, :cond_3

    .line 123
    .line 124
    :cond_2
    move-object v1, v4

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    if-nez v0, :cond_5

    .line 127
    .line 128
    const/4 v13, 0x1

    .line 129
    if-ne v10, v13, :cond_5

    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    if-nez v13, :cond_4

    .line 140
    .line 141
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 142
    .line 143
    if-eqz v13, :cond_5

    .line 144
    .line 145
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    const/4 v15, 0x6

    .line 150
    if-eq v13, v15, :cond_4

    .line 151
    .line 152
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    if-eqz v13, :cond_5

    .line 157
    .line 158
    :cond_4
    move-object v0, v4

    .line 159
    goto :goto_1

    .line 160
    :cond_5
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 161
    .line 162
    if-eqz v13, :cond_7

    .line 163
    .line 164
    const/4 v13, 0x2

    .line 165
    if-ne v10, v13, :cond_7

    .line 166
    .line 167
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    if-nez v13, :cond_6

    .line 176
    .line 177
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 178
    .line 179
    .line 180
    move-result v13

    .line 181
    const/4 v15, 0x6

    .line 182
    if-ne v13, v15, :cond_7

    .line 183
    .line 184
    :cond_6
    move-object/from16 v16, v4

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    const/4 v13, -0x1

    .line 188
    if-eq v10, v13, :cond_8

    .line 189
    .line 190
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    const/4 v10, 0x4

    .line 195
    if-ne v4, v10, :cond_8

    .line 196
    .line 197
    iget-object v4, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 198
    .line 199
    const/4 v8, 0x0

    .line 200
    const/4 v10, 0x0

    .line 201
    invoke-virtual {v3, v4, v8, v10}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 202
    .line 203
    .line 204
    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 205
    .line 206
    move-object/from16 v13, p1

    .line 207
    .line 208
    move-object/from16 v15, p3

    .line 209
    .line 210
    move-object/from16 v10, p5

    .line 211
    .line 212
    move-object/from16 v8, v17

    .line 213
    .line 214
    move-object/from16 v4, v18

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_9
    move-object/from16 v17, v8

    .line 219
    .line 220
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    .line 221
    .line 222
    if-eqz v4, :cond_b

    .line 223
    .line 224
    if-eqz v0, :cond_b

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVideoControlsTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    iput-boolean v4, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeVideoControls:Z

    .line 235
    .line 236
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 237
    .line 238
    if-eqz v8, :cond_a

    .line 239
    .line 240
    if-eqz v4, :cond_a

    .line 241
    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_a

    .line 247
    .line 248
    new-instance v4, Landroid/window/WindowContainerTransaction;

    .line 249
    .line 250
    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 251
    .line 252
    .line 253
    const/4 v8, 0x0

    .line 254
    invoke-virtual {v12, v4, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 255
    .line 256
    .line 257
    :cond_a
    iget-boolean v4, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mWillBeVideoControls:Z

    .line 258
    .line 259
    const/4 v8, 0x1

    .line 260
    invoke-virtual {v12, v4, v11, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateVideoControlsState(ZLandroid/view/SurfaceControl$Transaction;Z)V

    .line 261
    .line 262
    .line 263
    :cond_b
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 264
    .line 265
    if-eqz v4, :cond_c

    .line 266
    .line 267
    iget-object v4, v9, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 268
    .line 269
    iget v4, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    .line 270
    .line 271
    const/16 v8, 0x44c

    .line 272
    .line 273
    if-ne v4, v8, :cond_c

    .line 274
    .line 275
    if-eqz v16, :cond_c

    .line 276
    .line 277
    const/4 v4, 0x1

    .line 278
    goto :goto_2

    .line 279
    :cond_c
    const/4 v4, 0x0

    .line 280
    :goto_2
    move v13, v4

    .line 281
    iget-object v4, v9, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 282
    .line 283
    iget v15, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    .line 284
    .line 285
    iget-boolean v4, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    .line 286
    .line 287
    const/16 v8, 0x44d

    .line 288
    .line 289
    const-string v10, "StageCoordinator"

    .line 290
    .line 291
    if-eqz v4, :cond_d

    .line 292
    .line 293
    const/4 v8, 0x0

    .line 294
    iput-boolean v8, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    .line 295
    .line 296
    const-string v8, "isSkipDismissPair: mAppPairStarted=true"

    .line 297
    .line 298
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_d
    iget-boolean v2, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    .line 303
    .line 304
    if-nez v2, :cond_e

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_e
    const/16 v2, 0x3ec

    .line 308
    .line 309
    if-ne v15, v2, :cond_f

    .line 310
    .line 311
    const-string v2, "isSkipDismissPair: type=TRANSIT_SPLIT_SCREEN_PAIR_OPEN mKeyguardShowing=true"

    .line 312
    .line 313
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    .line 318
    .line 319
    if-eqz v2, :cond_10

    .line 320
    .line 321
    if-ne v15, v8, :cond_10

    .line 322
    .line 323
    const-string v2, "isSkipDismissPair: type=TRANSIT_MULTI_SPLIT_SCREEN_PAIR_OPEN mKeyguardShowing=true"

    .line 324
    .line 325
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    :goto_3
    const/4 v2, 0x1

    .line 329
    goto :goto_5

    .line 330
    :cond_10
    :goto_4
    const/4 v2, 0x0

    .line 331
    :goto_5
    if-eqz v2, :cond_11

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_11
    if-eqz v13, :cond_12

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_12
    iget-object v2, v9, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 338
    .line 339
    iget v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    .line 340
    .line 341
    const/16 v8, 0x3ed

    .line 342
    .line 343
    if-ne v2, v8, :cond_14

    .line 344
    .line 345
    if-nez v1, :cond_13

    .line 346
    .line 347
    if-nez v0, :cond_13

    .line 348
    .line 349
    const-string v0, "Launched a task in split, but didn\'t receive any task in transition."

    .line 350
    .line 351
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    iget-object v0, v9, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 355
    .line 356
    const/4 v1, 0x1

    .line 357
    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 358
    .line 359
    const/4 v2, 0x0

    .line 360
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 361
    .line 362
    const/4 v0, 0x0

    .line 363
    move-object/from16 v10, p3

    .line 364
    .line 365
    move-object/from16 v25, v5

    .line 366
    .line 367
    move-object/from16 v27, v6

    .line 368
    .line 369
    move-object/from16 v26, v17

    .line 370
    .line 371
    move-object/from16 v30, v11

    .line 372
    .line 373
    move-object v11, v9

    .line 374
    move-object v9, v14

    .line 375
    move-object/from16 v14, v30

    .line 376
    .line 377
    goto/16 :goto_14

    .line 378
    .line 379
    :cond_13
    :goto_6
    const/4 v2, 0x1

    .line 380
    goto :goto_7

    .line 381
    :cond_14
    const/4 v2, 0x1

    .line 382
    if-eqz v1, :cond_22

    .line 383
    .line 384
    if-nez v0, :cond_15

    .line 385
    .line 386
    goto/16 :goto_11

    .line 387
    .line 388
    :cond_15
    :goto_7
    if-eqz v1, :cond_16

    .line 389
    .line 390
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 395
    .line 396
    invoke-virtual {v5, v8}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    if-nez v8, :cond_16

    .line 401
    .line 402
    move v8, v2

    .line 403
    goto :goto_8

    .line 404
    :cond_16
    const/4 v8, 0x0

    .line 405
    :goto_8
    move/from16 v19, v2

    .line 406
    .line 407
    if-eqz v0, :cond_17

    .line 408
    .line 409
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 414
    .line 415
    invoke-virtual {v6, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-nez v2, :cond_17

    .line 420
    .line 421
    move/from16 v20, v19

    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_17
    const/4 v2, 0x0

    .line 425
    move/from16 v20, v2

    .line 426
    .line 427
    :goto_9
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 428
    .line 429
    if-eqz v2, :cond_18

    .line 430
    .line 431
    if-eqz v16, :cond_18

    .line 432
    .line 433
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 438
    .line 439
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-nez v2, :cond_18

    .line 444
    .line 445
    goto :goto_a

    .line 446
    :cond_18
    const/4 v2, 0x0

    .line 447
    move/from16 v19, v2

    .line 448
    .line 449
    :goto_a
    const-string v2, " before startAnimation()."

    .line 450
    .line 451
    move-object/from16 v21, v3

    .line 452
    .line 453
    const-string v3, " to have been called with "

    .line 454
    .line 455
    move-object/from16 v22, v9

    .line 456
    .line 457
    const-string v9, "Expected onTaskAppeared on "

    .line 458
    .line 459
    if-eqz v8, :cond_19

    .line 460
    .line 461
    new-instance v11, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    move-object/from16 v23, v5

    .line 473
    .line 474
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 479
    .line 480
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    goto :goto_b

    .line 494
    :cond_19
    move-object/from16 v23, v5

    .line 495
    .line 496
    :goto_b
    if-eqz v20, :cond_1a

    .line 497
    .line 498
    new-instance v5, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 510
    .line 511
    .line 512
    move-result-object v11

    .line 513
    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 514
    .line 515
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    :cond_1a
    if-eqz v19, :cond_1b

    .line 529
    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 546
    .line 547
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    :cond_1b
    new-instance v11, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;

    .line 561
    .line 562
    const/4 v9, 0x1

    .line 563
    move-object v5, v0

    .line 564
    move-object v0, v11

    .line 565
    move-object v3, v1

    .line 566
    move-object/from16 v1, p0

    .line 567
    .line 568
    move-object v2, v3

    .line 569
    move v3, v13

    .line 570
    move-object/from16 v24, v18

    .line 571
    .line 572
    move-object/from16 v18, v5

    .line 573
    .line 574
    move-object/from16 v25, v23

    .line 575
    .line 576
    move v5, v8

    .line 577
    move-object v8, v6

    .line 578
    move-object/from16 v6, v18

    .line 579
    .line 580
    move/from16 v23, v15

    .line 581
    .line 582
    move-object v15, v7

    .line 583
    move/from16 v7, v20

    .line 584
    .line 585
    move-object/from16 v27, v8

    .line 586
    .line 587
    move-object/from16 v26, v17

    .line 588
    .line 589
    move-object/from16 v8, v16

    .line 590
    .line 591
    move v14, v9

    .line 592
    move-object/from16 v28, v22

    .line 593
    .line 594
    move/from16 v9, v19

    .line 595
    .line 596
    move-object/from16 v29, v10

    .line 597
    .line 598
    move-object/from16 v10, v21

    .line 599
    .line 600
    move-object/from16 v14, p4

    .line 601
    .line 602
    move-object/from16 v17, v15

    .line 603
    .line 604
    move-object v15, v11

    .line 605
    move-object/from16 v11, v24

    .line 606
    .line 607
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo$Change;ZZZLandroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;)V

    .line 608
    .line 609
    .line 610
    move-object/from16 v0, v24

    .line 611
    .line 612
    iput-object v15, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 613
    .line 614
    if-eqz v13, :cond_1d

    .line 615
    .line 616
    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 617
    .line 618
    invoke-virtual {v0, v14}, Lcom/android/wm/shell/common/split/SplitLayout;->releaseCellDivider(Landroid/view/SurfaceControl$Transaction;)V

    .line 619
    .line 620
    .line 621
    iget-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    .line 622
    .line 623
    if-eqz v1, :cond_1c

    .line 624
    .line 625
    goto :goto_c

    .line 626
    :cond_1c
    const/4 v1, 0x1

    .line 627
    iput-boolean v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellInitialized:Z

    .line 628
    .line 629
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 630
    .line 631
    iget-object v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 632
    .line 633
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/common/split/SplitWindowManager;->init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->createCellSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    iput-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 641
    .line 642
    :goto_c
    move-object/from16 v7, v17

    .line 643
    .line 644
    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 645
    .line 646
    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 647
    .line 648
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    new-instance v2, Landroid/graphics/Rect;

    .line 652
    .line 653
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 654
    .line 655
    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    const/4 v0, 0x1

    .line 662
    invoke-virtual {v12, v14, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 663
    .line 664
    .line 665
    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 666
    .line 667
    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    iget-object v2, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 672
    .line 673
    invoke-virtual {v14, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 674
    .line 675
    .line 676
    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 677
    .line 678
    const/4 v2, 0x0

    .line 679
    invoke-virtual {v12, v1, v14, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 680
    .line 681
    .line 682
    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 683
    .line 684
    invoke-virtual {v14, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v12, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    .line 688
    .line 689
    .line 690
    iput-boolean v2, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 691
    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    .line 693
    .line 694
    .line 695
    move-object/from16 v9, p2

    .line 696
    .line 697
    invoke-virtual {v12, v9, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addCellDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    .line 698
    .line 699
    .line 700
    move-object/from16 v10, p3

    .line 701
    .line 702
    move v1, v2

    .line 703
    goto :goto_10

    .line 704
    :cond_1d
    move-object/from16 v9, p2

    .line 705
    .line 706
    move-object/from16 v7, v17

    .line 707
    .line 708
    const/4 v0, 0x1

    .line 709
    const/4 v1, 0x0

    .line 710
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 711
    .line 712
    if-eqz v2, :cond_1e

    .line 713
    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 715
    .line 716
    .line 717
    move-result v2

    .line 718
    if-nez v2, :cond_1e

    .line 719
    .line 720
    iget-boolean v2, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerVisible:Z

    .line 721
    .line 722
    if-eqz v2, :cond_1e

    .line 723
    .line 724
    invoke-virtual {v12, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellSplitVisible(Z)V

    .line 725
    .line 726
    .line 727
    move-object/from16 v10, p3

    .line 728
    .line 729
    invoke-virtual {v12, v10, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellDividerVisibility(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 730
    .line 731
    .line 732
    iget-object v2, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 733
    .line 734
    const/4 v3, 0x0

    .line 735
    invoke-virtual {v10, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 736
    .line 737
    .line 738
    iget-object v2, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 739
    .line 740
    invoke-virtual {v10, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 741
    .line 742
    .line 743
    goto :goto_d

    .line 744
    :cond_1e
    move-object/from16 v10, p3

    .line 745
    .line 746
    :goto_d
    const/16 v2, 0x44d

    .line 747
    .line 748
    move/from16 v3, v23

    .line 749
    .line 750
    if-ne v3, v2, :cond_1f

    .line 751
    .line 752
    move v2, v0

    .line 753
    goto :goto_e

    .line 754
    :cond_1f
    move v2, v1

    .line 755
    :goto_e
    invoke-virtual {v12, v14, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 756
    .line 757
    .line 758
    iget-boolean v3, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 759
    .line 760
    if-eqz v3, :cond_20

    .line 761
    .line 762
    const-string/jumbo v3, "startPendingEnterAnimation: skip addDividerBarToTransition, divider is already visible."

    .line 763
    .line 764
    .line 765
    move-object/from16 v4, v29

    .line 766
    .line 767
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .line 769
    .line 770
    goto :goto_f

    .line 771
    :cond_20
    invoke-virtual {v12, v9, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    .line 772
    .line 773
    .line 774
    :goto_f
    if-eqz v2, :cond_21

    .line 775
    .line 776
    invoke-virtual {v12, v9, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addCellDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    .line 777
    .line 778
    .line 779
    :cond_21
    :goto_10
    move-object/from16 v11, v28

    .line 780
    .line 781
    move/from16 v30, v1

    .line 782
    .line 783
    move v1, v0

    .line 784
    move/from16 v0, v30

    .line 785
    .line 786
    goto/16 :goto_14

    .line 787
    .line 788
    :cond_22
    :goto_11
    move-object/from16 v18, v0

    .line 789
    .line 790
    move-object v3, v1

    .line 791
    move-object/from16 v25, v5

    .line 792
    .line 793
    move-object/from16 v27, v6

    .line 794
    .line 795
    move-object/from16 v28, v9

    .line 796
    .line 797
    move-object v4, v10

    .line 798
    move-object v9, v14

    .line 799
    move-object/from16 v26, v17

    .line 800
    .line 801
    move-object/from16 v10, p3

    .line 802
    .line 803
    move-object v14, v11

    .line 804
    const/4 v0, 0x0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    const-string v5, "  info:"

    .line 808
    .line 809
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    new-instance v5, Ljava/lang/StringBuilder;

    .line 813
    .line 814
    const-string v6, " mainChild="

    .line 815
    .line 816
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v5

    .line 826
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    new-instance v5, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    const-string v6, " sideChild="

    .line 832
    .line 833
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    move-object/from16 v6, v18

    .line 837
    .line 838
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v5

    .line 845
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    new-instance v5, Ljava/lang/StringBuilder;

    .line 849
    .line 850
    const-string v8, "Launched 2 tasks in split, but didn\'t receive 2 tasks in transition. Possibly one of them failed to launch"

    .line 851
    .line 852
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    .line 864
    .line 865
    if-eqz v3, :cond_23

    .line 866
    .line 867
    move v1, v0

    .line 868
    :goto_12
    move-object/from16 v11, v28

    .line 869
    .line 870
    goto :goto_13

    .line 871
    :cond_23
    if-eqz v6, :cond_24

    .line 872
    .line 873
    move v1, v2

    .line 874
    goto :goto_12

    .line 875
    :cond_24
    move-object/from16 v11, v28

    .line 876
    .line 877
    const/4 v1, -0x1

    .line 878
    :goto_13
    iget-object v4, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 879
    .line 880
    new-instance v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda18;

    .line 881
    .line 882
    invoke-direct {v5, v12, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda18;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 883
    .line 884
    .line 885
    iput-boolean v2, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 886
    .line 887
    iput-object v5, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 888
    .line 889
    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 890
    .line 891
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 892
    .line 893
    .line 894
    move-result v4

    .line 895
    if-eqz v4, :cond_25

    .line 896
    .line 897
    if-eqz v3, :cond_25

    .line 898
    .line 899
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v4

    .line 903
    check-cast v4, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 904
    .line 905
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 906
    .line 907
    .line 908
    move-result-object v3

    .line 909
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 910
    .line 911
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 912
    .line 913
    .line 914
    :cond_25
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 915
    .line 916
    .line 917
    move-result v3

    .line 918
    if-eqz v3, :cond_26

    .line 919
    .line 920
    if-eqz v6, :cond_26

    .line 921
    .line 922
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    check-cast v1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 927
    .line 928
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 933
    .line 934
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 935
    .line 936
    .line 937
    :cond_26
    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 938
    .line 939
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 940
    .line 941
    .line 942
    move v1, v2

    .line 943
    :goto_14
    move-object/from16 v15, p1

    .line 944
    .line 945
    goto/16 :goto_16

    .line 946
    .line 947
    :cond_27
    move-object/from16 v25, v5

    .line 948
    .line 949
    move-object/from16 v27, v6

    .line 950
    .line 951
    move-object/from16 v26, v8

    .line 952
    .line 953
    move-object v10, v15

    .line 954
    move-object/from16 v30, v11

    .line 955
    .line 956
    move-object v11, v9

    .line 957
    move-object v9, v14

    .line 958
    move-object/from16 v14, v30

    .line 959
    .line 960
    const/4 v13, -0x1

    .line 961
    move-object/from16 v15, p1

    .line 962
    .line 963
    invoke-virtual {v11, v15}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 964
    .line 965
    .line 966
    move-result v0

    .line 967
    if-eqz v0, :cond_2a

    .line 968
    .line 969
    iget-object v6, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    .line 970
    .line 971
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 972
    .line 973
    if-eqz v0, :cond_28

    .line 974
    .line 975
    iget v1, v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    .line 976
    .line 977
    iget v2, v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    .line 978
    .line 979
    iget-boolean v13, v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mIsMultiSplitDismissed:Z

    .line 980
    .line 981
    const/16 v16, -0x1

    .line 982
    .line 983
    move-object/from16 v0, p0

    .line 984
    .line 985
    move-object/from16 v3, p2

    .line 986
    .line 987
    move-object/from16 v4, p3

    .line 988
    .line 989
    move-object/from16 v5, p4

    .line 990
    .line 991
    move-object v8, v6

    .line 992
    move v6, v13

    .line 993
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 994
    .line 995
    .line 996
    move/from16 v13, v16

    .line 997
    .line 998
    goto :goto_15

    .line 999
    :cond_28
    move-object v8, v6

    .line 1000
    iget v1, v8, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    .line 1001
    .line 1002
    iget v2, v8, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    .line 1003
    .line 1004
    const/4 v6, 0x0

    .line 1005
    move-object/from16 v0, p0

    .line 1006
    .line 1007
    move-object/from16 v3, p2

    .line 1008
    .line 1009
    move-object/from16 v4, p3

    .line 1010
    .line 1011
    move-object/from16 v5, p4

    .line 1012
    .line 1013
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 1014
    .line 1015
    .line 1016
    :goto_15
    iget v0, v8, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    .line 1017
    .line 1018
    if-ne v0, v13, :cond_29

    .line 1019
    .line 1020
    const/4 v0, 0x0

    .line 1021
    invoke-virtual {v12, v0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 1022
    .line 1023
    .line 1024
    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 1025
    .line 1026
    invoke-virtual {v1, v10}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 1027
    .line 1028
    .line 1029
    const/4 v1, 0x0

    .line 1030
    iput-object v1, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    .line 1031
    .line 1032
    move v1, v0

    .line 1033
    goto :goto_16

    .line 1034
    :cond_29
    const/4 v0, 0x0

    .line 1035
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda12;

    .line 1036
    .line 1037
    const/4 v2, 0x2

    .line 1038
    invoke-direct {v1, v12, v8, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    .line 1039
    .line 1040
    .line 1041
    iput-object v1, v8, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 1042
    .line 1043
    const/4 v1, 0x1

    .line 1044
    :goto_16
    move-object/from16 v5, p5

    .line 1045
    .line 1046
    move-object/from16 v2, v25

    .line 1047
    .line 1048
    move-object/from16 v13, v26

    .line 1049
    .line 1050
    move-object/from16 v3, v27

    .line 1051
    .line 1052
    goto/16 :goto_1e

    .line 1053
    .line 1054
    :cond_2a
    const/4 v0, 0x0

    .line 1055
    const/4 v1, 0x2

    .line 1056
    invoke-virtual {v11, v15}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 1057
    .line 1058
    .line 1059
    move-result v2

    .line 1060
    if-eqz v2, :cond_33

    .line 1061
    .line 1062
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1063
    .line 1064
    if-eqz v2, :cond_2b

    .line 1065
    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->hasChangeTransition()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v2

    .line 1070
    if-eqz v2, :cond_2b

    .line 1071
    .line 1072
    const/4 v1, 0x1

    .line 1073
    invoke-virtual {v12, v9, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 1077
    .line 1078
    .line 1079
    move-result v2

    .line 1080
    if-eqz v2, :cond_33

    .line 1081
    .line 1082
    invoke-virtual {v12, v9, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addCellDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    .line 1083
    .line 1084
    .line 1085
    goto/16 :goto_1d

    .line 1086
    .line 1087
    :cond_2b
    move-object/from16 v2, v25

    .line 1088
    .line 1089
    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1090
    .line 1091
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1092
    .line 1093
    move-object/from16 v3, v27

    .line 1094
    .line 1095
    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1096
    .line 1097
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1098
    .line 1099
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 1100
    .line 1101
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 1102
    .line 1103
    iput-object v15, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 1104
    .line 1105
    iput-object v14, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1106
    .line 1107
    move-object/from16 v5, p5

    .line 1108
    .line 1109
    iput-object v5, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 1110
    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v5

    .line 1115
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1116
    .line 1117
    .line 1118
    move-result v5

    .line 1119
    add-int/2addr v5, v13

    .line 1120
    :goto_17
    if-ltz v5, :cond_30

    .line 1121
    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v6

    .line 1126
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v6

    .line 1130
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 1131
    .line 1132
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v7

    .line 1136
    invoke-virtual {v0, v7}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1137
    .line 1138
    .line 1139
    move-result v7

    .line 1140
    if-nez v7, :cond_2d

    .line 1141
    .line 1142
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v7

    .line 1146
    invoke-virtual {v4, v7}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v7

    .line 1150
    if-eqz v7, :cond_2c

    .line 1151
    .line 1152
    goto :goto_18

    .line 1153
    :cond_2c
    move-object/from16 v13, v26

    .line 1154
    .line 1155
    goto :goto_1a

    .line 1156
    :cond_2d
    :goto_18
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v7

    .line 1160
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v8

    .line 1164
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 1165
    .line 1166
    int-to-float v8, v8

    .line 1167
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v13

    .line 1171
    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 1172
    .line 1173
    int-to-float v13, v13

    .line 1174
    invoke-virtual {v10, v7, v8, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v8

    .line 1181
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 1182
    .line 1183
    .line 1184
    move-result v8

    .line 1185
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v13

    .line 1189
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 1190
    .line 1191
    .line 1192
    move-result v13

    .line 1193
    invoke-virtual {v10, v7, v8, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v7

    .line 1200
    invoke-virtual {v0, v7}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1201
    .line 1202
    .line 1203
    move-result v7

    .line 1204
    if-eqz v7, :cond_2e

    .line 1205
    .line 1206
    move-object v7, v2

    .line 1207
    goto :goto_19

    .line 1208
    :cond_2e
    move-object v7, v3

    .line 1209
    :goto_19
    new-instance v8, Landroid/animation/ValueAnimator;

    .line 1210
    .line 1211
    invoke-direct {v8}, Landroid/animation/ValueAnimator;-><init>()V

    .line 1212
    .line 1213
    .line 1214
    move-object/from16 v13, v26

    .line 1215
    .line 1216
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v6

    .line 1223
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1224
    .line 1225
    .line 1226
    if-eqz v6, :cond_2f

    .line 1227
    .line 1228
    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    .line 1229
    .line 1230
    .line 1231
    :cond_2f
    new-instance v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda5;

    .line 1232
    .line 1233
    invoke-direct {v6, v11, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v7, v10, v6}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda5;)V

    .line 1237
    .line 1238
    .line 1239
    :goto_1a
    add-int/lit8 v5, v5, -0x1

    .line 1240
    .line 1241
    move-object/from16 v26, v13

    .line 1242
    .line 1243
    goto :goto_17

    .line 1244
    :cond_30
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1245
    .line 1246
    .line 1247
    const/4 v0, 0x0

    .line 1248
    invoke-virtual {v11, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1256
    .line 1257
    .line 1258
    move-result v0

    .line 1259
    add-int/lit8 v0, v0, -0x1

    .line 1260
    .line 1261
    :goto_1b
    if-ltz v0, :cond_32

    .line 1262
    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v2

    .line 1267
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v2

    .line 1271
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 1272
    .line 1273
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1274
    .line 1275
    .line 1276
    move-result v3

    .line 1277
    if-ne v3, v1, :cond_31

    .line 1278
    .line 1279
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v3

    .line 1283
    if-eqz v3, :cond_31

    .line 1284
    .line 1285
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v2

    .line 1289
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    .line 1290
    .line 1291
    .line 1292
    move-result v2

    .line 1293
    if-eqz v2, :cond_31

    .line 1294
    .line 1295
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    .line 1296
    .line 1297
    const/16 v1, 0x8

    .line 1298
    .line 1299
    invoke-direct {v0, v12, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 1300
    .line 1301
    .line 1302
    iget-object v1, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 1303
    .line 1304
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 1305
    .line 1306
    const-wide/16 v2, 0x1f4

    .line 1307
    .line 1308
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(JLjava/lang/Runnable;)V

    .line 1309
    .line 1310
    .line 1311
    goto :goto_1c

    .line 1312
    :cond_31
    add-int/lit8 v0, v0, -0x1

    .line 1313
    .line 1314
    goto :goto_1b

    .line 1315
    :cond_32
    :goto_1c
    const/4 v0, 0x1

    .line 1316
    return v0

    .line 1317
    :cond_33
    :goto_1d
    move-object/from16 v5, p5

    .line 1318
    .line 1319
    move-object/from16 v2, v25

    .line 1320
    .line 1321
    move-object/from16 v13, v26

    .line 1322
    .line 1323
    move-object/from16 v3, v27

    .line 1324
    .line 1325
    const/4 v1, 0x1

    .line 1326
    :goto_1e
    if-nez v1, :cond_34

    .line 1327
    .line 1328
    return v0

    .line 1329
    :cond_34
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    .line 1330
    .line 1331
    if-eqz v0, :cond_35

    .line 1332
    .line 1333
    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1334
    .line 1335
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1336
    .line 1337
    goto :goto_1f

    .line 1338
    :cond_35
    const/4 v0, 0x0

    .line 1339
    :goto_1f
    move-object v8, v0

    .line 1340
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 1341
    .line 1342
    .line 1343
    move-result v0

    .line 1344
    if-eqz v0, :cond_37

    .line 1345
    .line 1346
    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 1347
    .line 1348
    if-nez v0, :cond_36

    .line 1349
    .line 1350
    goto :goto_20

    .line 1351
    :cond_36
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 1352
    .line 1353
    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 1354
    .line 1355
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    .line 1356
    .line 1357
    if-eqz v0, :cond_37

    .line 1358
    .line 1359
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1360
    .line 1361
    .line 1362
    :cond_37
    :goto_20
    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1363
    .line 1364
    iget-object v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1365
    .line 1366
    iget-object v0, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1367
    .line 1368
    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1369
    .line 1370
    iget-object v0, v12, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1371
    .line 1372
    iget-object v12, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1373
    .line 1374
    iput-object v15, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 1375
    .line 1376
    iput-object v14, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1377
    .line 1378
    iput-object v5, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 1379
    .line 1380
    invoke-virtual {v11, v15}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v0

    .line 1384
    if-eqz v0, :cond_39

    .line 1385
    .line 1386
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 1387
    .line 1388
    if-eqz v1, :cond_38

    .line 1389
    .line 1390
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1391
    .line 1392
    .line 1393
    const/4 v0, 0x0

    .line 1394
    invoke-virtual {v11, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 1395
    .line 1396
    .line 1397
    goto/16 :goto_36

    .line 1398
    .line 1399
    :cond_38
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 1400
    .line 1401
    if-eqz v5, :cond_39

    .line 1402
    .line 1403
    iget-object v6, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteFinishCB:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;

    .line 1404
    .line 1405
    move-object v0, v5

    .line 1406
    move-object/from16 v1, p1

    .line 1407
    .line 1408
    move-object/from16 v2, p2

    .line 1409
    .line 1410
    move-object/from16 v3, p3

    .line 1411
    .line 1412
    move-object/from16 v4, p4

    .line 1413
    .line 1414
    move-object v7, v5

    .line 1415
    move-object v5, v6

    .line 1416
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1417
    .line 1418
    .line 1419
    iput-object v7, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 1420
    .line 1421
    goto/16 :goto_36

    .line 1422
    .line 1423
    :cond_39
    invoke-virtual {v11, v15}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 1424
    .line 1425
    .line 1426
    move-result v14

    .line 1427
    const/4 v0, 0x1

    .line 1428
    invoke-static {v9, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 1429
    .line 1430
    .line 1431
    move-result v0

    .line 1432
    move v5, v0

    .line 1433
    move-object v0, v9

    .line 1434
    :goto_21
    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 1435
    .line 1436
    const-string v4, "SplitScreenTransitions"

    .line 1437
    .line 1438
    if-ltz v5, :cond_66

    .line 1439
    .line 1440
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v2

    .line 1444
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v2

    .line 1448
    move-object v3, v2

    .line 1449
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 1450
    .line 1451
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v2

    .line 1455
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v9

    .line 1459
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v9

    .line 1463
    check-cast v9, Landroid/window/TransitionInfo$Change;

    .line 1464
    .line 1465
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1466
    .line 1467
    .line 1468
    move-result v9

    .line 1469
    invoke-static {v3, v0}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 1470
    .line 1471
    .line 1472
    move-result v15

    .line 1473
    move/from16 p0, v14

    .line 1474
    .line 1475
    const/4 v14, 0x6

    .line 1476
    if-ne v9, v14, :cond_3f

    .line 1477
    .line 1478
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v14

    .line 1482
    if-eqz v14, :cond_3f

    .line 1483
    .line 1484
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v14

    .line 1488
    invoke-virtual {v0, v14}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v14

    .line 1492
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    .line 1493
    .line 1494
    if-eqz v16, :cond_3a

    .line 1495
    .line 1496
    move-object/from16 v16, v8

    .line 1497
    .line 1498
    const/16 v8, 0x200

    .line 1499
    .line 1500
    invoke-virtual {v3, v8}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1501
    .line 1502
    .line 1503
    move-result v8

    .line 1504
    if-eqz v8, :cond_3b

    .line 1505
    .line 1506
    const/16 v8, 0x400

    .line 1507
    .line 1508
    invoke-virtual {v3, v8}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1509
    .line 1510
    .line 1511
    move-result v8

    .line 1512
    if-nez v8, :cond_3b

    .line 1513
    .line 1514
    if-eqz v14, :cond_3b

    .line 1515
    .line 1516
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v8

    .line 1520
    if-eqz v8, :cond_3b

    .line 1521
    .line 1522
    const-string v1, "Except TaskFragment changes, it\'s parent has snapshot. it replaces task fragment changes."

    .line 1523
    .line 1524
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v1

    .line 1531
    const/4 v2, 0x0

    .line 1532
    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1533
    .line 1534
    .line 1535
    move-object/from16 v17, v6

    .line 1536
    .line 1537
    goto/16 :goto_24

    .line 1538
    .line 1539
    :cond_3a
    move-object/from16 v16, v8

    .line 1540
    .line 1541
    :cond_3b
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v8

    .line 1545
    invoke-virtual {v10, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v8

    .line 1552
    move-object/from16 v17, v6

    .line 1553
    .line 1554
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1555
    .line 1556
    invoke-virtual {v10, v8, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1557
    .line 1558
    .line 1559
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1560
    .line 1561
    if-eqz v6, :cond_3c

    .line 1562
    .line 1563
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v6

    .line 1567
    if-eqz v6, :cond_3c

    .line 1568
    .line 1569
    goto :goto_22

    .line 1570
    :cond_3c
    const/high16 v6, 0x800000

    .line 1571
    .line 1572
    invoke-virtual {v3, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1573
    .line 1574
    .line 1575
    move-result v6

    .line 1576
    if-eqz v6, :cond_3d

    .line 1577
    .line 1578
    const/16 v6, 0x200

    .line 1579
    .line 1580
    invoke-virtual {v3, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1581
    .line 1582
    .line 1583
    move-result v6

    .line 1584
    if-nez v6, :cond_3d

    .line 1585
    .line 1586
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v6

    .line 1590
    if-eqz v6, :cond_3d

    .line 1591
    .line 1592
    goto :goto_22

    .line 1593
    :cond_3d
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 1594
    .line 1595
    if-eqz v6, :cond_3e

    .line 1596
    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isSeparatedFromCustomDisplayChange()Z

    .line 1598
    .line 1599
    .line 1600
    move-result v6

    .line 1601
    if-eqz v6, :cond_3e

    .line 1602
    .line 1603
    goto :goto_22

    .line 1604
    :cond_3e
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v6

    .line 1608
    invoke-virtual {v0, v15}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v8

    .line 1612
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v8

    .line 1616
    invoke-virtual {v10, v6, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v6

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v8

    .line 1627
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 1628
    .line 1629
    .line 1630
    move-result v8

    .line 1631
    sub-int/2addr v8, v5

    .line 1632
    invoke-virtual {v10, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1633
    .line 1634
    .line 1635
    :goto_22
    iget-object v6, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1636
    .line 1637
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v8

    .line 1641
    invoke-virtual {v6, v2, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1642
    .line 1643
    .line 1644
    iget-object v6, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1645
    .line 1646
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v8

    .line 1650
    iget v8, v8, Landroid/graphics/Point;->x:I

    .line 1651
    .line 1652
    int-to-float v8, v8

    .line 1653
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v14

    .line 1657
    iget v14, v14, Landroid/graphics/Point;->y:I

    .line 1658
    .line 1659
    int-to-float v14, v14

    .line 1660
    invoke-virtual {v6, v2, v8, v14}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1661
    .line 1662
    .line 1663
    goto :goto_23

    .line 1664
    :cond_3f
    move-object/from16 v17, v6

    .line 1665
    .line 1666
    move-object/from16 v16, v8

    .line 1667
    .line 1668
    :goto_23
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    .line 1669
    .line 1670
    if-eqz v6, :cond_40

    .line 1671
    .line 1672
    const/4 v6, 0x2

    .line 1673
    if-ne v9, v6, :cond_40

    .line 1674
    .line 1675
    const/16 v6, 0x200

    .line 1676
    .line 1677
    invoke-virtual {v3, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1678
    .line 1679
    .line 1680
    move-result v6

    .line 1681
    if-eqz v6, :cond_40

    .line 1682
    .line 1683
    const/16 v6, 0x400

    .line 1684
    .line 1685
    invoke-virtual {v3, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1686
    .line 1687
    .line 1688
    move-result v6

    .line 1689
    if-nez v6, :cond_40

    .line 1690
    .line 1691
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v6

    .line 1695
    if-eqz v6, :cond_40

    .line 1696
    .line 1697
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v6

    .line 1701
    invoke-virtual {v0, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v6

    .line 1705
    if-eqz v6, :cond_40

    .line 1706
    .line 1707
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v6

    .line 1711
    if-eqz v6, :cond_40

    .line 1712
    .line 1713
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v1

    .line 1717
    invoke-virtual {v10, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1718
    .line 1719
    .line 1720
    :goto_24
    move-object/from16 v3, p2

    .line 1721
    .line 1722
    move-object v1, v0

    .line 1723
    move/from16 v18, v5

    .line 1724
    .line 1725
    move-object v0, v7

    .line 1726
    move-object/from16 v15, v16

    .line 1727
    .line 1728
    move-object/from16 v5, v17

    .line 1729
    .line 1730
    goto/16 :goto_34

    .line 1731
    .line 1732
    :cond_40
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1733
    .line 1734
    if-eqz v0, :cond_43

    .line 1735
    .line 1736
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v0

    .line 1740
    if-eqz v0, :cond_43

    .line 1741
    .line 1742
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1743
    .line 1744
    .line 1745
    move-result v0

    .line 1746
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1747
    .line 1748
    .line 1749
    move-result v0

    .line 1750
    if-eqz v0, :cond_41

    .line 1751
    .line 1752
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    .line 1753
    .line 1754
    .line 1755
    move-result v0

    .line 1756
    const/4 v6, 0x2

    .line 1757
    if-ne v0, v6, :cond_41

    .line 1758
    .line 1759
    const/4 v0, 0x1

    .line 1760
    goto :goto_25

    .line 1761
    :cond_41
    const/4 v0, 0x0

    .line 1762
    :goto_25
    move v6, v0

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1764
    .line 1765
    const-string v8, "buildChangeTransition: leash="

    .line 1766
    .line 1767
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1768
    .line 1769
    .line 1770
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v8

    .line 1774
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1775
    .line 1776
    .line 1777
    const-string v8, ", snapshot="

    .line 1778
    .line 1779
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    .line 1781
    .line 1782
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v8

    .line 1786
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1787
    .line 1788
    .line 1789
    if-eqz v6, :cond_42

    .line 1790
    .line 1791
    const-string v8, ", shouldBeHidden=true"

    .line 1792
    .line 1793
    goto :goto_26

    .line 1794
    :cond_42
    const-string v8, ""

    .line 1795
    .line 1796
    :goto_26
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v0

    .line 1803
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    .line 1805
    .line 1806
    new-instance v8, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda4;

    .line 1807
    .line 1808
    const/4 v0, 0x0

    .line 1809
    invoke-direct {v8, v11, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;I)V

    .line 1810
    .line 1811
    .line 1812
    iget-object v0, v1, Lcom/android/wm/shell/transition/Transitions;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    .line 1813
    .line 1814
    move-object v1, v13

    .line 1815
    move-object v14, v2

    .line 1816
    move-object v2, v3

    .line 1817
    move-object/from16 p4, v3

    .line 1818
    .line 1819
    move-object v3, v8

    .line 1820
    move-object v8, v4

    .line 1821
    move-object/from16 v4, p3

    .line 1822
    .line 1823
    move/from16 v18, v5

    .line 1824
    .line 1825
    move-object/from16 v5, p2

    .line 1826
    .line 1827
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->buildChangeTransitionAnimators(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)Z

    .line 1828
    .line 1829
    .line 1830
    if-eqz v6, :cond_44

    .line 1831
    .line 1832
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1833
    .line 1834
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v1

    .line 1838
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1839
    .line 1840
    .line 1841
    goto :goto_27

    .line 1842
    :cond_43
    move-object v14, v2

    .line 1843
    move-object/from16 p4, v3

    .line 1844
    .line 1845
    move-object v8, v4

    .line 1846
    move/from16 v18, v5

    .line 1847
    .line 1848
    :cond_44
    :goto_27
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v0

    .line 1852
    if-eqz v0, :cond_46

    .line 1853
    .line 1854
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v0

    .line 1858
    invoke-virtual {v12, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1859
    .line 1860
    .line 1861
    move-result v0

    .line 1862
    if-eqz v0, :cond_45

    .line 1863
    .line 1864
    goto :goto_28

    .line 1865
    :cond_45
    const/4 v0, 0x0

    .line 1866
    goto :goto_29

    .line 1867
    :cond_46
    :goto_28
    const/4 v0, 0x1

    .line 1868
    :goto_29
    if-eqz v0, :cond_61

    .line 1869
    .line 1870
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v0

    .line 1874
    invoke-virtual {v12, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1875
    .line 1876
    .line 1877
    move-result v0

    .line 1878
    if-eqz v0, :cond_47

    .line 1879
    .line 1880
    goto/16 :goto_32

    .line 1881
    .line 1882
    :cond_47
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v0

    .line 1886
    invoke-virtual {v12, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1887
    .line 1888
    .line 1889
    move-result v0

    .line 1890
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v1

    .line 1894
    invoke-virtual {v7, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1895
    .line 1896
    .line 1897
    move-result v1

    .line 1898
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v2

    .line 1902
    move-object/from16 v6, v17

    .line 1903
    .line 1904
    invoke-virtual {v6, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1905
    .line 1906
    .line 1907
    move-result v2

    .line 1908
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 1909
    .line 1910
    .line 1911
    move-result v3

    .line 1912
    const/high16 v4, 0x400000

    .line 1913
    .line 1914
    if-ne v3, v4, :cond_48

    .line 1915
    .line 1916
    const/4 v3, 0x1

    .line 1917
    goto :goto_2a

    .line 1918
    :cond_48
    const/4 v3, 0x0

    .line 1919
    :goto_2a
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v4

    .line 1923
    invoke-virtual {v7, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1924
    .line 1925
    .line 1926
    move-result v4

    .line 1927
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v5

    .line 1931
    invoke-virtual {v6, v5}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1932
    .line 1933
    .line 1934
    move-result v5

    .line 1935
    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    .line 1936
    .line 1937
    if-eqz v17, :cond_49

    .line 1938
    .line 1939
    if-eqz v16, :cond_49

    .line 1940
    .line 1941
    move-object/from16 v17, v6

    .line 1942
    .line 1943
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v6

    .line 1947
    move/from16 p5, v15

    .line 1948
    .line 1949
    move-object/from16 v15, v16

    .line 1950
    .line 1951
    invoke-virtual {v15, v6}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1952
    .line 1953
    .line 1954
    move-result v6

    .line 1955
    move/from16 v16, v6

    .line 1956
    .line 1957
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v6

    .line 1961
    invoke-virtual {v15, v6}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1962
    .line 1963
    .line 1964
    move-result v6

    .line 1965
    goto :goto_2b

    .line 1966
    :cond_49
    move-object/from16 v17, v6

    .line 1967
    .line 1968
    move/from16 p5, v15

    .line 1969
    .line 1970
    move-object/from16 v15, v16

    .line 1971
    .line 1972
    const/4 v6, 0x0

    .line 1973
    const/16 v16, 0x0

    .line 1974
    .line 1975
    :goto_2b
    if-eqz p0, :cond_4b

    .line 1976
    .line 1977
    if-nez v4, :cond_4a

    .line 1978
    .line 1979
    if-nez v5, :cond_4a

    .line 1980
    .line 1981
    if-eqz v6, :cond_4b

    .line 1982
    .line 1983
    :cond_4a
    iget-object v4, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1984
    .line 1985
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v5

    .line 1989
    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 1990
    .line 1991
    int-to-float v5, v5

    .line 1992
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v6

    .line 1996
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 1997
    .line 1998
    int-to-float v6, v6

    .line 1999
    invoke-virtual {v4, v14, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2000
    .line 2001
    .line 2002
    iget-object v4, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2003
    .line 2004
    const/4 v5, 0x0

    .line 2005
    invoke-virtual {v4, v14, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 2006
    .line 2007
    .line 2008
    goto :goto_2d

    .line 2009
    :cond_4b
    if-eqz v0, :cond_4c

    .line 2010
    .line 2011
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2012
    .line 2013
    invoke-virtual {v10, v14, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 2014
    .line 2015
    .line 2016
    invoke-virtual {v10, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2017
    .line 2018
    .line 2019
    goto :goto_2d

    .line 2020
    :cond_4c
    if-eqz p0, :cond_4d

    .line 2021
    .line 2022
    if-nez v1, :cond_4f

    .line 2023
    .line 2024
    :cond_4d
    if-nez v2, :cond_4f

    .line 2025
    .line 2026
    if-eqz v16, :cond_4e

    .line 2027
    .line 2028
    goto :goto_2c

    .line 2029
    :cond_4e
    if-eqz v3, :cond_50

    .line 2030
    .line 2031
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v4

    .line 2035
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2036
    .line 2037
    int-to-float v4, v4

    .line 2038
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v5

    .line 2042
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 2043
    .line 2044
    int-to-float v5, v5

    .line 2045
    invoke-virtual {v10, v14, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2046
    .line 2047
    .line 2048
    const v4, 0x7fffffff

    .line 2049
    .line 2050
    .line 2051
    invoke-virtual {v10, v14, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2052
    .line 2053
    .line 2054
    invoke-virtual {v10, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2055
    .line 2056
    .line 2057
    goto :goto_2d

    .line 2058
    :cond_4f
    :goto_2c
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2059
    .line 2060
    .line 2061
    move-result-object v4

    .line 2062
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2063
    .line 2064
    int-to-float v4, v4

    .line 2065
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v5

    .line 2069
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 2070
    .line 2071
    int-to-float v5, v5

    .line 2072
    invoke-virtual {v10, v14, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2073
    .line 2074
    .line 2075
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v4

    .line 2079
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 2080
    .line 2081
    .line 2082
    move-result v4

    .line 2083
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v5

    .line 2087
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 2088
    .line 2089
    .line 2090
    move-result v5

    .line 2091
    invoke-virtual {v10, v14, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2092
    .line 2093
    .line 2094
    :cond_50
    :goto_2d
    if-nez v0, :cond_60

    .line 2095
    .line 2096
    if-nez v1, :cond_60

    .line 2097
    .line 2098
    if-nez v2, :cond_60

    .line 2099
    .line 2100
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v0

    .line 2104
    if-nez v0, :cond_51

    .line 2105
    .line 2106
    if-nez v3, :cond_51

    .line 2107
    .line 2108
    goto :goto_2e

    .line 2109
    :cond_51
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 2110
    .line 2111
    if-eqz v0, :cond_52

    .line 2112
    .line 2113
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v0

    .line 2117
    if-eqz v0, :cond_52

    .line 2118
    .line 2119
    goto :goto_2e

    .line 2120
    :cond_52
    if-eqz p0, :cond_53

    .line 2121
    .line 2122
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 2123
    .line 2124
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mResizeAnim:Z

    .line 2125
    .line 2126
    if-eqz v0, :cond_53

    .line 2127
    .line 2128
    :goto_2e
    move-object/from16 v0, p1

    .line 2129
    .line 2130
    goto :goto_30

    .line 2131
    :cond_53
    move-object/from16 v0, p1

    .line 2132
    .line 2133
    move/from16 v1, p5

    .line 2134
    .line 2135
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 2136
    .line 2137
    .line 2138
    move-result v2

    .line 2139
    if-eqz v2, :cond_54

    .line 2140
    .line 2141
    iget-object v2, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    .line 2142
    .line 2143
    iget v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    .line 2144
    .line 2145
    const/4 v4, 0x4

    .line 2146
    if-ne v2, v4, :cond_55

    .line 2147
    .line 2148
    goto :goto_30

    .line 2149
    :cond_54
    const/4 v4, 0x4

    .line 2150
    :cond_55
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 2151
    .line 2152
    .line 2153
    move-result v2

    .line 2154
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 2155
    .line 2156
    .line 2157
    move-result v2

    .line 2158
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v5

    .line 2162
    if-eqz v5, :cond_57

    .line 2163
    .line 2164
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v5

    .line 2168
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 2169
    .line 2170
    .line 2171
    move-result v5

    .line 2172
    const/4 v6, 0x2

    .line 2173
    if-eq v5, v6, :cond_56

    .line 2174
    .line 2175
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2176
    .line 2177
    .line 2178
    move-result-object v5

    .line 2179
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 2180
    .line 2181
    .line 2182
    move-result v5

    .line 2183
    const/4 v6, 0x3

    .line 2184
    if-ne v5, v6, :cond_57

    .line 2185
    .line 2186
    :cond_56
    const/4 v5, 0x1

    .line 2187
    goto :goto_2f

    .line 2188
    :cond_57
    const/4 v5, 0x0

    .line 2189
    :goto_2f
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 2190
    .line 2191
    if-eqz v6, :cond_59

    .line 2192
    .line 2193
    if-eqz v5, :cond_59

    .line 2194
    .line 2195
    if-eqz p0, :cond_59

    .line 2196
    .line 2197
    if-eqz v2, :cond_59

    .line 2198
    .line 2199
    const/4 v5, 0x2

    .line 2200
    if-eq v9, v5, :cond_58

    .line 2201
    .line 2202
    if-ne v9, v4, :cond_59

    .line 2203
    .line 2204
    :cond_58
    const/4 v1, 0x0

    .line 2205
    invoke-virtual {v10, v14, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 2206
    .line 2207
    .line 2208
    :goto_30
    move-object v0, v7

    .line 2209
    move-object/from16 v5, v17

    .line 2210
    .line 2211
    goto/16 :goto_31

    .line 2212
    .line 2213
    :cond_59
    if-eqz v6, :cond_5b

    .line 2214
    .line 2215
    if-eqz v2, :cond_5b

    .line 2216
    .line 2217
    const/4 v5, 0x1

    .line 2218
    if-eq v9, v5, :cond_5a

    .line 2219
    .line 2220
    const/4 v5, 0x3

    .line 2221
    if-ne v9, v5, :cond_5b

    .line 2222
    .line 2223
    :cond_5a
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isSeparatedFromCustomDisplayChange()Z

    .line 2224
    .line 2225
    .line 2226
    move-result v5

    .line 2227
    if-nez v5, :cond_5b

    .line 2228
    .line 2229
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2230
    .line 2231
    const-string v2, "buildSurfaceAnimation: leash="

    .line 2232
    .line 2233
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2234
    .line 2235
    .line 2236
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2237
    .line 2238
    .line 2239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v1

    .line 2243
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    .line 2245
    .line 2246
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda4;

    .line 2247
    .line 2248
    const/4 v1, 0x1

    .line 2249
    invoke-direct {v5, v11, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;I)V

    .line 2250
    .line 2251
    .line 2252
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v1

    .line 2256
    iget-object v2, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 2257
    .line 2258
    const v3, 0x7f01029b

    .line 2259
    .line 2260
    .line 2261
    invoke-virtual {v2, v3, v1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->loadAnimationFromResources(ILandroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v3

    .line 2265
    new-instance v6, Landroid/graphics/Point;

    .line 2266
    .line 2267
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 2268
    .line 2269
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 2270
    .line 2271
    invoke-direct {v6, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2272
    .line 2273
    .line 2274
    new-instance v8, Landroid/graphics/Rect;

    .line 2275
    .line 2276
    invoke-direct {v8, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2277
    .line 2278
    .line 2279
    const/4 v1, 0x0

    .line 2280
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2281
    .line 2282
    .line 2283
    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 2284
    .line 2285
    const/4 v9, 0x0

    .line 2286
    move-object v2, v13

    .line 2287
    move-object v4, v14

    .line 2288
    move-object/from16 v14, v17

    .line 2289
    .line 2290
    move-object v0, v7

    .line 2291
    move-object v7, v8

    .line 2292
    move v8, v9

    .line 2293
    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    .line 2294
    .line 2295
    .line 2296
    move-object v5, v14

    .line 2297
    goto/16 :goto_31

    .line 2298
    .line 2299
    :cond_5b
    move-object v0, v7

    .line 2300
    move-object/from16 v5, v17

    .line 2301
    .line 2302
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 2303
    .line 2304
    if-eqz v6, :cond_5c

    .line 2305
    .line 2306
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 2307
    .line 2308
    .line 2309
    move-result v6

    .line 2310
    const/4 v7, 0x6

    .line 2311
    if-ne v6, v7, :cond_5c

    .line 2312
    .line 2313
    if-eqz v3, :cond_5c

    .line 2314
    .line 2315
    const/4 v3, 0x3

    .line 2316
    if-ne v9, v3, :cond_5c

    .line 2317
    .line 2318
    const/4 v1, 0x1

    .line 2319
    invoke-virtual {v11, v14, v1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startCustomFadeAnimation(Landroid/view/SurfaceControl;ZZ)V

    .line 2320
    .line 2321
    .line 2322
    goto :goto_31

    .line 2323
    :cond_5c
    if-nez v2, :cond_5e

    .line 2324
    .line 2325
    const/4 v2, 0x2

    .line 2326
    if-eq v9, v2, :cond_5d

    .line 2327
    .line 2328
    if-ne v9, v4, :cond_5e

    .line 2329
    .line 2330
    :cond_5d
    invoke-virtual {v11, v14}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;)V

    .line 2331
    .line 2332
    .line 2333
    goto :goto_31

    .line 2334
    :cond_5e
    const/4 v2, 0x6

    .line 2335
    if-ne v9, v2, :cond_5f

    .line 2336
    .line 2337
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2338
    .line 2339
    .line 2340
    move-result-object v2

    .line 2341
    if-eqz v2, :cond_5f

    .line 2342
    .line 2343
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2344
    .line 2345
    .line 2346
    move-result-object v2

    .line 2347
    move-object/from16 v3, p2

    .line 2348
    .line 2349
    invoke-virtual {v3, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 2350
    .line 2351
    .line 2352
    move-result-object v1

    .line 2353
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 2354
    .line 2355
    .line 2356
    move-result-object v1

    .line 2357
    invoke-virtual {v10, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2358
    .line 2359
    .line 2360
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v1

    .line 2364
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2365
    .line 2366
    .line 2367
    move-result-object v2

    .line 2368
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 2369
    .line 2370
    .line 2371
    move-result v2

    .line 2372
    add-int/lit8 v2, v2, 0x1

    .line 2373
    .line 2374
    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2375
    .line 2376
    .line 2377
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2378
    .line 2379
    .line 2380
    move-result-object v1

    .line 2381
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 2382
    .line 2383
    .line 2384
    move-result-object v2

    .line 2385
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2386
    .line 2387
    int-to-float v2, v2

    .line 2388
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v4

    .line 2392
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 2393
    .line 2394
    int-to-float v4, v4

    .line 2395
    invoke-virtual {v10, v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2396
    .line 2397
    .line 2398
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v1

    .line 2402
    invoke-virtual {v10, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2403
    .line 2404
    .line 2405
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2406
    .line 2407
    .line 2408
    move-result-object v1

    .line 2409
    invoke-virtual {v11, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;)V

    .line 2410
    .line 2411
    .line 2412
    goto/16 :goto_33

    .line 2413
    .line 2414
    :cond_5f
    :goto_31
    move-object/from16 v3, p2

    .line 2415
    .line 2416
    goto/16 :goto_33

    .line 2417
    .line 2418
    :cond_60
    move-object/from16 v3, p2

    .line 2419
    .line 2420
    move-object v0, v7

    .line 2421
    move-object/from16 v5, v17

    .line 2422
    .line 2423
    goto/16 :goto_33

    .line 2424
    .line 2425
    :cond_61
    :goto_32
    move-object/from16 v3, p2

    .line 2426
    .line 2427
    move-object v0, v7

    .line 2428
    move-object/from16 v15, v16

    .line 2429
    .line 2430
    move-object/from16 v5, v17

    .line 2431
    .line 2432
    const/16 v1, 0x400

    .line 2433
    .line 2434
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 2435
    .line 2436
    if-eqz v2, :cond_64

    .line 2437
    .line 2438
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 2439
    .line 2440
    .line 2441
    move-result-object v2

    .line 2442
    invoke-virtual {v12, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 2443
    .line 2444
    .line 2445
    move-result v2

    .line 2446
    if-eqz v2, :cond_62

    .line 2447
    .line 2448
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v2

    .line 2452
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2453
    .line 2454
    invoke-virtual {v10, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 2455
    .line 2456
    .line 2457
    :cond_62
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 2458
    .line 2459
    .line 2460
    move-result-object v2

    .line 2461
    invoke-virtual {v0, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 2462
    .line 2463
    .line 2464
    move-result v2

    .line 2465
    if-nez v2, :cond_63

    .line 2466
    .line 2467
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v2

    .line 2471
    invoke-virtual {v5, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 2472
    .line 2473
    .line 2474
    move-result v2

    .line 2475
    if-eqz v2, :cond_64

    .line 2476
    .line 2477
    :cond_63
    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2478
    .line 2479
    .line 2480
    move-result-object v2

    .line 2481
    const/4 v4, 0x0

    .line 2482
    invoke-virtual {v10, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 2483
    .line 2484
    .line 2485
    :cond_64
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    .line 2486
    .line 2487
    if-eqz v2, :cond_65

    .line 2488
    .line 2489
    const/16 v2, 0x200

    .line 2490
    .line 2491
    move-object/from16 v4, p4

    .line 2492
    .line 2493
    invoke-virtual {v4, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 2494
    .line 2495
    .line 2496
    move-result v2

    .line 2497
    if-eqz v2, :cond_65

    .line 2498
    .line 2499
    invoke-virtual {v4, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 2500
    .line 2501
    .line 2502
    move-result v1

    .line 2503
    if-nez v1, :cond_65

    .line 2504
    .line 2505
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 2506
    .line 2507
    .line 2508
    move-result v1

    .line 2509
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 2510
    .line 2511
    .line 2512
    move-result v1

    .line 2513
    if-eqz v1, :cond_65

    .line 2514
    .line 2515
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 2516
    .line 2517
    .line 2518
    move-result-object v1

    .line 2519
    invoke-virtual {v3, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v1

    .line 2523
    if-eqz v1, :cond_65

    .line 2524
    .line 2525
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v1

    .line 2529
    if-eqz v1, :cond_65

    .line 2530
    .line 2531
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v1

    .line 2535
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2536
    .line 2537
    invoke-virtual {v10, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 2538
    .line 2539
    .line 2540
    :cond_65
    :goto_33
    move-object v1, v3

    .line 2541
    :goto_34
    add-int/lit8 v2, v18, -0x1

    .line 2542
    .line 2543
    move/from16 v14, p0

    .line 2544
    .line 2545
    move-object v7, v0

    .line 2546
    move-object v0, v1

    .line 2547
    move-object v9, v3

    .line 2548
    move-object v6, v5

    .line 2549
    move-object v8, v15

    .line 2550
    move-object/from16 v15, p1

    .line 2551
    .line 2552
    move v5, v2

    .line 2553
    goto/16 :goto_21

    .line 2554
    .line 2555
    :cond_66
    move-object v8, v4

    .line 2556
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2557
    .line 2558
    .line 2559
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 2560
    .line 2561
    if-eqz v0, :cond_67

    .line 2562
    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2564
    .line 2565
    const-string/jumbo v2, "startAllAnimators: num_anim="

    .line 2566
    .line 2567
    .line 2568
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2569
    .line 2570
    .line 2571
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 2572
    .line 2573
    .line 2574
    move-result v2

    .line 2575
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2576
    .line 2577
    .line 2578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2579
    .line 2580
    .line 2581
    move-result-object v0

    .line 2582
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    .line 2584
    .line 2585
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v0

    .line 2589
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2590
    .line 2591
    .line 2592
    move-result v2

    .line 2593
    if-eqz v2, :cond_67

    .line 2594
    .line 2595
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2596
    .line 2597
    .line 2598
    move-result-object v2

    .line 2599
    check-cast v2, Landroid/animation/Animator;

    .line 2600
    .line 2601
    iget-object v3, v1, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2602
    .line 2603
    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;

    .line 2604
    .line 2605
    const/4 v5, 0x2

    .line 2606
    invoke-direct {v4, v2, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Landroid/animation/Animator;I)V

    .line 2607
    .line 2608
    .line 2609
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 2610
    .line 2611
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2612
    .line 2613
    .line 2614
    goto :goto_35

    .line 2615
    :cond_67
    const/4 v0, 0x0

    .line 2616
    invoke-virtual {v11, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 2617
    .line 2618
    .line 2619
    :goto_36
    const/4 v0, 0x1

    .line 2620
    return v0
.end method

.method public final startSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFIILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    move-object/from16 v10, p4

    .line 10
    .line 11
    move-object/from16 v11, p5

    .line 12
    .line 13
    move-object/from16 v12, p6

    .line 14
    .line 15
    move-object/from16 v13, p7

    .line 16
    .line 17
    move-object/from16 v14, p8

    .line 18
    .line 19
    move/from16 v15, p9

    .line 20
    .line 21
    move/from16 v8, p10

    .line 22
    .line 23
    move/from16 v7, p13

    .line 24
    .line 25
    move/from16 v6, p14

    .line 26
    .line 27
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 28
    .line 29
    const/4 v5, -0x1

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iput v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 33
    .line 34
    :cond_0
    const/16 v16, 0x0

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    move-object v8, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-eqz v9, :cond_2

    .line 41
    .line 42
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    const/high16 v17, 0xa000000

    .line 46
    .line 47
    const/16 v18, 0x0

    .line 48
    .line 49
    move-object/from16 v5, p3

    .line 50
    .line 51
    move/from16 v6, v17

    .line 52
    .line 53
    move-object/from16 v7, v18

    .line 54
    .line 55
    move-object/from16 v8, p6

    .line 56
    .line 57
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move-object v8, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object/from16 v8, v16

    .line 64
    .line 65
    :goto_0
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    const/high16 v6, 0xa000000

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    move-object/from16 v5, p4

    .line 72
    .line 73
    move-object v14, v8

    .line 74
    move-object/from16 v8, p7

    .line 75
    .line 76
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    if-eqz v11, :cond_3

    .line 81
    .line 82
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    const/high16 v6, 0xa000000

    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    move-object/from16 v5, p5

    .line 89
    .line 90
    move-object v11, v8

    .line 91
    move-object/from16 v8, p8

    .line 92
    .line 93
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move-object v11, v8

    .line 99
    move-object/from16 v3, v16

    .line 100
    .line 101
    :goto_1
    const-string v8, "StageCoordinator"

    .line 102
    .line 103
    if-eqz v11, :cond_22

    .line 104
    .line 105
    const/4 v4, -0x1

    .line 106
    if-ne v1, v4, :cond_4

    .line 107
    .line 108
    if-nez v14, :cond_4

    .line 109
    .line 110
    goto/16 :goto_13

    .line 111
    .line 112
    :cond_4
    const/4 v5, 0x2

    .line 113
    if-eq v1, v4, :cond_5

    .line 114
    .line 115
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v6, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskByTaskIdInDexDisplay(I)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_5

    .line 124
    .line 125
    move/from16 v7, p14

    .line 126
    .line 127
    invoke-static {v1, v10, v15, v7}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->makeStartTaskAndIntentOpts(ILandroid/content/Intent;II)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendMessageProxyService(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 132
    .line 133
    .line 134
    const-string/jumbo v0, "pending split screen by recent drag and drop"

    .line 135
    .line 136
    .line 137
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_5
    move/from16 v7, p14

    .line 142
    .line 143
    if-eqz v2, :cond_6

    .line 144
    .line 145
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v6, v14}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskInDexDisplay(Landroid/app/PendingIntent;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_6

    .line 154
    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    move-object/from16 v4, p4

    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    move-object/from16 v6, p7

    .line 167
    .line 168
    move v1, v7

    .line 169
    move/from16 v7, p9

    .line 170
    .line 171
    move-object v10, v8

    .line 172
    move/from16 v8, p11

    .line 173
    .line 174
    move/from16 v9, p14

    .line 175
    .line 176
    invoke-static/range {v3 .. v9}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->makeStartIntentsOpts(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iput-object v2, v1, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 181
    .line 182
    invoke-static {v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendMessageProxyService(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 183
    .line 184
    .line 185
    const-string/jumbo v0, "pending split screen by appsEdge drag and drop"

    .line 186
    .line 187
    .line 188
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_6
    move v2, v7

    .line 193
    move-object v7, v8

    .line 194
    const/4 v6, 0x1

    .line 195
    if-eqz p15, :cond_7

    .line 196
    .line 197
    move-object/from16 v8, p15

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_7
    new-instance v8, Landroid/window/WindowContainerTransaction;

    .line 201
    .line 202
    invoke-direct {v8}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 203
    .line 204
    .line 205
    :goto_2
    iget v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 206
    .line 207
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 208
    .line 209
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 210
    .line 211
    move-object/from16 v19, v11

    .line 212
    .line 213
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 214
    .line 215
    move-object/from16 v20, v14

    .line 216
    .line 217
    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 218
    .line 219
    move-object/from16 v22, v3

    .line 220
    .line 221
    move-object/from16 v21, v7

    .line 222
    .line 223
    const/4 v3, 0x1

    .line 224
    move/from16 v7, p13

    .line 225
    .line 226
    if-ne v7, v3, :cond_e

    .line 227
    .line 228
    iget-boolean v3, v14, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 229
    .line 230
    if-eqz v3, :cond_e

    .line 231
    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_8

    .line 237
    .line 238
    if-eqz p16, :cond_8

    .line 239
    .line 240
    move-object/from16 v3, v16

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_8
    move-object/from16 v3, p16

    .line 244
    .line 245
    :goto_3
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 248
    .line 249
    .line 250
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 251
    .line 252
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v14}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-static {v7, v9, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSameIntentRequested(Landroid/app/TaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    if-nez v7, :cond_9

    .line 264
    .line 265
    const/4 v7, 0x0

    .line 266
    invoke-virtual {v14, v1, v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    .line 267
    .line 268
    .line 269
    :cond_9
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-static {v7, v10, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSameIntentRequested(Landroid/app/TaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-nez v7, :cond_a

    .line 278
    .line 279
    const/4 v7, 0x0

    .line 280
    invoke-virtual {v6, v1, v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_a
    const/4 v7, 0x0

    .line 285
    :goto_4
    sget-boolean v23, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    .line 286
    .line 287
    if-eqz v23, :cond_b

    .line 288
    .line 289
    iget-boolean v7, v11, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 290
    .line 291
    if-eqz v7, :cond_b

    .line 292
    .line 293
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    move-object/from16 v13, p5

    .line 298
    .line 299
    move-object/from16 v12, p8

    .line 300
    .line 301
    move-object/from16 v24, v19

    .line 302
    .line 303
    move-object/from16 v10, v20

    .line 304
    .line 305
    invoke-static {v7, v13, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSameIntentRequested(Landroid/app/TaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-nez v7, :cond_c

    .line 310
    .line 311
    const/4 v7, 0x0

    .line 312
    invoke-virtual {v11, v1, v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    .line 313
    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_b
    move-object/from16 v13, p5

    .line 317
    .line 318
    move-object/from16 v12, p8

    .line 319
    .line 320
    move-object/from16 v24, v19

    .line 321
    .line 322
    move-object/from16 v10, v20

    .line 323
    .line 324
    :cond_c
    :goto_5
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    if-nez v7, :cond_f

    .line 329
    .line 330
    if-nez v3, :cond_d

    .line 331
    .line 332
    const-string v7, "evict_all_children"

    .line 333
    .line 334
    invoke-virtual {v1, v4, v7}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_d
    invoke-virtual {v5, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_e
    move-object/from16 v13, p5

    .line 342
    .line 343
    move-object/from16 v12, p8

    .line 344
    .line 345
    move-object/from16 v24, v19

    .line 346
    .line 347
    move-object/from16 v10, v20

    .line 348
    .line 349
    move-object/from16 v3, p16

    .line 350
    .line 351
    :cond_f
    :goto_6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    .line 352
    .line 353
    if-eqz v1, :cond_10

    .line 354
    .line 355
    if-eqz v13, :cond_10

    .line 356
    .line 357
    const/4 v1, 0x1

    .line 358
    iput-boolean v1, v11, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 359
    .line 360
    new-instance v7, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    .line 361
    .line 362
    invoke-direct {v7}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    .line 363
    .line 364
    .line 365
    iput v15, v7, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 366
    .line 367
    iput v2, v7, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 368
    .line 369
    move/from16 v2, p10

    .line 370
    .line 371
    iput v2, v7, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 372
    .line 373
    const/4 v15, 0x0

    .line 374
    invoke-virtual {v0, v7, v15, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    .line 375
    .line 376
    .line 377
    move v7, v2

    .line 378
    move v1, v15

    .line 379
    goto :goto_9

    .line 380
    :cond_10
    move/from16 v7, p10

    .line 381
    .line 382
    const/4 v1, 0x1

    .line 383
    if-eqz v15, :cond_13

    .line 384
    .line 385
    if-ne v15, v1, :cond_11

    .line 386
    .line 387
    goto :goto_7

    .line 388
    :cond_11
    iget v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 389
    .line 390
    const/4 v15, -0x1

    .line 391
    if-ne v1, v15, :cond_12

    .line 392
    .line 393
    const/4 v1, 0x0

    .line 394
    const/4 v15, 0x1

    .line 395
    goto :goto_8

    .line 396
    :cond_12
    move v15, v1

    .line 397
    :cond_13
    :goto_7
    const/4 v1, 0x0

    .line 398
    :goto_8
    invoke-virtual {v0, v15, v2, v8, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    .line 399
    .line 400
    .line 401
    :goto_9
    move/from16 v2, p13

    .line 402
    .line 403
    invoke-virtual {v8, v2}, Landroid/window/WindowContainerTransaction;->setTransactionType(I)V

    .line 404
    .line 405
    .line 406
    iput v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    .line 407
    .line 408
    invoke-virtual {v0, v8, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 409
    .line 410
    .line 411
    iget-boolean v15, v14, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 412
    .line 413
    if-nez v15, :cond_14

    .line 414
    .line 415
    invoke-virtual {v14, v8, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    .line 416
    .line 417
    .line 418
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 419
    .line 420
    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    .line 421
    .line 422
    .line 423
    :cond_14
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 424
    .line 425
    move/from16 v12, p11

    .line 426
    .line 427
    move-object/from16 v19, v5

    .line 428
    .line 429
    const/4 v5, 0x1

    .line 430
    invoke-virtual {v1, v12, v5, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    .line 431
    .line 432
    .line 433
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    .line 434
    .line 435
    if-eqz v1, :cond_15

    .line 436
    .line 437
    if-eqz v13, :cond_15

    .line 438
    .line 439
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 440
    .line 441
    move/from16 v12, p12

    .line 442
    .line 443
    move/from16 v20, v4

    .line 444
    .line 445
    const/4 v4, 0x0

    .line 446
    invoke-virtual {v1, v12, v7, v5, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    .line 447
    .line 448
    .line 449
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 450
    .line 451
    invoke-virtual {v0, v1, v8, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 452
    .line 453
    .line 454
    goto :goto_a

    .line 455
    :cond_15
    move/from16 v20, v4

    .line 456
    .line 457
    const/4 v4, 0x0

    .line 458
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 459
    .line 460
    invoke-virtual {v0, v1, v8, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 461
    .line 462
    .line 463
    :goto_a
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 464
    .line 465
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 466
    .line 467
    const/4 v4, 0x1

    .line 468
    invoke-virtual {v8, v1, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 472
    .line 473
    .line 474
    new-instance v1, Landroid/os/Bundle;

    .line 475
    .line 476
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 477
    .line 478
    .line 479
    new-instance v4, Landroid/os/Bundle;

    .line 480
    .line 481
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-static {v1, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 485
    .line 486
    .line 487
    invoke-static {v4, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 488
    .line 489
    .line 490
    move/from16 v5, p1

    .line 491
    .line 492
    const/4 v7, -0x1

    .line 493
    if-ne v5, v7, :cond_16

    .line 494
    .line 495
    invoke-virtual {v8, v10, v9, v1}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 496
    .line 497
    .line 498
    goto :goto_b

    .line 499
    :cond_16
    const/4 v7, 0x2

    .line 500
    if-ne v2, v7, :cond_17

    .line 501
    .line 502
    if-eqz v15, :cond_17

    .line 503
    .line 504
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasChild()Z

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    if-eqz v6, :cond_17

    .line 509
    .line 510
    const-string v6, "android.activity.splitTaskDeferResume"

    .line 511
    .line 512
    const/4 v7, 0x1

    .line 513
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    .line 515
    .line 516
    :cond_17
    invoke-virtual {v8, v5, v1}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 517
    .line 518
    .line 519
    :goto_b
    move-object/from16 v1, p4

    .line 520
    .line 521
    move-object/from16 v5, v24

    .line 522
    .line 523
    invoke-virtual {v8, v5, v1, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 524
    .line 525
    .line 526
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 527
    .line 528
    if-eqz v4, :cond_19

    .line 529
    .line 530
    if-eqz v22, :cond_18

    .line 531
    .line 532
    new-instance v4, Landroid/os/Bundle;

    .line 533
    .line 534
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 535
    .line 536
    .line 537
    invoke-static {v4, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 538
    .line 539
    .line 540
    move-object/from16 v5, v22

    .line 541
    .line 542
    invoke-virtual {v8, v5, v13, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 543
    .line 544
    .line 545
    goto :goto_c

    .line 546
    :cond_18
    move-object/from16 v5, v22

    .line 547
    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 549
    .line 550
    .line 551
    move-result v4

    .line 552
    if-eqz v4, :cond_1a

    .line 553
    .line 554
    const/4 v4, 0x0

    .line 555
    invoke-virtual {v0, v8, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 556
    .line 557
    .line 558
    goto :goto_c

    .line 559
    :cond_19
    move-object/from16 v5, v22

    .line 560
    .line 561
    :cond_1a
    :goto_c
    sget-boolean v4, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 562
    .line 563
    if-eqz v4, :cond_21

    .line 564
    .line 565
    const/4 v4, 0x1

    .line 566
    if-ne v2, v4, :cond_1e

    .line 567
    .line 568
    iput-boolean v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mAppPairStarted:Z

    .line 569
    .line 570
    if-eqz v3, :cond_1d

    .line 571
    .line 572
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    if-eqz v4, :cond_1d

    .line 589
    .line 590
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 595
    .line 596
    move-object/from16 v6, p6

    .line 597
    .line 598
    move-object/from16 v7, p8

    .line 599
    .line 600
    invoke-static {v4, v9, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVisibleTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 601
    .line 602
    .line 603
    move-result v10

    .line 604
    if-nez v10, :cond_1c

    .line 605
    .line 606
    move-object/from16 v11, p7

    .line 607
    .line 608
    move-object v10, v13

    .line 609
    invoke-static {v4, v1, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVisibleTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 610
    .line 611
    .line 612
    move-result v12

    .line 613
    if-nez v12, :cond_1c

    .line 614
    .line 615
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    .line 616
    .line 617
    if-eqz v12, :cond_1b

    .line 618
    .line 619
    invoke-static {v4, v10, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isVisibleTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 620
    .line 621
    .line 622
    move-result v12

    .line 623
    if-eqz v12, :cond_1b

    .line 624
    .line 625
    goto :goto_e

    .line 626
    :cond_1b
    move-object v13, v10

    .line 627
    goto :goto_d

    .line 628
    :cond_1c
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    const-string/jumbo v2, "startSplitScreen: If there is already a visible task, delete the remote transition because the animation does not look normal. task="

    .line 631
    .line 632
    .line 633
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    move-object/from16 v2, v21

    .line 644
    .line 645
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    goto :goto_f

    .line 649
    :cond_1d
    move-object/from16 v16, v3

    .line 650
    .line 651
    :goto_f
    if-nez v16, :cond_1f

    .line 652
    .line 653
    const-string v1, "app_pair"

    .line 654
    .line 655
    move/from16 v2, v20

    .line 656
    .line 657
    invoke-virtual {v8, v2, v1}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    .line 658
    .line 659
    .line 660
    goto :goto_10

    .line 661
    :cond_1e
    move-object/from16 v16, v3

    .line 662
    .line 663
    :cond_1f
    :goto_10
    if-eqz v5, :cond_20

    .line 664
    .line 665
    const/16 v1, 0x44d

    .line 666
    .line 667
    goto :goto_11

    .line 668
    :cond_20
    const/16 v1, 0x3ec

    .line 669
    .line 670
    :goto_11
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 671
    .line 672
    const/4 v3, 0x0

    .line 673
    move-object/from16 p1, v2

    .line 674
    .line 675
    move-object/from16 p2, v8

    .line 676
    .line 677
    move-object/from16 p3, v16

    .line 678
    .line 679
    move-object/from16 p4, p0

    .line 680
    .line 681
    move/from16 p5, v1

    .line 682
    .line 683
    move/from16 p6, v3

    .line 684
    .line 685
    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 686
    .line 687
    .line 688
    goto :goto_12

    .line 689
    :cond_21
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 690
    .line 691
    invoke-virtual {v1, v8}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 692
    .line 693
    .line 694
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    .line 695
    .line 696
    const/4 v2, 0x1

    .line 697
    invoke-direct {v1, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 698
    .line 699
    .line 700
    move-object/from16 v0, v19

    .line 701
    .line 702
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 703
    .line 704
    .line 705
    :goto_12
    return-void

    .line 706
    :cond_22
    :goto_13
    move v5, v1

    .line 707
    move-object v2, v8

    .line 708
    move-object v1, v10

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    const-string/jumbo v3, "startSplitScreen param is wrong. taskId:"

    .line 712
    .line 713
    .line 714
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    const-string v3, ",mainIntent:"

    .line 721
    .line 722
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    const-string v3, ",sideIntent:"

    .line 729
    .line 730
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .line 742
    .line 743
    return-void
.end method

.method public final startSplitTasks(IIIZIFF)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p3

    .line 3
    .line 4
    move/from16 v2, p4

    .line 5
    .line 6
    move/from16 v3, p5

    .line 7
    .line 8
    move/from16 v4, p6

    .line 9
    .line 10
    invoke-virtual/range {p0 .. p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->checkNonResizableTaskAndStartTask(III)Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 18
    .line 19
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, -0x1

    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    if-ne v1, v8, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v5, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v6, 0x3

    .line 40
    invoke-virtual {v5, v6}, Landroid/window/WindowContainerTransaction;->setTransactionType(I)V

    .line 41
    .line 42
    .line 43
    iput v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    .line 44
    .line 45
    iget v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 46
    .line 47
    const-string/jumbo v9, "split_tasks"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v6, v9}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v6, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v9, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v10, Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 69
    .line 70
    iget-boolean v12, v11, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 71
    .line 72
    const/4 v13, 0x1

    .line 73
    if-nez v12, :cond_2

    .line 74
    .line 75
    invoke-virtual {v11, v5, v7}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v12, "android.activity.splitTaskDeferResume"

    .line 80
    .line 81
    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 88
    .line 89
    if-eqz v14, :cond_3

    .line 90
    .line 91
    if-eq v1, v8, :cond_3

    .line 92
    .line 93
    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    invoke-static {v6, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 100
    .line 101
    invoke-static {v9, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 102
    .line 103
    .line 104
    move/from16 v11, p1

    .line 105
    .line 106
    invoke-virtual {v5, v11, v6}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 107
    .line 108
    .line 109
    move/from16 v6, p2

    .line 110
    .line 111
    invoke-virtual {v5, v6, v9}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 112
    .line 113
    .line 114
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 115
    .line 116
    if-eqz v6, :cond_4

    .line 117
    .line 118
    if-eq v1, v8, :cond_4

    .line 119
    .line 120
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 121
    .line 122
    iput-boolean v13, v6, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 123
    .line 124
    invoke-static {v10, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v1, v10}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 128
    .line 129
    .line 130
    :cond_4
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 131
    .line 132
    if-eqz v6, :cond_5

    .line 133
    .line 134
    if-eq v1, v8, :cond_5

    .line 135
    .line 136
    new-instance v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;

    .line 137
    .line 138
    invoke-direct {v6}, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;-><init>()V

    .line 139
    .line 140
    .line 141
    iput v13, v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 142
    .line 143
    iput v2, v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 144
    .line 145
    iput v3, v6, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 146
    .line 147
    invoke-virtual {p0, v6, v7, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    invoke-virtual {p0, v13, v2, v5, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    .line 152
    .line 153
    .line 154
    :goto_1
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 155
    .line 156
    if-eqz v6, :cond_6

    .line 157
    .line 158
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 159
    .line 160
    invoke-virtual {v6, v4, v13, v7}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 165
    .line 166
    invoke-virtual {v6, v4, v7, v7}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    .line 167
    .line 168
    .line 169
    :goto_2
    if-eq v1, v8, :cond_a

    .line 170
    .line 171
    if-eqz v2, :cond_7

    .line 172
    .line 173
    and-int/lit8 v4, v3, 0x20

    .line 174
    .line 175
    if-nez v4, :cond_8

    .line 176
    .line 177
    :cond_7
    if-nez v2, :cond_9

    .line 178
    .line 179
    and-int/lit8 v2, v3, 0x40

    .line 180
    .line 181
    if-eqz v2, :cond_9

    .line 182
    .line 183
    :cond_8
    move v2, v13

    .line 184
    goto :goto_3

    .line 185
    :cond_9
    move v2, v7

    .line 186
    :goto_3
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 187
    .line 188
    move/from16 v6, p7

    .line 189
    .line 190
    invoke-virtual {v4, v6, v3, v7, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    .line 191
    .line 192
    .line 193
    :cond_a
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 194
    .line 195
    invoke-virtual {p0, v2, v5, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 196
    .line 197
    .line 198
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 199
    .line 200
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 201
    .line 202
    invoke-virtual {v5, v2, v13}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v5, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 209
    .line 210
    .line 211
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 212
    .line 213
    if-eqz v2, :cond_b

    .line 214
    .line 215
    if-eq v1, v8, :cond_b

    .line 216
    .line 217
    const/16 v1, 0x44d

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_b
    const/16 v1, 0x3ec

    .line 221
    .line 222
    :goto_4
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 223
    .line 224
    const/4 v3, 0x0

    .line 225
    const/4 v4, 0x0

    .line 226
    move-object/from16 p1, v2

    .line 227
    .line 228
    move-object/from16 p2, v5

    .line 229
    .line 230
    move-object/from16 p3, v3

    .line 231
    .line 232
    move-object/from16 p4, p0

    .line 233
    .line 234
    move/from16 p5, v1

    .line 235
    .line 236
    move/from16 p6, v4

    .line 237
    .line 238
    invoke-virtual/range {p1 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 239
    .line 240
    .line 241
    return-void
.end method

.method public final startTaskAndIntent(ILandroid/content/Intent;IILandroid/window/WindowContainerTransaction;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v14, p4

    .line 10
    .line 11
    move-object/from16 v15, p5

    .line 12
    .line 13
    const/high16 v11, 0x3f000000    # 0.5f

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v12, 0x0

    .line 24
    const/4 v13, 0x2

    .line 25
    const/16 v16, 0x0

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFIILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final startTaskWithAllApps(ILcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;I)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 3
    .line 4
    .line 5
    move-result-object v2

    .line 6
    const/4 v3, -0x2

    .line 7
    const v4, 0x7fffffff

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v4, v0, v3}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 29
    .line 30
    iget v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    if-ne v4, p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    :cond_1
    const/4 v3, 0x0

    .line 36
    :goto_0
    const-string v2, "StageCoordinator"

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    const-string/jumbo v0, "task not found"

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v5, "startTaskWithAllApps from uid:"

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v5, p2, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;->mUid:I

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object v2, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const/4 v6, 0x1

    .line 80
    const/4 v7, 0x0

    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 84
    .line 85
    iget v5, v5, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    .line 86
    .line 87
    if-ne v5, v0, :cond_4

    .line 88
    .line 89
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    :cond_3
    move v0, v6

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move v0, v7

    .line 102
    :goto_1
    xor-int/lit8 v5, v0, 0x1

    .line 103
    .line 104
    iget v0, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 105
    .line 106
    invoke-static {v2, v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isVisibleTaskByTaskIdInDexDisplay(I)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-static {p1, v2, v5, p3}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->makeStartTaskAndIntentOpts(ILandroid/content/Intent;II)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/4 v1, 0x2

    .line 125
    invoke-static {v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendMessageProxyService(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    new-instance v6, Landroid/window/WindowContainerTransaction;

    .line 130
    .line 131
    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 135
    .line 136
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 137
    .line 138
    invoke-virtual {v6, v0, v7}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 139
    .line 140
    .line 141
    move-object v0, p0

    .line 142
    move v1, p1

    .line 143
    move v3, v5

    .line 144
    move v4, p3

    .line 145
    move-object v5, v6

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTaskAndIntent(ILandroid/content/Intent;IILandroid/window/WindowContainerTransaction;)V

    .line 147
    .line 148
    .line 149
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_START_EDGE_ALL_APPS_SA_LOGGING:Z

    .line 150
    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget v1, p2, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;->mUid:I

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "com.sec.android.app.launcher"

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    const-string v0, "1000"

    .line 174
    .line 175
    const-string v1, "From recent_option"

    .line 176
    .line 177
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_6
    return-void
.end method

.method public final startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/os/Bundle;IFIFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ILcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v15, p5

    .line 8
    .line 9
    move-object/from16 v14, p11

    .line 10
    .line 11
    move/from16 v9, p13

    .line 12
    .line 13
    const/4 v13, -0x1

    .line 14
    if-ne v2, v13, :cond_0

    .line 15
    .line 16
    move-object/from16 v3, p14

    .line 17
    .line 18
    invoke-virtual {v0, v1, v3, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTaskWithAllApps(ILcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {v0, v1, v2, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->checkNonResizableTaskAndStartTask(III)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 38
    .line 39
    if-ne v2, v13, :cond_6

    .line 40
    .line 41
    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0, v13, v3, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 71
    .line 72
    .line 73
    :cond_4
    if-eqz p2, :cond_5

    .line 74
    .line 75
    move-object/from16 v2, p2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    new-instance v2, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    :goto_0
    const/4 v4, 0x0

    .line 84
    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v1, v2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 88
    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 91
    .line 92
    invoke-virtual {v0, v3, v14}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_6
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    if-eqz v7, :cond_7

    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_7

    .line 106
    .line 107
    if-ne v15, v13, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0, v3, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 110
    .line 111
    .line 112
    :cond_7
    iget-boolean v6, v6, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 113
    .line 114
    if-eqz v6, :cond_8

    .line 115
    .line 116
    iget v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 117
    .line 118
    if-eq v6, v13, :cond_8

    .line 119
    .line 120
    move/from16 v7, p7

    .line 121
    .line 122
    if-eq v6, v7, :cond_9

    .line 123
    .line 124
    move/from16 v19, v2

    .line 125
    .line 126
    move v2, v1

    .line 127
    move/from16 v1, v19

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_8
    move/from16 v7, p7

    .line 131
    .line 132
    :cond_9
    move v6, v7

    .line 133
    :goto_1
    invoke-virtual {v0, v6, v9, v3, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    .line 134
    .line 135
    .line 136
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 137
    .line 138
    if-eqz v5, :cond_a

    .line 139
    .line 140
    if-eq v15, v13, :cond_a

    .line 141
    .line 142
    move/from16 v10, p9

    .line 143
    .line 144
    invoke-virtual {v0, v10, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellStageWindowConfigPosition(IZ)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_a
    move/from16 v10, p9

    .line 149
    .line 150
    :goto_2
    if-eqz p2, :cond_b

    .line 151
    .line 152
    move-object/from16 v12, p2

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_b
    new-instance v5, Landroid/os/Bundle;

    .line 156
    .line 157
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 158
    .line 159
    .line 160
    move-object v12, v5

    .line 161
    :goto_3
    invoke-static {v12, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v1, v12}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 165
    .line 166
    .line 167
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 168
    .line 169
    const/16 v17, 0x0

    .line 170
    .line 171
    move-object/from16 v0, p0

    .line 172
    .line 173
    move-object v1, v3

    .line 174
    move-object/from16 v3, p4

    .line 175
    .line 176
    move/from16 v4, p8

    .line 177
    .line 178
    move/from16 v5, p5

    .line 179
    .line 180
    move-object/from16 v6, p6

    .line 181
    .line 182
    move/from16 v7, p10

    .line 183
    .line 184
    move/from16 v8, p9

    .line 185
    .line 186
    move/from16 v9, p13

    .line 187
    .line 188
    move-object/from16 v10, p11

    .line 189
    .line 190
    move-object/from16 v11, p12

    .line 191
    .line 192
    move-object/from16 v18, v12

    .line 193
    .line 194
    move/from16 v12, v16

    .line 195
    .line 196
    move/from16 v13, v17

    .line 197
    .line 198
    move-object/from16 v14, v18

    .line 199
    .line 200
    invoke-virtual/range {v0 .. v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FILandroid/os/Bundle;FIILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ZZLandroid/os/Bundle;)V

    .line 201
    .line 202
    .line 203
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_RECENT_TASKS_SA_LOGGING:Z

    .line 204
    .line 205
    if-eqz v0, :cond_c

    .line 206
    .line 207
    if-eqz p11, :cond_c

    .line 208
    .line 209
    const-string v0, "1000"

    .line 210
    .line 211
    const-string v1, "From recent_task"

    .line 212
    .line 213
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 217
    .line 218
    if-eqz v0, :cond_c

    .line 219
    .line 220
    const/4 v0, -0x1

    .line 221
    if-eq v15, v0, :cond_c

    .line 222
    .line 223
    const-string v0, "1021"

    .line 224
    .line 225
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_c
    return-void
.end method

.method public final startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    const/16 v8, 0xa

    .line 3
    invoke-virtual {p0, v9, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    .line 4
    :cond_0
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v8}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    .line 5
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v10, 0x1

    move/from16 v11, p8

    .line 6
    invoke-virtual {v8, v11, v10, v10}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    .line 7
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v8}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v11

    .line 8
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v11, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 9
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 10
    invoke-virtual {v8, v11}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 11
    iput-boolean v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 12
    iput-boolean v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 13
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-nez v8, :cond_2

    .line 14
    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual/range {p3 .. p3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    :cond_1
    invoke-direct {v8, p0, v2, v9, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILandroid/content/Intent;I)V

    iput-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 16
    :cond_2
    invoke-virtual {p0, p1, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V

    .line 17
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v8, v5, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v8, :cond_3

    .line 18
    invoke-virtual {v5, p1, v13}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_3
    if-nez p6, :cond_4

    .line 19
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_4
    move-object/from16 v8, p6

    .line 20
    :goto_0
    invoke-static {v8, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 21
    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 22
    invoke-virtual {p0, v9, p1, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 24
    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v9, v10}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 25
    invoke-virtual {p0, p1, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    const/4 v9, -0x1

    .line 26
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    if-eq v2, v9, :cond_6

    .line 27
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 29
    invoke-virtual {v5, v3, v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    .line 30
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v4, v3, v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;Z)V

    .line 31
    :cond_5
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;

    invoke-direct {v4, p0, v3, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;)V

    .line 32
    new-instance v3, Landroid/view/RemoteAnimationAdapter;

    .line 33
    invoke-virtual/range {p9 .. p9}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v11

    invoke-virtual/range {p9 .. p9}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v5

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-wide/from16 p5, v11

    move-wide/from16 p7, v5

    invoke-direct/range {p3 .. p8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 34
    invoke-static {v8}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v4

    .line 35
    invoke-static {v3}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 36
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 37
    invoke-virtual {p1, v2, v3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 38
    invoke-virtual {v10, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    .line 39
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v4, v8}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_7
    move-object/from16 v2, p4

    .line 40
    invoke-virtual {p1, v3, v2, v8}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 41
    :goto_1
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v6, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    .line 42
    invoke-virtual {v10, v2, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/WindowContainerTransaction;)V

    :goto_2
    if-eqz v7, :cond_8

    .line 43
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iput-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    const/4 v1, 0x3

    .line 44
    iput v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    :cond_8
    return-void
.end method

.method public final startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 1
    invoke-virtual/range {v0 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public final startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FILandroid/os/Bundle;FIILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ZZLandroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    move/from16 v3, p8

    .line 8
    .line 9
    move/from16 v4, p9

    .line 10
    .line 11
    move-object/from16 v5, p11

    .line 12
    .line 13
    move-object/from16 v6, p14

    .line 14
    .line 15
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 16
    .line 17
    iget-boolean v8, v7, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    if-nez v8, :cond_0

    .line 21
    .line 22
    invoke-virtual {v7, v1, v9}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 26
    .line 27
    const/4 v10, -0x1

    .line 28
    const/4 v11, 0x1

    .line 29
    if-eqz v8, :cond_1

    .line 30
    .line 31
    if-eq v2, v10, :cond_1

    .line 32
    .line 33
    move v8, v11

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v8, v9

    .line 36
    :goto_0
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 37
    .line 38
    if-eqz v8, :cond_2

    .line 39
    .line 40
    iput-boolean v11, v12, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 41
    .line 42
    :cond_2
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 43
    .line 44
    move/from16 v14, p4

    .line 45
    .line 46
    move/from16 v15, p12

    .line 47
    .line 48
    move/from16 v10, p13

    .line 49
    .line 50
    invoke-virtual {v13, v14, v15, v10}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    .line 51
    .line 52
    .line 53
    if-eqz v8, :cond_6

    .line 54
    .line 55
    if-ne v4, v11, :cond_3

    .line 56
    .line 57
    and-int/lit8 v10, v3, 0x20

    .line 58
    .line 59
    if-nez v10, :cond_4

    .line 60
    .line 61
    :cond_3
    if-nez v4, :cond_5

    .line 62
    .line 63
    and-int/lit8 v4, v3, 0x40

    .line 64
    .line 65
    if-eqz v4, :cond_5

    .line 66
    .line 67
    :cond_4
    move v4, v11

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    move v4, v9

    .line 70
    :goto_1
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 71
    .line 72
    move/from16 v13, p7

    .line 73
    .line 74
    invoke-virtual {v10, v13, v3, v9, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    .line 75
    .line 76
    .line 77
    :cond_6
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 78
    .line 79
    invoke-virtual {v0, v3, v1, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 83
    .line 84
    .line 85
    const/4 v3, 0x5

    .line 86
    invoke-virtual {v1, v3}, Landroid/window/WindowContainerTransaction;->setTransactionType(I)V

    .line 87
    .line 88
    .line 89
    iput v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastTransactionType:I

    .line 90
    .line 91
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 92
    .line 93
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 94
    .line 95
    invoke-virtual {v1, v3, v11}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 96
    .line 97
    .line 98
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 99
    .line 100
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 101
    .line 102
    invoke-virtual {v1, v3, v9}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 106
    .line 107
    .line 108
    if-eqz p3, :cond_7

    .line 109
    .line 110
    move-object/from16 v3, p3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    new-instance v3, Landroid/os/Bundle;

    .line 114
    .line 115
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-static {v3, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 119
    .line 120
    .line 121
    move/from16 v4, p2

    .line 122
    .line 123
    invoke-virtual {v1, v4, v3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 124
    .line 125
    .line 126
    if-eqz v8, :cond_9

    .line 127
    .line 128
    if-eqz p6, :cond_8

    .line 129
    .line 130
    move-object/from16 v9, p6

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_8
    new-instance v9, Landroid/os/Bundle;

    .line 134
    .line 135
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 136
    .line 137
    .line 138
    :goto_3
    invoke-static {v9, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2, v9}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    move-object/from16 v9, p6

    .line 146
    .line 147
    :goto_4
    if-eqz p10, :cond_b

    .line 148
    .line 149
    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasChild()Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-nez v7, :cond_a

    .line 154
    .line 155
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 156
    .line 157
    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->hasChild()Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_b

    .line 162
    .line 163
    :cond_a
    if-eqz v6, :cond_b

    .line 164
    .line 165
    const-string v7, "android.activity.splitTaskDeferResume"

    .line 166
    .line 167
    invoke-virtual {v3, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    .line 172
    .line 173
    if-eqz v8, :cond_b

    .line 174
    .line 175
    invoke-virtual {v9, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    .line 177
    .line 178
    :cond_b
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_c

    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 191
    .line 192
    .line 193
    :cond_c
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 194
    .line 195
    if-eqz v3, :cond_d

    .line 196
    .line 197
    const/4 v3, -0x1

    .line 198
    if-eq v2, v3, :cond_d

    .line 199
    .line 200
    const/16 v2, 0x44d

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_d
    const/16 v2, 0x3ec

    .line 204
    .line 205
    :goto_5
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 206
    .line 207
    const/4 v4, 0x0

    .line 208
    move-object/from16 p2, v3

    .line 209
    .line 210
    move-object/from16 p3, p1

    .line 211
    .line 212
    move-object/from16 p4, p10

    .line 213
    .line 214
    move-object/from16 p5, p0

    .line 215
    .line 216
    move/from16 p6, v2

    .line 217
    .line 218
    move/from16 p7, v4

    .line 219
    .line 220
    invoke-virtual/range {p2 .. p7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 221
    .line 222
    .line 223
    if-eqz v5, :cond_e

    .line 224
    .line 225
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 226
    .line 227
    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 228
    .line 229
    const/4 v1, 0x3

    .line 230
    iput v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    .line 231
    .line 232
    :cond_e
    return-void
.end method

.method public final swapTasksInSplitScreenMode$1()V
    .locals 6

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 20
    .line 21
    invoke-static {v3}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, -0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    const-string/jumbo v4, "swap_split"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v3, v4}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 37
    .line 38
    .line 39
    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v3, v4}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getInvertedCurrentPosition()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateSnapAlgorithm(I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {v2, v1, v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 65
    .line 66
    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 67
    .line 68
    invoke-virtual {p0, v1, v0, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    :goto_0
    const-string p0, "StageCoordinator"

    .line 73
    .line 74
    const-string/jumbo v0, "swapTasksInSplitScreenMode: main or side running task is empty"

    .line 75
    .line 76
    .line 77
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final updateCornerRadiusForStages(Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerRadius(Landroid/content/Context;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    :goto_0
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v2, v1

    .line 31
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    move-object v4, p1

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :goto_2
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 42
    .line 43
    invoke-virtual {v5, v0, v4, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->applyCornerRadiusToLeashIfNeeded(FLandroid/view/SurfaceControl$Transaction;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    or-int/2addr v1, v5

    .line 48
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 49
    .line 50
    invoke-virtual {v5, v0, v4, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->applyCornerRadiusToLeashIfNeeded(FLandroid/view/SurfaceControl$Transaction;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    or-int/2addr v1, v5

    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 56
    .line 57
    invoke-virtual {p0, v0, v4, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->applyCornerRadiusToLeashIfNeeded(FLandroid/view/SurfaceControl$Transaction;Z)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    or-int/2addr p0, v1

    .line 62
    if-nez p1, :cond_5

    .line 63
    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    return-void
.end method

.method public final updateCoverDisplaySplitLayoutIfNeeded()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTmpConfigAfterFoldDismiss:Landroid/content/res/Configuration;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSplitDivisionIfNeeded()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    return v1
.end method

.method public final updateDividerLeashVisible(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "StageCoordinator"

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    xor-int/lit8 v2, p1, 0x1

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerLeashHidden:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v2, "updateDividerLeashVisible: "

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, ", show="

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v0, ", callers="

    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string p1, ""

    .line 88
    .line 89
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    :goto_2
    const-string/jumbo p0, "updateDividerLeashVisible: leash was released or not be created"

    .line 101
    .line 102
    .line 103
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final updateMultiSplitLayout(Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;ZLandroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->sideStagePosition:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p1, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->splitDivision:I

    .line 5
    .line 6
    invoke-virtual {p0, v0, v2, p3, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(IILandroid/window/WindowContainerTransaction;Z)V

    .line 7
    .line 8
    .line 9
    iget p1, p1, Lcom/android/wm/shell/common/split/MultiSplitLayoutInfo;->cellStagePosition:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setCellStageWindowConfigPosition(IZ)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 16
    .line 17
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateCellStageWindowConfigPosition(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 23
    .line 24
    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final updateRecentTasksSplitPair()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateSplitDivisionIfNeeded()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    xor-int/2addr v0, v1

    .line 28
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitDivision:I

    .line 29
    .line 30
    if-ne v1, v0, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    const-string v1, "Update split division for SubDisplay. d="

    .line 34
    .line 35
    const-string v2, "  Call="

    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x5

    .line 42
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "StageCoordinator"

    .line 54
    .line 55
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isInSubDisplay()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitDivision(IZ)Z

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageWinConfigPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageWinConfigPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v3

    .line 18
    :goto_0
    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedSideStageWinConfigPosition:I

    .line 19
    .line 20
    if-ne v1, v5, :cond_1

    .line 21
    .line 22
    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedCellStageWinConfigPosition:I

    .line 23
    .line 24
    if-ne v4, v5, :cond_1

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    :cond_1
    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedMainStageWinConfigPosition:I

    .line 28
    .line 29
    if-ne v0, v5, :cond_2

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedMainStageWinConfigPosition:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    .line 42
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 43
    .line 44
    invoke-virtual {p1, v2, v0}, Landroid/window/WindowContainerTransaction;->setStagePosition(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 50
    .line 51
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setStagePosition(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 54
    .line 55
    .line 56
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedSideStageWinConfigPosition:I

    .line 61
    .line 62
    iput v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastReportedCellStageWinConfigPosition:I

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 67
    .line 68
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 69
    .line 70
    invoke-virtual {p1, p0, v4}, Landroid/window/WindowContainerTransaction;->setStagePosition(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v3, v2

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const v4, 0x7fffffff

    .line 19
    .line 20
    .line 21
    if-eqz v0, :cond_f

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 24
    .line 25
    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 26
    .line 27
    if-eqz v5, :cond_f

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 33
    .line 34
    :goto_1
    iget-object v8, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 35
    .line 36
    iget-object v9, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    iget-object v10, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 39
    .line 40
    iget-object v11, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 41
    .line 42
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    iget-object p3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 49
    .line 50
    iget-object v0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    if-eqz v7, :cond_3

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/Rect;

    .line 55
    .line 56
    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    neg-int v3, v3

    .line 64
    iget v5, p3, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    neg-int v5, v5

    .line 67
    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 74
    .line 75
    int-to-float v1, v1

    .line 76
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    int-to-float v3, v3

    .line 79
    invoke-virtual {p2, v7, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v7, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 83
    .line 84
    .line 85
    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-object v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefCellDividerBounds()Landroid/graphics/Rect;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 108
    .line 109
    .line 110
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 111
    .line 112
    int-to-float v3, v3

    .line 113
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 114
    .line 115
    int-to-float v0, v0

    .line 116
    invoke-virtual {p2, v1, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 127
    .line 128
    invoke-static {v1, v0}, Lcom/android/wm/shell/common/split/CellUtil;->isCellInLeftOrTopBounds(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget v3, p3, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    neg-int v3, v3

    .line 145
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 146
    .line 147
    neg-int v4, v4

    .line 148
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 157
    .line 158
    neg-int v1, v1

    .line 159
    iget v3, p3, Landroid/graphics/Rect;->top:I

    .line 160
    .line 161
    neg-int v3, v3

    .line 162
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefHostBounds()Landroid/graphics/Rect;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    .line 170
    .line 171
    iget-object v4, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 172
    .line 173
    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 174
    .line 175
    .line 176
    iget v4, p3, Landroid/graphics/Rect;->left:I

    .line 177
    .line 178
    neg-int v4, v4

    .line 179
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 180
    .line 181
    neg-int p3, p3

    .line 182
    invoke-virtual {v3, v4, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 183
    .line 184
    .line 185
    iget p3, v0, Landroid/graphics/Rect;->left:I

    .line 186
    .line 187
    int-to-float p3, p3

    .line 188
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 189
    .line 190
    int-to-float v4, v4

    .line 191
    invoke-virtual {p2, v8, p3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-virtual {p3, v8, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 204
    .line 205
    .line 206
    iget p3, v1, Landroid/graphics/Rect;->left:I

    .line 207
    .line 208
    int-to-float p3, p3

    .line 209
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 210
    .line 211
    int-to-float v0, v0

    .line 212
    invoke-virtual {p2, v9, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-virtual {p3, v9, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 225
    .line 226
    .line 227
    iget p3, v3, Landroid/graphics/Rect;->left:I

    .line 228
    .line 229
    int-to-float p3, p3

    .line 230
    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 231
    .line 232
    int-to-float v0, v0

    .line 233
    invoke-virtual {p2, p0, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {p3, p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 246
    .line 247
    .line 248
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 249
    .line 250
    if-eqz p3, :cond_e

    .line 251
    .line 252
    iget-object p3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 253
    .line 254
    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 255
    .line 256
    .line 257
    move-result p3

    .line 258
    if-eqz p3, :cond_e

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getCellDividerLeash()Landroid/view/SurfaceControl;

    .line 261
    .line 262
    .line 263
    move-result-object p3

    .line 264
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 265
    .line 266
    iget v0, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 267
    .line 268
    if-nez v0, :cond_6

    .line 269
    .line 270
    goto/16 :goto_8

    .line 271
    .line 272
    :cond_6
    iget-object v0, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 273
    .line 274
    if-eqz v7, :cond_7

    .line 275
    .line 276
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 277
    .line 278
    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 279
    .line 280
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 281
    .line 282
    .line 283
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 284
    .line 285
    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 286
    .line 287
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 288
    .line 289
    .line 290
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 291
    .line 292
    int-to-float v1, v1

    .line 293
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 294
    .line 295
    int-to-float v3, v3

    .line 296
    invoke-virtual {p2, v7, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 297
    .line 298
    .line 299
    :cond_7
    if-eqz p3, :cond_8

    .line 300
    .line 301
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 302
    .line 303
    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    .line 304
    .line 305
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 306
    .line 307
    .line 308
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 309
    .line 310
    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 311
    .line 312
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 313
    .line 314
    .line 315
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 316
    .line 317
    int-to-float v1, v1

    .line 318
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 319
    .line 320
    int-to-float v3, v3

    .line 321
    invoke-virtual {p2, p3, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 322
    .line 323
    .line 324
    :cond_8
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    .line 325
    .line 326
    .line 327
    move-result p3

    .line 328
    iget-object v1, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds3:Landroid/graphics/Rect;

    .line 329
    .line 330
    iget-object v3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mHostBounds:Landroid/graphics/Rect;

    .line 331
    .line 332
    iget-object v4, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 333
    .line 334
    if-eqz p3, :cond_c

    .line 335
    .line 336
    iget p3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 337
    .line 338
    and-int/lit8 v0, p3, 0x8

    .line 339
    .line 340
    if-eqz v0, :cond_a

    .line 341
    .line 342
    and-int/lit8 p3, p3, 0x40

    .line 343
    .line 344
    if-eqz p3, :cond_9

    .line 345
    .line 346
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 347
    .line 348
    .line 349
    move-result p3

    .line 350
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    iget v3, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 355
    .line 356
    add-int/2addr v0, v3

    .line 357
    invoke-virtual {p2, v8, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 361
    .line 362
    .line 363
    iget p1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 364
    .line 365
    invoke-virtual {v4, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 366
    .line 367
    .line 368
    iget p1, v4, Landroid/graphics/Rect;->left:I

    .line 369
    .line 370
    int-to-float p1, p1

    .line 371
    iget p3, v4, Landroid/graphics/Rect;->top:I

    .line 372
    .line 373
    int-to-float p3, p3

    .line 374
    invoke-virtual {p2, p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 375
    .line 376
    .line 377
    goto/16 :goto_8

    .line 378
    .line 379
    :cond_9
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 380
    .line 381
    .line 382
    move-result p3

    .line 383
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 388
    .line 389
    add-int/2addr v0, v1

    .line 390
    invoke-virtual {p2, p0, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 394
    .line 395
    .line 396
    iget p0, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 397
    .line 398
    invoke-virtual {v4, v2, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 399
    .line 400
    .line 401
    iget p0, v4, Landroid/graphics/Rect;->left:I

    .line 402
    .line 403
    int-to-float p0, p0

    .line 404
    iget p1, v4, Landroid/graphics/Rect;->top:I

    .line 405
    .line 406
    int-to-float p1, p1

    .line 407
    invoke-virtual {p2, v8, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 408
    .line 409
    .line 410
    goto/16 :goto_8

    .line 411
    .line 412
    :cond_a
    and-int/lit8 v0, p3, 0x20

    .line 413
    .line 414
    if-eqz v0, :cond_1c

    .line 415
    .line 416
    and-int/lit8 p3, p3, 0x40

    .line 417
    .line 418
    if-eqz p3, :cond_b

    .line 419
    .line 420
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 421
    .line 422
    .line 423
    move-result p3

    .line 424
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    iget v3, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 429
    .line 430
    add-int/2addr v0, v3

    .line 431
    invoke-virtual {p2, v9, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 435
    .line 436
    .line 437
    iget p1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 438
    .line 439
    invoke-virtual {v4, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 440
    .line 441
    .line 442
    iget p1, v4, Landroid/graphics/Rect;->left:I

    .line 443
    .line 444
    int-to-float p1, p1

    .line 445
    iget p3, v4, Landroid/graphics/Rect;->top:I

    .line 446
    .line 447
    int-to-float p3, p3

    .line 448
    invoke-virtual {p2, p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 449
    .line 450
    .line 451
    goto/16 :goto_8

    .line 452
    .line 453
    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 454
    .line 455
    .line 456
    move-result p3

    .line 457
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 462
    .line 463
    add-int/2addr v0, v1

    .line 464
    invoke-virtual {p2, p0, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 468
    .line 469
    .line 470
    iget p0, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 471
    .line 472
    invoke-virtual {v4, v2, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 473
    .line 474
    .line 475
    iget p0, v4, Landroid/graphics/Rect;->left:I

    .line 476
    .line 477
    int-to-float p0, p0

    .line 478
    iget p1, v4, Landroid/graphics/Rect;->top:I

    .line 479
    .line 480
    int-to-float p1, p1

    .line 481
    invoke-virtual {p2, v9, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 482
    .line 483
    .line 484
    goto/16 :goto_8

    .line 485
    .line 486
    :cond_c
    iget p3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mCellStageWindowConfigPosition:I

    .line 487
    .line 488
    and-int/lit8 v5, p3, 0x10

    .line 489
    .line 490
    if-eqz v5, :cond_d

    .line 491
    .line 492
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 493
    .line 494
    .line 495
    move-result p3

    .line 496
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    iget v5, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 501
    .line 502
    add-int/2addr v3, v5

    .line 503
    invoke-virtual {p2, v8, p3, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 507
    .line 508
    .line 509
    move-result p3

    .line 510
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    iget v3, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 515
    .line 516
    add-int/2addr v1, v3

    .line 517
    invoke-virtual {p2, p0, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 518
    .line 519
    .line 520
    iget-object p0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 521
    .line 522
    invoke-virtual {v4, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 523
    .line 524
    .line 525
    iget p0, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 526
    .line 527
    invoke-virtual {v4, v2, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 528
    .line 529
    .line 530
    iget p0, v4, Landroid/graphics/Rect;->left:I

    .line 531
    .line 532
    int-to-float p0, p0

    .line 533
    iget p1, v4, Landroid/graphics/Rect;->top:I

    .line 534
    .line 535
    int-to-float p1, p1

    .line 536
    invoke-virtual {p2, v9, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 537
    .line 538
    .line 539
    goto/16 :goto_8

    .line 540
    .line 541
    :cond_d
    and-int/lit8 p3, p3, 0x40

    .line 542
    .line 543
    if-eqz p3, :cond_1c

    .line 544
    .line 545
    iget-object p3, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 546
    .line 547
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 552
    .line 553
    .line 554
    move-result p3

    .line 555
    iget v5, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 556
    .line 557
    add-int/2addr p3, v5

    .line 558
    invoke-virtual {p2, v8, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 562
    .line 563
    .line 564
    iget p3, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 565
    .line 566
    invoke-virtual {v4, v2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 567
    .line 568
    .line 569
    iget p3, v4, Landroid/graphics/Rect;->left:I

    .line 570
    .line 571
    int-to-float p3, p3

    .line 572
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 573
    .line 574
    int-to-float v0, v0

    .line 575
    invoke-virtual {p2, v9, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 579
    .line 580
    .line 581
    iget p1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 582
    .line 583
    invoke-virtual {v4, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 584
    .line 585
    .line 586
    iget p1, v4, Landroid/graphics/Rect;->left:I

    .line 587
    .line 588
    int-to-float p1, p1

    .line 589
    iget p3, v4, Landroid/graphics/Rect;->top:I

    .line 590
    .line 591
    int-to-float p3, p3

    .line 592
    invoke-virtual {p2, p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 593
    .line 594
    .line 595
    goto/16 :goto_8

    .line 596
    .line 597
    :cond_e
    iget-object v5, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 598
    .line 599
    move-object v6, p2

    .line 600
    invoke-virtual/range {v5 .. v11}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->adjustSurfaceLayoutForIme(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z

    .line 601
    .line 602
    .line 603
    goto/16 :goto_8

    .line 604
    .line 605
    :cond_f
    if-eqz p1, :cond_10

    .line 606
    .line 607
    goto :goto_3

    .line 608
    :cond_10
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 609
    .line 610
    :goto_3
    iget-object p0, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 611
    .line 612
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 613
    .line 614
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 615
    .line 616
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 617
    .line 618
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 619
    .line 620
    .line 621
    move-result-object v7

    .line 622
    iget-object v5, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 623
    .line 624
    if-eqz v7, :cond_11

    .line 625
    .line 626
    invoke-virtual {p1, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    .line 627
    .line 628
    .line 629
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 630
    .line 631
    int-to-float v6, v6

    .line 632
    iget v8, v5, Landroid/graphics/Rect;->top:I

    .line 633
    .line 634
    int-to-float v8, v8

    .line 635
    invoke-virtual {p2, v7, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 636
    .line 637
    .line 638
    invoke-virtual {p2, v7, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 639
    .line 640
    .line 641
    :cond_11
    invoke-virtual {p1, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds1(Landroid/graphics/Rect;)V

    .line 642
    .line 643
    .line 644
    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 645
    .line 646
    int-to-float v4, v4

    .line 647
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 648
    .line 649
    int-to-float v6, v6

    .line 650
    invoke-virtual {p2, p0, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 655
    .line 656
    .line 657
    move-result v6

    .line 658
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 659
    .line 660
    .line 661
    move-result v8

    .line 662
    invoke-virtual {v4, p0, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 663
    .line 664
    .line 665
    invoke-virtual {p1, v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefBounds2(Landroid/graphics/Rect;)V

    .line 666
    .line 667
    .line 668
    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 669
    .line 670
    int-to-float v4, v4

    .line 671
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 672
    .line 673
    int-to-float v6, v6

    .line 674
    invoke-virtual {p2, v0, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 679
    .line 680
    .line 681
    move-result v6

    .line 682
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 683
    .line 684
    .line 685
    move-result v5

    .line 686
    invoke-virtual {v4, v0, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 687
    .line 688
    .line 689
    iget-object v5, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 690
    .line 691
    move-object v6, p2

    .line 692
    move-object v8, p0

    .line 693
    move-object v9, v0

    .line 694
    move-object v10, v3

    .line 695
    move-object v11, v1

    .line 696
    invoke-virtual/range {v5 .. v11}, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->adjustSurfaceLayoutForIme(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z

    .line 697
    .line 698
    .line 699
    move-result v4

    .line 700
    if-eqz v4, :cond_12

    .line 701
    .line 702
    goto/16 :goto_8

    .line 703
    .line 704
    :cond_12
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mSurfaceEffectPolicy:Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;

    .line 705
    .line 706
    iget v4, p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mDismissingSide:I

    .line 707
    .line 708
    const/4 v5, 0x4

    .line 709
    const/4 v6, 0x3

    .line 710
    const/4 v7, 0x2

    .line 711
    const/4 v8, 0x1

    .line 712
    if-eq v4, v8, :cond_14

    .line 713
    .line 714
    if-eq v4, v7, :cond_14

    .line 715
    .line 716
    if-eq v4, v6, :cond_13

    .line 717
    .line 718
    if-eq v4, v5, :cond_13

    .line 719
    .line 720
    const/4 v2, 0x0

    .line 721
    invoke-virtual {p2, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 726
    .line 727
    .line 728
    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 733
    .line 734
    .line 735
    goto :goto_4

    .line 736
    :cond_13
    move-object v3, v1

    .line 737
    :cond_14
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mDismissingDimValue:F

    .line 738
    .line 739
    invoke-virtual {p2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    iget v4, p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mDismissingDimValue:F

    .line 744
    .line 745
    const v9, 0x3a83126f    # 0.001f

    .line 746
    .line 747
    .line 748
    cmpl-float v4, v4, v9

    .line 749
    .line 750
    if-lez v4, :cond_15

    .line 751
    .line 752
    move v2, v8

    .line 753
    :cond_15
    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 754
    .line 755
    .line 756
    :goto_4
    if-eqz p3, :cond_1c

    .line 757
    .line 758
    iget-object p3, p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 759
    .line 760
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mParallaxType:I

    .line 761
    .line 762
    if-ne v1, v8, :cond_18

    .line 763
    .line 764
    iget v2, p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mDismissingSide:I

    .line 765
    .line 766
    if-eq v2, v8, :cond_17

    .line 767
    .line 768
    if-eq v2, v7, :cond_17

    .line 769
    .line 770
    if-eq v2, v6, :cond_16

    .line 771
    .line 772
    if-eq v2, v5, :cond_16

    .line 773
    .line 774
    goto :goto_6

    .line 775
    :cond_16
    iget-object p0, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 776
    .line 777
    iget-object v2, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 778
    .line 779
    invoke-virtual {p0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 780
    .line 781
    .line 782
    goto :goto_5

    .line 783
    :cond_17
    iget-object v0, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 784
    .line 785
    iget-object v2, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 786
    .line 787
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 788
    .line 789
    .line 790
    goto :goto_7

    .line 791
    :cond_18
    if-ne v1, v7, :cond_1b

    .line 792
    .line 793
    iget v2, p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mShrinkSide:I

    .line 794
    .line 795
    if-eq v2, v8, :cond_1a

    .line 796
    .line 797
    if-eq v2, v7, :cond_1a

    .line 798
    .line 799
    if-eq v2, v6, :cond_19

    .line 800
    .line 801
    if-eq v2, v5, :cond_19

    .line 802
    .line 803
    goto :goto_6

    .line 804
    :cond_19
    iget-object p0, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 805
    .line 806
    iget-object v2, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 807
    .line 808
    invoke-virtual {p0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 809
    .line 810
    .line 811
    :goto_5
    move-object p0, v0

    .line 812
    goto :goto_7

    .line 813
    :cond_1a
    iget-object v0, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 814
    .line 815
    iget-object v2, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 816
    .line 817
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 818
    .line 819
    .line 820
    goto :goto_7

    .line 821
    :cond_1b
    :goto_6
    const/4 p0, 0x0

    .line 822
    :goto_7
    if-eqz v1, :cond_1c

    .line 823
    .line 824
    if-eqz p0, :cond_1c

    .line 825
    .line 826
    iget-object v0, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 827
    .line 828
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 829
    .line 830
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout$ResizingEffectPolicy;->mParallaxOffset:Landroid/graphics/Point;

    .line 831
    .line 832
    iget v2, p1, Landroid/graphics/Point;->x:I

    .line 833
    .line 834
    add-int/2addr v1, v2

    .line 835
    int-to-float v1, v1

    .line 836
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 837
    .line 838
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 839
    .line 840
    add-int/2addr v0, v2

    .line 841
    int-to-float v0, v0

    .line 842
    invoke-virtual {p2, p0, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 843
    .line 844
    .line 845
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 846
    .line 847
    neg-int v0, v0

    .line 848
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 849
    .line 850
    neg-int p1, p1

    .line 851
    iget-object p3, p3, Lcom/android/wm/shell/common/split/SplitLayout;->mTempRect:Landroid/graphics/Rect;

    .line 852
    .line 853
    invoke-virtual {p3, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {p2, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 857
    .line 858
    .line 859
    :cond_1c
    :goto_8
    return-void
.end method

.method public final updateVideoControlsState(ZLandroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "updateVideoControlsState: "

    .line 7
    .line 8
    .line 9
    const-string v1, ", callers"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x3

    .line 16
    const-string v2, "StageCoordinator"

    .line 17
    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setVideoControlsMode(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 35
    .line 36
    .line 37
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    .line 42
    .line 43
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateCornerRadiusForStages(Landroid/view/SurfaceControl$Transaction;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerSizeIfNeeded(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0, p2, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setVideoControlsMode(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerSizeIfNeeded(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 61
    .line 62
    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_0
    return-void
.end method

.method public final updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v3, v2

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->overrideStageCoordinatorRootConfig(Landroid/window/WindowContainerTransaction;)V

    .line 16
    .line 17
    .line 18
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/CellStage;->mIsActive:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    if-eqz p3, :cond_3

    .line 29
    .line 30
    :cond_2
    iget-object p3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    .line 32
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    .line 36
    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_3
    iget-object p0, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    .line 43
    iget-object p3, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    .line 45
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method
