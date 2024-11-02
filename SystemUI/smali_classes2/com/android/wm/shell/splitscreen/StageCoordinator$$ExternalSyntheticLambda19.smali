.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic f$1:Landroid/window/TransitionInfo$Change;

.field public final synthetic f$10:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/window/TransitionInfo$Change;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Landroid/window/TransitionInfo$Change;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo$Change;ZZZLandroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$1:Landroid/window/TransitionInfo$Change;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$2:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$3:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$4:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$5:Landroid/window/TransitionInfo$Change;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$6:Z

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$7:Landroid/window/TransitionInfo$Change;

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$8:Z

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$9:Landroid/window/WindowContainerTransaction;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$10:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$1:Landroid/window/TransitionInfo$Change;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$2:Z

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$3:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    :cond_0
    if-nez v2, :cond_2

    .line 21
    .line 22
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$4:Z

    .line 23
    .line 24
    iget-object v4, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 33
    .line 34
    invoke-virtual {v4, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$5:Landroid/window/TransitionInfo$Change;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    :cond_3
    if-nez v2, :cond_5

    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$6:Z

    .line 54
    .line 55
    iget-object v3, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 56
    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 64
    .line 65
    invoke-virtual {v3, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 73
    .line 74
    if-eqz v0, :cond_8

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$7:Landroid/window/TransitionInfo$Change;

    .line 77
    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_APP_PAIR:Z

    .line 81
    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    if-nez v2, :cond_8

    .line 85
    .line 86
    :cond_6
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$8:Z

    .line 87
    .line 88
    iget-object v2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 89
    .line 90
    if-nez v1, :cond_7

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 97
    .line 98
    invoke-virtual {v2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    .line 103
    .line 104
    .line 105
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$9:Landroid/window/WindowContainerTransaction;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/4 v2, 0x1

    .line 112
    if-nez v1, :cond_9

    .line 113
    .line 114
    invoke-virtual {p1, v0, v2}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    .line 115
    .line 116
    .line 117
    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda19;->f$10:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 118
    .line 119
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mResizeAnim:Z

    .line 120
    .line 121
    if-eqz p0, :cond_a

    .line 122
    .line 123
    iput-boolean v2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    .line 124
    .line 125
    iget-object p0, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->flingDividerToCenter()V

    .line 128
    .line 129
    .line 130
    :cond_a
    iget-boolean p0, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsOpeningHomeDuringSplit:Z

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    if-eqz p0, :cond_b

    .line 134
    .line 135
    const-string p0, "StageCoordinator"

    .line 136
    .line 137
    const-string/jumbo p1, "skip to send reparentLeafTaskIfRelaunch"

    .line 138
    .line 139
    .line 140
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iput-boolean v0, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsOpeningHomeDuringSplit:Z

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_b
    iget-object p0, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 147
    .line 148
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 149
    .line 150
    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 151
    .line 152
    .line 153
    :goto_3
    iget-object p0, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 156
    .line 157
    .line 158
    return-void
.end method
