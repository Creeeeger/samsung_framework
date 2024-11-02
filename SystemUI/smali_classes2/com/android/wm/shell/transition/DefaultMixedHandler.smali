.class public final Lcom/android/wm/shell/transition/DefaultMixedHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mActiveTransitions:Ljava/util/ArrayList;

.field public final mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

.field public mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

.field public final mPlayer:Lcom/android/wm/shell/transition/Transitions;

.field public mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

.field public mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

.field public mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Ljava/util/Optional;Lcom/android/wm/shell/taskview/TaskViewTransitions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;",
            "Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 12
    .line 13
    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 14
    .line 15
    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/util/Optional;->isPresent()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    new-instance p2, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    move-object v0, p2

    .line 34
    move-object v1, p0

    .line 35
    move-object v2, p4

    .line 36
    move-object v3, p3

    .line 37
    move-object v4, p5

    .line 38
    move-object v5, p7

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput-object p8, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 46
    .line 47
    return-void
.end method

.method public static excludeForceHidingChanges(Landroid/window/TransitionInfo;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    :goto_0
    if-ltz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getForceHidingTransit()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ne v3, v0, :cond_0

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "excludeForceHidingChanges: "

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, ", reason=animateKeyguard"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "DefaultMixedHandler"

    .line 44
    .line 45
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public static subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;
    .locals 3

    .line 1
    new-instance v0, Landroid/window/TransitionInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

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
    invoke-direct {v0, p1, v2}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getTrack()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/window/TransitionInfo;->setTrack(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getDebugId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/window/TransitionInfo;->setDebugId(I)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    move p1, v1

    .line 32
    :goto_1
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-ge p1, p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 55
    .line 56
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_2
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-ge v1, p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Landroid/window/TransitionInfo;->addRoot(Landroid/window/TransitionInfo$Root;)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method


# virtual methods
.method public final animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

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
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 18
    .line 19
    const v7, 0x7ea2ca34

    .line 20
    .line 21
    .line 22
    const-string v9, " Animating a mixed transition for entering PIP while Split-Screen is foreground."

    .line 23
    .line 24
    invoke-static {v0, v7, v5, v9, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x4

    .line 28
    const/4 v7, 0x1

    .line 29
    invoke-static {v2, v0, v7}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v2, v7}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    move-object v10, v1

    .line 38
    move-object v15, v10

    .line 39
    move v9, v5

    .line 40
    :goto_0
    const/4 v11, 0x2

    .line 41
    if-ltz v7, :cond_9

    .line 42
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 52
    .line 53
    iget-object v13, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 54
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 56
    .line 57
    .line 58
    move-result v14

    .line 59
    invoke-virtual {v13, v14, v12}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(ILandroid/window/TransitionInfo$Change;)Z

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-eqz v13, :cond_2

    .line 64
    .line 65
    if-nez v15, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-interface {v11, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-object v15, v12

    .line 75
    goto :goto_5

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v3, "More than 1 pip-entering changes in one transition? "

    .line 81
    .line 82
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_2
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    if-eqz v13, :cond_3

    .line 101
    .line 102
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    if-ne v13, v11, :cond_3

    .line 111
    .line 112
    const/4 v13, 0x1

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    move v13, v5

    .line 115
    :goto_1
    if-nez v13, :cond_7

    .line 116
    .line 117
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    if-eqz v13, :cond_4

    .line 122
    .line 123
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    const/4 v14, 0x3

    .line 132
    if-ne v13, v14, :cond_4

    .line 133
    .line 134
    const/4 v13, 0x1

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    move v13, v5

    .line 137
    :goto_2
    if-eqz v13, :cond_5

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_5
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    and-int/2addr v11, v13

    .line 145
    if-eqz v11, :cond_6

    .line 146
    .line 147
    const/4 v11, 0x1

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move v11, v5

    .line 150
    :goto_3
    if-eqz v11, :cond_8

    .line 151
    .line 152
    move-object v10, v12

    .line 153
    goto :goto_5

    .line 154
    :cond_7
    :goto_4
    const/4 v9, 0x1

    .line 155
    :cond_8
    :goto_5
    add-int/lit8 v7, v7, -0x1

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_9
    if-nez v15, :cond_a

    .line 159
    .line 160
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    return v5

    .line 166
    :cond_a
    new-instance v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;

    .line 167
    .line 168
    move-object/from16 v12, p5

    .line 169
    .line 170
    invoke-direct {v7, v6, v8, v9, v12}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;ZLcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 171
    .line 172
    .line 173
    const/4 v12, -0x1

    .line 174
    if-nez v9, :cond_e

    .line 175
    .line 176
    iget-object v13, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 177
    .line 178
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    invoke-virtual {v13, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    .line 183
    .line 184
    .line 185
    move-result v13

    .line 186
    if-eq v13, v12, :cond_b

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_b
    sget-boolean v9, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 190
    .line 191
    if-eqz v9, :cond_c

    .line 192
    .line 193
    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 194
    .line 195
    const v10, 0x2793455

    .line 196
    .line 197
    .line 198
    const-string v11, "  Not leaving split, so just forward animation to Pip-Handler."

    .line 199
    .line 200
    invoke-static {v9, v10, v5, v11, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 204
    .line 205
    if-eqz v1, :cond_d

    .line 206
    .line 207
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_d

    .line 214
    .line 215
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 216
    .line 217
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 218
    .line 219
    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 220
    .line 221
    if-eqz v1, :cond_d

    .line 222
    .line 223
    new-instance v13, Landroid/view/SurfaceControl$Transaction;

    .line 224
    .line 225
    invoke-direct {v13}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v9, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 229
    .line 230
    const/4 v10, -0x1

    .line 231
    const/16 v11, 0x9

    .line 232
    .line 233
    const/4 v15, 0x1

    .line 234
    move-object v12, v0

    .line 235
    move-object/from16 v14, p4

    .line 236
    .line 237
    invoke-virtual/range {v9 .. v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 238
    .line 239
    .line 240
    :cond_d
    const/4 v0, 0x1

    .line 241
    iput v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 242
    .line 243
    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 244
    .line 245
    iget-object v1, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 246
    .line 247
    check-cast v0, Lcom/android/wm/shell/pip/PipTransition;

    .line 248
    .line 249
    move-object/from16 v2, p2

    .line 250
    .line 251
    move-object/from16 v3, p3

    .line 252
    .line 253
    move-object/from16 v4, p4

    .line 254
    .line 255
    move-object v5, v7

    .line 256
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 257
    .line 258
    .line 259
    const/4 v0, 0x1

    .line 260
    goto/16 :goto_10

    .line 261
    .line 262
    :cond_e
    :goto_6
    sget-boolean v12, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 263
    .line 264
    if-eqz v12, :cond_f

    .line 265
    .line 266
    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 267
    .line 268
    const v13, 0x1fed3c4f

    .line 269
    .line 270
    .line 271
    const-string v14, " Animation is actually mixed since entering-PiP caused us to leave split and return home."

    .line 272
    .line 273
    invoke-static {v12, v13, v5, v14, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    :cond_f
    iput v11, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 277
    .line 278
    if-eqz v10, :cond_10

    .line 279
    .line 280
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    const/high16 v10, 0x3f800000    # 1.0f

    .line 293
    .line 294
    invoke-virtual {v1, v5, v10}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 295
    .line 296
    .line 297
    :cond_10
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    .line 298
    .line 299
    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 300
    .line 301
    .line 302
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 303
    .line 304
    if-eqz v1, :cond_14

    .line 305
    .line 306
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_14

    .line 313
    .line 314
    const/4 v1, 0x1

    .line 315
    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    :goto_7
    if-ltz v1, :cond_13

    .line 320
    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    check-cast v10, Landroid/window/TransitionInfo$Change;

    .line 330
    .line 331
    if-ne v10, v15, :cond_11

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_11
    iget-object v11, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 335
    .line 336
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    invoke-virtual {v11, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemStage(Landroid/window/WindowContainerToken;)I

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    const/4 v11, -0x1

    .line 345
    if-eq v10, v11, :cond_12

    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_12
    :goto_8
    add-int/lit8 v1, v1, -0x1

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_13
    const/4 v1, -0x1

    .line 352
    move v10, v1

    .line 353
    :goto_9
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 354
    .line 355
    const/16 v11, 0x9

    .line 356
    .line 357
    xor-int/lit8 v2, v9, 0x1

    .line 358
    .line 359
    move-object v9, v1

    .line 360
    move-object v12, v0

    .line 361
    move-object v13, v5

    .line 362
    move-object/from16 v14, p4

    .line 363
    .line 364
    move-object v1, v15

    .line 365
    move v15, v2

    .line 366
    invoke-virtual/range {v9 .. v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 367
    .line 368
    .line 369
    goto :goto_d

    .line 370
    :cond_14
    move-object v1, v15

    .line 371
    iget-object v9, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 372
    .line 373
    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    if-eqz v9, :cond_17

    .line 378
    .line 379
    const/4 v9, 0x1

    .line 380
    invoke-static {v2, v9}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    :goto_a
    if-ltz v9, :cond_17

    .line 385
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v10

    .line 394
    check-cast v10, Landroid/window/TransitionInfo$Change;

    .line 395
    .line 396
    if-ne v10, v1, :cond_15

    .line 397
    .line 398
    goto :goto_b

    .line 399
    :cond_15
    iget-object v11, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 400
    .line 401
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    invoke-virtual {v11, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemStage(Landroid/window/WindowContainerToken;)I

    .line 406
    .line 407
    .line 408
    move-result v10

    .line 409
    const/4 v11, -0x1

    .line 410
    if-eq v10, v11, :cond_16

    .line 411
    .line 412
    goto :goto_c

    .line 413
    :cond_16
    :goto_b
    add-int/lit8 v9, v9, -0x1

    .line 414
    .line 415
    goto :goto_a

    .line 416
    :cond_17
    const/4 v2, -0x1

    .line 417
    move v10, v2

    .line 418
    :goto_c
    iget-object v9, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 419
    .line 420
    const/16 v11, 0x9

    .line 421
    .line 422
    const/4 v15, 0x0

    .line 423
    move-object v12, v0

    .line 424
    move-object v13, v5

    .line 425
    move-object/from16 v14, p4

    .line 426
    .line 427
    invoke-virtual/range {v9 .. v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 428
    .line 429
    .line 430
    :goto_d
    const/4 v2, 0x1

    .line 431
    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    :goto_e
    if-ltz v2, :cond_19

    .line 436
    .line 437
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 438
    .line 439
    .line 440
    move-result-object v9

    .line 441
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v9

    .line 445
    check-cast v9, Landroid/window/TransitionInfo$Change;

    .line 446
    .line 447
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    const/high16 v10, 0x400000

    .line 452
    .line 453
    and-int/2addr v9, v10

    .line 454
    if-eqz v9, :cond_18

    .line 455
    .line 456
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    goto :goto_f

    .line 464
    :cond_18
    add-int/lit8 v2, v2, -0x1

    .line 465
    .line 466
    goto :goto_e

    .line 467
    :cond_19
    :goto_f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 468
    .line 469
    if-eqz v2, :cond_1a

    .line 470
    .line 471
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 472
    .line 473
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/pip/PipTransitionController;->onStartEnterPipFromSplit(Landroid/window/TransitionInfo$Change;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    new-instance v9, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    .line 481
    .line 482
    invoke-direct {v9, v2}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;-><init>(I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v9}, Landroid/window/TransitionInfo;->findChange(Ljava/util/function/Predicate;)Landroid/window/TransitionInfo$Change;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    if-eqz v2, :cond_1a

    .line 490
    .line 491
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 492
    .line 493
    .line 494
    move-result v9

    .line 495
    if-lez v9, :cond_1a

    .line 496
    .line 497
    invoke-static {v2, v0}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    invoke-virtual {v0, v9}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 502
    .line 503
    .line 504
    move-result-object v9

    .line 505
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 506
    .line 507
    .line 508
    move-result-object v9

    .line 509
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 510
    .line 511
    .line 512
    move-result-object v10

    .line 513
    invoke-virtual {v3, v10, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 517
    .line 518
    .line 519
    move-result-object v9

    .line 520
    const/4 v10, 0x0

    .line 521
    invoke-virtual {v4, v9, v10}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 522
    .line 523
    .line 524
    new-instance v9, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    const-string v10, "animateEnterPipFromSplit: reparent "

    .line 527
    .line 528
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v2, ", t="

    .line 539
    .line 540
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    iget-object v2, v3, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    .line 544
    .line 545
    const-string v10, "DefaultMixedHandler"

    .line 546
    .line 547
    invoke-static {v9, v2, v10}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    :cond_1a
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 551
    .line 552
    const/4 v9, 0x1

    .line 553
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/pip/PipTransitionController;->setEnterAnimationType(I)V

    .line 554
    .line 555
    .line 556
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 557
    .line 558
    invoke-virtual {v2, v1, v3, v4, v7}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 559
    .line 560
    .line 561
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 562
    .line 563
    iget-object v2, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 564
    .line 565
    const/4 v10, 0x0

    .line 566
    move-object v3, v0

    .line 567
    move-object v0, v1

    .line 568
    move-object v1, v2

    .line 569
    move-object v2, v3

    .line 570
    move-object v3, v5

    .line 571
    move-object/from16 v4, p4

    .line 572
    .line 573
    move-object v5, v7

    .line 574
    move-object/from16 v6, p0

    .line 575
    .line 576
    move-object v7, v10

    .line 577
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    iput-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 582
    .line 583
    move v0, v9

    .line 584
    :goto_10
    return v0
.end method

.method public final animateKeyguard(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 7

    .line 1
    new-instance v5, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v6, 0x1

    .line 4
    invoke-direct {v5, p0, p1, p5, v6}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 5
    .line 6
    .line 7
    iget p5, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 8
    .line 9
    add-int/2addr p5, v6

    .line 10
    iput p5, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 11
    .line 12
    iget-object p5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    invoke-virtual {p5, p2, p3, p4}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-boolean p5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    .line 20
    .line 21
    if-eqz p5, :cond_1

    .line 22
    .line 23
    invoke-static {p2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->excludeForceHidingChanges(Landroid/window/TransitionInfo;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 29
    .line 30
    move-object v2, p2

    .line 31
    move-object v3, p3

    .line 32
    move-object v4, p4

    .line 33
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    iget p0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 40
    .line 41
    sub-int/2addr p0, v6

    .line 42
    iput p0, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :cond_2
    return v6
.end method

.method public final animatePendingSplitWithDisplayChange(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v8, 0x1

    .line 12
    invoke-static {v1, v2, v8}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v9

    .line 16
    const/4 v2, 0x6

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v12

    .line 22
    invoke-static {v1, v8}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    :goto_0
    if-ltz v4, :cond_4

    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 37
    .line 38
    move-object v6, v5

    .line 39
    :goto_1
    if-eqz v6, :cond_2

    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    if-eqz v10, :cond_0

    .line 46
    .line 47
    move v6, v8

    .line 48
    goto :goto_3

    .line 49
    :cond_0
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    if-nez v10, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v1, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_2
    move v6, v3

    .line 66
    :goto_3
    if-eqz v6, :cond_3

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_3
    invoke-virtual {v12, v5}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v12}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_5

    .line 91
    .line 92
    return v3

    .line 93
    :cond_5
    move v4, v3

    .line 94
    :goto_5
    invoke-virtual {v9}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const/4 v6, 0x0

    .line 103
    if-ge v4, v5, :cond_8

    .line 104
    .line 105
    invoke-virtual {v9}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    if-nez v10, :cond_6

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_6
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v9, v5}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    if-nez v5, :cond_7

    .line 131
    .line 132
    invoke-virtual {v9}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 141
    .line 142
    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_8
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 149
    .line 150
    if-eqz v4, :cond_9

    .line 151
    .line 152
    invoke-virtual {v12}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_9

    .line 157
    .line 158
    invoke-virtual {v9, v8}, Landroid/window/TransitionInfo;->setSeparatedFromCustomDisplayChange(Z)V

    .line 159
    .line 160
    .line 161
    :cond_9
    new-instance v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 162
    .line 163
    const/4 v5, 0x2

    .line 164
    invoke-direct {v4, v5, v7}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 165
    .line 166
    .line 167
    iget-object v10, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    sget-boolean v10, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 173
    .line 174
    if-eqz v10, :cond_a

    .line 175
    .line 176
    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 177
    .line 178
    const v11, 0x109692f

    .line 179
    .line 180
    .line 181
    const-string v13, " Animation is a mix of display change and split change."

    .line 182
    .line 183
    invoke-static {v10, v11, v3, v13, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_a
    iput v5, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 187
    .line 188
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 189
    .line 190
    if-eqz v5, :cond_c

    .line 191
    .line 192
    invoke-static {v1, v8}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    :goto_7
    if-ltz v5, :cond_c

    .line 197
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 207
    .line 208
    iget-object v10, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 209
    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    invoke-virtual {v10, v11, v6}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(ILandroid/window/TransitionInfo$Change;)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-eqz v6, :cond_b

    .line 219
    .line 220
    iget v3, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 221
    .line 222
    add-int/2addr v3, v8

    .line 223
    iput v3, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 224
    .line 225
    move/from16 v18, v8

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_b
    add-int/lit8 v5, v5, -0x1

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_c
    move/from16 v18, v3

    .line 232
    .line 233
    :goto_8
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 234
    .line 235
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 236
    .line 237
    invoke-virtual {v3, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_e

    .line 242
    .line 243
    invoke-static {v9, v8}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    :goto_9
    if-ltz v3, :cond_e

    .line 248
    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 258
    .line 259
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    if-eqz v6, :cond_d

    .line 264
    .line 265
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    const/4 v10, 0x4

    .line 270
    if-ne v5, v10, :cond_d

    .line 271
    .line 272
    move-object/from16 v5, p3

    .line 273
    .line 274
    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 275
    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_d
    move-object/from16 v5, p3

    .line 279
    .line 280
    :goto_a
    add-int/lit8 v3, v3, -0x1

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_e
    move-object/from16 v5, p3

    .line 284
    .line 285
    new-instance v6, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    .line 286
    .line 287
    move-object/from16 v1, p5

    .line 288
    .line 289
    invoke-direct {v6, v0, v4, v1, v2}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 290
    .line 291
    .line 292
    iget-object v10, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 293
    .line 294
    iget-object v11, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 295
    .line 296
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 297
    .line 298
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 299
    .line 300
    move-object/from16 v13, p3

    .line 301
    .line 302
    move-object/from16 v14, p4

    .line 303
    .line 304
    move-object v15, v6

    .line 305
    move-object/from16 v16, v1

    .line 306
    .line 307
    move-object/from16 v17, v2

    .line 308
    .line 309
    invoke-virtual/range {v10 .. v17}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    iput-object v1, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 314
    .line 315
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 316
    .line 317
    move-object/from16 v2, p1

    .line 318
    .line 319
    move-object v3, v9

    .line 320
    move-object/from16 v4, p3

    .line 321
    .line 322
    move-object/from16 v5, p4

    .line 323
    .line 324
    move-object v10, v6

    .line 325
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 326
    .line 327
    .line 328
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 329
    .line 330
    if-eqz v1, :cond_f

    .line 331
    .line 332
    if-eqz v18, :cond_f

    .line 333
    .line 334
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 335
    .line 336
    check-cast v0, Lcom/android/wm/shell/pip/PipTransition;

    .line 337
    .line 338
    move-object/from16 v1, p1

    .line 339
    .line 340
    move-object v2, v9

    .line 341
    move-object/from16 v3, p3

    .line 342
    .line 343
    move-object/from16 v4, p4

    .line 344
    .line 345
    move-object v5, v10

    .line 346
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 347
    .line 348
    .line 349
    :cond_f
    return v8
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 16

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
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 10
    .line 11
    iget-boolean v5, v4, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 12
    .line 13
    const/16 v6, 0xa

    .line 14
    .line 15
    const/4 v7, -0x1

    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    if-eqz v5, :cond_7

    .line 19
    .line 20
    iget-object v5, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 21
    .line 22
    iget-object v5, v5, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-ne v5, v6, :cond_0

    .line 32
    .line 33
    move v5, v8

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v5, v9

    .line 36
    :goto_0
    if-nez v5, :cond_1

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iget-object v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 44
    .line 45
    if-eqz v5, :cond_4

    .line 46
    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 52
    .line 53
    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-ne v11, v5, :cond_2

    .line 58
    .line 59
    iget v5, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v11, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 63
    .line 64
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    if-ne v11, v5, :cond_3

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v5, v7

    .line 76
    :goto_1
    if-eq v5, v7, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 80
    .line 81
    iget-object v11, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 82
    .line 83
    if-eqz v5, :cond_5

    .line 84
    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-eqz v5, :cond_5

    .line 90
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 96
    .line 97
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    if-ne v5, v12, :cond_5

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_6

    .line 115
    .line 116
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 117
    .line 118
    if-eqz v4, :cond_7

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_7

    .line 125
    .line 126
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_7

    .line 131
    .line 132
    :cond_6
    :goto_2
    move v3, v8

    .line 133
    goto :goto_4

    .line 134
    :cond_7
    :goto_3
    move v3, v9

    .line 135
    :goto_4
    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 136
    .line 137
    const/4 v5, 0x2

    .line 138
    const/4 v10, 0x0

    .line 139
    if-eqz v3, :cond_21

    .line 140
    .line 141
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 142
    .line 143
    if-eqz v3, :cond_8

    .line 144
    .line 145
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 146
    .line 147
    const v11, -0x86b03de

    .line 148
    .line 149
    .line 150
    const-string v12, " Got a PiP-enter request while Split-Screen is active, so treat it as Mixed."

    .line 151
    .line 152
    invoke-static {v3, v11, v9, v12, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-nez v3, :cond_20

    .line 160
    .line 161
    new-instance v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 162
    .line 163
    invoke-direct {v3, v8, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 170
    .line 171
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 175
    .line 176
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/wm/shell/pip/PipTransitionController;->augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iget v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 189
    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    iget v10, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 193
    .line 194
    if-eq v10, v4, :cond_9

    .line 195
    .line 196
    goto/16 :goto_c

    .line 197
    .line 198
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v1, :cond_a

    .line 203
    .line 204
    iget v10, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 205
    .line 206
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(I)I

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    goto :goto_5

    .line 211
    :cond_a
    move v10, v7

    .line 212
    :goto_5
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 213
    .line 214
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 215
    .line 216
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 217
    .line 218
    if-ne v2, v6, :cond_e

    .line 219
    .line 220
    if-eq v10, v7, :cond_e

    .line 221
    .line 222
    if-nez v10, :cond_b

    .line 223
    .line 224
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-eq v6, v8, :cond_d

    .line 229
    .line 230
    :cond_b
    if-ne v10, v8, :cond_c

    .line 231
    .line 232
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-eq v6, v8, :cond_d

    .line 237
    .line 238
    :cond_c
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 239
    .line 240
    if-eqz v6, :cond_e

    .line 241
    .line 242
    if-ne v10, v5, :cond_e

    .line 243
    .line 244
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-ne v6, v8, :cond_e

    .line 249
    .line 250
    :cond_d
    move v6, v8

    .line 251
    goto :goto_6

    .line 252
    :cond_e
    move v6, v9

    .line 253
    :goto_6
    iget-boolean v14, v13, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 254
    .line 255
    if-eqz v14, :cond_1f

    .line 256
    .line 257
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-nez v2, :cond_1f

    .line 262
    .line 263
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_10

    .line 268
    .line 269
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_10

    .line 274
    .line 275
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 276
    .line 277
    if-eqz v2, :cond_f

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_f

    .line 284
    .line 285
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_10

    .line 290
    .line 291
    :cond_f
    if-eqz v6, :cond_1f

    .line 292
    .line 293
    :cond_10
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 294
    .line 295
    if-eqz v2, :cond_11

    .line 296
    .line 297
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    int-to-long v14, v2

    .line 302
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    int-to-long v5, v2

    .line 307
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 308
    .line 309
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 310
    .line 311
    .line 312
    move-result-object v14

    .line 313
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    filled-new-array {v14, v5}, [Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    const-string v6, "  One of the splits became empty during a mixed transition (one not handled by split), so make sure split-screen state is cleaned-up. mainStageCount=%d sideStageCount=%d"

    .line 322
    .line 323
    const v14, -0x1ff98950

    .line 324
    .line 325
    .line 326
    const/4 v15, 0x5

    .line 327
    invoke-static {v2, v14, v15, v6, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_11
    if-eqz v1, :cond_12

    .line 331
    .line 332
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda16;

    .line 333
    .line 334
    invoke-direct {v2, v1, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda16;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 338
    .line 339
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 340
    .line 341
    .line 342
    :cond_12
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 343
    .line 344
    if-eqz v1, :cond_1c

    .line 345
    .line 346
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_1c

    .line 351
    .line 352
    if-ne v10, v7, :cond_15

    .line 353
    .line 354
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-nez v1, :cond_13

    .line 359
    .line 360
    move v10, v9

    .line 361
    goto :goto_7

    .line 362
    :cond_13
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-nez v1, :cond_14

    .line 367
    .line 368
    move v10, v8

    .line 369
    goto :goto_7

    .line 370
    :cond_14
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-nez v1, :cond_15

    .line 375
    .line 376
    const/4 v10, 0x2

    .line 377
    :cond_15
    :goto_7
    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 378
    .line 379
    if-ne v1, v13, :cond_16

    .line 380
    .line 381
    goto :goto_8

    .line 382
    :cond_16
    move-object v12, v13

    .line 383
    :goto_8
    const/4 v2, 0x2

    .line 384
    if-ne v10, v2, :cond_17

    .line 385
    .line 386
    invoke-virtual {v0, v3, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    .line 387
    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_17
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-ne v10, v2, :cond_18

    .line 395
    .line 396
    invoke-virtual {v0, v3, v1, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    .line 397
    .line 398
    .line 399
    goto :goto_a

    .line 400
    :cond_18
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-nez v1, :cond_19

    .line 405
    .line 406
    move v7, v8

    .line 407
    goto :goto_9

    .line 408
    :cond_19
    if-ne v1, v8, :cond_1a

    .line 409
    .line 410
    move v7, v9

    .line 411
    :cond_1a
    :goto_9
    if-ne v10, v7, :cond_1b

    .line 412
    .line 413
    invoke-virtual {v0, v3, v12, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    .line 414
    .line 415
    .line 416
    :cond_1b
    :goto_a
    const-string v0, "enter_pip_with_multi_split"

    .line 417
    .line 418
    invoke-virtual {v3, v4, v0}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto :goto_c

    .line 422
    :cond_1c
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-eqz v1, :cond_1e

    .line 427
    .line 428
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_1d

    .line 433
    .line 434
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_1d

    .line 439
    .line 440
    move v7, v9

    .line 441
    goto :goto_b

    .line 442
    :cond_1d
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-eqz v1, :cond_1e

    .line 447
    .line 448
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-nez v1, :cond_1e

    .line 453
    .line 454
    move v7, v8

    .line 455
    :cond_1e
    :goto_b
    invoke-virtual {v0, v7, v3, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    .line 456
    .line 457
    .line 458
    :cond_1f
    :goto_c
    return-object v3

    .line 459
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 460
    .line 461
    const-string v1, "Unexpected remote transition inpip-enter-from-split request"

    .line 462
    .line 463
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v0

    .line 467
    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    const/4 v5, 0x3

    .line 472
    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 473
    .line 474
    if-eqz v3, :cond_24

    .line 475
    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    if-eqz v3, :cond_24

    .line 485
    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    if-eqz v3, :cond_22

    .line 491
    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 497
    .line 498
    const/4 v7, 0x2

    .line 499
    if-eq v3, v7, :cond_24

    .line 500
    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 506
    .line 507
    if-eq v3, v5, :cond_24

    .line 508
    .line 509
    :cond_22
    invoke-virtual {v6, v1, v2, v0}, Lcom/android/wm/shell/transition/Transitions;->dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    if-nez v0, :cond_23

    .line 514
    .line 515
    return-object v10

    .line 516
    :cond_23
    new-instance v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 517
    .line 518
    invoke-direct {v2, v5, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 519
    .line 520
    .line 521
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 524
    .line 525
    iput-object v1, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 526
    .line 527
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v0, Landroid/window/WindowContainerTransaction;

    .line 533
    .line 534
    return-object v0

    .line 535
    :cond_24
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 536
    .line 537
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    if-eqz v3, :cond_29

    .line 542
    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    if-eqz v3, :cond_29

    .line 552
    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    if-eqz v3, :cond_29

    .line 558
    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    if-ne v3, v8, :cond_29

    .line 568
    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    const/4 v7, 0x2

    .line 578
    if-eq v3, v7, :cond_25

    .line 579
    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-ne v3, v5, :cond_29

    .line 589
    .line 590
    :cond_25
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 591
    .line 592
    if-eqz v3, :cond_26

    .line 593
    .line 594
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 595
    .line 596
    const v5, -0x7f55aa37

    .line 597
    .line 598
    .line 599
    const-string v7, " Got a going-home request while Split-Screen is foreground, so treat it as Mixed."

    .line 600
    .line 601
    invoke-static {v3, v5, v9, v7, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    :cond_26
    invoke-virtual {v6, v1, v2, v0}, Lcom/android/wm/shell/transition/Transitions;->dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    if-nez v0, :cond_28

    .line 609
    .line 610
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 611
    .line 612
    if-eqz v0, :cond_27

    .line 613
    .line 614
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 615
    .line 616
    const v2, -0x48aead5e

    .line 617
    .line 618
    .line 619
    const-string v3, " Lean on the remote transition handler to fetch a proper remote via TransitionFilter"

    .line 620
    .line 621
    invoke-static {v0, v2, v9, v3, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    :cond_27
    new-instance v0, Landroid/util/Pair;

    .line 625
    .line 626
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 627
    .line 628
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 629
    .line 630
    .line 631
    iget-object v3, v6, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    .line 632
    .line 633
    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    :cond_28
    new-instance v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 637
    .line 638
    const/4 v3, 0x4

    .line 639
    invoke-direct {v2, v3, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 640
    .line 641
    .line 642
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast v1, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 645
    .line 646
    iput-object v1, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 647
    .line 648
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v0, Landroid/window/WindowContainerTransaction;

    .line 654
    .line 655
    return-object v0

    .line 656
    :cond_29
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 657
    .line 658
    if-eqz v3, :cond_2c

    .line 659
    .line 660
    sget v3, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->$r8$clinit:I

    .line 661
    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    const/4 v5, 0x6

    .line 667
    if-ne v3, v5, :cond_2a

    .line 668
    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    if-eqz v3, :cond_2a

    .line 674
    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    invoke-virtual {v3}, Landroid/window/TransitionRequestInfo$DisplayChange;->isPhysicalDisplayChanged()Z

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    if-eqz v3, :cond_2a

    .line 684
    .line 685
    goto :goto_d

    .line 686
    :cond_2a
    move v8, v9

    .line 687
    :goto_d
    if-eqz v8, :cond_2c

    .line 688
    .line 689
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 690
    .line 691
    invoke-virtual {v3, v1, v2}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    if-eqz v2, :cond_2b

    .line 696
    .line 697
    new-instance v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 698
    .line 699
    invoke-direct {v3, v5, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 700
    .line 701
    .line 702
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 703
    .line 704
    iput-object v0, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 705
    .line 706
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    :cond_2b
    return-object v2

    .line 710
    :cond_2c
    return-object v10
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p2

    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    move v10, v9

    .line 7
    :goto_0
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v10, v2, :cond_11

    .line 14
    .line 15
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 22
    .line 23
    if-eq v2, v8, :cond_0

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 32
    .line 33
    iget v2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 34
    .line 35
    if-gtz v2, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    const/4 v2, 0x2

    .line 39
    iget v3, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    .line 40
    .line 41
    if-ne v3, v2, :cond_2

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_2
    const/4 v4, 0x1

    .line 46
    if-ne v3, v4, :cond_7

    .line 47
    .line 48
    iget v2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    .line 49
    .line 50
    if-ne v2, v4, :cond_6

    .line 51
    .line 52
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 55
    .line 56
    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    move v4, v9

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    sub-int/2addr v5, v4

    .line 69
    :goto_1
    if-ltz v5, :cond_4

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Landroid/animation/Animator;

    .line 76
    .line 77
    iget-object v11, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 78
    .line 79
    iget-object v11, v11, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 80
    .line 81
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    new-instance v12, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;

    .line 85
    .line 86
    invoke-direct {v12, v6, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Landroid/animation/Animator;I)V

    .line 87
    .line 88
    .line 89
    check-cast v11, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 90
    .line 91
    invoke-virtual {v11, v12}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v5, v5, -0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    .line 103
    .line 104
    .line 105
    iget-object v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    move-object v2, p1

    .line 110
    move-object v3, p2

    .line 111
    move-object/from16 v4, p3

    .line 112
    .line 113
    move-object/from16 v5, p4

    .line 114
    .line 115
    move-object/from16 v6, p5

    .line 116
    .line 117
    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    const/4 v4, 0x3

    .line 128
    if-ne v3, v4, :cond_9

    .line 129
    .line 130
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    .line 133
    .line 134
    .line 135
    iget-object v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 136
    .line 137
    if-eqz v1, :cond_8

    .line 138
    .line 139
    move-object v2, p1

    .line 140
    move-object v3, p2

    .line 141
    move-object/from16 v4, p3

    .line 142
    .line 143
    move-object/from16 v5, p4

    .line 144
    .line 145
    move-object/from16 v6, p5

    .line 146
    .line 147
    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 148
    .line 149
    .line 150
    :cond_8
    :goto_3
    move-object v11, p1

    .line 151
    goto/16 :goto_4

    .line 152
    .line 153
    :cond_9
    const/4 v4, 0x4

    .line 154
    if-ne v3, v4, :cond_b

    .line 155
    .line 156
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 157
    .line 158
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 159
    .line 160
    move-object v11, p1

    .line 161
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_a

    .line 166
    .line 167
    iput v2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    .line 168
    .line 169
    :cond_a
    iget-object v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 170
    .line 171
    move-object v2, p1

    .line 172
    move-object v3, p2

    .line 173
    move-object/from16 v4, p3

    .line 174
    .line 175
    move-object/from16 v5, p4

    .line 176
    .line 177
    move-object/from16 v6, p5

    .line 178
    .line 179
    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :cond_b
    move-object v11, p1

    .line 185
    const/4 v1, 0x5

    .line 186
    if-ne v3, v1, :cond_c

    .line 187
    .line 188
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 189
    .line 190
    move-object v2, p1

    .line 191
    move-object v3, p2

    .line 192
    move-object/from16 v4, p3

    .line 193
    .line 194
    move-object/from16 v5, p4

    .line 195
    .line 196
    move-object/from16 v6, p5

    .line 197
    .line 198
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_4

    .line 202
    .line 203
    :cond_c
    const/4 v1, 0x6

    .line 204
    if-ne v3, v1, :cond_d

    .line 205
    .line 206
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 207
    .line 208
    move-object v2, p1

    .line 209
    move-object v3, p2

    .line 210
    move-object/from16 v4, p3

    .line 211
    .line 212
    move-object/from16 v5, p4

    .line 213
    .line 214
    move-object/from16 v6, p5

    .line 215
    .line 216
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 221
    .line 222
    const-string v2, ", mergeTarget="

    .line 223
    .line 224
    const-string v4, "DefaultMixedHandler"

    .line 225
    .line 226
    if-eqz v1, :cond_e

    .line 227
    .line 228
    const/16 v1, 0x64

    .line 229
    .line 230
    if-ne v3, v1, :cond_e

    .line 231
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v3, "mergeAnimation: mixed for pip is running, queueing info="

    .line 235
    .line 236
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_RECENTS_TRANSITION_WITH_DISPLAY_CHANGE:Z

    .line 257
    .line 258
    if-eqz v1, :cond_f

    .line 259
    .line 260
    const/16 v1, 0x65

    .line 261
    .line 262
    if-ne v3, v1, :cond_f

    .line 263
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v3, "mergeAnimation: mixed for recents transition with display change, queueing info="

    .line 267
    .line 268
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_KEYGUARD_TRANSITION_WITH_DISPLAY_CHANGE:Z

    .line 289
    .line 290
    if-eqz v1, :cond_10

    .line 291
    .line 292
    const/16 v1, 0x66

    .line 293
    .line 294
    if-ne v3, v1, :cond_10

    .line 295
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v3, "mergeAnimation: mixed for keyguard transition with display change, queueing info="

    .line 299
    .line 300
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 324
    .line 325
    const-string v1, "Playing a mixed transition with unknown type? "

    .line 326
    .line 327
    invoke-static {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw v0

    .line 335
    :cond_11
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    if-ltz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 18
    .line 19
    if-eq v3, p1, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_1
    if-nez v0, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    .line 36
    .line 37
    if-ne v1, v2, :cond_3

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 40
    .line 41
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    const/4 v2, 0x4

    .line 46
    if-ne v1, v2, :cond_4

    .line 47
    .line 48
    iget-object p0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 49
    .line 50
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    const/4 v2, 0x3

    .line 55
    if-ne v1, v2, :cond_5

    .line 56
    .line 57
    iget-object p0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 58
    .line 59
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_5
    const/4 v0, 0x5

    .line 64
    if-ne v1, v0, :cond_6

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_6
    const/4 p1, 0x6

    .line 73
    if-ne v1, p1, :cond_7

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    :cond_7
    :goto_2
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    move-object/from16 v10, p3

    .line 8
    .line 9
    move-object/from16 v11, p4

    .line 10
    .line 11
    move-object/from16 v7, p5

    .line 12
    .line 13
    iget-object v12, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    :goto_0
    const/4 v13, 0x0

    .line 22
    if-ltz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 31
    .line 32
    if-eq v1, v9, :cond_0

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 42
    .line 43
    move-object v14, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object v14, v13

    .line 46
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x5

    .line 51
    const/4 v15, 0x0

    .line 52
    const/4 v2, 0x6

    .line 53
    if-eqz v0, :cond_e

    .line 54
    .line 55
    if-eqz v14, :cond_5

    .line 56
    .line 57
    iget v5, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    .line 58
    .line 59
    if-eq v5, v1, :cond_5

    .line 60
    .line 61
    new-instance v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 62
    .line 63
    invoke-direct {v4, v1, v9}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-object/from16 v0, p0

    .line 70
    .line 71
    move-object v1, v4

    .line 72
    move-object/from16 v2, p2

    .line 73
    .line 74
    move-object/from16 v3, p3

    .line 75
    .line 76
    move-object/from16 v16, v4

    .line 77
    .line 78
    move-object/from16 v4, p4

    .line 79
    .line 80
    move/from16 v17, v5

    .line 81
    .line 82
    move-object/from16 v5, p5

    .line 83
    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateKeyguard(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 95
    .line 96
    const v1, 0x6b154bc1

    .line 97
    .line 98
    .line 99
    const-string v2, "Converting mixed transition into a keyguard transition"

    .line 100
    .line 101
    invoke-static {v0, v1, v15, v2, v13}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-virtual {v8, v9, v15, v13}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 105
    .line 106
    .line 107
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    const/4 v0, 0x6

    .line 112
    move/from16 v1, v17

    .line 113
    .line 114
    if-ne v1, v0, :cond_3

    .line 115
    .line 116
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 127
    .line 128
    invoke-virtual {v0, v1, v11, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 129
    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 132
    .line 133
    invoke-virtual {v0, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    const/4 v0, 0x1

    .line 137
    return v0

    .line 138
    :cond_4
    const/4 v2, 0x6

    .line 139
    move-object/from16 v0, v16

    .line 140
    .line 141
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    invoke-virtual {v0, v6, v10, v11}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    .line 153
    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->excludeForceHidingChanges(Landroid/window/TransitionInfo;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_KEYGUARD_TRANSITION_WITH_DISPLAY_CHANGE:Z

    .line 160
    .line 161
    if-eqz v0, :cond_d

    .line 162
    .line 163
    if-nez v14, :cond_d

    .line 164
    .line 165
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->hasDisplayRotationChange(Landroid/window/TransitionInfo;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_d

    .line 170
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_d

    .line 176
    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    const/4 v1, 0x1

    .line 182
    invoke-static {v6, v0, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v6, v2, v15}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 187
    .line 188
    .line 189
    move-result-object v14

    .line 190
    invoke-static {v6, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    :goto_3
    if-ltz v0, :cond_9

    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 205
    .line 206
    const/16 v2, 0x20

    .line 207
    .line 208
    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_8

    .line 213
    .line 214
    invoke-virtual {v14, v1}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 215
    .line 216
    .line 217
    :cond_8
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    add-int/lit8 v0, v0, -0x1

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_9
    invoke-virtual {v14}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_a
    new-instance v6, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 239
    .line 240
    const/16 v0, 0x66

    .line 241
    .line 242
    invoke-direct {v6, v0, v9}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 249
    .line 250
    if-eqz v0, :cond_b

    .line 251
    .line 252
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 253
    .line 254
    const-string v1, " Animation is a mix of keyguard and display change"

    .line 255
    .line 256
    const v2, -0x6e44252d

    .line 257
    .line 258
    .line 259
    invoke-static {v0, v2, v15, v1, v13}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    :cond_b
    new-instance v9, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    .line 263
    .line 264
    const/4 v0, 0x5

    .line 265
    invoke-direct {v9, v8, v6, v7, v0}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 266
    .line 267
    .line 268
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    .line 269
    .line 270
    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 271
    .line 272
    .line 273
    move-object/from16 v0, p0

    .line 274
    .line 275
    move-object v1, v6

    .line 276
    move-object v2, v3

    .line 277
    move-object v3, v4

    .line 278
    move-object/from16 v4, p4

    .line 279
    .line 280
    move-object v5, v9

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateKeyguard(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_c

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_c
    iget v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 289
    .line 290
    add-int/lit8 v0, v0, 0x1

    .line 291
    .line 292
    iput v0, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 293
    .line 294
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 295
    .line 296
    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 297
    .line 298
    iget-object v7, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 299
    .line 300
    move-object v2, v14

    .line 301
    move-object/from16 v3, p3

    .line 302
    .line 303
    move-object/from16 v4, p4

    .line 304
    .line 305
    move-object v5, v9

    .line 306
    move-object v9, v6

    .line 307
    move-object/from16 v6, p0

    .line 308
    .line 309
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iput-object v0, v9, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 314
    .line 315
    const/4 v15, 0x1

    .line 316
    :goto_4
    return v15

    .line 317
    :cond_d
    const/4 v1, 0x5

    .line 318
    :cond_e
    const/4 v0, -0x1

    .line 319
    const-string v3, "DefaultMixedHandler"

    .line 320
    .line 321
    const/4 v4, 0x2

    .line 322
    if-nez v14, :cond_22

    .line 323
    .line 324
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 325
    .line 326
    if-eqz v1, :cond_18

    .line 327
    .line 328
    const/4 v1, 0x1

    .line 329
    invoke-static {v6, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    move v5, v15

    .line 334
    move v13, v5

    .line 335
    :goto_5
    if-ltz v1, :cond_11

    .line 336
    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v14

    .line 341
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v14

    .line 345
    check-cast v14, Landroid/window/TransitionInfo$Change;

    .line 346
    .line 347
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->isEnteringPinnedMode()Z

    .line 348
    .line 349
    .line 350
    move-result v16

    .line 351
    if-eqz v16, :cond_f

    .line 352
    .line 353
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 354
    .line 355
    .line 356
    move-result-object v16

    .line 357
    if-eqz v16, :cond_f

    .line 358
    .line 359
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 360
    .line 361
    .line 362
    move-result-object v16

    .line 363
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-ne v2, v4, :cond_f

    .line 368
    .line 369
    const/4 v13, 0x1

    .line 370
    :cond_f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 371
    .line 372
    if-eqz v2, :cond_10

    .line 373
    .line 374
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMinimizeAnimState()I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_10

    .line 379
    .line 380
    const/4 v5, 0x1

    .line 381
    :cond_10
    add-int/lit8 v1, v1, -0x1

    .line 382
    .line 383
    goto :goto_5

    .line 384
    :cond_11
    if-eqz v5, :cond_12

    .line 385
    .line 386
    if-eqz v13, :cond_12

    .line 387
    .line 388
    const/4 v1, 0x1

    .line 389
    goto :goto_6

    .line 390
    :cond_12
    move v1, v15

    .line 391
    :goto_6
    if-eqz v1, :cond_18

    .line 392
    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    :cond_13
    add-int/2addr v1, v0

    .line 402
    if-ltz v1, :cond_14

    .line 403
    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 413
    .line 414
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->isEnteringPinnedMode()Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-eqz v5, :cond_13

    .line 419
    .line 420
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    if-eqz v5, :cond_13

    .line 425
    .line 426
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    if-ne v5, v4, :cond_13

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :cond_14
    const/4 v2, 0x0

    .line 438
    :goto_7
    if-nez v2, :cond_15

    .line 439
    .line 440
    const-string v0, "animateEnterPipWithDefaultTransition: failed, cannot find pipChange"

    .line 441
    .line 442
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    goto/16 :goto_8

    .line 446
    .line 447
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    const/4 v1, 0x1

    .line 452
    invoke-static {v6, v0, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    invoke-static {v6, v0, v15}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 461
    .line 462
    .line 463
    move-result-object v13

    .line 464
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_16

    .line 483
    .line 484
    const-string v0, "animateEnterPipWithDefaultTransition: failed, default part is empty"

    .line 485
    .line 486
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    goto :goto_8

    .line 490
    :cond_16
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 491
    .line 492
    if-eqz v0, :cond_17

    .line 493
    .line 494
    invoke-virtual {v5}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    if-eqz v0, :cond_17

    .line 499
    .line 500
    const/4 v0, 0x1

    .line 501
    invoke-virtual {v5, v0}, Landroid/window/TransitionInfo;->setSeparatedFromCustomDisplayChange(Z)V

    .line 502
    .line 503
    .line 504
    :cond_17
    new-instance v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 505
    .line 506
    const/16 v0, 0x64

    .line 507
    .line 508
    invoke-direct {v14, v0, v9}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    iput v4, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 515
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    const-string v1, "animateEnterPipWithDefaultTransition: enterPipPart="

    .line 519
    .line 520
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    const-string v1, ", defaultPart="

    .line 527
    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    new-instance v12, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    .line 542
    .line 543
    const/4 v0, 0x4

    .line 544
    invoke-direct {v12, v8, v14, v7, v0}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 545
    .line 546
    .line 547
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 548
    .line 549
    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 550
    .line 551
    iget-object v6, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 552
    .line 553
    move-object v2, v5

    .line 554
    move-object/from16 v3, p3

    .line 555
    .line 556
    move-object/from16 v4, p4

    .line 557
    .line 558
    move-object v5, v12

    .line 559
    move-object/from16 v7, p0

    .line 560
    .line 561
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    iput-object v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 566
    .line 567
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 568
    .line 569
    check-cast v0, Lcom/android/wm/shell/pip/PipTransition;

    .line 570
    .line 571
    move-object/from16 v1, p1

    .line 572
    .line 573
    move-object v2, v13

    .line 574
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 575
    .line 576
    .line 577
    const/4 v15, 0x1

    .line 578
    :goto_8
    return v15

    .line 579
    :cond_18
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_RECENTS_TRANSITION_WITH_DISPLAY_CHANGE:Z

    .line 580
    .line 581
    if-eqz v0, :cond_21

    .line 582
    .line 583
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 584
    .line 585
    if-eqz v9, :cond_19

    .line 586
    .line 587
    invoke-virtual {v0, v9}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->findController(Landroid/os/IBinder;)I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-gez v0, :cond_1a

    .line 592
    .line 593
    move v0, v15

    .line 594
    goto :goto_9

    .line 595
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    :cond_1a
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->hasDisplayRotationChange(Landroid/window/TransitionInfo;)Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    :goto_9
    if-eqz v0, :cond_21

    .line 603
    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    const/4 v1, 0x1

    .line 609
    invoke-static {v6, v0, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    const/4 v0, 0x6

    .line 614
    invoke-static {v6, v0, v15}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 615
    .line 616
    .line 617
    move-result-object v13

    .line 618
    invoke-static {v6, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    :goto_a
    if-ltz v0, :cond_1d

    .line 623
    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 633
    .line 634
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    if-nez v3, :cond_1c

    .line 639
    .line 640
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    if-nez v3, :cond_1c

    .line 645
    .line 646
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Landroid/window/TransitionInfo$Change;)Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-nez v3, :cond_1c

    .line 651
    .line 652
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isTransientLaunchOverlay(Landroid/window/TransitionInfo$Change;)Z

    .line 653
    .line 654
    .line 655
    move-result v3

    .line 656
    if-eqz v3, :cond_1b

    .line 657
    .line 658
    goto :goto_b

    .line 659
    :cond_1b
    invoke-virtual {v13, v1}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    :cond_1c
    :goto_b
    add-int/lit8 v0, v0, -0x1

    .line 670
    .line 671
    goto :goto_a

    .line 672
    :cond_1d
    invoke-virtual {v13}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    if-eqz v0, :cond_1e

    .line 681
    .line 682
    goto :goto_d

    .line 683
    :cond_1e
    invoke-virtual {v13, v15}, Landroid/window/TransitionInfo;->overrideDisplayChangeBackColor(I)V

    .line 684
    .line 685
    .line 686
    new-instance v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 687
    .line 688
    const/16 v0, 0x65

    .line 689
    .line 690
    invoke-direct {v14, v0, v9}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 697
    .line 698
    if-eqz v0, :cond_1f

    .line 699
    .line 700
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 701
    .line 702
    const-string v1, " Animation is a mix of display change and recents"

    .line 703
    .line 704
    const v3, 0x7eff0e6f

    .line 705
    .line 706
    .line 707
    const/4 v5, 0x0

    .line 708
    invoke-static {v0, v3, v15, v1, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    :cond_1f
    iput v4, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 712
    .line 713
    new-instance v6, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    .line 714
    .line 715
    invoke-direct {v6, v8, v14, v7, v4}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 716
    .line 717
    .line 718
    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    .line 719
    .line 720
    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 721
    .line 722
    .line 723
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 724
    .line 725
    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 726
    .line 727
    move-object v3, v7

    .line 728
    move-object/from16 v4, p4

    .line 729
    .line 730
    move-object v5, v6

    .line 731
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    if-eqz v0, :cond_20

    .line 736
    .line 737
    invoke-virtual {v10, v7}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 738
    .line 739
    .line 740
    goto :goto_c

    .line 741
    :cond_20
    iget v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 742
    .line 743
    add-int/lit8 v0, v0, -0x1

    .line 744
    .line 745
    iput v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 746
    .line 747
    :goto_c
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 748
    .line 749
    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 750
    .line 751
    iget-object v7, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 752
    .line 753
    move-object v2, v13

    .line 754
    move-object/from16 v3, p3

    .line 755
    .line 756
    move-object/from16 v4, p4

    .line 757
    .line 758
    move-object v5, v6

    .line 759
    move-object/from16 v6, p0

    .line 760
    .line 761
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    iput-object v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 766
    .line 767
    const/4 v15, 0x1

    .line 768
    :cond_21
    :goto_d
    return v15

    .line 769
    :cond_22
    iget v2, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    .line 770
    .line 771
    const/4 v5, 0x1

    .line 772
    if-ne v2, v5, :cond_23

    .line 773
    .line 774
    move-object/from16 v0, p0

    .line 775
    .line 776
    move-object v1, v14

    .line 777
    move-object/from16 v2, p2

    .line 778
    .line 779
    move-object/from16 v3, p3

    .line 780
    .line 781
    move-object/from16 v4, p4

    .line 782
    .line 783
    move-object/from16 v5, p5

    .line 784
    .line 785
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 786
    .line 787
    .line 788
    move-result v0

    .line 789
    return v0

    .line 790
    :cond_23
    if-ne v2, v4, :cond_24

    .line 791
    .line 792
    return v15

    .line 793
    :cond_24
    const/4 v5, 0x3

    .line 794
    if-ne v2, v5, :cond_2e

    .line 795
    .line 796
    const/4 v0, 0x1

    .line 797
    invoke-static {v6, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 798
    .line 799
    .line 800
    move-result v0

    .line 801
    const/4 v1, 0x0

    .line 802
    :goto_e
    if-ltz v0, :cond_27

    .line 803
    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 813
    .line 814
    iget-object v9, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 815
    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 817
    .line 818
    .line 819
    move-result v13

    .line 820
    invoke-virtual {v9, v13, v2}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(ILandroid/window/TransitionInfo$Change;)Z

    .line 821
    .line 822
    .line 823
    move-result v9

    .line 824
    if-eqz v9, :cond_26

    .line 825
    .line 826
    if-nez v1, :cond_25

    .line 827
    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-object v1, v2

    .line 836
    goto :goto_f

    .line 837
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 838
    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    .line 840
    .line 841
    const-string v2, "More than 1 pip-entering changes in one transition? "

    .line 842
    .line 843
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    throw v0

    .line 857
    :cond_26
    :goto_f
    add-int/lit8 v0, v0, -0x1

    .line 858
    .line 859
    goto :goto_e

    .line 860
    :cond_27
    new-instance v9, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    .line 861
    .line 862
    invoke-direct {v9, v8, v14, v7, v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 863
    .line 864
    .line 865
    if-nez v1, :cond_29

    .line 866
    .line 867
    iget-object v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 868
    .line 869
    if-eqz v0, :cond_28

    .line 870
    .line 871
    const/4 v1, 0x1

    .line 872
    iput v1, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 873
    .line 874
    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 875
    .line 876
    move-object/from16 v2, p2

    .line 877
    .line 878
    move-object/from16 v3, p3

    .line 879
    .line 880
    move-object/from16 v4, p4

    .line 881
    .line 882
    move-object v5, v9

    .line 883
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 884
    .line 885
    .line 886
    move-result v0

    .line 887
    if-eqz v0, :cond_28

    .line 888
    .line 889
    goto/16 :goto_11

    .line 890
    .line 891
    :cond_28
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    goto/16 :goto_12

    .line 895
    .line 896
    :cond_29
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 897
    .line 898
    if-eqz v0, :cond_2a

    .line 899
    .line 900
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 901
    .line 902
    const v2, -0x4e1b3190

    .line 903
    .line 904
    .line 905
    const-string v5, " Splitting PIP into a separate animation because remote-animation likely doesn\'t support it"

    .line 906
    .line 907
    const/4 v7, 0x0

    .line 908
    invoke-static {v0, v2, v15, v5, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 909
    .line 910
    .line 911
    :cond_2a
    iput v4, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 912
    .line 913
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 914
    .line 915
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 916
    .line 917
    .line 918
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 919
    .line 920
    if-eqz v2, :cond_2c

    .line 921
    .line 922
    iget-object v2, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 923
    .line 924
    iget-object v2, v2, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 925
    .line 926
    iget-object v2, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 927
    .line 928
    iget-boolean v4, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 929
    .line 930
    if-eqz v4, :cond_2c

    .line 931
    .line 932
    iget v2, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 933
    .line 934
    const/4 v4, 0x1

    .line 935
    if-ne v2, v4, :cond_2b

    .line 936
    .line 937
    const/4 v15, 0x1

    .line 938
    :cond_2b
    if-eqz v15, :cond_2c

    .line 939
    .line 940
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 941
    .line 942
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 943
    .line 944
    .line 945
    const-string v4, "PipStartTransaction"

    .line 946
    .line 947
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    const-string v4, "PipFinishTransaction"

    .line 951
    .line 952
    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 956
    .line 957
    .line 958
    move-result-object v4

    .line 959
    const/4 v5, 0x0

    .line 960
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 961
    .line 962
    .line 963
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 964
    .line 965
    .line 966
    move-result-object v4

    .line 967
    const/high16 v5, 0x3f800000    # 1.0f

    .line 968
    .line 969
    invoke-virtual {v11, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 970
    .line 971
    .line 972
    new-instance v4, Ljava/lang/StringBuilder;

    .line 973
    .line 974
    const-string v5, "animateOpenIntentWithRemoteAndPip: new finishT, pipChange="

    .line 975
    .line 976
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    const-string v5, ", inSwipeHome=true"

    .line 983
    .line 984
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    .line 993
    .line 994
    iget-object v3, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 995
    .line 996
    invoke-virtual {v3, v1, v0, v2, v9}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 997
    .line 998
    .line 999
    goto :goto_10

    .line 1000
    :cond_2c
    iget-object v2, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 1001
    .line 1002
    invoke-virtual {v2, v1, v0, v11, v9}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 1003
    .line 1004
    .line 1005
    :goto_10
    iget-object v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 1006
    .line 1007
    if-eqz v0, :cond_2d

    .line 1008
    .line 1009
    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 1010
    .line 1011
    move-object/from16 v2, p2

    .line 1012
    .line 1013
    move-object/from16 v3, p3

    .line 1014
    .line 1015
    move-object/from16 v4, p4

    .line 1016
    .line 1017
    move-object v5, v9

    .line 1018
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    if-eqz v0, :cond_2d

    .line 1023
    .line 1024
    goto :goto_11

    .line 1025
    :cond_2d
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 1026
    .line 1027
    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 1028
    .line 1029
    const/4 v7, 0x0

    .line 1030
    move-object/from16 v2, p2

    .line 1031
    .line 1032
    move-object/from16 v3, p3

    .line 1033
    .line 1034
    move-object/from16 v4, p4

    .line 1035
    .line 1036
    move-object v5, v9

    .line 1037
    move-object/from16 v6, p0

    .line 1038
    .line 1039
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    iput-object v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 1044
    .line 1045
    :goto_11
    const/4 v15, 0x1

    .line 1046
    :goto_12
    return v15

    .line 1047
    :cond_2e
    const/4 v3, 0x4

    .line 1048
    if-ne v2, v3, :cond_38

    .line 1049
    .line 1050
    const/4 v1, 0x1

    .line 1051
    invoke-static {v6, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 1052
    .line 1053
    .line 1054
    move-result v1

    .line 1055
    :goto_13
    if-ltz v1, :cond_30

    .line 1056
    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v2

    .line 1061
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v2

    .line 1065
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 1066
    .line 1067
    iget-object v3, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 1068
    .line 1069
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1070
    .line 1071
    .line 1072
    move-result v4

    .line 1073
    invoke-virtual {v3, v4, v2}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(ILandroid/window/TransitionInfo$Change;)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v3

    .line 1077
    if-eqz v3, :cond_2f

    .line 1078
    .line 1079
    iget-object v3, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 1080
    .line 1081
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v2

    .line 1085
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    .line 1086
    .line 1087
    .line 1088
    move-result v2

    .line 1089
    if-eq v2, v0, :cond_2f

    .line 1090
    .line 1091
    move-object/from16 v0, p0

    .line 1092
    .line 1093
    move-object v1, v14

    .line 1094
    move-object/from16 v2, p2

    .line 1095
    .line 1096
    move-object/from16 v3, p3

    .line 1097
    .line 1098
    move-object/from16 v4, p4

    .line 1099
    .line 1100
    move-object/from16 v5, p5

    .line 1101
    .line 1102
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v0

    .line 1106
    return v0

    .line 1107
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    .line 1108
    .line 1109
    goto :goto_13

    .line 1110
    :cond_30
    new-instance v5, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;

    .line 1111
    .line 1112
    invoke-direct {v5, v8, v14, v11, v7}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 1113
    .line 1114
    .line 1115
    const/4 v0, 0x1

    .line 1116
    iput v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 1117
    .line 1118
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 1119
    .line 1120
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v1

    .line 1124
    if-eqz v1, :cond_33

    .line 1125
    .line 1126
    move v1, v15

    .line 1127
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v2

    .line 1131
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1132
    .line 1133
    .line 1134
    move-result v2

    .line 1135
    if-ge v1, v2, :cond_33

    .line 1136
    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v2

    .line 1141
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v2

    .line 1145
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 1146
    .line 1147
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1148
    .line 1149
    .line 1150
    move-result v3

    .line 1151
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v3

    .line 1155
    if-eqz v3, :cond_32

    .line 1156
    .line 1157
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v3

    .line 1161
    if-eqz v3, :cond_32

    .line 1162
    .line 1163
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v2

    .line 1167
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1168
    .line 1169
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 1170
    .line 1171
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 1172
    .line 1173
    .line 1174
    move-result v3

    .line 1175
    if-eq v3, v2, :cond_31

    .line 1176
    .line 1177
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 1178
    .line 1179
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 1180
    .line 1181
    .line 1182
    move-result v3

    .line 1183
    if-eq v3, v2, :cond_31

    .line 1184
    .line 1185
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 1186
    .line 1187
    if-eqz v3, :cond_32

    .line 1188
    .line 1189
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 1190
    .line 1191
    .line 1192
    move-result v3

    .line 1193
    if-eqz v3, :cond_32

    .line 1194
    .line 1195
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    .line 1196
    .line 1197
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 1198
    .line 1199
    .line 1200
    move-result v3

    .line 1201
    if-ne v3, v2, :cond_32

    .line 1202
    .line 1203
    :cond_31
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 1204
    .line 1205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v2

    .line 1209
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    .line 1211
    .line 1212
    :cond_32
    add-int/lit8 v1, v1, 0x1

    .line 1213
    .line 1214
    goto :goto_14

    .line 1215
    :cond_33
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1216
    .line 1217
    if-eqz v1, :cond_34

    .line 1218
    .line 1219
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 1220
    .line 1221
    .line 1222
    move-result v1

    .line 1223
    if-nez v1, :cond_34

    .line 1224
    .line 1225
    const-string v1, "StageCoordinator"

    .line 1226
    .line 1227
    const-string v2, "onRecentsInSplitAnimationStart: skip divider, reason=split_invisible"

    .line 1228
    .line 1229
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    .line 1231
    .line 1232
    goto :goto_15

    .line 1233
    :cond_34
    invoke-virtual {v0, v6, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    .line 1234
    .line 1235
    .line 1236
    :goto_15
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    .line 1237
    .line 1238
    if-eqz v1, :cond_35

    .line 1239
    .line 1240
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    .line 1241
    .line 1242
    .line 1243
    move-result v1

    .line 1244
    if-eqz v1, :cond_35

    .line 1245
    .line 1246
    invoke-virtual {v0, v6, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addCellDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    .line 1247
    .line 1248
    .line 1249
    :cond_35
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 1250
    .line 1251
    invoke-virtual {v1, v15, v15}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    .line 1252
    .line 1253
    .line 1254
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1255
    .line 1256
    if-eqz v1, :cond_36

    .line 1257
    .line 1258
    const/4 v1, 0x1

    .line 1259
    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRecentsInSplitAnimating:Z

    .line 1260
    .line 1261
    :cond_36
    iget-object v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 1262
    .line 1263
    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 1264
    .line 1265
    move-object/from16 v2, p2

    .line 1266
    .line 1267
    move-object/from16 v3, p3

    .line 1268
    .line 1269
    move-object/from16 v4, p4

    .line 1270
    .line 1271
    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1272
    .line 1273
    .line 1274
    move-result v0

    .line 1275
    if-nez v0, :cond_37

    .line 1276
    .line 1277
    iget-object v1, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 1278
    .line 1279
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRecentsInSplitAnimationCanceled()V

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1283
    .line 1284
    .line 1285
    :cond_37
    return v0

    .line 1286
    :cond_38
    if-ne v2, v1, :cond_39

    .line 1287
    .line 1288
    move-object/from16 v0, p0

    .line 1289
    .line 1290
    move-object v1, v14

    .line 1291
    move-object/from16 v2, p2

    .line 1292
    .line 1293
    move-object/from16 v3, p3

    .line 1294
    .line 1295
    move-object/from16 v4, p4

    .line 1296
    .line 1297
    move-object/from16 v5, p5

    .line 1298
    .line 1299
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->animateKeyguard(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1300
    .line 1301
    .line 1302
    move-result v0

    .line 1303
    return v0

    .line 1304
    :cond_39
    const/4 v0, 0x6

    .line 1305
    if-ne v2, v0, :cond_42

    .line 1306
    .line 1307
    new-instance v9, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;

    .line 1308
    .line 1309
    invoke-direct {v9, v8, v14, v7, v15}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 1310
    .line 1311
    .line 1312
    const/4 v0, 0x1

    .line 1313
    iput v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 1314
    .line 1315
    iget-object v1, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 1316
    .line 1317
    if-eqz v1, :cond_3a

    .line 1318
    .line 1319
    invoke-virtual {v1, v6, v10, v11}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 1320
    .line 1321
    .line 1322
    :cond_3a
    iget-object v1, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 1323
    .line 1324
    if-eqz v1, :cond_3e

    .line 1325
    .line 1326
    move v2, v15

    .line 1327
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v3

    .line 1331
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1332
    .line 1333
    .line 1334
    move-result v3

    .line 1335
    if-ge v2, v3, :cond_3e

    .line 1336
    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v3

    .line 1341
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v3

    .line 1345
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 1346
    .line 1347
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v4

    .line 1351
    if-eqz v4, :cond_3d

    .line 1352
    .line 1353
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1354
    .line 1355
    .line 1356
    move-result v4

    .line 1357
    const/4 v7, 0x6

    .line 1358
    if-eq v4, v7, :cond_3b

    .line 1359
    .line 1360
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1361
    .line 1362
    .line 1363
    move-result v4

    .line 1364
    if-eq v4, v5, :cond_3b

    .line 1365
    .line 1366
    goto/16 :goto_18

    .line 1367
    .line 1368
    :cond_3b
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v4

    .line 1372
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v4

    .line 1376
    iget-object v7, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    .line 1377
    .line 1378
    if-eqz v4, :cond_3c

    .line 1379
    .line 1380
    iget-object v12, v4, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1381
    .line 1382
    if-eqz v12, :cond_3c

    .line 1383
    .line 1384
    invoke-virtual {v12}, Landroid/view/SurfaceControl;->isValid()Z

    .line 1385
    .line 1386
    .line 1387
    move-result v12

    .line 1388
    if-eqz v12, :cond_3c

    .line 1389
    .line 1390
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v12

    .line 1394
    if-eqz v12, :cond_3c

    .line 1395
    .line 1396
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v12

    .line 1400
    check-cast v12, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    .line 1401
    .line 1402
    iget-boolean v12, v12, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    .line 1403
    .line 1404
    if-eqz v12, :cond_3c

    .line 1405
    .line 1406
    goto :goto_17

    .line 1407
    :cond_3c
    move v0, v15

    .line 1408
    :goto_17
    if-eqz v0, :cond_3d

    .line 1409
    .line 1410
    new-instance v0, Landroid/graphics/Rect;

    .line 1411
    .line 1412
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v7

    .line 1416
    check-cast v7, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    .line 1417
    .line 1418
    iget-object v7, v7, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    .line 1419
    .line 1420
    invoke-direct {v0, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v0, v15, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v7

    .line 1430
    iget-object v12, v4, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1431
    .line 1432
    invoke-virtual {v10, v7, v12}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v7

    .line 1436
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v12

    .line 1440
    const/4 v13, 0x0

    .line 1441
    invoke-virtual {v7, v12, v13, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v7

    .line 1445
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v12

    .line 1449
    invoke-virtual {v7, v12, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    iget-object v4, v4, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1457
    .line 1458
    invoke-virtual {v11, v0, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v0

    .line 1462
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v4

    .line 1466
    invoke-virtual {v0, v4, v13, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1467
    .line 1468
    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    const-string/jumbo v4, "syncTaskViewSurfaceState: "

    .line 1472
    .line 1473
    .line 1474
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v0

    .line 1484
    const-string v3, "TaskViewTransitions"

    .line 1485
    .line 1486
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    .line 1488
    .line 1489
    :cond_3d
    :goto_18
    add-int/lit8 v2, v2, 0x1

    .line 1490
    .line 1491
    const/4 v0, 0x1

    .line 1492
    goto/16 :goto_16

    .line 1493
    .line 1494
    :cond_3e
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 1495
    .line 1496
    if-eqz v0, :cond_41

    .line 1497
    .line 1498
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 1499
    .line 1500
    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 1501
    .line 1502
    if-nez v1, :cond_3f

    .line 1503
    .line 1504
    goto :goto_1a

    .line 1505
    :cond_3f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    .line 1506
    .line 1507
    if-eqz v1, :cond_41

    .line 1508
    .line 1509
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 1510
    .line 1511
    if-eqz v1, :cond_41

    .line 1512
    .line 1513
    iget-object v2, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    .line 1514
    .line 1515
    iget v2, v2, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    .line 1516
    .line 1517
    if-eqz v2, :cond_40

    .line 1518
    .line 1519
    const/4 v2, 0x1

    .line 1520
    goto :goto_19

    .line 1521
    :cond_40
    move v2, v15

    .line 1522
    :goto_19
    if-eqz v2, :cond_41

    .line 1523
    .line 1524
    invoke-virtual {v0, v1, v11, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 1525
    .line 1526
    .line 1527
    :cond_41
    :goto_1a
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    .line 1528
    .line 1529
    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 1530
    .line 1531
    move-object/from16 v2, p2

    .line 1532
    .line 1533
    move-object/from16 v3, p3

    .line 1534
    .line 1535
    move-object/from16 v4, p4

    .line 1536
    .line 1537
    move-object v5, v9

    .line 1538
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v0

    .line 1542
    return v0

    .line 1543
    :cond_42
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1544
    .line 1545
    .line 1546
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1547
    .line 1548
    const-string v1, "Starting mixed animation without a known mixed type? "

    .line 1549
    .line 1550
    invoke-static {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v1

    .line 1554
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    throw v0
.end method
