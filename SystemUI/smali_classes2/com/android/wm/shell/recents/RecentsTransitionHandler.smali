.class public final Lcom/android/wm/shell/recents/RecentsTransitionHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mAnimApp:Landroid/app/IApplicationThread;

.field public final mControllers:Ljava/util/ArrayList;

.field public final mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mForceHidingAnimators:Ljava/util/ArrayList;

.field public final mMixers:Ljava/util/ArrayList;

.field public final mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

.field public final mStateListeners:Ljava/util/ArrayList;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mForceHidingAnimators:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 36
    .line 37
    iget-object v0, p2, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 40
    .line 41
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    if-nez p3, :cond_1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    new-instance v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {v0, p0, p3, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/transition/Transitions;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p1, p2, Lcom/android/wm/shell/transition/Transitions;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 64
    .line 65
    :cond_2
    return-void
.end method


# virtual methods
.method public final findController(Landroid/os/IBinder;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, -0x1

    .line 26
    return p0
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, 0x1

    .line 16
    sub-int/2addr p1, v1

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v2, 0x6

    .line 31
    if-ne p1, v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eq p2, p1, :cond_2

    .line 52
    .line 53
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 58
    .line 59
    int-to-long p1, p1

    .line 60
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 61
    .line 62
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const p2, -0x3f66e7fa

    .line 71
    .line 72
    .line 73
    const-string v3, "[%d] RecentsController.prepareForMerge: Snapshot due to requested display change"

    .line 74
    .line 75
    invoke-static {v2, p2, v1, v3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->getSnapshotsForPausingTasks()Landroid/util/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

    .line 83
    .line 84
    :cond_2
    return-object v0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    const/4 v0, 0x0

    .line 6
    if-gez p4, :cond_1

    .line 7
    .line 8
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 13
    .line 14
    const-string p1, "RecentsTransitionHandler.mergeAnimation: no controller found"

    .line 15
    .line 16
    const p2, -0x801c402

    .line 17
    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-static {p0, p2, p3, p1, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 31
    .line 32
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    .line 33
    .line 34
    if-eqz p4, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, p2, p3, p5, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/os/IBinder;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0, p2, p3, p5, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/os/IBinder;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 16
    .line 17
    const-string p3, "onTransitionConsumed"

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 p1, p1, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    if-gez v3, :cond_1

    .line 14
    .line 15
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 20
    .line 21
    const v1, 0x50c30c28

    .line 22
    .line 23
    .line 24
    const-string v2, "RecentsTransitionHandler.startAnimation: no controller found"

    .line 25
    .line 26
    invoke-static {v0, v1, v5, v2, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return v5

    .line 30
    :cond_1
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 37
    .line 38
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    .line 39
    .line 40
    iput-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 51
    .line 52
    int-to-long v8, v0

    .line 53
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 54
    .line 55
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const v9, -0x605d6271

    .line 64
    .line 65
    .line 66
    const-string v10, "[%d] RecentsController.start"

    .line 67
    .line 68
    invoke-static {v0, v9, v7, v10, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    .line 72
    .line 73
    if-eqz v0, :cond_39

    .line 74
    .line 75
    iget-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    .line 76
    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    goto/16 :goto_15

    .line 80
    .line 81
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_RECENTS_TRANSITION_WITH_DISPLAY_CHANGE:Z

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->hasDisplayRotationChange(Landroid/window/TransitionInfo;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 101
    .line 102
    int-to-long v0, v0

    .line 103
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 104
    .line 105
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const v1, 0xbfa02cb

    .line 114
    .line 115
    .line 116
    const-string v8, "[%d] RecentsController.start: defer to start animation due to display change"

    .line 117
    .line 118
    invoke-static {v2, v1, v7, v8, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    iput-boolean v7, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mIsDisplayChangeOnStart:Z

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_5
    move-object v9, v4

    .line 126
    move v0, v5

    .line 127
    move v8, v0

    .line 128
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    const/4 v11, 0x2

    .line 137
    const/4 v12, 0x3

    .line 138
    if-ge v0, v10, :cond_b

    .line 139
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    check-cast v10, Landroid/window/TransitionInfo$Change;

    .line 149
    .line 150
    invoke-static {v10}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    if-eqz v13, :cond_6

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    if-eqz v13, :cond_7

    .line 166
    .line 167
    move v8, v7

    .line 168
    goto :goto_1

    .line 169
    :cond_7
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 170
    .line 171
    if-eqz v13, :cond_8

    .line 172
    .line 173
    const/high16 v13, 0x40000000    # 2.0f

    .line 174
    .line 175
    invoke-virtual {v10, v13}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    if-eqz v13, :cond_8

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_8
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    if-eqz v13, :cond_9

    .line 187
    .line 188
    iget v14, v13, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 189
    .line 190
    if-ne v14, v12, :cond_9

    .line 191
    .line 192
    iget-object v11, v13, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 193
    .line 194
    iput-object v11, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 195
    .line 196
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 197
    .line 198
    if-eqz v11, :cond_a

    .line 199
    .line 200
    if-nez v9, :cond_a

    .line 201
    .line 202
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    goto :goto_1

    .line 207
    :cond_9
    if-eqz v13, :cond_a

    .line 208
    .line 209
    iget v12, v13, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 210
    .line 211
    if-ne v12, v11, :cond_a

    .line 212
    .line 213
    iget-object v11, v13, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 214
    .line 215
    iput-object v11, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 216
    .line 217
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 218
    .line 219
    if-eqz v11, :cond_a

    .line 220
    .line 221
    if-nez v9, :cond_a

    .line 222
    .line 223
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    :cond_a
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_b
    iget-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 231
    .line 232
    const-string v10, "RecentsTransitionHandler"

    .line 233
    .line 234
    if-nez v0, :cond_c

    .line 235
    .line 236
    if-nez v8, :cond_c

    .line 237
    .line 238
    const-string v0, "Tried to start recents while it is already running."

    .line 239
    .line 240
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    .line 244
    .line 245
    .line 246
    :goto_2
    move v8, v5

    .line 247
    move-object/from16 v19, v6

    .line 248
    .line 249
    goto/16 :goto_16

    .line 250
    .line 251
    :cond_c
    iput-object v1, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 252
    .line 253
    move-object/from16 v0, p5

    .line 254
    .line 255
    iput-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 256
    .line 257
    move-object/from16 v0, p4

    .line 258
    .line 259
    iput-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 260
    .line 261
    new-instance v0, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    .line 266
    iput-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 267
    .line 268
    new-instance v0, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .line 272
    .line 273
    iput-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 274
    .line 275
    new-instance v0, Landroid/util/ArrayMap;

    .line 276
    .line 277
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 278
    .line 279
    .line 280
    iput-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 281
    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    and-int/lit8 v0, v0, 0x40

    .line 287
    .line 288
    if-eqz v0, :cond_d

    .line 289
    .line 290
    move v0, v7

    .line 291
    goto :goto_3

    .line 292
    :cond_d
    move v0, v5

    .line 293
    :goto_3
    iput-boolean v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    .line 294
    .line 295
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 296
    .line 297
    if-eqz v0, :cond_11

    .line 298
    .line 299
    iget-boolean v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mIsDisplayChangeOnStart:Z

    .line 300
    .line 301
    if-eqz v0, :cond_11

    .line 302
    .line 303
    iput-boolean v5, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mIsDisplayChangeOnStart:Z

    .line 304
    .line 305
    iget-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    .line 306
    .line 307
    if-eqz v0, :cond_e

    .line 308
    .line 309
    invoke-virtual {v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancelWithSnapshots()V

    .line 310
    .line 311
    .line 312
    :cond_e
    move v0, v5

    .line 313
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    if-ge v0, v8, :cond_10

    .line 322
    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 332
    .line 333
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    invoke-static {v9}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    if-eqz v9, :cond_f

    .line 342
    .line 343
    iget-object v9, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 344
    .line 345
    new-instance v10, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 346
    .line 347
    invoke-direct {v10, v8, v4}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 358
    .line 359
    .line 360
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 361
    .line 362
    goto :goto_4

    .line 363
    :cond_10
    iget-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 364
    .line 365
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 366
    .line 367
    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda3;

    .line 368
    .line 369
    invoke-direct {v1, v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 373
    .line 374
    .line 375
    move-object/from16 v19, v6

    .line 376
    .line 377
    move v8, v7

    .line 378
    goto/16 :goto_16

    .line 379
    .line 380
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .line 384
    .line 385
    new-instance v8, Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .line 389
    .line 390
    new-instance v13, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    .line 391
    .line 392
    invoke-direct {v13}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v14

    .line 399
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 400
    .line 401
    .line 402
    move-result v14

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 404
    .line 405
    .line 406
    move-result-object v15

    .line 407
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 408
    .line 409
    .line 410
    move-result v15

    .line 411
    mul-int/2addr v15, v11

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 413
    .line 414
    .line 415
    move-result-object v16

    .line 416
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    .line 417
    .line 418
    .line 419
    move-result v16

    .line 420
    mul-int/lit8 v16, v16, 0x3

    .line 421
    .line 422
    move v4, v5

    .line 423
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 424
    .line 425
    .line 426
    move-result-object v17

    .line 427
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    .line 428
    .line 429
    .line 430
    move-result v12

    .line 431
    if-ge v4, v12, :cond_36

    .line 432
    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v12

    .line 437
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v12

    .line 441
    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 442
    .line 443
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    invoke-static {v12}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    .line 448
    .line 449
    .line 450
    move-result v17

    .line 451
    const/high16 v5, 0x3f800000    # 1.0f

    .line 452
    .line 453
    if-eqz v17, :cond_12

    .line 454
    .line 455
    sub-int v11, v14, v4

    .line 456
    .line 457
    iget-object v7, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 458
    .line 459
    invoke-static {v12, v11, v1, v2, v7}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    iget-object v7, v7, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 467
    .line 468
    invoke-virtual {v2, v7, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 469
    .line 470
    .line 471
    move-object/from16 v19, v6

    .line 472
    .line 473
    move-object/from16 v28, v8

    .line 474
    .line 475
    move-object/from16 v29, v9

    .line 476
    .line 477
    move-object/from16 v30, v10

    .line 478
    .line 479
    move-object/from16 v18, v13

    .line 480
    .line 481
    move/from16 v31, v15

    .line 482
    .line 483
    goto/16 :goto_10

    .line 484
    .line 485
    :cond_12
    invoke-virtual {v13, v12}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-eqz v7, :cond_2e

    .line 490
    .line 491
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    .line 492
    .line 493
    if-eqz v7, :cond_16

    .line 494
    .line 495
    iget-object v7, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 496
    .line 497
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    if-nez v5, :cond_13

    .line 505
    .line 506
    move-object/from16 v19, v6

    .line 507
    .line 508
    move-object/from16 v28, v8

    .line 509
    .line 510
    move-object/from16 v29, v9

    .line 511
    .line 512
    move-object/from16 v30, v10

    .line 513
    .line 514
    move-object/from16 v18, v13

    .line 515
    .line 516
    move/from16 v31, v15

    .line 517
    .line 518
    const/4 v5, 0x0

    .line 519
    goto/16 :goto_8

    .line 520
    .line 521
    :cond_13
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getFreeformStashScale()F

    .line 522
    .line 523
    .line 524
    move-result v18

    .line 525
    const/high16 v19, 0x3f800000    # 1.0f

    .line 526
    .line 527
    cmpl-float v18, v18, v19

    .line 528
    .line 529
    if-eqz v18, :cond_14

    .line 530
    .line 531
    move-object/from16 v19, v6

    .line 532
    .line 533
    move-object/from16 v28, v8

    .line 534
    .line 535
    move-object/from16 v29, v9

    .line 536
    .line 537
    move-object/from16 v30, v10

    .line 538
    .line 539
    move-object/from16 v18, v13

    .line 540
    .line 541
    move/from16 v31, v15

    .line 542
    .line 543
    goto/16 :goto_7

    .line 544
    .line 545
    :cond_14
    move-object/from16 v18, v13

    .line 546
    .line 547
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 548
    .line 549
    .line 550
    move-result-object v13

    .line 551
    move-object/from16 v19, v6

    .line 552
    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    move-object/from16 v28, v8

    .line 556
    .line 557
    const-string v8, "leash="

    .line 558
    .line 559
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    const-string v8, ", "

    .line 566
    .line 567
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->forceHidingTransitToString(I)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v8

    .line 574
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    const/4 v8, 0x1

    .line 582
    if-ne v5, v8, :cond_15

    .line 583
    .line 584
    const v5, 0x7f0101b5

    .line 585
    .line 586
    .line 587
    goto :goto_6

    .line 588
    :cond_15
    const v5, 0x7f0101b7

    .line 589
    .line 590
    .line 591
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    move-object/from16 v29, v9

    .line 594
    .line 595
    const-string v9, "buildForceHideAnimationIfNeeded: "

    .line 596
    .line 597
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v8

    .line 607
    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 611
    .line 612
    .line 613
    move-result-object v8

    .line 614
    iget-object v9, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 615
    .line 616
    invoke-virtual {v9, v5, v8}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->loadAnimationFromResources(ILandroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    sget-object v9, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 621
    .line 622
    invoke-virtual {v5, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 623
    .line 624
    .line 625
    new-instance v9, Landroid/graphics/Point;

    .line 626
    .line 627
    move-object/from16 v30, v10

    .line 628
    .line 629
    iget v10, v8, Landroid/graphics/Rect;->left:I

    .line 630
    .line 631
    move/from16 v31, v15

    .line 632
    .line 633
    iget v15, v8, Landroid/graphics/Rect;->top:I

    .line 634
    .line 635
    invoke-direct {v9, v10, v15}, Landroid/graphics/Point;-><init>(II)V

    .line 636
    .line 637
    .line 638
    new-instance v10, Landroid/graphics/Rect;

    .line 639
    .line 640
    invoke-direct {v10, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 641
    .line 642
    .line 643
    const/4 v8, 0x0

    .line 644
    invoke-virtual {v10, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 645
    .line 646
    .line 647
    new-instance v15, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda2;

    .line 648
    .line 649
    invoke-direct {v15, v8, v7, v6}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    iget-object v6, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    .line 653
    .line 654
    iget-object v7, v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mForceHidingAnimators:Ljava/util/ArrayList;

    .line 655
    .line 656
    const/16 v27, 0x1

    .line 657
    .line 658
    move-object/from16 v20, v6

    .line 659
    .line 660
    move-object/from16 v21, v7

    .line 661
    .line 662
    move-object/from16 v22, v5

    .line 663
    .line 664
    move-object/from16 v23, v13

    .line 665
    .line 666
    move-object/from16 v24, v15

    .line 667
    .line 668
    move-object/from16 v25, v9

    .line 669
    .line 670
    move-object/from16 v26, v10

    .line 671
    .line 672
    invoke-virtual/range {v20 .. v27}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    .line 673
    .line 674
    .line 675
    :goto_7
    const/4 v5, 0x1

    .line 676
    :goto_8
    if-eqz v5, :cond_17

    .line 677
    .line 678
    goto/16 :goto_10

    .line 679
    .line 680
    :cond_16
    move-object/from16 v19, v6

    .line 681
    .line 682
    move-object/from16 v28, v8

    .line 683
    .line 684
    move-object/from16 v29, v9

    .line 685
    .line 686
    move-object/from16 v30, v10

    .line 687
    .line 688
    move-object/from16 v18, v13

    .line 689
    .line 690
    move/from16 v31, v15

    .line 691
    .line 692
    :cond_17
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER:Z

    .line 693
    .line 694
    if-eqz v5, :cond_22

    .line 695
    .line 696
    sub-int v5, v14, v4

    .line 697
    .line 698
    iget-object v6, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 699
    .line 700
    iget-object v7, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 701
    .line 702
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 703
    .line 704
    .line 705
    move-result-object v8

    .line 706
    if-eqz v8, :cond_1e

    .line 707
    .line 708
    if-eqz v7, :cond_1e

    .line 709
    .line 710
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 711
    .line 712
    .line 713
    move-result v8

    .line 714
    if-nez v8, :cond_1e

    .line 715
    .line 716
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 717
    .line 718
    .line 719
    move-result-object v8

    .line 720
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 721
    .line 722
    .line 723
    move-result-object v8

    .line 724
    :cond_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 725
    .line 726
    .line 727
    move-result v9

    .line 728
    if-eqz v9, :cond_19

    .line 729
    .line 730
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v9

    .line 734
    check-cast v9, Landroid/view/SurfaceControl;

    .line 735
    .line 736
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 737
    .line 738
    .line 739
    move-result-object v10

    .line 740
    invoke-virtual {v9, v10}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    .line 741
    .line 742
    .line 743
    move-result v10

    .line 744
    if-eqz v10, :cond_18

    .line 745
    .line 746
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v7

    .line 750
    check-cast v7, Landroid/view/SurfaceControl;

    .line 751
    .line 752
    goto :goto_9

    .line 753
    :cond_19
    const/4 v7, 0x0

    .line 754
    :goto_9
    if-eqz v7, :cond_1f

    .line 755
    .line 756
    invoke-static {v12, v1}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 757
    .line 758
    .line 759
    move-result v8

    .line 760
    invoke-virtual {v1, v8}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 761
    .line 762
    .line 763
    move-result-object v8

    .line 764
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 765
    .line 766
    .line 767
    move-result-object v8

    .line 768
    invoke-virtual {v2, v7, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 769
    .line 770
    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 772
    .line 773
    .line 774
    move-result-object v8

    .line 775
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 776
    .line 777
    .line 778
    move-result v8

    .line 779
    sub-int/2addr v8, v5

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 781
    .line 782
    .line 783
    move-result v9

    .line 784
    invoke-static {v9}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 785
    .line 786
    .line 787
    move-result v9

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 789
    .line 790
    .line 791
    move-result-object v10

    .line 792
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 793
    .line 794
    .line 795
    move-result v10

    .line 796
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 797
    .line 798
    .line 799
    move-result v13

    .line 800
    invoke-static {v12, v1}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 801
    .line 802
    .line 803
    move-result v15

    .line 804
    invoke-virtual {v1, v15}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 805
    .line 806
    .line 807
    move-result-object v15

    .line 808
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 809
    .line 810
    .line 811
    move-result-object v15

    .line 812
    invoke-virtual {v2, v7, v15}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 813
    .line 814
    .line 815
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 816
    .line 817
    .line 818
    move-result v15

    .line 819
    if-eqz v15, :cond_1b

    .line 820
    .line 821
    if-eqz v9, :cond_1a

    .line 822
    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 824
    .line 825
    .line 826
    move-result-object v9

    .line 827
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 828
    .line 829
    .line 830
    move-result v9

    .line 831
    add-int/2addr v9, v10

    .line 832
    sub-int/2addr v9, v8

    .line 833
    invoke-virtual {v2, v7, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 834
    .line 835
    .line 836
    goto :goto_a

    .line 837
    :cond_1a
    sub-int/2addr v10, v8

    .line 838
    invoke-virtual {v2, v7, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 839
    .line 840
    .line 841
    goto :goto_a

    .line 842
    :cond_1b
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 843
    .line 844
    .line 845
    move-result v13

    .line 846
    if-eqz v13, :cond_1d

    .line 847
    .line 848
    if-eqz v9, :cond_1c

    .line 849
    .line 850
    sub-int/2addr v10, v8

    .line 851
    invoke-virtual {v2, v7, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 852
    .line 853
    .line 854
    goto :goto_a

    .line 855
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 856
    .line 857
    .line 858
    move-result-object v9

    .line 859
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 860
    .line 861
    .line 862
    move-result v9

    .line 863
    add-int/2addr v9, v10

    .line 864
    sub-int/2addr v9, v8

    .line 865
    invoke-virtual {v2, v7, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 866
    .line 867
    .line 868
    goto :goto_a

    .line 869
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 870
    .line 871
    .line 872
    move-result-object v9

    .line 873
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 874
    .line 875
    .line 876
    move-result v9

    .line 877
    add-int/2addr v9, v10

    .line 878
    sub-int/2addr v9, v8

    .line 879
    invoke-virtual {v2, v7, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 880
    .line 881
    .line 882
    :goto_a
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 883
    .line 884
    .line 885
    move-result-object v8

    .line 886
    invoke-virtual {v2, v8, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 890
    .line 891
    .line 892
    move-result-object v8

    .line 893
    const/high16 v9, 0x3f800000    # 1.0f

    .line 894
    .line 895
    invoke-virtual {v2, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 899
    .line 900
    .line 901
    move-result-object v8

    .line 902
    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 906
    .line 907
    .line 908
    move-result-object v8

    .line 909
    const/4 v9, 0x0

    .line 910
    invoke-virtual {v2, v8, v9, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 914
    .line 915
    .line 916
    move-result-object v8

    .line 917
    const/4 v9, 0x0

    .line 918
    invoke-virtual {v2, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 919
    .line 920
    .line 921
    goto :goto_b

    .line 922
    :cond_1e
    const/4 v7, 0x0

    .line 923
    :cond_1f
    :goto_b
    if-eqz v7, :cond_20

    .line 924
    .line 925
    goto :goto_c

    .line 926
    :cond_20
    invoke-static {v1, v12, v5, v2}, Lcom/android/wm/shell/util/TransitionUtil;->createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 927
    .line 928
    .line 929
    move-result-object v7

    .line 930
    :goto_c
    if-eqz v6, :cond_21

    .line 931
    .line 932
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 933
    .line 934
    .line 935
    move-result-object v8

    .line 936
    invoke-virtual {v6, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    :cond_21
    const/4 v6, 0x0

    .line 940
    invoke-static {v12, v5, v7, v6}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;

    .line 941
    .line 942
    .line 943
    move-result-object v5

    .line 944
    goto :goto_d

    .line 945
    :cond_22
    sub-int v5, v14, v4

    .line 946
    .line 947
    iget-object v6, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 948
    .line 949
    invoke-static {v12, v5, v1, v2, v6}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    .line 950
    .line 951
    .line 952
    move-result-object v5

    .line 953
    :goto_d
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 957
    .line 958
    .line 959
    move-result v6

    .line 960
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 961
    .line 962
    .line 963
    move-result v6

    .line 964
    if-eqz v6, :cond_27

    .line 965
    .line 966
    iget-object v6, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 967
    .line 968
    new-instance v7, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 969
    .line 970
    iget-object v8, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 971
    .line 972
    invoke-direct {v7, v12, v8}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    iget v6, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 979
    .line 980
    const/4 v7, 0x2

    .line 981
    if-ne v6, v7, :cond_24

    .line 982
    .line 983
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 984
    .line 985
    if-eqz v5, :cond_23

    .line 986
    .line 987
    iget v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 988
    .line 989
    int-to-long v5, v5

    .line 990
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 991
    .line 992
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 993
    .line 994
    .line 995
    move-result-object v5

    .line 996
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v5

    .line 1000
    const v6, 0x248475f5

    .line 1001
    .line 1002
    .line 1003
    const-string v8, "  adding pausing leaf home taskId=%d"

    .line 1004
    .line 1005
    const/4 v9, 0x1

    .line 1006
    invoke-static {v7, v6, v9, v8, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1007
    .line 1008
    .line 1009
    goto :goto_e

    .line 1010
    :cond_23
    const/4 v9, 0x1

    .line 1011
    :goto_e
    iput-boolean v9, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    .line 1012
    .line 1013
    goto :goto_f

    .line 1014
    :cond_24
    sub-int v6, v16, v4

    .line 1015
    .line 1016
    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1017
    .line 1018
    if-eqz v7, :cond_25

    .line 1019
    .line 1020
    iget v7, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1021
    .line 1022
    int-to-long v7, v7

    .line 1023
    int-to-long v9, v6

    .line 1024
    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1025
    .line 1026
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v7

    .line 1030
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v8

    .line 1034
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v7

    .line 1038
    const v8, 0x6eb7d1be

    .line 1039
    .line 1040
    .line 1041
    const-string v9, "  adding pausing leaf taskId=%d at layer=%d"

    .line 1042
    .line 1043
    const/4 v10, 0x5

    .line 1044
    invoke-static {v12, v8, v10, v9, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    .line 1046
    .line 1047
    :cond_25
    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 1048
    .line 1049
    invoke-virtual {v2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1050
    .line 1051
    .line 1052
    :goto_f
    iget-object v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 1053
    .line 1054
    if-eqz v5, :cond_26

    .line 1055
    .line 1056
    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 1057
    .line 1058
    .line 1059
    move-result v5

    .line 1060
    if-eqz v5, :cond_26

    .line 1061
    .line 1062
    iget-object v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1063
    .line 1064
    iput-object v5, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    .line 1065
    .line 1066
    :cond_26
    :goto_10
    const/4 v7, 0x3

    .line 1067
    goto/16 :goto_12

    .line 1068
    .line 1069
    :cond_27
    if-eqz v11, :cond_29

    .line 1070
    .line 1071
    iget v6, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 1072
    .line 1073
    const/4 v7, 0x3

    .line 1074
    if-ne v6, v7, :cond_2a

    .line 1075
    .line 1076
    sub-int v15, v31, v4

    .line 1077
    .line 1078
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1079
    .line 1080
    if-eqz v6, :cond_28

    .line 1081
    .line 1082
    int-to-long v8, v15

    .line 1083
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1084
    .line 1085
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v8

    .line 1089
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v8

    .line 1093
    const v9, 0x71bb3584

    .line 1094
    .line 1095
    .line 1096
    const-string v10, "  setting recents activity layer=%d"

    .line 1097
    .line 1098
    const/4 v11, 0x1

    .line 1099
    invoke-static {v6, v9, v11, v10, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    .line 1101
    .line 1102
    :cond_28
    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 1103
    .line 1104
    invoke-virtual {v2, v5, v15}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1105
    .line 1106
    .line 1107
    goto/16 :goto_12

    .line 1108
    .line 1109
    :cond_29
    const/4 v7, 0x3

    .line 1110
    :cond_2a
    if-eqz v11, :cond_2b

    .line 1111
    .line 1112
    iget v6, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 1113
    .line 1114
    const/4 v8, 0x2

    .line 1115
    if-ne v6, v8, :cond_2c

    .line 1116
    .line 1117
    goto/16 :goto_12

    .line 1118
    .line 1119
    :cond_2b
    const/4 v8, 0x2

    .line 1120
    :cond_2c
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1121
    .line 1122
    .line 1123
    move-result v6

    .line 1124
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1125
    .line 1126
    .line 1127
    move-result v6

    .line 1128
    if-eqz v6, :cond_35

    .line 1129
    .line 1130
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1131
    .line 1132
    if-eqz v6, :cond_2d

    .line 1133
    .line 1134
    iget v6, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1135
    .line 1136
    int-to-long v9, v6

    .line 1137
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1138
    .line 1139
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v9

    .line 1143
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v9

    .line 1147
    const v10, -0x40be0fdf

    .line 1148
    .line 1149
    .line 1150
    const-string v11, "  adding opening leaf taskId=%d"

    .line 1151
    .line 1152
    const/4 v13, 0x1

    .line 1153
    invoke-static {v6, v10, v13, v11, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    .line 1155
    .line 1156
    :cond_2d
    iget-object v6, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 1157
    .line 1158
    new-instance v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 1159
    .line 1160
    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 1161
    .line 1162
    invoke-direct {v9, v12, v5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    goto/16 :goto_12

    .line 1169
    .line 1170
    :cond_2e
    move-object/from16 v19, v6

    .line 1171
    .line 1172
    move-object/from16 v28, v8

    .line 1173
    .line 1174
    move-object/from16 v29, v9

    .line 1175
    .line 1176
    move-object/from16 v30, v10

    .line 1177
    .line 1178
    move-object/from16 v18, v13

    .line 1179
    .line 1180
    move/from16 v31, v15

    .line 1181
    .line 1182
    const/4 v7, 0x3

    .line 1183
    const/4 v8, 0x2

    .line 1184
    if-eqz v11, :cond_32

    .line 1185
    .line 1186
    invoke-static {v12, v1}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 1187
    .line 1188
    .line 1189
    move-result v5

    .line 1190
    if-eqz v5, :cond_32

    .line 1191
    .line 1192
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1193
    .line 1194
    .line 1195
    move-result v5

    .line 1196
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v5

    .line 1200
    if-eqz v5, :cond_30

    .line 1201
    .line 1202
    sub-int v5, v16, v4

    .line 1203
    .line 1204
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1205
    .line 1206
    if-eqz v6, :cond_2f

    .line 1207
    .line 1208
    iget v6, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1209
    .line 1210
    int-to-long v9, v6

    .line 1211
    int-to-long v7, v5

    .line 1212
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1213
    .line 1214
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v9

    .line 1218
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v7

    .line 1222
    filled-new-array {v9, v7}, [Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v7

    .line 1226
    const v8, -0x4691e234

    .line 1227
    .line 1228
    .line 1229
    const-string v9, "  adding pausing taskId=%d at layer=%d"

    .line 1230
    .line 1231
    const/4 v10, 0x5

    .line 1232
    invoke-static {v6, v8, v10, v9, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1233
    .line 1234
    .line 1235
    :cond_2f
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v6

    .line 1239
    invoke-virtual {v2, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1240
    .line 1241
    .line 1242
    iget-object v5, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 1243
    .line 1244
    new-instance v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 1245
    .line 1246
    const/4 v7, 0x0

    .line 1247
    invoke-direct {v6, v12, v7}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    .line 1252
    .line 1253
    goto/16 :goto_12

    .line 1254
    .line 1255
    :cond_30
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1256
    .line 1257
    .line 1258
    move-result v5

    .line 1259
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1260
    .line 1261
    .line 1262
    move-result v5

    .line 1263
    if-eqz v5, :cond_35

    .line 1264
    .line 1265
    sub-int v5, v14, v4

    .line 1266
    .line 1267
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1268
    .line 1269
    if-eqz v6, :cond_31

    .line 1270
    .line 1271
    iget v6, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1272
    .line 1273
    int-to-long v6, v6

    .line 1274
    int-to-long v8, v5

    .line 1275
    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1276
    .line 1277
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v6

    .line 1281
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v7

    .line 1285
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v6

    .line 1289
    const v7, -0x4fe5dd0f

    .line 1290
    .line 1291
    .line 1292
    const-string v8, "  adding opening taskId=%d at layer=%d"

    .line 1293
    .line 1294
    const/4 v9, 0x5

    .line 1295
    invoke-static {v10, v7, v9, v8, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1296
    .line 1297
    .line 1298
    :cond_31
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v6

    .line 1302
    invoke-virtual {v2, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1303
    .line 1304
    .line 1305
    iget-object v5, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 1306
    .line 1307
    new-instance v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 1308
    .line 1309
    const/4 v7, 0x0

    .line 1310
    invoke-direct {v6, v12, v7}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    .line 1315
    .line 1316
    goto :goto_12

    .line 1317
    :cond_32
    invoke-static {v12}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Landroid/window/TransitionInfo$Change;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v5

    .line 1321
    if-eqz v5, :cond_33

    .line 1322
    .line 1323
    sub-int v5, v14, v4

    .line 1324
    .line 1325
    iget-object v6, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 1326
    .line 1327
    invoke-static {v12, v5, v1, v2, v6}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v5

    .line 1331
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    .line 1333
    .line 1334
    goto :goto_12

    .line 1335
    :cond_33
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 1336
    .line 1337
    if-eqz v5, :cond_35

    .line 1338
    .line 1339
    invoke-static {v12}, Lcom/android/wm/shell/util/TransitionUtil;->isTransientLaunchOverlay(Landroid/window/TransitionInfo$Change;)Z

    .line 1340
    .line 1341
    .line 1342
    move-result v5

    .line 1343
    if-eqz v5, :cond_35

    .line 1344
    .line 1345
    sub-int v5, v14, v4

    .line 1346
    .line 1347
    iget-object v6, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 1348
    .line 1349
    invoke-static {v12, v5, v1, v2, v6}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v5

    .line 1353
    iget-object v6, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 1354
    .line 1355
    if-eqz v6, :cond_34

    .line 1356
    .line 1357
    if-eqz v29, :cond_34

    .line 1358
    .line 1359
    move-object/from16 v9, v29

    .line 1360
    .line 1361
    const/4 v7, 0x1

    .line 1362
    invoke-virtual {v2, v6, v9, v7}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1363
    .line 1364
    .line 1365
    goto :goto_11

    .line 1366
    :cond_34
    move-object/from16 v9, v29

    .line 1367
    .line 1368
    :goto_11
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    .line 1370
    .line 1371
    goto :goto_13

    .line 1372
    :cond_35
    :goto_12
    move-object/from16 v9, v29

    .line 1373
    .line 1374
    :goto_13
    add-int/lit8 v4, v4, 0x1

    .line 1375
    .line 1376
    move-object/from16 v13, v18

    .line 1377
    .line 1378
    move-object/from16 v6, v19

    .line 1379
    .line 1380
    move-object/from16 v8, v28

    .line 1381
    .line 1382
    move-object/from16 v10, v30

    .line 1383
    .line 1384
    move/from16 v15, v31

    .line 1385
    .line 1386
    const/4 v5, 0x0

    .line 1387
    const/4 v7, 0x1

    .line 1388
    const/4 v11, 0x2

    .line 1389
    const/4 v12, 0x3

    .line 1390
    goto/16 :goto_5

    .line 1391
    .line 1392
    :cond_36
    move-object/from16 v19, v6

    .line 1393
    .line 1394
    move-object/from16 v28, v8

    .line 1395
    .line 1396
    move-object/from16 v30, v10

    .line 1397
    .line 1398
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1399
    .line 1400
    .line 1401
    :try_start_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1402
    .line 1403
    if-eqz v1, :cond_37

    .line 1404
    .line 1405
    iget v1, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 1406
    .line 1407
    int-to-long v1, v1

    .line 1408
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1409
    .line 1410
    const-string v5, "[%d] RecentsController.start: calling onAnimationStart"

    .line 1411
    .line 1412
    const/4 v6, 0x1

    .line 1413
    new-array v7, v6, [Ljava/lang/Object;

    .line 1414
    .line 1415
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v1

    .line 1419
    const/4 v2, 0x0

    .line 1420
    aput-object v1, v7, v2

    .line 1421
    .line 1422
    const v1, 0x5dc6ab8e

    .line 1423
    .line 1424
    .line 1425
    invoke-static {v4, v1, v6, v5, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1426
    .line 1427
    .line 1428
    :cond_37
    iget-object v1, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    .line 1429
    .line 1430
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1431
    .line 1432
    .line 1433
    move-result v2

    .line 1434
    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    .line 1435
    .line 1436
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v0

    .line 1440
    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 1441
    .line 1442
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    .line 1443
    .line 1444
    .line 1445
    move-result v2

    .line 1446
    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    .line 1447
    .line 1448
    move-object/from16 v4, v28

    .line 1449
    .line 1450
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v2

    .line 1454
    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    .line 1455
    .line 1456
    new-instance v4, Landroid/graphics/Rect;

    .line 1457
    .line 1458
    const/4 v5, 0x0

    .line 1459
    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1460
    .line 1461
    .line 1462
    new-instance v5, Landroid/graphics/Rect;

    .line 1463
    .line 1464
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1465
    .line 1466
    .line 1467
    move-object/from16 p0, v1

    .line 1468
    .line 1469
    move-object/from16 p1, v3

    .line 1470
    .line 1471
    move-object/from16 p2, v0

    .line 1472
    .line 1473
    move-object/from16 p3, v2

    .line 1474
    .line 1475
    move-object/from16 p4, v4

    .line 1476
    .line 1477
    move-object/from16 p5, v5

    .line 1478
    .line 1479
    invoke-interface/range {p0 .. p5}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1480
    .line 1481
    .line 1482
    const/4 v8, 0x0

    .line 1483
    :goto_14
    iget-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 1484
    .line 1485
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    .line 1486
    .line 1487
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1488
    .line 1489
    .line 1490
    move-result v0

    .line 1491
    if-ge v8, v0, :cond_38

    .line 1492
    .line 1493
    iget-object v0, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 1494
    .line 1495
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    .line 1496
    .line 1497
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v0

    .line 1501
    check-cast v0, Lcom/android/wm/shell/recents/RecentsTransitionStateListener;

    .line 1502
    .line 1503
    const/4 v1, 0x1

    .line 1504
    invoke-interface {v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionStateListener;->onAnimationStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    .line 1506
    .line 1507
    add-int/lit8 v8, v8, 0x1

    .line 1508
    .line 1509
    goto :goto_14

    .line 1510
    :catch_0
    move-exception v0

    .line 1511
    const-string v1, "Error starting recents animation"

    .line 1512
    .line 1513
    move-object/from16 v2, v30

    .line 1514
    .line 1515
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1516
    .line 1517
    .line 1518
    const-string v0, "onAnimationStart() failed"

    .line 1519
    .line 1520
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    .line 1521
    .line 1522
    .line 1523
    :cond_38
    const/4 v8, 0x1

    .line 1524
    goto :goto_16

    .line 1525
    :cond_39
    :goto_15
    move-object/from16 v19, v6

    .line 1526
    .line 1527
    invoke-virtual {v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    .line 1528
    .line 1529
    .line 1530
    const/4 v8, 0x0

    .line 1531
    :goto_16
    if-nez v8, :cond_3b

    .line 1532
    .line 1533
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1534
    .line 1535
    if-eqz v0, :cond_3a

    .line 1536
    .line 1537
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1538
    .line 1539
    const v1, 0x5ee4c38f

    .line 1540
    .line 1541
    .line 1542
    const-string v2, "RecentsTransitionHandler.startAnimation: failed to start animation"

    .line 1543
    .line 1544
    const/4 v3, 0x0

    .line 1545
    const/4 v4, 0x0

    .line 1546
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1547
    .line 1548
    .line 1549
    goto :goto_17

    .line 1550
    :cond_3a
    const/4 v4, 0x0

    .line 1551
    :goto_17
    return v4

    .line 1552
    :cond_3b
    invoke-static/range {v19 .. v19}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    .line 1553
    .line 1554
    .line 1555
    const/4 v1, 0x1

    .line 1556
    return v1
.end method

.method public startRecentsTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)Landroid/os/IBinder;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 8
    .line 9
    const v3, -0x5016ebe4

    .line 10
    .line 11
    .line 12
    const-string v4, "RecentsTransitionHandler.startRecentsTransition"

    .line 13
    .line 14
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    .line 18
    .line 19
    new-instance p4, Landroid/window/WindowContainerTransaction;

    .line 20
    .line 21
    invoke-direct {p4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p4, p1, p2, p3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 28
    .line 29
    invoke-direct {p1, p0, p5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Landroid/view/IRecentsAnimationRunner;)V

    .line 30
    .line 31
    .line 32
    move p2, v1

    .line 33
    move-object p3, v2

    .line 34
    :goto_0
    iget-object p5, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mMixers:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ge p2, v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    check-cast p3, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 47
    .line 48
    iget-object v0, p3, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p3, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object p3, v2

    .line 62
    :goto_1
    if-eqz p3, :cond_2

    .line 63
    .line 64
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move-object p2, v2

    .line 75
    :goto_2
    if-nez p3, :cond_4

    .line 76
    .line 77
    move-object p3, p0

    .line 78
    :cond_4
    iget-object p5, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 79
    .line 80
    const/4 v0, 0x3

    .line 81
    invoke-virtual {p5, v0, p4, p3}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    if-eqz p2, :cond_7

    .line 86
    .line 87
    iget-object p4, p2, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 88
    .line 89
    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    if-eqz p4, :cond_6

    .line 94
    .line 95
    sget-boolean p4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 96
    .line 97
    if-eqz p4, :cond_5

    .line 98
    .line 99
    sget-object p4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 100
    .line 101
    const-string p5, " Got a recents request while Split-Screen is foreground, so treat it as Mixed."

    .line 102
    .line 103
    const v0, -0x1acebd77

    .line 104
    .line 105
    .line 106
    invoke-static {p4, v0, v1, p5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    new-instance p4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 110
    .line 111
    const/4 p5, 0x4

    .line 112
    invoke-direct {p4, p5, p3}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 113
    .line 114
    .line 115
    iget-object p5, p2, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 116
    .line 117
    iput-object p5, p4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 118
    .line 119
    iget-object p2, p2, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string p1, "Accepted a recents transition but don\'t know how to handle it"

    .line 128
    .line 129
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_7
    :goto_3
    if-eqz p3, :cond_9

    .line 134
    .line 135
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 136
    .line 137
    if-eqz p2, :cond_8

    .line 138
    .line 139
    iget p2, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 140
    .line 141
    int-to-long p4, p2

    .line 142
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 147
    .line 148
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    filled-new-array {p4, p2}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    const p4, -0x21c907d6

    .line 157
    .line 158
    .line 159
    const-string p5, "[%d] RecentsController.setTransition: id=%s"

    .line 160
    .line 161
    const/4 v1, 0x1

    .line 162
    invoke-static {v0, p4, v1, p5, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    iput-object p3, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_9
    const-string/jumbo p0, "startRecentsTransition"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_4
    return-object p3
.end method

.method public final transferAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-gez p1, :cond_2

    .line 10
    .line 11
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    const p2, 0x36fb1c0f

    .line 19
    .line 20
    .line 21
    const-string p3, "RecentsTransitionHandler.transferAnimation: no controller found"

    .line 22
    .line 23
    invoke-static {p0, p2, v0, p3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    .line 34
    .line 35
    iget-object p1, p4, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 36
    .line 37
    if-eqz p1, :cond_6

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_6

    .line 44
    .line 45
    iget-object p1, p4, Landroid/window/WindowContainerTransaction;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-gez p1, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    invoke-virtual {p2, p1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 71
    .line 72
    if-ltz p2, :cond_6

    .line 73
    .line 74
    iget-object p4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    check-cast p4, Landroid/view/SurfaceControl;

    .line 81
    .line 82
    if-eqz p4, :cond_5

    .line 83
    .line 84
    invoke-virtual {p4}, Landroid/view/SurfaceControl;->isValid()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-virtual {p3, p4, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v1, "Cannot transfer invalid leash="

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    const-string v0, "RecentsTransitionHandler"

    .line 115
    .line 116
    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    :goto_2
    return-void
.end method

.method public final transitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gez p1, :cond_1

    .line 6
    .line 7
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 12
    .line 13
    const p1, 0x45096db9

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    const-string v0, "RecentsTransitionHandler.onTransitionReady: no controller found"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mAnimApp:Landroid/app/IApplicationThread;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p2, p0}, Landroid/window/TransitionInfo;->setRemoteAppThread(Landroid/app/IApplicationThread;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method
