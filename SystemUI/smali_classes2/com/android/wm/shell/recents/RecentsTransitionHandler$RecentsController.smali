.class public final Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;
.super Landroid/view/IRecentsAnimationController$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;

.field public mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mInfo:Landroid/window/TransitionInfo;

.field public final mInstanceId:I

.field public mIsDisplayChangeOnStart:Z

.field public mKeyguardLocked:Z

.field public mLeashMap:Landroid/util/ArrayMap;

.field public mListener:Landroid/view/IRecentsAnimationRunner;

.field public mOpeningSeparateHome:Z

.field public mOpeningTasks:Ljava/util/ArrayList;

.field public mPausingSeparateHome:Z

.field public mPausingTasks:Ljava/util/ArrayList;

.field public mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

.field public mPipTask:Landroid/window/WindowContainerToken;

.field public mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public mRecentsTask:Landroid/window/WindowContainerToken;

.field public mState:I

.field public mTransferLeashMap:Landroid/util/ArrayMap;

.field public mTransition:Landroid/os/IBinder;

.field public mWillFinishToHome:Z

.field public final synthetic this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler;Landroid/view/IRecentsAnimationRunner;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    .line 35
    .line 36
    iput v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    .line 47
    .line 48
    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    :try_start_0
    invoke-interface {p2}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p2

    .line 66
    const-string v0, "RecentsTransitionHandler"

    .line 67
    .line 68
    const-string v1, "RecentsController: failed to link to death"

    .line 69
    .line 70
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    .line 74
    .line 75
    :goto_0
    return-void
.end method


# virtual methods
.method public final animateNavigationBarToApp(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final cancel(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final cancel(Ljava/lang/String;ZZ)V
    .locals 4

    .line 2
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0xd

    const-string v1, "[%d] RecentsController.cancel: toHome=%b reason=%s"

    const v3, -0x21d51ecc

    invoke-static {v2, v3, v0, v1, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancelWithSnapshots()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancel([I[Landroid/window/TaskSnapshot;)Z

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->finishInner(ZZ)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    :goto_1
    return-void
.end method

.method public final cleanUp()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, -0x155aeb6f

    .line 19
    .line 20
    .line 21
    const-string v3, "[%d] RecentsController.cleanup"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-static {v2, v1, v4, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mDeathHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    :cond_1
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    .line 49
    .line 50
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    move v0, v1

    .line 57
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ge v0, v3, :cond_2

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/view/SurfaceControl;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 80
    .line 81
    :cond_3
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 82
    .line 83
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 84
    .line 85
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 88
    .line 89
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransition:Landroid/os/IBinder;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mControllers:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move v0, v1

    .line 101
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 102
    .line 103
    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-ge v0, v3, :cond_4

    .line 110
    .line 111
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 112
    .line 113
    iget-object v3, v3, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mStateListeners:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/android/wm/shell/recents/RecentsTransitionStateListener;

    .line 120
    .line 121
    invoke-interface {v3, v1}, Lcom/android/wm/shell/recents/RecentsTransitionStateListener;->onAnimationStateChanged(Z)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE_TRANSFER:Z

    .line 128
    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    move v0, v1

    .line 136
    :goto_2
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-ge v0, v3, :cond_5

    .line 143
    .line 144
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Landroid/view/SurfaceControl;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    .line 153
    .line 154
    .line 155
    add-int/lit8 v0, v0, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mTransferLeashMap:Landroid/util/ArrayMap;

    .line 159
    .line 160
    :cond_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_RECENTS_TRANSITION_WITH_DISPLAY_CHANGE:Z

    .line 161
    .line 162
    if-eqz v0, :cond_7

    .line 163
    .line 164
    iput-boolean v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mIsDisplayChangeOnStart:Z

    .line 165
    .line 166
    :cond_7
    return-void
.end method

.method public final cleanupScreenshot()V
    .locals 0

    .line 1
    return-void
.end method

.method public final detachNavigationBarFromApp(Z)V
    .locals 4

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 7
    .line 8
    int-to-long v1, p1

    .line 9
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x65169e02

    .line 20
    .line 21
    .line 22
    const-string v3, "[%d] RecentsController.detachNavigationBarFromApp"

    .line 23
    .line 24
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 30
    .line 31
    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final finish(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    .line 5
    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZZ)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final finishInner(ZZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 2
    .line 3
    const-string v1, "RecentsTransitionHandler"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Duplicate call to finish"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 18
    .line 19
    int-to-long v2, v0

    .line 20
    iget-boolean v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    .line 21
    .line 22
    iget v4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    .line 23
    .line 24
    int-to-long v4, v4

    .line 25
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 26
    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    filled-new-array {v2, v3, v7, v0, v4}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/16 v2, 0x1fd

    .line 52
    .line 53
    const-string v3, "[%d] RecentsController.finishInner: toHome=%b userLeave=%b willFinishToHome=%b state=%d"

    .line 54
    .line 55
    const v4, -0x1a422df0

    .line 56
    .line 57
    .line 58
    invoke-static {v6, v4, v2, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    new-instance v4, Landroid/window/WindowContainerTransaction;

    .line 69
    .line 70
    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 71
    .line 72
    .line 73
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    iget-object v5, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 79
    .line 80
    iget-object v7, v5, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mForceHidingAnimators:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v10, "cancelForceHideAnimationsIfNeeded: animators="

    .line 97
    .line 98
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v8, ", Callers="

    .line 105
    .line 106
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/4 v8, 0x5

    .line 110
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_3

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    check-cast v7, Landroid/animation/Animator;

    .line 139
    .line 140
    iget-object v8, v5, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 141
    .line 142
    iget-object v8, v8, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 143
    .line 144
    new-instance v9, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda1;

    .line 145
    .line 146
    invoke-direct {v9, v7, v6}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    check-cast v8, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 150
    .line 151
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    .line 156
    .line 157
    if-eqz v1, :cond_4

    .line 158
    .line 159
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 160
    .line 161
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 162
    .line 163
    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions;->mRecentTransitionCallback:Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

    .line 164
    .line 165
    if-eqz v1, :cond_4

    .line 166
    .line 167
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 168
    .line 169
    iget-object v5, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 170
    .line 171
    iget-boolean v7, v5, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mReparentedToTransitionRoot:Z

    .line 172
    .line 173
    if-eqz v7, :cond_4

    .line 174
    .line 175
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 176
    .line 177
    invoke-virtual {v5, v1, v6, v3}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->reparentToLeash(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    iget-boolean v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    .line 181
    .line 182
    const/4 v5, 0x1

    .line 183
    if-eqz v1, :cond_6

    .line 184
    .line 185
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 186
    .line 187
    if-eqz v1, :cond_6

    .line 188
    .line 189
    if-eqz p1, :cond_5

    .line 190
    .line 191
    invoke-virtual {v4, v1, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual {v4, v1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 196
    .line 197
    .line 198
    :cond_6
    :goto_2
    if-nez p1, :cond_b

    .line 199
    .line 200
    iget-boolean v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    .line 201
    .line 202
    if-eqz v1, :cond_7

    .line 203
    .line 204
    iget-boolean v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    .line 205
    .line 206
    if-eqz v1, :cond_b

    .line 207
    .line 208
    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 209
    .line 210
    if-eqz v1, :cond_b

    .line 211
    .line 212
    iget v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    .line 213
    .line 214
    if-nez v1, :cond_b

    .line 215
    .line 216
    iget-boolean p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingSeparateHome:Z

    .line 217
    .line 218
    if-eqz p1, :cond_8

    .line 219
    .line 220
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 221
    .line 222
    if-eqz p1, :cond_9

    .line 223
    .line 224
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 225
    .line 226
    const p2, -0x633cd9f1

    .line 227
    .line 228
    .line 229
    const-string v1, "  returning to 3p home"

    .line 230
    .line 231
    invoke-static {p1, p2, v6, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_8
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 236
    .line 237
    if-eqz p1, :cond_9

    .line 238
    .line 239
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 240
    .line 241
    const p2, 0x189556e

    .line 242
    .line 243
    .line 244
    const-string v1, "  returning to app"

    .line 245
    .line 246
    invoke-static {p1, p2, v6, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    sub-int/2addr p1, v5

    .line 256
    :goto_4
    if-ltz p1, :cond_a

    .line 257
    .line 258
    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    check-cast p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 265
    .line 266
    iget-object p2, p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    .line 267
    .line 268
    invoke-virtual {v4, p2, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 269
    .line 270
    .line 271
    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    check-cast p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 278
    .line 279
    iget-object p2, p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 280
    .line 281
    invoke-virtual {v3, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 282
    .line 283
    .line 284
    add-int/lit8 p1, p1, -0x1

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_a
    iget-boolean p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    .line 288
    .line 289
    if-nez p1, :cond_16

    .line 290
    .line 291
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 292
    .line 293
    if-eqz p1, :cond_16

    .line 294
    .line 295
    invoke-virtual {v4, p1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 296
    .line 297
    .line 298
    goto/16 :goto_a

    .line 299
    .line 300
    :cond_b
    if-eqz p1, :cond_10

    .line 301
    .line 302
    iget-boolean p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    .line 303
    .line 304
    if-eqz p1, :cond_10

    .line 305
    .line 306
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 307
    .line 308
    if-eqz p1, :cond_10

    .line 309
    .line 310
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 311
    .line 312
    if-eqz p1, :cond_c

    .line 313
    .line 314
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 315
    .line 316
    const p2, 0x1b00ae53

    .line 317
    .line 318
    .line 319
    const-string v1, "  3p launching home"

    .line 320
    .line 321
    invoke-static {p1, p2, v6, v1, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-ge v6, p1, :cond_e

    .line 331
    .line 332
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    check-cast p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 339
    .line 340
    iget-object p2, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 341
    .line 342
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 343
    .line 344
    const/4 v1, 0x2

    .line 345
    if-ne p2, v1, :cond_d

    .line 346
    .line 347
    iget-object p2, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    .line 348
    .line 349
    invoke-virtual {v4, p2, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 350
    .line 351
    .line 352
    :cond_d
    iget-object p1, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 353
    .line 354
    invoke-virtual {v3, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 355
    .line 356
    .line 357
    add-int/lit8 v6, v6, 0x1

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_e
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    sub-int/2addr p1, v5

    .line 367
    :goto_6
    if-ltz p1, :cond_f

    .line 368
    .line 369
    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    check-cast p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 376
    .line 377
    iget-object p2, p2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 378
    .line 379
    invoke-virtual {v3, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 380
    .line 381
    .line 382
    add-int/lit8 p1, p1, -0x1

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_f
    iget-boolean p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mKeyguardLocked:Z

    .line 386
    .line 387
    if-nez p1, :cond_16

    .line 388
    .line 389
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 390
    .line 391
    if-eqz p1, :cond_16

    .line 392
    .line 393
    invoke-virtual {v4, p1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 394
    .line 395
    .line 396
    goto/16 :goto_a

    .line 397
    .line 398
    :cond_10
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 399
    .line 400
    if-eqz p1, :cond_11

    .line 401
    .line 402
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 403
    .line 404
    const v1, -0xd4b01f4

    .line 405
    .line 406
    .line 407
    const-string v7, "  normal finish"

    .line 408
    .line 409
    invoke-static {p1, v1, v6, v7, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :cond_11
    move p1, v6

    .line 413
    :goto_7
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-ge p1, v1, :cond_12

    .line 420
    .line 421
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 428
    .line 429
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 430
    .line 431
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 432
    .line 433
    .line 434
    add-int/lit8 p1, p1, 0x1

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :cond_12
    move p1, v6

    .line 438
    :goto_8
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-ge p1, v1, :cond_15

    .line 445
    .line 446
    if-nez p2, :cond_14

    .line 447
    .line 448
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 455
    .line 456
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mLeash:Landroid/view/SurfaceControl;

    .line 457
    .line 458
    if-eqz v1, :cond_13

    .line 459
    .line 460
    move v1, v5

    .line 461
    goto :goto_9

    .line 462
    :cond_13
    move v1, v6

    .line 463
    :goto_9
    if-eqz v1, :cond_14

    .line 464
    .line 465
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 466
    .line 467
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 472
    .line 473
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mToken:Landroid/window/WindowContainerToken;

    .line 474
    .line 475
    invoke-virtual {v4, v1}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 476
    .line 477
    .line 478
    :cond_14
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 485
    .line 486
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 487
    .line 488
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 489
    .line 490
    .line 491
    add-int/lit8 p1, p1, 0x1

    .line 492
    .line 493
    goto :goto_8

    .line 494
    :cond_15
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    .line 495
    .line 496
    if-eqz p1, :cond_16

    .line 497
    .line 498
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 499
    .line 500
    if-eqz v1, :cond_16

    .line 501
    .line 502
    if-eqz p2, :cond_16

    .line 503
    .line 504
    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 505
    .line 506
    invoke-virtual {p2, p1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    invoke-virtual {v3, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 515
    .line 516
    .line 517
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 518
    .line 519
    iget-object p2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 520
    .line 521
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    .line 522
    .line 523
    invoke-virtual {p2, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 524
    .line 525
    .line 526
    move-result-object p2

    .line 527
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 528
    .line 529
    .line 530
    move-result-object p2

    .line 531
    invoke-static {p1, p2, v3}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 532
    .line 533
    .line 534
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTask:Landroid/window/WindowContainerToken;

    .line 535
    .line 536
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 537
    .line 538
    :cond_16
    :goto_a
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cleanUp()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    .line 542
    .line 543
    .line 544
    move-result p0

    .line 545
    if-eqz p0, :cond_17

    .line 546
    .line 547
    move-object v4, v2

    .line 548
    :cond_17
    invoke-interface {v0, v4, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 549
    .line 550
    .line 551
    return-void
.end method

.method public final getSnapshotsForPausingTasks()Landroid/util/Pair;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    new-array v1, v1, [Landroid/window/TaskSnapshot;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v3, v4, :cond_2

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 44
    .line 45
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    iget v5, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 51
    .line 52
    int-to-long v7, v5

    .line 53
    iget-object v5, v4, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    .line 55
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 56
    .line 57
    int-to-long v9, v5

    .line 58
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 59
    .line 60
    const-string v11, "[%d] RecentsController.sendCancel: Snapshotting task=%d"

    .line 61
    .line 62
    const/4 v12, 0x2

    .line 63
    new-array v12, v12, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    aput-object v7, v12, v2

    .line 70
    .line 71
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    aput-object v7, v12, v6

    .line 76
    .line 77
    const v7, -0x36a9a978    # -877928.5f

    .line 78
    .line 79
    .line 80
    const/4 v8, 0x5

    .line 81
    invoke-static {v5, v7, v8, v11, v12}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget-object v4, v4, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 89
    .line 90
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 91
    .line 92
    invoke-interface {v5, v4, v6}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    aput-object v4, v1, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 102
    move-object v1, v0

    .line 103
    :cond_2
    new-instance p0, Landroid/util/Pair;

    .line 104
    .line 105
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-object p0
.end method

.method public final merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/os/IBinder;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-nez v5, :cond_1

    .line 15
    .line 16
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 21
    .line 22
    int-to-long v0, v0

    .line 23
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, -0x375f8e6f

    .line 34
    .line 35
    .line 36
    const-string v3, "[%d] RecentsController.merge: skip, no finish callback"

    .line 37
    .line 38
    invoke-static {v2, v1, v6, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/16 v7, 0xc

    .line 47
    .line 48
    if-ne v5, v7, :cond_3

    .line 49
    .line 50
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 55
    .line 56
    int-to-long v1, v1

    .line 57
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 58
    .line 59
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const v2, -0x7f04ddc

    .line 68
    .line 69
    .line 70
    const-string v4, "[%d] RecentsController.merge: transit_sleep"

    .line 71
    .line 72
    invoke-static {v3, v2, v6, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    const-string/jumbo v1, "transit_sleep"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 83
    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    iget v5, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 87
    .line 88
    int-to-long v7, v5

    .line 89
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 90
    .line 91
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    const v8, 0x7e8007e5

    .line 100
    .line 101
    .line 102
    const-string v9, "[%d] RecentsController.merge"

    .line 103
    .line 104
    invoke-static {v5, v8, v6, v9, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    const/4 v5, 0x0

    .line 108
    iput-boolean v5, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    .line 109
    .line 110
    new-instance v7, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    .line 111
    .line 112
    invoke-direct {v7}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v6}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    :goto_0
    const/16 v9, 0x20

    .line 120
    .line 121
    const/4 v10, 0x6

    .line 122
    if-ltz v8, :cond_6

    .line 123
    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    check-cast v11, Landroid/window/TransitionInfo$Change;

    .line 133
    .line 134
    invoke-virtual {v11, v9}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-eqz v9, :cond_5

    .line 139
    .line 140
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    if-ne v9, v10, :cond_5

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    add-int/lit8 v8, v8, -0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    move v6, v5

    .line 151
    :goto_1
    const/4 v8, 0x0

    .line 152
    const/4 v9, 0x0

    .line 153
    const/4 v10, 0x0

    .line 154
    const/4 v11, 0x0

    .line 155
    move-object v12, v9

    .line 156
    move-object v13, v10

    .line 157
    move-object v14, v11

    .line 158
    move v9, v5

    .line 159
    move v10, v9

    .line 160
    move-object v11, v8

    .line 161
    move v8, v10

    .line 162
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    const-string v4, "RecentsTransitionHandler"

    .line 171
    .line 172
    if-ge v5, v15, :cond_1e

    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    check-cast v15, Landroid/window/TransitionInfo$Change;

    .line 183
    .line 184
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    move-object/from16 v16, v14

    .line 189
    .line 190
    if-eqz v3, :cond_a

    .line 191
    .line 192
    iget-object v14, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 193
    .line 194
    iget-object v14, v14, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 195
    .line 196
    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-eqz v14, :cond_a

    .line 201
    .line 202
    iget-object v14, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 203
    .line 204
    iget-object v14, v14, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 205
    .line 206
    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    const/4 v2, 0x2

    .line 211
    if-eq v14, v2, :cond_9

    .line 212
    .line 213
    if-eqz v6, :cond_8

    .line 214
    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v3, "merge: skip handling always-on-top task "

    .line 218
    .line 219
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v3, ", reason=display_change"

    .line 226
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :cond_7
    :goto_3
    move-object/from16 v14, v16

    .line 238
    .line 239
    goto/16 :goto_9

    .line 240
    .line 241
    :cond_8
    return-void

    .line 242
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string/jumbo v2, "task #"

    .line 245
    .line 246
    .line 247
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 251
    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v2, " is always_on_top"

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_a
    if-eqz v3, :cond_b

    .line 269
    .line 270
    invoke-static {v15, v1}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_b

    .line 275
    .line 276
    const/4 v2, 0x1

    .line 277
    goto :goto_4

    .line 278
    :cond_b
    const/4 v2, 0x0

    .line 279
    :goto_4
    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mRecentsTask:Landroid/window/WindowContainerToken;

    .line 280
    .line 281
    if-eqz v4, :cond_c

    .line 282
    .line 283
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 284
    .line 285
    .line 286
    move-result-object v14

    .line 287
    invoke-virtual {v4, v14}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-eqz v4, :cond_c

    .line 292
    .line 293
    const/4 v4, 0x1

    .line 294
    goto :goto_5

    .line 295
    :cond_c
    const/4 v4, 0x0

    .line 296
    :goto_5
    if-nez v10, :cond_e

    .line 297
    .line 298
    if-eqz v2, :cond_d

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_d
    const/4 v10, 0x0

    .line 302
    goto :goto_7

    .line 303
    :cond_e
    :goto_6
    const/4 v10, 0x1

    .line 304
    :goto_7
    invoke-virtual {v7, v15}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    .line 305
    .line 306
    .line 307
    move-result v14

    .line 308
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 309
    .line 310
    .line 311
    move-result v17

    .line 312
    invoke-static/range {v17 .. v17}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 313
    .line 314
    .line 315
    move-result v17

    .line 316
    if-eqz v17, :cond_13

    .line 317
    .line 318
    if-eqz v4, :cond_f

    .line 319
    .line 320
    move/from16 v17, v6

    .line 321
    .line 322
    move-object v13, v15

    .line 323
    goto/16 :goto_c

    .line 324
    .line 325
    :cond_f
    if-nez v2, :cond_10

    .line 326
    .line 327
    if-eqz v14, :cond_7

    .line 328
    .line 329
    :cond_10
    if-eqz v14, :cond_11

    .line 330
    .line 331
    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 332
    .line 333
    const/4 v3, 0x2

    .line 334
    if-ne v2, v3, :cond_11

    .line 335
    .line 336
    const/4 v2, 0x1

    .line 337
    iput-boolean v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningSeparateHome:Z

    .line 338
    .line 339
    :cond_11
    if-nez v11, :cond_12

    .line 340
    .line 341
    new-instance v11, Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .line 345
    .line 346
    new-instance v2, Landroid/util/IntArray;

    .line 347
    .line 348
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 349
    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_12
    move-object/from16 v2, v16

    .line 353
    .line 354
    :goto_8
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v14}, Landroid/util/IntArray;->add(I)V

    .line 358
    .line 359
    .line 360
    move-object v14, v2

    .line 361
    goto :goto_9

    .line 362
    :cond_13
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 363
    .line 364
    .line 365
    move-result v17

    .line 366
    invoke-static/range {v17 .. v17}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 367
    .line 368
    .line 369
    move-result v17

    .line 370
    if-eqz v17, :cond_17

    .line 371
    .line 372
    if-eqz v4, :cond_14

    .line 373
    .line 374
    const/4 v2, 0x1

    .line 375
    move v9, v2

    .line 376
    move/from16 v17, v6

    .line 377
    .line 378
    goto/16 :goto_c

    .line 379
    .line 380
    :cond_14
    if-nez v2, :cond_15

    .line 381
    .line 382
    if-eqz v14, :cond_7

    .line 383
    .line 384
    :cond_15
    if-nez v12, :cond_16

    .line 385
    .line 386
    new-instance v12, Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .line 390
    .line 391
    :cond_16
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    goto/16 :goto_3

    .line 395
    .line 396
    :goto_9
    move/from16 v17, v6

    .line 397
    .line 398
    goto/16 :goto_d

    .line 399
    .line 400
    :cond_17
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    move/from16 v17, v6

    .line 405
    .line 406
    const/4 v6, 0x6

    .line 407
    if-ne v2, v6, :cond_1d

    .line 408
    .line 409
    const/16 v2, 0x20

    .line 410
    .line 411
    invoke-virtual {v15, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_18

    .line 416
    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-ne v2, v6, :cond_18

    .line 422
    .line 423
    iget-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    .line 424
    .line 425
    const-string v2, "display change"

    .line 426
    .line 427
    const/4 v3, 0x1

    .line 428
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;ZZ)V

    .line 429
    .line 430
    .line 431
    return-void

    .line 432
    :cond_18
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 433
    .line 434
    if-eqz v2, :cond_19

    .line 435
    .line 436
    if-eqz v14, :cond_19

    .line 437
    .line 438
    invoke-static {v15}, Lcom/android/wm/shell/util/TransitionUtil;->isHomeOrRecents(Landroid/window/TransitionInfo$Change;)Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-nez v2, :cond_19

    .line 443
    .line 444
    invoke-static {v15}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-eqz v2, :cond_19

    .line 449
    .line 450
    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-static {v2, v15}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-lez v2, :cond_19

    .line 457
    .line 458
    const/4 v2, 0x1

    .line 459
    goto :goto_a

    .line 460
    :cond_19
    const/4 v2, 0x0

    .line 461
    :goto_a
    invoke-static {v15}, Lcom/android/wm/shell/util/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    if-nez v6, :cond_1a

    .line 466
    .line 467
    if-eqz v14, :cond_1a

    .line 468
    .line 469
    const/4 v2, 0x1

    .line 470
    move v8, v2

    .line 471
    goto :goto_c

    .line 472
    :cond_1a
    if-eqz v14, :cond_1d

    .line 473
    .line 474
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 475
    .line 476
    const/4 v6, 0x2

    .line 477
    if-eq v3, v6, :cond_1b

    .line 478
    .line 479
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 480
    .line 481
    if-eqz v3, :cond_1d

    .line 482
    .line 483
    if-eqz v2, :cond_1d

    .line 484
    .line 485
    :cond_1b
    if-nez v4, :cond_1d

    .line 486
    .line 487
    if-nez v11, :cond_1c

    .line 488
    .line 489
    new-instance v11, Ljava/util/ArrayList;

    .line 490
    .line 491
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .line 493
    .line 494
    new-instance v14, Landroid/util/IntArray;

    .line 495
    .line 496
    invoke-direct {v14}, Landroid/util/IntArray;-><init>()V

    .line 497
    .line 498
    .line 499
    goto :goto_b

    .line 500
    :cond_1c
    move-object/from16 v14, v16

    .line 501
    .line 502
    :goto_b
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    const/4 v2, 0x1

    .line 506
    invoke-virtual {v14, v2}, Landroid/util/IntArray;->add(I)V

    .line 507
    .line 508
    .line 509
    goto :goto_d

    .line 510
    :cond_1d
    :goto_c
    move-object/from16 v14, v16

    .line 511
    .line 512
    :goto_d
    add-int/lit8 v5, v5, 0x1

    .line 513
    .line 514
    move-object/from16 v2, p2

    .line 515
    .line 516
    move-object/from16 v3, p3

    .line 517
    .line 518
    move-object/from16 v4, p4

    .line 519
    .line 520
    move/from16 v6, v17

    .line 521
    .line 522
    goto/16 :goto_2

    .line 523
    .line 524
    :cond_1e
    move-object/from16 v16, v14

    .line 525
    .line 526
    if-eqz v8, :cond_1f

    .line 527
    .line 528
    if-eqz v9, :cond_1f

    .line 529
    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancelWithSnapshots()V

    .line 531
    .line 532
    .line 533
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 534
    .line 535
    iget-object v1, v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 536
    .line 537
    new-instance v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda1;

    .line 538
    .line 539
    const/4 v3, 0x2

    .line 540
    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 541
    .line 542
    .line 543
    const-wide/16 v3, 0x0

    .line 544
    .line 545
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 546
    .line 547
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(JLjava/lang/Runnable;)V

    .line 548
    .line 549
    .line 550
    return-void

    .line 551
    :cond_1f
    const/high16 v2, 0x3f800000    # 1.0f

    .line 552
    .line 553
    if-eqz v13, :cond_23

    .line 554
    .line 555
    iget v3, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    .line 556
    .line 557
    if-nez v3, :cond_20

    .line 558
    .line 559
    const-string v3, "Returning to recents while recents is already idle."

    .line 560
    .line 561
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .line 563
    .line 564
    :cond_20
    if-eqz v12, :cond_21

    .line 565
    .line 566
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    if-nez v3, :cond_22

    .line 571
    .line 572
    :cond_21
    const-string v3, "Returning to recents without closing any opening tasks."

    .line 573
    .line 574
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    :cond_22
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    move-object/from16 v5, p2

    .line 582
    .line 583
    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    invoke-virtual {v5, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 591
    .line 592
    .line 593
    const/4 v2, 0x0

    .line 594
    iput v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    .line 595
    .line 596
    goto :goto_e

    .line 597
    :cond_23
    move-object/from16 v5, p2

    .line 598
    .line 599
    :goto_e
    const-string v3, "leaf "

    .line 600
    .line 601
    const-string v6, ""

    .line 602
    .line 603
    if-eqz v12, :cond_2b

    .line 604
    .line 605
    const/4 v7, 0x0

    .line 606
    const/4 v8, 0x0

    .line 607
    :goto_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 608
    .line 609
    .line 610
    move-result v13

    .line 611
    if-ge v7, v13, :cond_2a

    .line 612
    .line 613
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v13

    .line 617
    check-cast v13, Landroid/window/TransitionInfo$Change;

    .line 618
    .line 619
    iget-object v14, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 620
    .line 621
    invoke-static {v14, v13}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    .line 622
    .line 623
    .line 624
    move-result v14

    .line 625
    if-ltz v14, :cond_25

    .line 626
    .line 627
    iget-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 628
    .line 629
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    sget-boolean v8, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 633
    .line 634
    if-eqz v8, :cond_24

    .line 635
    .line 636
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 637
    .line 638
    .line 639
    move-result-object v8

    .line 640
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 641
    .line 642
    int-to-long v13, v8

    .line 643
    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 644
    .line 645
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 646
    .line 647
    .line 648
    move-result-object v13

    .line 649
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v13

    .line 653
    const v14, 0x52e6024

    .line 654
    .line 655
    .line 656
    const-string v15, "  closing pausing taskId=%d"

    .line 657
    .line 658
    const/4 v2, 0x1

    .line 659
    invoke-static {v8, v14, v2, v15, v13}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 660
    .line 661
    .line 662
    :cond_24
    move-object/from16 v18, v3

    .line 663
    .line 664
    const/4 v3, 0x4

    .line 665
    goto :goto_13

    .line 666
    :cond_25
    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 667
    .line 668
    invoke-static {v2, v13}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    if-gez v2, :cond_26

    .line 673
    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    .line 675
    .line 676
    const-string v14, "Closing a task that wasn\'t opening, this may be split or something unexpected: "

    .line 677
    .line 678
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 682
    .line 683
    .line 684
    move-result-object v13

    .line 685
    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 686
    .line 687
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .line 696
    .line 697
    move-object/from16 v18, v3

    .line 698
    .line 699
    const/4 v3, 0x4

    .line 700
    goto :goto_14

    .line 701
    :cond_26
    iget-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 702
    .line 703
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    check-cast v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 708
    .line 709
    sget-boolean v8, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 710
    .line 711
    if-eqz v8, :cond_29

    .line 712
    .line 713
    iget-object v8, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mLeash:Landroid/view/SurfaceControl;

    .line 714
    .line 715
    if-eqz v8, :cond_27

    .line 716
    .line 717
    const/4 v8, 0x1

    .line 718
    goto :goto_10

    .line 719
    :cond_27
    const/4 v8, 0x0

    .line 720
    :goto_10
    if-eqz v8, :cond_28

    .line 721
    .line 722
    move-object v8, v3

    .line 723
    goto :goto_11

    .line 724
    :cond_28
    move-object v8, v6

    .line 725
    :goto_11
    iget-object v13, v2, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 726
    .line 727
    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 728
    .line 729
    int-to-long v13, v13

    .line 730
    sget-object v15, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 731
    .line 732
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 733
    .line 734
    .line 735
    move-result-object v13

    .line 736
    filled-new-array {v8, v13}, [Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v8

    .line 740
    const v13, 0x7a786259

    .line 741
    .line 742
    .line 743
    const-string v14, "  pausing opening %staskId=%d"

    .line 744
    .line 745
    move-object/from16 v18, v3

    .line 746
    .line 747
    const/4 v3, 0x4

    .line 748
    invoke-static {v15, v13, v3, v14, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    goto :goto_12

    .line 752
    :cond_29
    move-object/from16 v18, v3

    .line 753
    .line 754
    const/4 v3, 0x4

    .line 755
    :goto_12
    iget-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 756
    .line 757
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    :goto_13
    const/4 v2, 0x1

    .line 761
    move v8, v2

    .line 762
    :goto_14
    add-int/lit8 v7, v7, 0x1

    .line 763
    .line 764
    move-object/from16 v3, v18

    .line 765
    .line 766
    goto/16 :goto_f

    .line 767
    .line 768
    :cond_2a
    move-object/from16 v18, v3

    .line 769
    .line 770
    goto :goto_15

    .line 771
    :cond_2b
    move-object/from16 v18, v3

    .line 772
    .line 773
    const/4 v8, 0x0

    .line 774
    :goto_15
    if-eqz v11, :cond_3c

    .line 775
    .line 776
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 777
    .line 778
    .line 779
    move-result v2

    .line 780
    if-lez v2, :cond_3c

    .line 781
    .line 782
    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 783
    .line 784
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 789
    .line 790
    .line 791
    move-result v2

    .line 792
    mul-int/lit8 v2, v2, 0x3

    .line 793
    .line 794
    const/4 v3, 0x0

    .line 795
    const/4 v7, 0x0

    .line 796
    :goto_16
    invoke-virtual/range {v16 .. v16}, Landroid/util/IntArray;->size()I

    .line 797
    .line 798
    .line 799
    move-result v8

    .line 800
    if-ge v3, v8, :cond_2c

    .line 801
    .line 802
    move-object/from16 v14, v16

    .line 803
    .line 804
    invoke-virtual {v14, v3}, Landroid/util/IntArray;->get(I)I

    .line 805
    .line 806
    .line 807
    move-result v8

    .line 808
    add-int/2addr v7, v8

    .line 809
    add-int/lit8 v3, v3, 0x1

    .line 810
    .line 811
    goto :goto_16

    .line 812
    :cond_2c
    move-object/from16 v14, v16

    .line 813
    .line 814
    if-lez v7, :cond_2d

    .line 815
    .line 816
    new-array v3, v7, [Landroid/view/RemoteAnimationTarget;

    .line 817
    .line 818
    goto :goto_17

    .line 819
    :cond_2d
    const/4 v3, 0x0

    .line 820
    :goto_17
    const/4 v7, 0x0

    .line 821
    const/4 v8, 0x0

    .line 822
    :goto_18
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 823
    .line 824
    .line 825
    move-result v12

    .line 826
    if-ge v7, v12, :cond_36

    .line 827
    .line 828
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v12

    .line 832
    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 833
    .line 834
    invoke-virtual {v14, v7}, Landroid/util/IntArray;->get(I)I

    .line 835
    .line 836
    .line 837
    move-result v13

    .line 838
    const/4 v15, 0x1

    .line 839
    if-ne v13, v15, :cond_2e

    .line 840
    .line 841
    const/4 v13, 0x1

    .line 842
    goto :goto_19

    .line 843
    :cond_2e
    const/4 v13, 0x0

    .line 844
    :goto_19
    iget-object v15, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 845
    .line 846
    invoke-static {v15, v12}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->indexOf(Ljava/util/ArrayList;Landroid/window/TransitionInfo$Change;)I

    .line 847
    .line 848
    .line 849
    move-result v15

    .line 850
    if-ltz v15, :cond_32

    .line 851
    .line 852
    if-eqz v13, :cond_2f

    .line 853
    .line 854
    add-int/lit8 v16, v8, 0x1

    .line 855
    .line 856
    move-object/from16 v17, v6

    .line 857
    .line 858
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 859
    .line 860
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v6

    .line 864
    check-cast v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 865
    .line 866
    iget-object v6, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mLeash:Landroid/view/SurfaceControl;

    .line 867
    .line 868
    move-object/from16 v19, v11

    .line 869
    .line 870
    const/4 v11, 0x0

    .line 871
    invoke-static {v12, v2, v6, v11}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;

    .line 872
    .line 873
    .line 874
    move-result-object v6

    .line 875
    aput-object v6, v3, v8

    .line 876
    .line 877
    move/from16 v8, v16

    .line 878
    .line 879
    goto :goto_1a

    .line 880
    :cond_2f
    move-object/from16 v17, v6

    .line 881
    .line 882
    move-object/from16 v19, v11

    .line 883
    .line 884
    :goto_1a
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 885
    .line 886
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v6

    .line 890
    check-cast v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 891
    .line 892
    sget-boolean v11, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 893
    .line 894
    if-eqz v11, :cond_31

    .line 895
    .line 896
    if-eqz v13, :cond_30

    .line 897
    .line 898
    move-object/from16 v11, v18

    .line 899
    .line 900
    goto :goto_1b

    .line 901
    :cond_30
    move-object/from16 v11, v17

    .line 902
    .line 903
    :goto_1b
    iget-object v13, v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 904
    .line 905
    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 906
    .line 907
    move-object/from16 v16, v14

    .line 908
    .line 909
    int-to-long v13, v13

    .line 910
    sget-object v15, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 911
    .line 912
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 913
    .line 914
    .line 915
    move-result-object v13

    .line 916
    filled-new-array {v11, v13}, [Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v11

    .line 920
    const v13, 0x1cc92d59

    .line 921
    .line 922
    .line 923
    const-string v14, "  opening pausing %staskId=%d"

    .line 924
    .line 925
    move/from16 v20, v8

    .line 926
    .line 927
    const/4 v8, 0x4

    .line 928
    invoke-static {v15, v13, v8, v14, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 929
    .line 930
    .line 931
    goto :goto_1c

    .line 932
    :cond_31
    move/from16 v20, v8

    .line 933
    .line 934
    move-object/from16 v16, v14

    .line 935
    .line 936
    :goto_1c
    iget-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 937
    .line 938
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    .line 940
    .line 941
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 942
    .line 943
    .line 944
    move-result-object v6

    .line 945
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 946
    .line 947
    .line 948
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 949
    .line 950
    .line 951
    move-result-object v6

    .line 952
    const/high16 v8, 0x3f800000    # 1.0f

    .line 953
    .line 954
    invoke-virtual {v5, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 955
    .line 956
    .line 957
    move/from16 v8, v20

    .line 958
    .line 959
    goto/16 :goto_1d

    .line 960
    .line 961
    :cond_32
    move-object/from16 v17, v6

    .line 962
    .line 963
    move-object/from16 v19, v11

    .line 964
    .line 965
    move-object/from16 v16, v14

    .line 966
    .line 967
    if-eqz v13, :cond_34

    .line 968
    .line 969
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mLeashMap:Landroid/util/ArrayMap;

    .line 970
    .line 971
    invoke-static {v12, v2, v1, v5, v6}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)Landroid/view/RemoteAnimationTarget;

    .line 972
    .line 973
    .line 974
    move-result-object v6

    .line 975
    add-int/lit8 v11, v8, 0x1

    .line 976
    .line 977
    aput-object v6, v3, v8

    .line 978
    .line 979
    iget-object v8, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 980
    .line 981
    invoke-static {v12, v8}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 982
    .line 983
    .line 984
    move-result v8

    .line 985
    iget-object v13, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 986
    .line 987
    iget-object v14, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 988
    .line 989
    invoke-virtual {v14, v8}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 990
    .line 991
    .line 992
    move-result-object v8

    .line 993
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 994
    .line 995
    .line 996
    move-result-object v8

    .line 997
    invoke-virtual {v5, v13, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 998
    .line 999
    .line 1000
    iget-object v8, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 1001
    .line 1002
    invoke-virtual {v5, v8, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1003
    .line 1004
    .line 1005
    iget-object v8, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 1006
    .line 1007
    invoke-virtual {v5, v8}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1008
    .line 1009
    .line 1010
    sget-boolean v8, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1011
    .line 1012
    if-eqz v8, :cond_33

    .line 1013
    .line 1014
    iget v8, v6, Landroid/view/RemoteAnimationTarget;->taskId:I

    .line 1015
    .line 1016
    int-to-long v13, v8

    .line 1017
    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1018
    .line 1019
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v13

    .line 1023
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v13

    .line 1027
    const v14, 0x609df26

    .line 1028
    .line 1029
    .line 1030
    const-string v15, "  opening new leaf taskId=%d"

    .line 1031
    .line 1032
    const/4 v1, 0x1

    .line 1033
    invoke-static {v8, v14, v1, v15, v13}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    .line 1035
    .line 1036
    :cond_33
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 1037
    .line 1038
    new-instance v8, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 1039
    .line 1040
    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 1041
    .line 1042
    invoke-direct {v8, v12, v6}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    .line 1047
    .line 1048
    move v8, v11

    .line 1049
    goto :goto_1d

    .line 1050
    :cond_34
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1051
    .line 1052
    if-eqz v1, :cond_35

    .line 1053
    .line 1054
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1059
    .line 1060
    int-to-long v13, v1

    .line 1061
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1062
    .line 1063
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v6

    .line 1067
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v6

    .line 1071
    const v11, -0xf1112cc

    .line 1072
    .line 1073
    .line 1074
    const-string v13, "  opening new taskId=%d"

    .line 1075
    .line 1076
    const/4 v14, 0x1

    .line 1077
    invoke-static {v1, v11, v14, v13, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    .line 1079
    .line 1080
    :cond_35
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v1

    .line 1084
    invoke-virtual {v5, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    invoke-virtual {v5, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1092
    .line 1093
    .line 1094
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mOpeningTasks:Ljava/util/ArrayList;

    .line 1095
    .line 1096
    new-instance v6, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;

    .line 1097
    .line 1098
    const/4 v11, 0x0

    .line 1099
    invoke-direct {v6, v12, v11}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$TaskState;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    :goto_1d
    add-int/lit8 v7, v7, 0x1

    .line 1106
    .line 1107
    move-object/from16 v1, p1

    .line 1108
    .line 1109
    move-object/from16 v14, v16

    .line 1110
    .line 1111
    move-object/from16 v6, v17

    .line 1112
    .line 1113
    move-object/from16 v11, v19

    .line 1114
    .line 1115
    goto/16 :goto_18

    .line 1116
    .line 1117
    :cond_36
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH:Z

    .line 1118
    .line 1119
    if-eqz v1, :cond_3a

    .line 1120
    .line 1121
    const/4 v1, 0x0

    .line 1122
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v2

    .line 1126
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1127
    .line 1128
    .line 1129
    move-result v2

    .line 1130
    if-ge v1, v2, :cond_39

    .line 1131
    .line 1132
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v2

    .line 1136
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v2

    .line 1140
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 1141
    .line 1142
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1143
    .line 1144
    .line 1145
    move-result v6

    .line 1146
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v6

    .line 1150
    if-nez v6, :cond_37

    .line 1151
    .line 1152
    goto :goto_1f

    .line 1153
    :cond_37
    const/high16 v6, 0x4000000

    .line 1154
    .line 1155
    invoke-virtual {v2, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 1156
    .line 1157
    .line 1158
    move-result v2

    .line 1159
    if-eqz v2, :cond_38

    .line 1160
    .line 1161
    const/4 v1, 0x1

    .line 1162
    goto :goto_20

    .line 1163
    :cond_38
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    .line 1164
    .line 1165
    goto :goto_1e

    .line 1166
    :cond_39
    const/4 v1, 0x0

    .line 1167
    :goto_20
    if-eqz v1, :cond_3a

    .line 1168
    .line 1169
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1170
    .line 1171
    if-eqz v1, :cond_3b

    .line 1172
    .line 1173
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1174
    .line 1175
    const v2, -0x6a02fd38

    .line 1176
    .line 1177
    .line 1178
    const-string v6, "  adding late transient launch"

    .line 1179
    .line 1180
    const/4 v7, 0x0

    .line 1181
    const/4 v8, 0x0

    .line 1182
    invoke-static {v1, v2, v8, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    .line 1184
    .line 1185
    goto :goto_21

    .line 1186
    :cond_3a
    const/4 v1, 0x1

    .line 1187
    iput v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mState:I

    .line 1188
    .line 1189
    :cond_3b
    :goto_21
    const/4 v8, 0x1

    .line 1190
    goto :goto_22

    .line 1191
    :cond_3c
    const/4 v3, 0x0

    .line 1192
    :goto_22
    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPausingTasks:Ljava/util/ArrayList;

    .line 1193
    .line 1194
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1195
    .line 1196
    .line 1197
    move-result v1

    .line 1198
    if-eqz v1, :cond_3d

    .line 1199
    .line 1200
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1201
    .line 1202
    if-eqz v1, :cond_3d

    .line 1203
    .line 1204
    iget v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 1205
    .line 1206
    int-to-long v1, v1

    .line 1207
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1208
    .line 1209
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v1

    .line 1217
    const v2, 0x800b87

    .line 1218
    .line 1219
    .line 1220
    const-string v7, "[%d] RecentsController.merge: empty pausing tasks"

    .line 1221
    .line 1222
    const/4 v11, 0x1

    .line 1223
    invoke-static {v6, v2, v11, v7, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1224
    .line 1225
    .line 1226
    :cond_3d
    if-nez v10, :cond_40

    .line 1227
    .line 1228
    const-string v1, "Got an activity only transition during recents, so apply directly"

    .line 1229
    .line 1230
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    .line 1232
    .line 1233
    const/4 v1, 0x0

    .line 1234
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v2

    .line 1238
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1239
    .line 1240
    .line 1241
    move-result v2

    .line 1242
    if-ge v1, v2, :cond_48

    .line 1243
    .line 1244
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v2

    .line 1248
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v2

    .line 1252
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 1253
    .line 1254
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1255
    .line 1256
    .line 1257
    move-result v6

    .line 1258
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v6

    .line 1262
    if-eqz v6, :cond_3e

    .line 1263
    .line 1264
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v6

    .line 1268
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v2

    .line 1275
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1276
    .line 1277
    invoke-virtual {v5, v2, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1278
    .line 1279
    .line 1280
    goto :goto_24

    .line 1281
    :cond_3e
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1282
    .line 1283
    .line 1284
    move-result v6

    .line 1285
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1286
    .line 1287
    .line 1288
    move-result v6

    .line 1289
    if-eqz v6, :cond_3f

    .line 1290
    .line 1291
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v2

    .line 1295
    invoke-virtual {v5, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1296
    .line 1297
    .line 1298
    :cond_3f
    :goto_24
    add-int/lit8 v1, v1, 0x1

    .line 1299
    .line 1300
    goto :goto_23

    .line 1301
    :cond_40
    if-nez v8, :cond_48

    .line 1302
    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    const-string v2, "Don\'t know how to merge this transition, foundRecentsClosing="

    .line 1306
    .line 1307
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v1

    .line 1317
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    .line 1319
    .line 1320
    if-eqz v9, :cond_41

    .line 1321
    .line 1322
    const/4 v1, 0x0

    .line 1323
    iput-boolean v1, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mWillFinishToHome:Z

    .line 1324
    .line 1325
    const-string v2, "didn\'t merge"

    .line 1326
    .line 1327
    invoke-virtual {v0, v2, v1, v1}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->cancel(Ljava/lang/String;ZZ)V

    .line 1328
    .line 1329
    .line 1330
    goto/16 :goto_28

    .line 1331
    .line 1332
    :cond_41
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 1333
    .line 1334
    if-eqz v0, :cond_42

    .line 1335
    .line 1336
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    .line 1337
    .line 1338
    .line 1339
    move-result v0

    .line 1340
    const/16 v1, 0x3eb

    .line 1341
    .line 1342
    if-ne v0, v1, :cond_42

    .line 1343
    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1345
    .line 1346
    .line 1347
    const/4 v0, 0x0

    .line 1348
    move-object/from16 v1, p3

    .line 1349
    .line 1350
    invoke-interface {v1, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 1351
    .line 1352
    .line 1353
    goto :goto_28

    .line 1354
    :cond_42
    move-object/from16 v1, p3

    .line 1355
    .line 1356
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1357
    .line 1358
    if-eqz v0, :cond_47

    .line 1359
    .line 1360
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    .line 1361
    .line 1362
    .line 1363
    move-result v0

    .line 1364
    const/4 v2, 0x6

    .line 1365
    if-ne v0, v2, :cond_47

    .line 1366
    .line 1367
    const/4 v0, 0x0

    .line 1368
    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v3

    .line 1372
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1373
    .line 1374
    .line 1375
    move-result v3

    .line 1376
    if-ge v0, v3, :cond_46

    .line 1377
    .line 1378
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v3

    .line 1382
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v3

    .line 1386
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 1387
    .line 1388
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1389
    .line 1390
    .line 1391
    move-result v6

    .line 1392
    if-eq v6, v2, :cond_43

    .line 1393
    .line 1394
    goto :goto_26

    .line 1395
    :cond_43
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v3

    .line 1399
    if-eqz v3, :cond_45

    .line 1400
    .line 1401
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 1402
    .line 1403
    .line 1404
    move-result v6

    .line 1405
    if-ne v6, v2, :cond_45

    .line 1406
    .line 1407
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v3

    .line 1411
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1412
    .line 1413
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 1414
    .line 1415
    .line 1416
    move-result v3

    .line 1417
    if-nez v3, :cond_44

    .line 1418
    .line 1419
    goto :goto_26

    .line 1420
    :cond_44
    add-int/lit8 v0, v0, 0x1

    .line 1421
    .line 1422
    goto :goto_25

    .line 1423
    :cond_45
    :goto_26
    const/4 v0, 0x0

    .line 1424
    goto :goto_27

    .line 1425
    :cond_46
    const-string v0, "When only split change, merge"

    .line 1426
    .line 1427
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    .line 1429
    .line 1430
    const/4 v0, 0x1

    .line 1431
    :goto_27
    if-eqz v0, :cond_47

    .line 1432
    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1434
    .line 1435
    .line 1436
    const/4 v0, 0x0

    .line 1437
    invoke-interface {v1, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 1438
    .line 1439
    .line 1440
    :cond_47
    :goto_28
    return-void

    .line 1441
    :cond_48
    move-object/from16 v1, p3

    .line 1442
    .line 1443
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 1447
    .line 1448
    .line 1449
    if-eqz v3, :cond_4e

    .line 1450
    .line 1451
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    .line 1452
    .line 1453
    if-eqz v2, :cond_4c

    .line 1454
    .line 1455
    move-object/from16 v2, p4

    .line 1456
    .line 1457
    if-eqz v2, :cond_4c

    .line 1458
    .line 1459
    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 1460
    .line 1461
    iget-object v5, v5, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 1462
    .line 1463
    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions;->mRecentTransitionCallback:Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;

    .line 1464
    .line 1465
    if-eqz v5, :cond_4c

    .line 1466
    .line 1467
    iget-object v6, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInfo:Landroid/window/TransitionInfo;

    .line 1468
    .line 1469
    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$RecentsTransitionCallback;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 1470
    .line 1471
    iget-object v7, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 1472
    .line 1473
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v2

    .line 1477
    if-eqz v2, :cond_4c

    .line 1478
    .line 1479
    array-length v2, v3

    .line 1480
    add-int/lit8 v2, v2, -0x1

    .line 1481
    .line 1482
    :goto_29
    if-ltz v2, :cond_4a

    .line 1483
    .line 1484
    aget-object v7, v3, v2

    .line 1485
    .line 1486
    iget-object v8, v7, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1487
    .line 1488
    if-eqz v8, :cond_49

    .line 1489
    .line 1490
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    .line 1491
    .line 1492
    .line 1493
    move-result v8

    .line 1494
    if-eqz v8, :cond_49

    .line 1495
    .line 1496
    iget v7, v7, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 1497
    .line 1498
    if-nez v7, :cond_49

    .line 1499
    .line 1500
    const/4 v2, 0x1

    .line 1501
    goto :goto_2a

    .line 1502
    :cond_49
    add-int/lit8 v2, v2, -0x1

    .line 1503
    .line 1504
    goto :goto_29

    .line 1505
    :cond_4a
    const/4 v2, 0x0

    .line 1506
    :goto_2a
    if-eqz v2, :cond_4c

    .line 1507
    .line 1508
    iget v2, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 1509
    .line 1510
    invoke-virtual {v6, v2}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    .line 1511
    .line 1512
    .line 1513
    move-result v2

    .line 1514
    if-gez v2, :cond_4b

    .line 1515
    .line 1516
    goto :goto_2b

    .line 1517
    :cond_4b
    invoke-virtual {v6, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v2

    .line 1521
    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 1522
    .line 1523
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v2

    .line 1527
    const/4 v6, 0x0

    .line 1528
    const/4 v7, 0x1

    .line 1529
    invoke-virtual {v5, v2, v7, v6}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->reparentToLeash(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 1530
    .line 1531
    .line 1532
    :cond_4c
    :goto_2b
    :try_start_0
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 1533
    .line 1534
    if-eqz v2, :cond_4d

    .line 1535
    .line 1536
    iget v2, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 1537
    .line 1538
    int-to-long v5, v2

    .line 1539
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 1540
    .line 1541
    const-string v7, "[%d] RecentsController.merge: calling onTasksAppeared"

    .line 1542
    .line 1543
    const/4 v8, 0x1

    .line 1544
    new-array v9, v8, [Ljava/lang/Object;

    .line 1545
    .line 1546
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v5

    .line 1550
    const/4 v6, 0x0

    .line 1551
    aput-object v5, v9, v6

    .line 1552
    .line 1553
    const v5, -0x26783360

    .line 1554
    .line 1555
    .line 1556
    invoke-static {v2, v5, v8, v7, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1557
    .line 1558
    .line 1559
    :cond_4d
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    .line 1560
    .line 1561
    invoke-interface {v0, v3}, Landroid/view/IRecentsAnimationRunner;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    .line 1563
    .line 1564
    goto :goto_2c

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    const-string v2, "Error sending appeared tasks to recents animation"

    .line 1567
    .line 1568
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1569
    .line 1570
    .line 1571
    :cond_4e
    :goto_2c
    const/4 v0, 0x0

    .line 1572
    invoke-interface {v1, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 1573
    .line 1574
    .line 1575
    return-void
.end method

.method public final removeTask(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final screenshotTask(I)Landroid/window/TaskSnapshot;
    .locals 7

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 7
    .line 8
    int-to-long v2, p0

    .line 9
    int-to-long v4, p1

    .line 10
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 11
    .line 12
    const-string v0, "[%d] RecentsController.screenshotTask: taskId=%d"

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    new-array v6, v6, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v6, v3

    .line 23
    .line 24
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    aput-object v2, v6, v1

    .line 29
    .line 30
    const v2, 0x12b42e78

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    invoke-static {p0, v2, v3, v0, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0, p1, v1}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object p0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    const-string p1, "RecentsTransitionHandler"

    .line 48
    .line 49
    const-string v0, "Failed to screenshot task"

    .line 50
    .line 51
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public final sendCancel([I[Landroid/window/TaskSnapshot;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string/jumbo v1, "with snapshots"

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, ""

    .line 9
    .line 10
    :goto_0
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget v2, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 16
    .line 17
    int-to-long v4, v2

    .line 18
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 19
    .line 20
    const-string v6, "[%d] RecentsController.cancel: calling onAnimationCanceled %s"

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    new-array v7, v7, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    aput-object v4, v7, v0

    .line 30
    .line 31
    aput-object v1, v7, v3

    .line 32
    .line 33
    const v1, 0x9c55883

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v1, v3, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mListener:Landroid/view/IRecentsAnimationRunner;

    .line 40
    .line 41
    invoke-interface {p0, p1, p2}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    return v3

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "RecentsTransitionHandler"

    .line 47
    .line 48
    const-string p2, "Error canceling recents animation"

    .line 49
    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public final sendCancelWithSnapshots()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mPendingPauseSnapshotsForCancel:Landroid/util/Pair;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->getSnapshotsForPausingTasks()Landroid/util/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, [I

    .line 13
    .line 14
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, [Landroid/window/TaskSnapshot;

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->sendCancel([I[Landroid/window/TaskSnapshot;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setAnimationTargetsBehindSystemBars(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setDeferCancelUntilNextTransition(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 4

    .line 1
    sget-boolean p3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENTS_TRANSITION_enabled:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget p3, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->mInstanceId:I

    .line 6
    .line 7
    int-to-long v0, p3

    .line 8
    int-to-long v2, p1

    .line 9
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENTS_TRANSITION:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    filled-new-array {p3, v0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    const/4 v0, 0x5

    .line 24
    const-string v1, "[%d] RecentsController.setFinishTaskTransaction: taskId=%d"

    .line 25
    .line 26
    const v2, -0x31272a61

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v2, v0, v1, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 35
    .line 36
    new-instance p3, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda2;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {p3, v0, p0, p2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final setInputConsumerEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    .line 5
    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZI)V

    .line 9
    .line 10
    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setWillFinishToHome(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->this$0:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    .line 5
    new-instance v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZI)V

    .line 9
    .line 10
    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
