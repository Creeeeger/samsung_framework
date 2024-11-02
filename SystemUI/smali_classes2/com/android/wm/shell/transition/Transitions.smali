.class public final Lcom/android/wm/shell/transition/Transitions;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# static fields
.field public static final ENABLE_SHELL_TRANSITIONS:Z

.field public static final SHELL_TRANSITIONS_ROTATION:Z


# instance fields
.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mHandlers:Ljava/util/ArrayList;

.field public final mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

.field public mIsRegistered:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

.field public final mObservers:Ljava/util/ArrayList;

.field public final mOrganizer:Landroid/window/WindowOrganizer;

.field public final mPendingTransitions:Ljava/util/ArrayList;

.field public final mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

.field public final mReadyDuringSync:Ljava/util/ArrayList;

.field public mRecentTransitionCallback:Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

.field public final mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field public final mRunWhenIdleQueue:Ljava/util/ArrayList;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

.field public final mTracer:Lcom/android/wm/shell/transition/Tracer;

.field public final mTracks:Ljava/util/ArrayList;

.field public mTransitionAnimationScaleSetting:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "persist.wm.debug.shell_transit"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string/jumbo v0, "persist.wm.debug.shell_transit_rotate"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    sput-boolean v1, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 12

    const/4 v10, 0x0

    .line 1
    new-instance v11, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object v1, p1

    move-object/from16 v7, p7

    invoke-direct {v11, v7, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/transition/Transitions;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Landroid/window/WindowOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v5, p7

    move-object/from16 v4, p9

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    const/4 v3, 0x0

    invoke-direct {v0, v6, v3}, Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;I)V

    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    .line 4
    new-instance v0, Lcom/android/wm/shell/transition/SleepHandler;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/SleepHandler;-><init>()V

    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mSleepHandler:Lcom/android/wm/shell/transition/SleepHandler;

    .line 5
    new-instance v0, Lcom/android/wm/shell/transition/Tracer;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/Tracer;-><init>()V

    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 6
    iput-boolean v3, v6, Lcom/android/wm/shell/transition/Transitions;->mIsRegistered:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    iput v1, v6, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    move-object/from16 v1, p4

    .line 14
    iput-object v1, v6, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    move-object/from16 v1, p1

    .line 15
    iput-object v1, v6, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    .line 16
    iput-object v5, v6, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 17
    iput-object v4, v6, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v2, p6

    .line 18
    iput-object v2, v6, Lcom/android/wm/shell/transition/Transitions;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 19
    new-instance v7, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    invoke-direct {v7, v6, v3}, Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;-><init>(Lcom/android/wm/shell/transition/Transitions;I)V

    iput-object v7, v6, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    .line 20
    new-instance v15, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    move-object v7, v15

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p6

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object v1, v15

    move-object/from16 v15, p11

    invoke-direct/range {v7 .. v15}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    .line 21
    new-instance v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-direct {v7, v5}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v7, v6, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    move-object/from16 v8, p3

    .line 22
    iput-object v8, v6, Lcom/android/wm/shell/transition/Transitions;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-boolean v8, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v10, -0x55b81988

    const-string v11, "addHandler: Default"

    invoke-static {v8, v10, v3, v11, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p10

    .line 26
    iput-object v0, v6, Lcom/android/wm/shell/transition/Transitions;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 27
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, 0x7ceef6d1

    const-string v10, "addHandler: Remote"

    invoke-static {v0, v8, v3, v10, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_2

    .line 29
    new-instance v8, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 30
    iget-object v9, v1, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    move-object v0, v8

    move-object v10, v1

    move-object v1, v9

    move-object/from16 v2, p6

    move v9, v3

    move-object/from16 v3, p5

    move-object v11, v4

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;-><init>(Lcom/android/internal/policy/TransitionAnimation;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v8, v6, Lcom/android/wm/shell/transition/Transitions;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 32
    iput-object v8, v10, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 33
    iput-object v8, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 34
    iput-object v11, v7, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    goto :goto_0

    :cond_2
    move-object v10, v1

    move v9, v3

    move-object v11, v4

    .line 35
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_3

    .line 36
    new-instance v7, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v7, v6, Lcom/android/wm/shell/transition/Transitions;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    .line 37
    iput-object v7, v10, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mChangeTransitProvider:Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;

    .line 38
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v0, :cond_4

    .line 39
    new-instance v0, Lcom/android/wm/shell/transition/DimTransitionProvider;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/DimTransitionProvider;-><init>()V

    .line 40
    iput-object v0, v10, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDimTransitionProvider:Lcom/android/wm/shell/transition/DimTransitionProvider;

    .line 41
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_INFORM_SCREEN_ROTATION_ANIMATION_STARTED_FOR_CAPTURED_BLUR:Z

    if-eqz v0, :cond_5

    .line 42
    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;

    invoke-direct {v0, v10, v9}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;I)V

    iput-object v0, v10, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mCapturedBlurHelper:Lcom/android/wm/shell/transition/DefaultTransitionHandler$CapturedBlurHelper;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, v10, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMaxRotationAnimationDuration:J

    .line 44
    :cond_5
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda1;

    invoke-direct {v0, v6, v9}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0, v6}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static hasDuplicatedOpenTypeChanges(Landroid/window/TransitionInfo;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {p0, v2}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    :goto_0
    if-ltz v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    .line 69
    .line 70
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-le p0, v2, :cond_3

    .line 78
    .line 79
    const-string p0, "ShellTransitions"

    .line 80
    .line 81
    const-string v0, "duplicated split open changes in default transition"

    .line 82
    .line 83
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return v2

    .line 87
    :cond_3
    return v1
.end method

.method public static isEmptyExceptZombie(Ljava/util/ArrayList;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-wide v4, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mPendingTime:J

    .line 26
    .line 27
    sub-long/2addr v2, v4

    .line 28
    const-wide/16 v4, 0x2710

    .line 29
    .line 30
    cmp-long v0, v2, v4

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v1, v2

    .line 37
    :goto_0
    if-nez v1, :cond_0

    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    return v1
.end method

.method public static setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_1
    const-string p0, "ShellTransitions"

    .line 18
    .line 19
    const-string v0, "Unable to boost animation process. This should only happen during unit tests"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method


# virtual methods
.method public final addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTransitionAnimationScaleSetting:F

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->setAnimScaleSetting(F)V

    .line 15
    .line 16
    .line 17
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 30
    .line 31
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const v0, -0x6cd9ff37

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    const-string v2, "addHandler: %s"

    .line 40
    .line 41
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    const-string p1, "Unexpected handler added prior to initialization, please use ShellInit callbacks to ensure proper ordering"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v5, 0xc

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    const/4 v7, 0x0

    .line 17
    if-eq v3, v5, :cond_1

    .line 18
    .line 19
    iget-object v3, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/high16 v5, 0x200000

    .line 26
    .line 27
    and-int/2addr v3, v5

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    move v3, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v7

    .line 33
    :goto_0
    if-eqz v3, :cond_7

    .line 34
    .line 35
    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v3, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move v5, v7

    .line 41
    move v8, v5

    .line 42
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-ge v5, v9, :cond_5

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    check-cast v9, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 53
    .line 54
    iget-object v10, v9, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 55
    .line 56
    if-nez v10, :cond_2

    .line 57
    .line 58
    iget-object v9, v9, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_2

    .line 65
    .line 66
    move v9, v6

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move v9, v7

    .line 69
    :goto_2
    if-eqz v9, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    sget-boolean v8, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 73
    .line 74
    if-eqz v8, :cond_4

    .line 75
    .line 76
    int-to-long v8, v5

    .line 77
    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 78
    .line 79
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const v9, -0x39190853

    .line 88
    .line 89
    .line 90
    const-string v11, "Start finish-for-sync track %d"

    .line 91
    .line 92
    invoke-static {v10, v9, v6, v11, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    const/4 v8, 0x0

    .line 96
    invoke-virtual {v0, v1, v5, v8}, Lcom/android/wm/shell/transition/Transitions;->finishForSync(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 97
    .line 98
    .line 99
    move v8, v6

    .line 100
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    if-eqz v8, :cond_6

    .line 104
    .line 105
    return v7

    .line 106
    :cond_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :cond_7
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getTrack()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-lt v3, v5, :cond_8

    .line 118
    .line 119
    new-instance v5, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 120
    .line 121
    invoke-direct {v5, v7}, Lcom/android/wm/shell/transition/Transitions$Track;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_8
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 133
    .line 134
    iget-object v4, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER:Z

    .line 140
    .line 141
    if-eqz v4, :cond_9

    .line 142
    .line 143
    iget-object v4, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 144
    .line 145
    if-eqz v4, :cond_9

    .line 146
    .line 147
    iget-object v5, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 148
    .line 149
    invoke-interface {v4, v5, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->transitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    .line 150
    .line 151
    .line 152
    :cond_9
    move v4, v7

    .line 153
    :goto_5
    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-ge v4, v8, :cond_a

    .line 160
    .line 161
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    .line 166
    .line 167
    iget-object v8, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 168
    .line 169
    iget-object v9, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 170
    .line 171
    iget-object v10, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 172
    .line 173
    invoke-interface {v5, v8, v2, v9, v10}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 174
    .line 175
    .line 176
    add-int/lit8 v4, v4, 0x1

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_a
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-nez v4, :cond_c

    .line 184
    .line 185
    invoke-static {v2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-nez v4, :cond_c

    .line 190
    .line 191
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 192
    .line 193
    if-eqz v2, :cond_b

    .line 194
    .line 195
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 200
    .line 201
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    const v4, 0x1a8355e8

    .line 206
    .line 207
    .line 208
    const-string v5, "No transition roots in %s so abort"

    .line 209
    .line 210
    invoke-static {v3, v4, v7, v5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/transition/Transitions;->onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 214
    .line 215
    .line 216
    return v6

    .line 217
    :cond_c
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-lez v4, :cond_d

    .line 226
    .line 227
    move v5, v6

    .line 228
    goto :goto_6

    .line 229
    :cond_d
    move v5, v7

    .line 230
    :goto_6
    add-int/lit8 v8, v4, -0x1

    .line 231
    .line 232
    move v9, v7

    .line 233
    move v10, v9

    .line 234
    :goto_7
    const/16 v11, 0x8

    .line 235
    .line 236
    if-ltz v8, :cond_10

    .line 237
    .line 238
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 247
    .line 248
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 249
    .line 250
    .line 251
    move-result-object v13

    .line 252
    if-eqz v13, :cond_e

    .line 253
    .line 254
    move v13, v6

    .line 255
    goto :goto_8

    .line 256
    :cond_e
    move v13, v7

    .line 257
    :goto_8
    or-int/2addr v9, v13

    .line 258
    invoke-virtual {v12, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    or-int/2addr v10, v11

    .line 263
    const v11, 0x8000

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    if-nez v11, :cond_f

    .line 271
    .line 272
    move v5, v7

    .line 273
    :cond_f
    add-int/lit8 v8, v8, -0x1

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_10
    const/4 v8, 0x2

    .line 277
    if-nez v9, :cond_11

    .line 278
    .line 279
    if-eqz v10, :cond_11

    .line 280
    .line 281
    if-eq v4, v8, :cond_13

    .line 282
    .line 283
    :cond_11
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    const/4 v8, 0x4

    .line 288
    const/4 v9, 0x3

    .line 289
    if-eq v4, v8, :cond_12

    .line 290
    .line 291
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-ne v2, v9, :cond_15

    .line 296
    .line 297
    :cond_12
    if-eqz v5, :cond_15

    .line 298
    .line 299
    :cond_13
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 300
    .line 301
    if-eqz v2, :cond_14

    .line 302
    .line 303
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 308
    .line 309
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    const v4, 0x32b8229

    .line 314
    .line 315
    .line 316
    const-string v5, "Non-visible anim so abort: %s"

    .line 317
    .line 318
    invoke-static {v3, v4, v7, v5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/transition/Transitions;->onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 322
    .line 323
    .line 324
    return v6

    .line 325
    :cond_15
    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 326
    .line 327
    iget-object v4, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 328
    .line 329
    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 330
    .line 331
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    invoke-static {v2, v6}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    :goto_9
    if-ltz v7, :cond_2f

    .line 344
    .line 345
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 354
    .line 355
    const v10, 0x10102

    .line 356
    .line 357
    .line 358
    invoke-virtual {v8, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    if-eqz v10, :cond_16

    .line 363
    .line 364
    goto/16 :goto_15

    .line 365
    .line 366
    :cond_16
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 367
    .line 368
    .line 369
    move-result-object v15

    .line 370
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 371
    .line 372
    .line 373
    move-result-object v10

    .line 374
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    check-cast v10, Landroid/window/TransitionInfo$Change;

    .line 379
    .line 380
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 381
    .line 382
    .line 383
    move-result v10

    .line 384
    if-ne v10, v9, :cond_18

    .line 385
    .line 386
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 387
    .line 388
    .line 389
    move-result-object v11

    .line 390
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 391
    .line 392
    .line 393
    move-result v11

    .line 394
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 395
    .line 396
    .line 397
    move-result-object v12

    .line 398
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 399
    .line 400
    .line 401
    move-result v12

    .line 402
    if-ne v11, v12, :cond_17

    .line 403
    .line 404
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 405
    .line 406
    .line 407
    move-result-object v11

    .line 408
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 409
    .line 410
    .line 411
    move-result v11

    .line 412
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 413
    .line 414
    .line 415
    move-result-object v12

    .line 416
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    if-eq v11, v12, :cond_18

    .line 421
    .line 422
    :cond_17
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 423
    .line 424
    .line 425
    move-result-object v11

    .line 426
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 427
    .line 428
    .line 429
    move-result v11

    .line 430
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 431
    .line 432
    .line 433
    move-result-object v12

    .line 434
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 435
    .line 436
    .line 437
    move-result v12

    .line 438
    invoke-virtual {v4, v15, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 439
    .line 440
    .line 441
    :cond_18
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    .line 442
    .line 443
    .line 444
    move-result v11

    .line 445
    if-nez v11, :cond_1a

    .line 446
    .line 447
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 448
    .line 449
    .line 450
    move-result-object v11

    .line 451
    if-eqz v11, :cond_19

    .line 452
    .line 453
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 454
    .line 455
    .line 456
    move-result-object v11

    .line 457
    iget-boolean v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isForceHidden:Z

    .line 458
    .line 459
    if-eqz v11, :cond_19

    .line 460
    .line 461
    goto :goto_a

    .line 462
    :cond_19
    const/4 v11, 0x0

    .line 463
    goto :goto_b

    .line 464
    :cond_1a
    :goto_a
    move v11, v6

    .line 465
    :goto_b
    const/high16 v12, 0x3f800000    # 1.0f

    .line 466
    .line 467
    if-eqz v11, :cond_1c

    .line 468
    .line 469
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 470
    .line 471
    .line 472
    move-result-object v11

    .line 473
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    .line 474
    .line 475
    .line 476
    move-result v13

    .line 477
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    .line 478
    .line 479
    .line 480
    move-result v14

    .line 481
    if-ne v14, v6, :cond_1b

    .line 482
    .line 483
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    .line 484
    .line 485
    .line 486
    move-result v14

    .line 487
    cmpl-float v14, v14, v12

    .line 488
    .line 489
    if-nez v14, :cond_1b

    .line 490
    .line 491
    goto :goto_c

    .line 492
    :cond_1b
    const/4 v12, 0x0

    .line 493
    :goto_c
    invoke-virtual {v4, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 494
    .line 495
    .line 496
    new-instance v14, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    const-string v9, "applyForceHideAlpha: leash="

    .line 499
    .line 500
    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    const-string v9, ", startAlpha="

    .line 507
    .line 508
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v9, ", transit="

    .line 515
    .line 516
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-static {v13}, Lcom/samsung/android/multiwindow/MultiWindowManager;->forceHidingTransitToString(I)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v9

    .line 523
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v9

    .line 530
    const-string v11, "MultiTaskingTransitionProvider"

    .line 531
    .line 532
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    move v9, v6

    .line 536
    goto :goto_d

    .line 537
    :cond_1c
    const/4 v9, 0x0

    .line 538
    :goto_d
    invoke-static {v8, v2}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 539
    .line 540
    .line 541
    move-result v11

    .line 542
    const/4 v12, 0x6

    .line 543
    if-nez v11, :cond_21

    .line 544
    .line 545
    if-eq v10, v6, :cond_1d

    .line 546
    .line 547
    const/4 v11, 0x3

    .line 548
    if-eq v10, v11, :cond_1d

    .line 549
    .line 550
    if-ne v10, v12, :cond_20

    .line 551
    .line 552
    :cond_1d
    invoke-virtual {v4, v15}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    .line 556
    .line 557
    .line 558
    move-result v10

    .line 559
    const/4 v11, 0x0

    .line 560
    cmpl-float v10, v10, v11

    .line 561
    .line 562
    if-lez v10, :cond_1e

    .line 563
    .line 564
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    .line 565
    .line 566
    .line 567
    move-result v10

    .line 568
    const/high16 v11, 0x3f800000    # 1.0f

    .line 569
    .line 570
    cmpg-float v10, v10, v11

    .line 571
    .line 572
    if-gez v10, :cond_1e

    .line 573
    .line 574
    move-object v6, v15

    .line 575
    goto :goto_e

    .line 576
    :cond_1e
    const/high16 v12, 0x3f800000    # 1.0f

    .line 577
    .line 578
    const/4 v13, 0x0

    .line 579
    const/4 v14, 0x0

    .line 580
    const/high16 v16, 0x3f800000    # 1.0f

    .line 581
    .line 582
    move-object v10, v4

    .line 583
    move-object v11, v15

    .line 584
    move-object v6, v15

    .line 585
    move/from16 v15, v16

    .line 586
    .line 587
    invoke-virtual/range {v10 .. v15}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 588
    .line 589
    .line 590
    :goto_e
    if-eqz v9, :cond_1f

    .line 591
    .line 592
    goto :goto_f

    .line 593
    :cond_1f
    const/high16 v9, 0x3f800000    # 1.0f

    .line 594
    .line 595
    invoke-virtual {v4, v6, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 596
    .line 597
    .line 598
    :goto_f
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 599
    .line 600
    .line 601
    move-result-object v9

    .line 602
    iget v9, v9, Landroid/graphics/Point;->x:I

    .line 603
    .line 604
    int-to-float v9, v9

    .line 605
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 606
    .line 607
    .line 608
    move-result-object v8

    .line 609
    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 610
    .line 611
    int-to-float v8, v8

    .line 612
    invoke-virtual {v4, v6, v9, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 613
    .line 614
    .line 615
    :cond_20
    const/4 v9, 0x3

    .line 616
    goto/16 :goto_15

    .line 617
    .line 618
    :cond_21
    move v9, v6

    .line 619
    move-object v6, v15

    .line 620
    if-eq v10, v9, :cond_29

    .line 621
    .line 622
    const/4 v9, 0x3

    .line 623
    if-ne v10, v9, :cond_22

    .line 624
    .line 625
    goto :goto_14

    .line 626
    :cond_22
    const/4 v11, 0x2

    .line 627
    const/4 v13, 0x4

    .line 628
    if-eq v10, v11, :cond_24

    .line 629
    .line 630
    if-ne v10, v13, :cond_23

    .line 631
    .line 632
    goto :goto_10

    .line 633
    :cond_23
    if-eqz v5, :cond_2e

    .line 634
    .line 635
    if-ne v10, v12, :cond_2e

    .line 636
    .line 637
    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 638
    .line 639
    .line 640
    goto/16 :goto_15

    .line 641
    .line 642
    :cond_24
    :goto_10
    const/high16 v10, 0x1000000

    .line 643
    .line 644
    invoke-virtual {v8, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 645
    .line 646
    .line 647
    move-result v10

    .line 648
    if-nez v10, :cond_25

    .line 649
    .line 650
    goto :goto_12

    .line 651
    :cond_25
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 652
    .line 653
    if-eqz v10, :cond_26

    .line 654
    .line 655
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getType()I

    .line 656
    .line 657
    .line 658
    move-result v10

    .line 659
    const/16 v11, 0x3ef

    .line 660
    .line 661
    if-ne v10, v11, :cond_26

    .line 662
    .line 663
    goto :goto_11

    .line 664
    :cond_26
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 665
    .line 666
    if-eqz v10, :cond_27

    .line 667
    .line 668
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 669
    .line 670
    .line 671
    move-result v10

    .line 672
    const/high16 v11, 0x10000

    .line 673
    .line 674
    and-int/2addr v10, v11

    .line 675
    if-eqz v10, :cond_27

    .line 676
    .line 677
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 678
    .line 679
    .line 680
    move-result-object v10

    .line 681
    invoke-virtual {v1, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 682
    .line 683
    .line 684
    :goto_11
    const/4 v10, 0x1

    .line 685
    goto :goto_13

    .line 686
    :cond_27
    :goto_12
    const/4 v10, 0x0

    .line 687
    :goto_13
    if-eqz v10, :cond_28

    .line 688
    .line 689
    new-instance v6, Ljava/lang/StringBuilder;

    .line 690
    .line 691
    const-string/jumbo v10, "setupStartState: skip to hide, "

    .line 692
    .line 693
    .line 694
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v6

    .line 704
    const-string v8, "ShellTransitions"

    .line 705
    .line 706
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .line 708
    .line 709
    goto :goto_15

    .line 710
    :cond_28
    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 711
    .line 712
    .line 713
    goto :goto_15

    .line 714
    :cond_29
    const/4 v9, 0x3

    .line 715
    :goto_14
    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 716
    .line 717
    .line 718
    const/high16 v12, 0x3f800000    # 1.0f

    .line 719
    .line 720
    const/4 v13, 0x0

    .line 721
    const/4 v14, 0x0

    .line 722
    const/high16 v15, 0x3f800000    # 1.0f

    .line 723
    .line 724
    move-object v10, v4

    .line 725
    move-object v11, v6

    .line 726
    invoke-virtual/range {v10 .. v15}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 727
    .line 728
    .line 729
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 730
    .line 731
    if-eqz v10, :cond_2a

    .line 732
    .line 733
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    .line 734
    .line 735
    .line 736
    move-result v10

    .line 737
    if-nez v10, :cond_2b

    .line 738
    .line 739
    :cond_2a
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 740
    .line 741
    if-eqz v10, :cond_2c

    .line 742
    .line 743
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->hasDisplayRotationChange(Landroid/window/TransitionInfo;)Z

    .line 744
    .line 745
    .line 746
    move-result v10

    .line 747
    if-eqz v10, :cond_2c

    .line 748
    .line 749
    :cond_2b
    const/high16 v8, 0x3f800000    # 1.0f

    .line 750
    .line 751
    invoke-virtual {v4, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 755
    .line 756
    .line 757
    goto :goto_15

    .line 758
    :cond_2c
    if-eqz v5, :cond_2d

    .line 759
    .line 760
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 761
    .line 762
    .line 763
    move-result v8

    .line 764
    and-int/lit8 v8, v8, 0x8

    .line 765
    .line 766
    if-nez v8, :cond_2d

    .line 767
    .line 768
    const/4 v8, 0x0

    .line 769
    invoke-virtual {v4, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 770
    .line 771
    .line 772
    :cond_2d
    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 773
    .line 774
    .line 775
    :cond_2e
    :goto_15
    add-int/lit8 v7, v7, -0x1

    .line 776
    .line 777
    const/4 v6, 0x1

    .line 778
    goto/16 :goto_9

    .line 779
    .line 780
    :cond_2f
    iget-object v1, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 781
    .line 782
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 783
    .line 784
    .line 785
    move-result v1

    .line 786
    const/4 v2, 0x1

    .line 787
    if-le v1, v2, :cond_30

    .line 788
    .line 789
    return v2

    .line 790
    :cond_30
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    .line 791
    .line 792
    .line 793
    return v2
.end method

.method public final dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    if-ltz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v1, p3, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    new-instance p1, Landroid/util/Pair;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 37
    .line 38
    invoke-direct {p1, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_2
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public final dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    if-ltz v2, :cond_6

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    move-object/from16 v4, p6

    .line 17
    .line 18
    if-ne v3, v4, :cond_1

    .line 19
    .line 20
    move-object/from16 v5, p7

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    move-object/from16 v5, p7

    .line 32
    .line 33
    if-ne v3, v5, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-object/from16 v5, p7

    .line 37
    .line 38
    :cond_3
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 52
    .line 53
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const v8, -0x4dfde11f

    .line 58
    .line 59
    .line 60
    const-string v9, " try handler %s"

    .line 61
    .line 62
    invoke-static {v7, v8, v6, v9, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move-object v7, v3

    .line 70
    check-cast v7, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 71
    .line 72
    move-object v8, p1

    .line 73
    move-object v9, p2

    .line 74
    move-object/from16 v10, p3

    .line 75
    .line 76
    move-object/from16 v11, p4

    .line 77
    .line 78
    move-object/from16 v12, p5

    .line 79
    .line 80
    invoke-interface/range {v7 .. v12}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_0

    .line 85
    .line 86
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 87
    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 99
    .line 100
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const v5, -0x4d529b50

    .line 105
    .line 106
    .line 107
    const-string v7, " animated by %s"

    .line 108
    .line 109
    invoke-static {v4, v5, v6, v7, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 123
    .line 124
    invoke-virtual {v0, v3, v4}, Lcom/android/wm/shell/transition/Tracer;->logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 135
    .line 136
    const-string v1, "This shouldn\'t happen, maybe the default handler is broken."

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0
.end method

.method public final finishForSync(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 17

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 10
    .line 11
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/transition/Transitions;->isTransitionKnown(Landroid/os/IBinder;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const-string v5, "ShellTransitions"

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "finishForSleep: already played sync transition "

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v4, v0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 57
    .line 58
    if-eq v4, v6, :cond_1

    .line 59
    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v9, "finishForSleep: mismatched Tracks between forceFinish and logic "

    .line 63
    .line 64
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v9, " vs "

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-object v4, v4, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 90
    .line 91
    if-ne v4, v3, :cond_3

    .line 92
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v8, "Forcing transition to finish due to sync timeout: "

    .line 96
    .line 97
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iput-boolean v7, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 111
    .line 112
    iget-object v4, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 113
    .line 114
    const/4 v8, 0x0

    .line 115
    if-eqz v4, :cond_2

    .line 116
    .line 117
    iget-object v9, v3, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 118
    .line 119
    invoke-interface {v4, v9, v7, v8}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    invoke-virtual {v0, v3, v8, v8}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v3, v6, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    if-nez v3, :cond_4

    .line 129
    .line 130
    iget-object v3, v6, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_4

    .line 137
    .line 138
    move v3, v7

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    move v3, v4

    .line 141
    :goto_0
    if-nez v3, :cond_a

    .line 142
    .line 143
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-eqz v8, :cond_5

    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :cond_5
    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    .line 154
    .line 155
    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 156
    .line 157
    .line 158
    new-instance v15, Landroid/window/TransitionInfo;

    .line 159
    .line 160
    const/16 v9, 0xc

    .line 161
    .line 162
    invoke-direct {v15, v9, v4}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 163
    .line 164
    .line 165
    :goto_1
    iget-object v9, v6, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 166
    .line 167
    if-eqz v9, :cond_a

    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-nez v9, :cond_a

    .line 174
    .line 175
    iget-object v14, v6, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    check-cast v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 182
    .line 183
    iget-object v10, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 184
    .line 185
    invoke-virtual {v10}, Landroid/window/TransitionInfo;->getFlags()I

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    const/high16 v11, 0x200000

    .line 190
    .line 191
    and-int/2addr v10, v11

    .line 192
    if-eqz v10, :cond_6

    .line 193
    .line 194
    move v10, v7

    .line 195
    goto :goto_2

    .line 196
    :cond_6
    move v10, v4

    .line 197
    :goto_2
    if-nez v10, :cond_7

    .line 198
    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v11, "Somehow blocked on a non-sync transition? "

    .line 202
    .line 203
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_7
    sget-boolean v10, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 217
    .line 218
    if-eqz v10, :cond_8

    .line 219
    .line 220
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 229
    .line 230
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    const v11, 0x24a9b32f

    .line 235
    .line 236
    .line 237
    const-string v13, " Attempt to merge sync %s into %s via a SLEEP proxy"

    .line 238
    .line 239
    invoke-static {v12, v11, v4, v13, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_8
    iget-object v10, v14, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 243
    .line 244
    iget-object v11, v9, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 245
    .line 246
    iget-object v13, v14, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 247
    .line 248
    new-instance v16, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;

    .line 249
    .line 250
    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda3;-><init>()V

    .line 251
    .line 252
    .line 253
    move-object v9, v10

    .line 254
    move-object v10, v11

    .line 255
    move-object v11, v15

    .line 256
    move-object v12, v8

    .line 257
    move-object v4, v14

    .line 258
    move-object/from16 v14, v16

    .line 259
    .line 260
    invoke-interface/range {v9 .. v14}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 261
    .line 262
    .line 263
    iget-object v9, v6, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 264
    .line 265
    if-ne v9, v4, :cond_9

    .line 266
    .line 267
    new-instance v3, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda4;

    .line 268
    .line 269
    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;ILcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 273
    .line 274
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 275
    .line 276
    const-wide/16 v1, 0x78

    .line 277
    .line 278
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(JLjava/lang/Runnable;)V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_9
    const/4 v4, 0x0

    .line 283
    goto :goto_1

    .line 284
    :cond_a
    :goto_3
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isAnimating()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    move v2, v0

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v2, v4, :cond_2

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 25
    .line 26
    iget-object v4, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    move v3, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    move v3, v0

    .line 41
    :goto_1
    if-nez v3, :cond_1

    .line 42
    .line 43
    move p0, v0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move p0, v1

    .line 49
    :goto_2
    if-nez p0, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move v1, v0

    .line 53
    :cond_4
    :goto_3
    return v1
.end method

.method public final isTransitionKnown(Landroid/os/IBinder;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v4, 0x1

    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 19
    .line 20
    if-ne v2, p1, :cond_0

    .line 21
    .line 22
    return v4

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v1, v0

    .line 27
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v1, v3, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 42
    .line 43
    if-ne v2, p1, :cond_2

    .line 44
    .line 45
    return v4

    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v1, v0

    .line 50
    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ge v1, v3, :cond_b

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 63
    .line 64
    move v3, v0

    .line 65
    :goto_3
    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-ge v3, v5, :cond_5

    .line 72
    .line 73
    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 80
    .line 81
    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 82
    .line 83
    if-ne v5, p1, :cond_4

    .line 84
    .line 85
    return v4

    .line 86
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 90
    .line 91
    if-nez v2, :cond_6

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_6
    iget-object v3, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 95
    .line 96
    if-ne v3, p1, :cond_7

    .line 97
    .line 98
    return v4

    .line 99
    :cond_7
    iget-object v3, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 100
    .line 101
    if-nez v3, :cond_8

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_8
    move v3, v0

    .line 105
    :goto_4
    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-ge v3, v5, :cond_a

    .line 112
    .line 113
    iget-object v5, v2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 120
    .line 121
    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 122
    .line 123
    if-ne v5, p1, :cond_9

    .line 124
    .line 125
    return v4

    .line 126
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_b
    return v0
.end method

.method public final onAbort(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 15
    .line 16
    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/android/wm/shell/nano/Transition;

    .line 28
    .line 29
    invoke-direct {v4}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    .line 30
    .line 31
    .line 32
    iput v2, v4, Lcom/android/wm/shell/nano/Transition;->id:I

    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    iput-wide v5, v4, Lcom/android/wm/shell/nano/Transition;->abortTimeNs:J

    .line 39
    .line 40
    iget-object v2, v3, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-interface {v2, v3, v1, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object p1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-le p1, v1, :cond_2

    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 14
    .line 15
    if-eq v1, p1, :cond_1

    .line 16
    .line 17
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER:Z

    .line 18
    .line 19
    const-string p2, "ShellTransitions"

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object p0, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p3, "Finishing is skipped due to transferred transit="

    .line 38
    .line 39
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p3, "Trying to finish a non-running transition. Either remote crashed or  a handler didn\'t properly deal with a merge. "

    .line 56
    .line 57
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    new-instance p1, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    const/4 v1, 0x0

    .line 77
    iput-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    move v3, v2

    .line 81
    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-ge v3, v5, :cond_2

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    .line 94
    .line 95
    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 96
    .line 97
    invoke-interface {v4, v5}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionFinished(Landroid/os/IBinder;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 104
    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    iget-boolean v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 108
    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 114
    .line 115
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const/4 v4, 0x3

    .line 124
    const-string v6, "Transition animation finished (aborted=%b), notifying core %s"

    .line 125
    .line 126
    const v7, 0x31198153

    .line 127
    .line 128
    .line 129
    invoke-static {v5, v7, v4, v6, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 133
    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->clear()V

    .line 137
    .line 138
    .line 139
    :cond_4
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER:Z

    .line 140
    .line 141
    if-eqz v3, :cond_f

    .line 142
    .line 143
    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    .line 144
    .line 145
    if-eqz v3, :cond_f

    .line 146
    .line 147
    move-object v4, v1

    .line 148
    move v3, v2

    .line 149
    :goto_1
    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-ge v3, v5, :cond_e

    .line 156
    .line 157
    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 164
    .line 165
    iget-object v6, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 166
    .line 167
    if-eqz v6, :cond_6

    .line 168
    .line 169
    if-nez v4, :cond_5

    .line 170
    .line 171
    move-object v4, v6

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 174
    .line 175
    .line 176
    :cond_6
    :goto_2
    iget-object v6, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 177
    .line 178
    if-eqz v6, :cond_8

    .line 179
    .line 180
    if-nez v4, :cond_7

    .line 181
    .line 182
    move-object v4, v6

    .line 183
    goto :goto_3

    .line 184
    :cond_7
    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 185
    .line 186
    .line 187
    :cond_8
    :goto_3
    iget-object v6, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 188
    .line 189
    if-eqz v6, :cond_d

    .line 190
    .line 191
    move v6, v2

    .line 192
    :goto_4
    iget-object v7, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-ge v6, v7, :cond_d

    .line 199
    .line 200
    iget-object v7, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 207
    .line 208
    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 209
    .line 210
    if-eqz v8, :cond_a

    .line 211
    .line 212
    if-nez v4, :cond_9

    .line 213
    .line 214
    move-object v4, v8

    .line 215
    goto :goto_5

    .line 216
    :cond_9
    invoke-virtual {v4, v8}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 217
    .line 218
    .line 219
    :cond_a
    :goto_5
    iget-object v7, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 220
    .line 221
    if-eqz v7, :cond_c

    .line 222
    .line 223
    if-nez v4, :cond_b

    .line 224
    .line 225
    move-object v4, v7

    .line 226
    goto :goto_6

    .line 227
    :cond_b
    invoke-virtual {v4, v7}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 228
    .line 229
    .line 230
    :cond_c
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_e
    if-eqz v4, :cond_10

    .line 237
    .line 238
    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 239
    .line 240
    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 241
    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_f
    move-object v4, v1

    .line 245
    :cond_10
    :goto_7
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER:Z

    .line 246
    .line 247
    if-eqz v3, :cond_11

    .line 248
    .line 249
    if-eqz v4, :cond_11

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_11
    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 253
    .line 254
    :goto_8
    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 255
    .line 256
    if-eqz v3, :cond_16

    .line 257
    .line 258
    move v3, v2

    .line 259
    :goto_9
    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-ge v3, v5, :cond_16

    .line 266
    .line 267
    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 274
    .line 275
    iget-object v6, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 276
    .line 277
    if-eqz v6, :cond_13

    .line 278
    .line 279
    if-nez v4, :cond_12

    .line 280
    .line 281
    move-object v4, v6

    .line 282
    goto :goto_a

    .line 283
    :cond_12
    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 284
    .line 285
    .line 286
    :cond_13
    :goto_a
    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 287
    .line 288
    if-eqz v5, :cond_15

    .line 289
    .line 290
    if-nez v4, :cond_14

    .line 291
    .line 292
    move-object v4, v5

    .line 293
    goto :goto_b

    .line 294
    :cond_14
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 295
    .line 296
    .line 297
    :cond_15
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_16
    if-eqz v4, :cond_17

    .line 301
    .line 302
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 303
    .line 304
    .line 305
    :cond_17
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER:Z

    .line 306
    .line 307
    iget-object v4, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 308
    .line 309
    if-eqz v3, :cond_1d

    .line 310
    .line 311
    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    .line 312
    .line 313
    if-eqz v3, :cond_1d

    .line 314
    .line 315
    move v3, v2

    .line 316
    :goto_c
    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-ge v3, v5, :cond_1c

    .line 323
    .line 324
    iget-object v5, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    check-cast v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 331
    .line 332
    iget-object v6, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 333
    .line 334
    invoke-virtual {v4, v6, v1, v1}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    .line 335
    .line 336
    .line 337
    iget-object v6, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 338
    .line 339
    if-nez v6, :cond_18

    .line 340
    .line 341
    goto :goto_d

    .line 342
    :cond_18
    invoke-virtual {v6}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 343
    .line 344
    .line 345
    :goto_d
    iget-object v6, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 346
    .line 347
    if-eqz v6, :cond_1b

    .line 348
    .line 349
    move v6, v2

    .line 350
    :goto_e
    iget-object v7, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    if-ge v6, v7, :cond_1a

    .line 357
    .line 358
    iget-object v7, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v7

    .line 364
    check-cast v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 365
    .line 366
    iget-object v8, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 367
    .line 368
    invoke-virtual {v4, v8, v1, v1}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    .line 369
    .line 370
    .line 371
    iget-object v7, v7, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 372
    .line 373
    if-nez v7, :cond_19

    .line 374
    .line 375
    goto :goto_f

    .line 376
    :cond_19
    invoke-virtual {v7}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 377
    .line 378
    .line 379
    :goto_f
    add-int/lit8 v6, v6, 0x1

    .line 380
    .line 381
    goto :goto_e

    .line 382
    :cond_1a
    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 385
    .line 386
    .line 387
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 388
    .line 389
    goto :goto_c

    .line 390
    :cond_1c
    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mTransfer:Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 393
    .line 394
    .line 395
    :cond_1d
    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 396
    .line 397
    if-nez v3, :cond_1e

    .line 398
    .line 399
    goto :goto_10

    .line 400
    :cond_1e
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 401
    .line 402
    .line 403
    :goto_10
    iget-object v3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 404
    .line 405
    invoke-virtual {v4, v3, p2, p3}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    .line 406
    .line 407
    .line 408
    iget-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 409
    .line 410
    if-eqz p2, :cond_21

    .line 411
    .line 412
    :goto_11
    iget-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 415
    .line 416
    .line 417
    move-result p2

    .line 418
    if-ge v2, p2, :cond_20

    .line 419
    .line 420
    iget-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object p2

    .line 426
    check-cast p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 427
    .line 428
    iget-object p3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 429
    .line 430
    invoke-virtual {v4, p3, v1, v1}, Landroid/window/WindowOrganizer;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    .line 431
    .line 432
    .line 433
    iget-object p2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 434
    .line 435
    if-nez p2, :cond_1f

    .line 436
    .line 437
    goto :goto_12

    .line 438
    :cond_1f
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 439
    .line 440
    .line 441
    :goto_12
    add-int/lit8 v2, v2, 0x1

    .line 442
    .line 443
    goto :goto_11

    .line 444
    :cond_20
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 447
    .line 448
    .line 449
    :cond_21
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    .line 450
    .line 451
    .line 452
    return-void
.end method

.method public final onMerged(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_7

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->getTrack()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 22
    .line 23
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 37
    .line 38
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const v3, -0x148840c6

    .line 43
    .line 44
    .line 45
    const-string v5, "Transition was merged: %s into %s"

    .line 46
    .line 47
    invoke-static {v4, v3, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eq v1, p2, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v1, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v4, "Merged transition out-of-order? "

    .line 72
    .line 73
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v4, "ShellTransitions"

    .line 84
    .line 85
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-gez v1, :cond_3

    .line 93
    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string p1, "Merged a transition that is no-longer queued? "

    .line 97
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_3
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 125
    .line 126
    :cond_4
    iget-object v1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v1, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 132
    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    iget-boolean v3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 136
    .line 137
    if-nez v3, :cond_5

    .line 138
    .line 139
    iget-object v3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 140
    .line 141
    iget-object v4, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 142
    .line 143
    invoke-interface {v1, v3, v2, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-ge v2, v3, :cond_6

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    .line 159
    .line 160
    iget-object v3, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 161
    .line 162
    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 163
    .line 164
    invoke-interface {v1, v3, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 165
    .line 166
    .line 167
    add-int/lit8 v2, v2, 0x1

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    iget-object p2, p2, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 171
    .line 172
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    new-instance v2, Lcom/android/wm/shell/nano/Transition;

    .line 188
    .line 189
    invoke-direct {v2}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    .line 190
    .line 191
    .line 192
    iput p2, v2, Lcom/android/wm/shell/nano/Transition;->id:I

    .line 193
    .line 194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 195
    .line 196
    .line 197
    move-result-wide v3

    .line 198
    iput-wide v3, v2, Lcom/android/wm/shell/nano/Transition;->mergeTimeNs:J

    .line 199
    .line 200
    iput p1, v2, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    .line 201
    .line 202
    iget-object p1, v1, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 203
    .line 204
    invoke-virtual {p1, v2}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v1, "Can\'t merge across tracks: "

    .line 216
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string p2, " into "

    .line 224
    .line 225
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p0
.end method

.method public final onShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "tracing"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Invalid command: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    aget-object p2, p2, v0

    .line 24
    .line 25
    invoke-static {v1, p2, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 26
    .line 27
    .line 28
    const-string p2, ""

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :cond_0
    array-length v0, p2

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {p2, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, [Ljava/lang/String;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Tracer;->onShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    return v1
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    const-string v0, "Transitions.onTransitionReady"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/window/TransitionInfo;->setUnreleasedWarningCallSiteForAllSurfaces(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 20
    .line 21
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v2, 0x3fcb06b3

    .line 26
    .line 27
    .line 28
    const-string v4, "onTransitionReady %s: %s"

    .line 29
    .line 30
    invoke-static {v3, v2, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, -0x1

    .line 40
    add-int/2addr v2, v3

    .line 41
    :goto_0
    if-ltz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 48
    .line 49
    iget-object v4, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 50
    .line 51
    if-ne v4, p1, :cond_1

    .line 52
    .line 53
    move v3, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    if-ltz v3, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 65
    .line 66
    iput-object p2, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 67
    .line 68
    iput-object p3, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 69
    .line 70
    iput-object p4, p1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 71
    .line 72
    if-lez v3, :cond_3

    .line 73
    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string p3, "Transition might be ready out-of-order "

    .line 77
    .line 78
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p3, " for "

    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p3, ". This is ok if it\'s on a different track."

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string p3, "ShellTransitions"

    .line 102
    .line 103
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    if-nez p3, :cond_4

    .line 113
    .line 114
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z

    .line 119
    .line 120
    .line 121
    :goto_2
    return-void

    .line 122
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string p3, "Got transitionReady for non-pending transition "

    .line 127
    .line 128
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p1, ". expecting one of "

    .line 135
    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    new-instance p3, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda0;

    .line 144
    .line 145
    invoke-direct {p3, v1}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda0;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-interface {p1}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p0
.end method

.method public final playTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    .line 16
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v4, 0x23c14573

    .line 21
    .line 22
    .line 23
    const-string v5, "Playing animation for %s"

    .line 24
    .line 25
    invoke-static {v3, v4, v2, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_0
    iget-object v3, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v1, v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;

    .line 42
    .line 43
    invoke-interface {v3}, Lcom/android/wm/shell/transition/Transitions$TransitionObserver;->onTransitionStarting()V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 50
    .line 51
    iget-object v3, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getType()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    move v7, v2

    .line 66
    :goto_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-ge v7, v9, :cond_2

    .line 71
    .line 72
    invoke-virtual {v1, v7}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v3, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v7, v7, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 87
    .line 88
    const/4 v9, -0x1

    .line 89
    const/4 v10, 0x2

    .line 90
    if-eqz v7, :cond_4

    .line 91
    .line 92
    sget v7, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->$r8$clinit:I

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    add-int/lit8 v11, v7, 0x1

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    add-int/2addr v12, v9

    .line 113
    :goto_2
    if-ltz v12, :cond_4

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    check-cast v13, Landroid/window/TransitionInfo$Change;

    .line 124
    .line 125
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    if-eqz v14, :cond_3

    .line 130
    .line 131
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    if-ne v13, v10, :cond_3

    .line 136
    .line 137
    add-int/2addr v7, v11

    .line 138
    sub-int v9, v7, v12

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    add-int/lit8 v12, v12, -0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    :goto_3
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    add-int/lit8 v11, v7, 0x1

    .line 153
    .line 154
    add-int/lit8 v12, v7, -0x1

    .line 155
    .line 156
    move v13, v2

    .line 157
    :goto_4
    if-ltz v12, :cond_23

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    check-cast v15, Landroid/window/TransitionInfo$Change;

    .line 168
    .line 169
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 178
    .line 179
    const/4 v14, 0x6

    .line 180
    if-eqz v17, :cond_b

    .line 181
    .line 182
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 183
    .line 184
    .line 185
    move-result-object v17

    .line 186
    if-eqz v17, :cond_b

    .line 187
    .line 188
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-ne v2, v14, :cond_5

    .line 193
    .line 194
    add-int v2, v11, v7

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_5
    add-int v2, v11, v7

    .line 198
    .line 199
    sub-int/2addr v2, v12

    .line 200
    :goto_5
    if-ge v2, v9, :cond_6

    .line 201
    .line 202
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    const/4 v14, 0x1

    .line 207
    if-ne v10, v14, :cond_6

    .line 208
    .line 209
    add-int/2addr v2, v9

    .line 210
    :cond_6
    sget v10, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->$r8$clinit:I

    .line 211
    .line 212
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-static {v15, v1}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 217
    .line 218
    .line 219
    move-result v14

    .line 220
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    .line 221
    .line 222
    .line 223
    move-result v17

    .line 224
    if-eqz v17, :cond_7

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_7
    invoke-static {v1}, Lcom/android/wm/shell/transition/change/ChangeTransitionProvider;->isDisplayRotating(Landroid/window/TransitionInfo;)Z

    .line 228
    .line 229
    .line 230
    move-result v17

    .line 231
    if-eqz v17, :cond_9

    .line 232
    .line 233
    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 234
    .line 235
    if-eqz v17, :cond_8

    .line 236
    .line 237
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 238
    .line 239
    .line 240
    move-result-object v17

    .line 241
    if-eqz v17, :cond_8

    .line 242
    .line 243
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 244
    .line 245
    .line 246
    move-result-object v17

    .line 247
    invoke-virtual/range {v17 .. v17}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    .line 248
    .line 249
    .line 250
    move-result v17

    .line 251
    if-eqz v17, :cond_8

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_8
    :goto_6
    move/from16 v17, v9

    .line 255
    .line 256
    const/4 v9, 0x0

    .line 257
    goto :goto_8

    .line 258
    :cond_9
    :goto_7
    move/from16 v17, v9

    .line 259
    .line 260
    const/4 v9, 0x1

    .line 261
    :goto_8
    if-eqz v9, :cond_a

    .line 262
    .line 263
    invoke-virtual {v1, v14}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 268
    .line 269
    .line 270
    move-result-object v14

    .line 271
    invoke-virtual {v3, v10, v14}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 272
    .line 273
    .line 274
    :cond_a
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    invoke-virtual {v3, v10, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 279
    .line 280
    .line 281
    new-instance v10, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v14, "assignChangeLeashLayer: z="

    .line 284
    .line 285
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v2, ", leash="

    .line 292
    .line 293
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v2, ", reparent="

    .line 304
    .line 305
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v2, ", "

    .line 312
    .line 313
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getChangeTransitMode()I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    const-string v9, "ChangeTransitionProvider"

    .line 332
    .line 333
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_b
    move/from16 v17, v9

    .line 338
    .line 339
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 340
    .line 341
    if-eqz v9, :cond_c

    .line 342
    .line 343
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 344
    .line 345
    .line 346
    move-result-object v9

    .line 347
    if-eqz v9, :cond_c

    .line 348
    .line 349
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    if-ne v9, v14, :cond_c

    .line 354
    .line 355
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    if-eqz v9, :cond_c

    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_c
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    .line 363
    .line 364
    if-eqz v9, :cond_d

    .line 365
    .line 366
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    .line 367
    .line 368
    .line 369
    move-result v9

    .line 370
    if-eqz v9, :cond_d

    .line 371
    .line 372
    goto :goto_9

    .line 373
    :cond_d
    invoke-static {v15, v1}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    if-nez v9, :cond_e

    .line 378
    .line 379
    :goto_9
    move/from16 v19, v5

    .line 380
    .line 381
    goto/16 :goto_c

    .line 382
    .line 383
    :cond_e
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    if-eqz v9, :cond_f

    .line 388
    .line 389
    const/4 v9, 0x1

    .line 390
    goto :goto_a

    .line 391
    :cond_f
    const/4 v9, 0x0

    .line 392
    :goto_a
    invoke-static {v15, v1}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 393
    .line 394
    .line 395
    move-result v14

    .line 396
    invoke-virtual {v1, v14}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 397
    .line 398
    .line 399
    move-result-object v18

    .line 400
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 405
    .line 406
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    sget-boolean v19, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 411
    .line 412
    const-string v8, "ShellTransitions"

    .line 413
    .line 414
    if-eqz v19, :cond_10

    .line 415
    .line 416
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 417
    .line 418
    .line 419
    move-result v19

    .line 420
    const/16 v16, 0x2

    .line 421
    .line 422
    and-int/lit8 v19, v19, 0x2

    .line 423
    .line 424
    if-eqz v19, :cond_10

    .line 425
    .line 426
    move/from16 v19, v5

    .line 427
    .line 428
    invoke-virtual/range {v18 .. v18}, Landroid/window/TransitionInfo$Root;->getConfiguration()Landroid/content/res/Configuration;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 433
    .line 434
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    if-eqz v5, :cond_11

    .line 439
    .line 440
    const-string/jumbo v0, "setupAnimHierarchy: skip to reparent wallpaper, rootLeash is split"

    .line 441
    .line 442
    .line 443
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    goto/16 :goto_c

    .line 447
    .line 448
    :cond_10
    move/from16 v19, v5

    .line 449
    .line 450
    :cond_11
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 451
    .line 452
    if-eqz v5, :cond_12

    .line 453
    .line 454
    const/4 v5, 0x5

    .line 455
    if-ne v0, v5, :cond_12

    .line 456
    .line 457
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    const/high16 v20, 0x800000

    .line 462
    .line 463
    and-int v5, v5, v20

    .line 464
    .line 465
    if-eqz v5, :cond_12

    .line 466
    .line 467
    invoke-virtual/range {v18 .. v18}, Landroid/window/TransitionInfo$Root;->isActivityRootLeash()Z

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    if-nez v5, :cond_12

    .line 472
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string/jumbo v2, "setupAnimHierarchy: skip to reparent "

    .line 476
    .line 477
    .line 478
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v2, ", reason=non_activity_root_leash"

    .line 485
    .line 486
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    goto :goto_c

    .line 497
    :cond_12
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 498
    .line 499
    const/4 v8, 0x3

    .line 500
    if-eqz v5, :cond_16

    .line 501
    .line 502
    const/4 v5, 0x6

    .line 503
    if-eq v4, v5, :cond_13

    .line 504
    .line 505
    const/16 v5, 0x3ef

    .line 506
    .line 507
    if-ne v4, v5, :cond_16

    .line 508
    .line 509
    :cond_13
    if-eq v10, v8, :cond_14

    .line 510
    .line 511
    const/4 v5, 0x4

    .line 512
    if-eq v10, v5, :cond_14

    .line 513
    .line 514
    if-eqz v13, :cond_15

    .line 515
    .line 516
    :cond_14
    const/16 v5, 0x200

    .line 517
    .line 518
    invoke-virtual {v15, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    if-eqz v5, :cond_15

    .line 523
    .line 524
    goto :goto_c

    .line 525
    :cond_15
    const/16 v5, 0x20

    .line 526
    .line 527
    invoke-virtual {v15, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    if-eqz v5, :cond_16

    .line 532
    .line 533
    const/4 v5, 0x6

    .line 534
    if-ne v10, v5, :cond_16

    .line 535
    .line 536
    const/4 v5, 0x1

    .line 537
    const/4 v13, 0x1

    .line 538
    goto :goto_b

    .line 539
    :cond_16
    const/4 v5, 0x1

    .line 540
    :goto_b
    if-ne v4, v5, :cond_17

    .line 541
    .line 542
    const/4 v5, 0x2

    .line 543
    if-ne v0, v5, :cond_17

    .line 544
    .line 545
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->isEnteringPinnedMode()Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-nez v0, :cond_17

    .line 550
    .line 551
    :goto_c
    const/4 v0, 0x2

    .line 552
    goto/16 :goto_14

    .line 553
    .line 554
    :cond_17
    if-nez v9, :cond_18

    .line 555
    .line 556
    invoke-virtual {v1, v14}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-virtual {v3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 572
    .line 573
    invoke-virtual {v1, v14}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 582
    .line 583
    sub-int/2addr v0, v5

    .line 584
    int-to-float v0, v0

    .line 585
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 586
    .line 587
    .line 588
    move-result-object v5

    .line 589
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 590
    .line 591
    invoke-virtual {v1, v14}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 596
    .line 597
    .line 598
    move-result-object v9

    .line 599
    iget v9, v9, Landroid/graphics/Point;->y:I

    .line 600
    .line 601
    sub-int/2addr v5, v9

    .line 602
    int-to-float v5, v5

    .line 603
    invoke-virtual {v3, v2, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 604
    .line 605
    .line 606
    :cond_18
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    const/4 v5, 0x2

    .line 611
    and-int/2addr v0, v5

    .line 612
    if-eqz v0, :cond_1b

    .line 613
    .line 614
    const/4 v0, 0x1

    .line 615
    if-eq v10, v0, :cond_1a

    .line 616
    .line 617
    if-ne v10, v8, :cond_19

    .line 618
    .line 619
    goto :goto_d

    .line 620
    :cond_19
    neg-int v0, v11

    .line 621
    goto :goto_e

    .line 622
    :cond_1a
    :goto_d
    neg-int v0, v11

    .line 623
    add-int/2addr v0, v7

    .line 624
    :goto_e
    sub-int/2addr v0, v12

    .line 625
    move v5, v0

    .line 626
    const/4 v0, 0x2

    .line 627
    goto :goto_13

    .line 628
    :cond_1b
    const/4 v0, 0x1

    .line 629
    if-eq v10, v0, :cond_1f

    .line 630
    .line 631
    if-ne v10, v8, :cond_1c

    .line 632
    .line 633
    goto :goto_10

    .line 634
    :cond_1c
    const/4 v0, 0x2

    .line 635
    if-eq v10, v0, :cond_1e

    .line 636
    .line 637
    const/4 v5, 0x4

    .line 638
    if-ne v10, v5, :cond_1d

    .line 639
    .line 640
    goto :goto_f

    .line 641
    :cond_1d
    if-nez v6, :cond_21

    .line 642
    .line 643
    invoke-static {v15}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    .line 644
    .line 645
    .line 646
    move-result v5

    .line 647
    if-eqz v5, :cond_22

    .line 648
    .line 649
    goto :goto_11

    .line 650
    :cond_1e
    :goto_f
    if-nez v19, :cond_21

    .line 651
    .line 652
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 653
    .line 654
    if-eqz v5, :cond_22

    .line 655
    .line 656
    invoke-static {v15}, Lcom/android/wm/shell/util/TransitionUtil;->isHomeOrRecents(Landroid/window/TransitionInfo$Change;)Z

    .line 657
    .line 658
    .line 659
    move-result v5

    .line 660
    if-eqz v5, :cond_22

    .line 661
    .line 662
    goto :goto_11

    .line 663
    :cond_1f
    :goto_10
    const/4 v0, 0x2

    .line 664
    if-nez v19, :cond_20

    .line 665
    .line 666
    const/high16 v5, 0x100000

    .line 667
    .line 668
    invoke-virtual {v15, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    if-eqz v5, :cond_21

    .line 673
    .line 674
    :cond_20
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 675
    .line 676
    if-eqz v5, :cond_22

    .line 677
    .line 678
    invoke-static {v15}, Lcom/android/wm/shell/util/TransitionUtil;->isHomeOrRecents(Landroid/window/TransitionInfo$Change;)Z

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    if-nez v5, :cond_21

    .line 683
    .line 684
    goto :goto_12

    .line 685
    :cond_21
    :goto_11
    sub-int v5, v11, v12

    .line 686
    .line 687
    goto :goto_13

    .line 688
    :cond_22
    :goto_12
    add-int v5, v11, v7

    .line 689
    .line 690
    sub-int/2addr v5, v12

    .line 691
    :goto_13
    invoke-virtual {v3, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 692
    .line 693
    .line 694
    :goto_14
    add-int/lit8 v12, v12, -0x1

    .line 695
    .line 696
    move-object/from16 v8, p1

    .line 697
    .line 698
    move v10, v0

    .line 699
    move/from16 v9, v17

    .line 700
    .line 701
    move/from16 v5, v19

    .line 702
    .line 703
    const/4 v2, 0x0

    .line 704
    move-object/from16 v0, p0

    .line 705
    .line 706
    goto/16 :goto_4

    .line 707
    .line 708
    :cond_23
    iget-object v0, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 709
    .line 710
    if-eqz v0, :cond_26

    .line 711
    .line 712
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 713
    .line 714
    if-eqz v1, :cond_24

    .line 715
    .line 716
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 721
    .line 722
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    const v2, 0x83ef4b7

    .line 727
    .line 728
    .line 729
    const-string v3, " try firstHandler %s"

    .line 730
    .line 731
    const/4 v4, 0x0

    .line 732
    invoke-static {v1, v2, v4, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 733
    .line 734
    .line 735
    goto :goto_15

    .line 736
    :cond_24
    const/4 v4, 0x0

    .line 737
    :goto_15
    iget-object v9, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 738
    .line 739
    iget-object v10, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 740
    .line 741
    iget-object v11, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 742
    .line 743
    iget-object v12, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 744
    .line 745
    iget-object v13, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 746
    .line 747
    new-instance v14, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda6;

    .line 748
    .line 749
    move-object/from16 v0, p0

    .line 750
    .line 751
    invoke-direct {v14, v0, v8, v4}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;I)V

    .line 752
    .line 753
    .line 754
    invoke-interface/range {v9 .. v14}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    if-eqz v1, :cond_27

    .line 759
    .line 760
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 761
    .line 762
    if-eqz v1, :cond_25

    .line 763
    .line 764
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 765
    .line 766
    const/4 v2, 0x0

    .line 767
    const v3, 0x2a269024

    .line 768
    .line 769
    .line 770
    const-string v4, " animated by firstHandler"

    .line 771
    .line 772
    const/4 v5, 0x0

    .line 773
    invoke-static {v1, v3, v5, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 774
    .line 775
    .line 776
    :cond_25
    iget-object v1, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 777
    .line 778
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 779
    .line 780
    .line 781
    move-result v1

    .line 782
    iget-object v2, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 783
    .line 784
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 785
    .line 786
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/transition/Tracer;->logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 787
    .line 788
    .line 789
    return-void

    .line 790
    :cond_26
    move-object/from16 v0, p0

    .line 791
    .line 792
    :cond_27
    iget-object v1, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 793
    .line 794
    iget-object v2, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 795
    .line 796
    iget-object v3, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 797
    .line 798
    iget-object v4, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 799
    .line 800
    new-instance v5, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda6;

    .line 801
    .line 802
    const/4 v6, 0x1

    .line 803
    invoke-direct {v5, v0, v8, v6}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;I)V

    .line 804
    .line 805
    .line 806
    iget-object v6, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 807
    .line 808
    const/4 v7, 0x0

    .line 809
    move-object/from16 v0, p0

    .line 810
    .line 811
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    iput-object v0, v8, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 816
    .line 817
    return-void
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "tracing"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "  "

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/transition/Tracer;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_a

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 12
    .line 13
    if-nez v0, :cond_9

    .line 14
    .line 15
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mTracks:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    int-to-long v5, p1

    .line 27
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 28
    .line 29
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v5, 0x15718457

    .line 38
    .line 39
    .line 40
    const-string v6, "Track %d became idle"

    .line 41
    .line 42
    invoke-static {p1, v5, v4, v6, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    move p1, v3

    .line 46
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ge p1, v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$Track;

    .line 57
    .line 58
    iget-object v5, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 59
    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions$Track;->mReadyTransitions:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    move v0, v4

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v0, v3

    .line 73
    :goto_1
    if-nez v0, :cond_2

    .line 74
    .line 75
    move v4, v3

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :goto_2
    if-eqz v4, :cond_9

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mReadyDuringSync:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_9

    .line 95
    .line 96
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/Transitions;->dispatchReady(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_4

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_6

    .line 116
    .line 117
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 118
    .line 119
    if-eqz v0, :cond_9

    .line 120
    .line 121
    invoke-static {p1}, Lcom/android/wm/shell/transition/Transitions;->isEmptyExceptZombie(Ljava/util/ArrayList;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_9

    .line 126
    .line 127
    :cond_6
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 128
    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 132
    .line 133
    const v0, 0x1d40c597

    .line 134
    .line 135
    .line 136
    const-string v1, "All active transition animations finished"

    .line 137
    .line 138
    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-ge v3, v0, :cond_8

    .line 148
    .line 149
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Ljava/lang/Runnable;

    .line 154
    .line 155
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 162
    .line 163
    .line 164
    :cond_9
    :goto_4
    return-void

    .line 165
    :cond_a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 170
    .line 171
    iget-object v4, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 172
    .line 173
    if-nez v4, :cond_d

    .line 174
    .line 175
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    iput-object v1, p1, Lcom/android/wm/shell/transition/Transitions$Track;->mActiveTransition:Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 179
    .line 180
    iget-boolean v0, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 181
    .line 182
    if-eqz v0, :cond_c

    .line 183
    .line 184
    iget-object p1, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 185
    .line 186
    if-eqz p1, :cond_b

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 189
    .line 190
    .line 191
    :cond_b
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/wm/shell/transition/Transitions;->onFinish(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/transition/Transitions;->playTransition(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->processReadyQueue(Lcom/android/wm/shell/transition/Transitions$Track;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_d
    iget-boolean p1, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mAborted:Z

    .line 203
    .line 204
    if-eqz p1, :cond_e

    .line 205
    .line 206
    invoke-virtual {p0, v4, v1}, Lcom/android/wm/shell/transition/Transitions;->onMerged(Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_e
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 211
    .line 212
    if-eqz p1, :cond_f

    .line 213
    .line 214
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 223
    .line 224
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const v0, 0x44482b10

    .line 229
    .line 230
    .line 231
    const-string v5, "Transition %s ready while %s is still animating. Notify the animating transition in case they can be merged"

    .line 232
    .line 233
    invoke-static {v2, v0, v3, v5, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_f
    iget-object p1, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 237
    .line 238
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    iget-object v0, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    iget-object v2, p0, Lcom/android/wm/shell/transition/Transitions;->mTracer:Lcom/android/wm/shell/transition/Tracer;

    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    new-instance v3, Lcom/android/wm/shell/nano/Transition;

    .line 254
    .line 255
    invoke-direct {v3}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    .line 256
    .line 257
    .line 258
    iput p1, v3, Lcom/android/wm/shell/nano/Transition;->id:I

    .line 259
    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 261
    .line 262
    .line 263
    move-result-wide v5

    .line 264
    iput-wide v5, v3, Lcom/android/wm/shell/nano/Transition;->mergeRequestTimeNs:J

    .line 265
    .line 266
    iput v0, v3, Lcom/android/wm/shell/nano/Transition;->mergedInto:I

    .line 267
    .line 268
    iget-object p1, v2, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 269
    .line 270
    invoke-virtual {p1, v3}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 274
    .line 275
    if-eqz p1, :cond_10

    .line 276
    .line 277
    iget-object p1, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 278
    .line 279
    iget-object v0, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 280
    .line 281
    iget-object v2, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 282
    .line 283
    invoke-interface {p1, v0, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->beforeMergeAnimation(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 284
    .line 285
    .line 286
    :cond_10
    iget-object v5, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 287
    .line 288
    iget-object v6, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 289
    .line 290
    iget-object v7, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 291
    .line 292
    iget-object v8, v1, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 293
    .line 294
    iget-object v9, v4, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 295
    .line 296
    new-instance v10, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;

    .line 297
    .line 298
    invoke-direct {v10, p0, v1, v4}, Lcom/android/wm/shell/transition/Transitions$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;Lcom/android/wm/shell/transition/Transitions$ActiveTransition;)V

    .line 299
    .line 300
    .line 301
    invoke-interface/range {v5 .. v10}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 302
    .line 303
    .line 304
    return-void
.end method

.method public replaceDefaultHandlerForTest(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mHandlers:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    const-string v2, "Directly starting a new transition type=%d wct=%s handler=%s"

    .line 26
    .line 27
    const v3, 0x232ce09c

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v3, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, v1}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object p3, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 40
    .line 41
    iget-object p3, p0, Lcom/android/wm/shell/transition/Transitions;->mOrganizer:Landroid/window/WindowOrganizer;

    .line 42
    .line 43
    invoke-virtual {p3, p1, p2}, Landroid/window/WindowOrganizer;->startNewTransition(ILandroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mPendingTransitions:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide p0

    .line 62
    iput-wide p0, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mPendingTime:J

    .line 63
    .line 64
    :cond_1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_LOG:Z

    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string/jumbo p1, "startTransition done, active="

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p1, "ShellTransitions"

    .line 84
    .line 85
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object p0, v0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 89
    .line 90
    return-object p0
.end method
