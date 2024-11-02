.class public final Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;
.super Landroid/window/IRemoteTransition$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mFinishRunnables:Landroid/util/ArrayMap;

.field public mLeashMap:Landroid/util/ArrayMap;

.field public final synthetic val$runner:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method public constructor <init>(Landroid/view/IRemoteAnimationRunner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mLeashMap:Landroid/util/ArrayMap;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->ONE_UI_6_1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v6, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->sAnimCallbacks:Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v7, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mLeashMap:Landroid/util/ArrayMap;

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move-object v5, p5

    .line 14
    invoke-static/range {v1 .. v7}, Landroid/window/RemoteAnimationRunnerHelper;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;Ljava/util/HashMap;Landroid/util/ArrayMap;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE:Z

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->canMergeAnimation()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    sget-object p1, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->sAnimCallbacks:Ljava/util/HashMap;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-ge p0, p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/window/TransitionInfo$Change;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    if-eqz p4, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 72
    .line 73
    .line 74
    move-result p4

    .line 75
    and-int/lit8 p4, p4, 0x2

    .line 76
    .line 77
    if-eqz p4, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    invoke-virtual {p3, p4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/high16 p4, 0x3f800000    # 1.0f

    .line 92
    .line 93
    invoke-virtual {p3, p1, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 94
    .line 95
    .line 96
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 103
    .line 104
    .line 105
    sget-object p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->sAnimCallbacks:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Ljava/lang/Runnable;

    .line 116
    .line 117
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 118
    .line 119
    .line 120
    const/4 p0, 0x0

    .line 121
    invoke-interface {p5, p0, p0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 126
    .line 127
    monitor-enter p1

    .line 128
    :try_start_0
    iget-object p5, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 129
    .line 130
    invoke-virtual {p5, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    check-cast p4, Ljava/lang/Runnable;

    .line 135
    .line 136
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    .line 141
    .line 142
    .line 143
    if-nez p4, :cond_4

    .line 144
    .line 145
    return-void

    .line 146
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    .line 147
    .line 148
    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V

    .line 149
    .line 150
    .line 151
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    throw p0
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    new-instance v12, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE:Z

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iput-object v12, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mLeashMap:Landroid/util/ArrayMap;

    .line 19
    .line 20
    :cond_0
    new-instance v3, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    .line 21
    .line 22
    invoke-direct {v3}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v5, v2, v12, v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    .line 26
    .line 27
    .line 28
    move-result-object v13

    .line 29
    new-instance v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-direct {v3, v4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {v5, v2, v12, v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    .line 36
    .line 37
    .line 38
    move-result-object v14

    .line 39
    new-instance v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-direct {v3, v6}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    invoke-static {v5, v2, v12, v3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    .line 46
    .line 47
    .line 48
    move-result-object v15

    .line 49
    invoke-static {v5, v4}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    move-object v11, v4

    .line 57
    move v10, v6

    .line 58
    move/from16 v16, v10

    .line 59
    .line 60
    move/from16 v17, v16

    .line 61
    .line 62
    move/from16 v20, v17

    .line 63
    .line 64
    move/from16 v18, v7

    .line 65
    .line 66
    move/from16 v19, v8

    .line 67
    .line 68
    :goto_0
    const/4 v6, 0x2

    .line 69
    const/4 v7, 0x3

    .line 70
    if-ltz v3, :cond_8

    .line 71
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 81
    .line 82
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-nez v9, :cond_1

    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_1
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    if-eqz v9, :cond_4

    .line 99
    .line 100
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-ne v9, v6, :cond_4

    .line 109
    .line 110
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const/4 v6, 0x1

    .line 115
    if-eq v4, v6, :cond_3

    .line 116
    .line 117
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-ne v4, v7, :cond_2

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const/4 v4, 0x0

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 127
    :goto_2
    move/from16 v16, v4

    .line 128
    .line 129
    invoke-static {v5, v3}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    move-object v4, v8

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    and-int/2addr v6, v7

    .line 140
    if-eqz v6, :cond_5

    .line 141
    .line 142
    move-object v11, v8

    .line 143
    :cond_5
    :goto_3
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 144
    .line 145
    if-eqz v6, :cond_6

    .line 146
    .line 147
    invoke-static {v8}, Lcom/android/wm/shell/util/TransitionUtil;->isHomeOrRecents(Landroid/window/TransitionInfo$Change;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_6

    .line 152
    .line 153
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_6

    .line 162
    .line 163
    const-string v6, "RemoteAnimRunnerCompat"

    .line 164
    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v9, "go to home from ty="

    .line 168
    .line 169
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v9, ". ignore isReturnToHome if set"

    .line 184
    .line 185
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    const/16 v17, 0x1

    .line 196
    .line 197
    :cond_6
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    if-nez v6, :cond_7

    .line 202
    .line 203
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-ltz v6, :cond_7

    .line 208
    .line 209
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eq v6, v7, :cond_7

    .line 218
    .line 219
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    sub-int v20, v6, v7

    .line 228
    .line 229
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    int-to-float v6, v6

    .line 238
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    int-to-float v7, v7

    .line 247
    move/from16 v18, v6

    .line 248
    .line 249
    move/from16 v19, v7

    .line 250
    .line 251
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, -0x1

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_8
    new-instance v3, Lcom/android/wm/shell/util/CounterRotator;

    .line 256
    .line 257
    invoke-direct {v3}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    .line 258
    .line 259
    .line 260
    new-instance v9, Lcom/android/wm/shell/util/CounterRotator;

    .line 261
    .line 262
    invoke-direct {v9}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    .line 263
    .line 264
    .line 265
    if-eqz v4, :cond_a

    .line 266
    .line 267
    if-eqz v20, :cond_a

    .line 268
    .line 269
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    if-eqz v6, :cond_a

    .line 274
    .line 275
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    if-eqz v6, :cond_9

    .line 284
    .line 285
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 286
    .line 287
    .line 288
    move-result-object v21

    .line 289
    const/16 v22, 0x0

    .line 290
    .line 291
    move-object v6, v3

    .line 292
    move/from16 v7, v18

    .line 293
    .line 294
    move/from16 v8, v19

    .line 295
    .line 296
    move-object/from16 v23, v9

    .line 297
    .line 298
    move/from16 v9, v20

    .line 299
    .line 300
    move-object/from16 v24, v15

    .line 301
    .line 302
    move v15, v10

    .line 303
    move-object/from16 v10, p3

    .line 304
    .line 305
    move-object/from16 v25, v13

    .line 306
    .line 307
    move-object v13, v11

    .line 308
    move-object/from16 v11, v21

    .line 309
    .line 310
    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/util/CounterRotator;->setup(FFILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_9
    move-object/from16 v23, v9

    .line 315
    .line 316
    move-object/from16 v25, v13

    .line 317
    .line 318
    move-object/from16 v24, v15

    .line 319
    .line 320
    move v15, v10

    .line 321
    move-object v13, v11

    .line 322
    const/16 v22, 0x0

    .line 323
    .line 324
    const-string v6, "RemoteAnimRunnerCompat"

    .line 325
    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string v8, "Malformed: "

    .line 329
    .line 330
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v8, " has parent="

    .line 337
    .line 338
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v8, " but it\'s not in info."

    .line 349
    .line 350
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    :goto_5
    iget-object v6, v3, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 361
    .line 362
    if-eqz v6, :cond_b

    .line 363
    .line 364
    invoke-virtual {v2, v6, v15}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 365
    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_a
    move-object/from16 v23, v9

    .line 369
    .line 370
    move-object/from16 v25, v13

    .line 371
    .line 372
    move-object/from16 v24, v15

    .line 373
    .line 374
    move-object v13, v11

    .line 375
    const/16 v22, 0x0

    .line 376
    .line 377
    :cond_b
    :goto_6
    move/from16 v6, v22

    .line 378
    .line 379
    if-eqz v16, :cond_14

    .line 380
    .line 381
    if-nez v17, :cond_14

    .line 382
    .line 383
    iget-object v4, v3, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 384
    .line 385
    if-eqz v4, :cond_c

    .line 386
    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    mul-int/lit8 v7, v7, 0x3

    .line 396
    .line 397
    invoke-virtual {v2, v4, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 398
    .line 399
    .line 400
    :cond_c
    const/4 v4, 0x1

    .line 401
    invoke-static {v5, v4}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    :goto_7
    if-ltz v4, :cond_13

    .line 406
    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 416
    .line 417
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    check-cast v8, Landroid/view/SurfaceControl;

    .line 426
    .line 427
    if-nez v8, :cond_d

    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    check-cast v9, Landroid/window/TransitionInfo$Change;

    .line 439
    .line 440
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 441
    .line 442
    .line 443
    move-result v9

    .line 444
    invoke-static {v7, v5}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 445
    .line 446
    .line 447
    move-result v10

    .line 448
    if-nez v10, :cond_e

    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_e
    const/4 v10, 0x2

    .line 452
    if-eq v9, v10, :cond_10

    .line 453
    .line 454
    const/4 v11, 0x4

    .line 455
    if-ne v9, v11, :cond_f

    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_f
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 459
    .line 460
    if-eqz v9, :cond_12

    .line 461
    .line 462
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    if-eqz v9, :cond_12

    .line 467
    .line 468
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 469
    .line 470
    .line 471
    move-result-object v7

    .line 472
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 473
    .line 474
    .line 475
    move-result v7

    .line 476
    if-ne v7, v10, :cond_12

    .line 477
    .line 478
    if-nez v13, :cond_12

    .line 479
    .line 480
    invoke-virtual {v2, v8, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 481
    .line 482
    .line 483
    goto :goto_9

    .line 484
    :cond_10
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 489
    .line 490
    .line 491
    move-result v7

    .line 492
    mul-int/lit8 v7, v7, 0x3

    .line 493
    .line 494
    sub-int/2addr v7, v4

    .line 495
    invoke-virtual {v2, v8, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 496
    .line 497
    .line 498
    iget-object v7, v3, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 499
    .line 500
    if-nez v7, :cond_11

    .line 501
    .line 502
    goto :goto_9

    .line 503
    :cond_11
    invoke-virtual {v2, v8, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 504
    .line 505
    .line 506
    :cond_12
    :goto_9
    add-int/lit8 v4, v4, -0x1

    .line 507
    .line 508
    goto :goto_7

    .line 509
    :cond_13
    array-length v4, v14

    .line 510
    add-int/lit8 v4, v4, -0x1

    .line 511
    .line 512
    :goto_a
    if-ltz v4, :cond_19

    .line 513
    .line 514
    aget-object v6, v14, v4

    .line 515
    .line 516
    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 517
    .line 518
    invoke-virtual {v2, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 519
    .line 520
    .line 521
    aget-object v6, v14, v4

    .line 522
    .line 523
    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 524
    .line 525
    const/high16 v7, 0x3f800000    # 1.0f

    .line 526
    .line 527
    invoke-virtual {v2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 528
    .line 529
    .line 530
    add-int/lit8 v4, v4, -0x1

    .line 531
    .line 532
    goto :goto_a

    .line 533
    :cond_14
    if-eqz v4, :cond_16

    .line 534
    .line 535
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    check-cast v4, Landroid/view/SurfaceControl;

    .line 544
    .line 545
    iget-object v6, v3, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 546
    .line 547
    if-nez v6, :cond_15

    .line 548
    .line 549
    goto :goto_b

    .line 550
    :cond_15
    invoke-virtual {v2, v4, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 551
    .line 552
    .line 553
    :cond_16
    :goto_b
    if-eqz v13, :cond_19

    .line 554
    .line 555
    if-eqz v20, :cond_19

    .line 556
    .line 557
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    if-eqz v4, :cond_19

    .line 562
    .line 563
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    invoke-virtual {v5, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    if-eqz v4, :cond_17

    .line 572
    .line 573
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 574
    .line 575
    .line 576
    move-result-object v11

    .line 577
    move-object/from16 v6, v23

    .line 578
    .line 579
    move/from16 v7, v18

    .line 580
    .line 581
    move/from16 v8, v19

    .line 582
    .line 583
    move/from16 v9, v20

    .line 584
    .line 585
    move-object/from16 v10, p3

    .line 586
    .line 587
    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/util/CounterRotator;->setup(FFILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 588
    .line 589
    .line 590
    goto :goto_c

    .line 591
    :cond_17
    const-string v4, "RemoteAnimRunnerCompat"

    .line 592
    .line 593
    new-instance v6, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    const-string v7, "Malformed: "

    .line 596
    .line 597
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v7, " has parent="

    .line 604
    .line 605
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 609
    .line 610
    .line 611
    move-result-object v7

    .line 612
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v7, " but it\'s not in info."

    .line 616
    .line 617
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    :goto_c
    move-object/from16 v4, v23

    .line 628
    .line 629
    iget-object v6, v4, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 630
    .line 631
    if-eqz v6, :cond_1a

    .line 632
    .line 633
    const/4 v7, -0x1

    .line 634
    invoke-virtual {v2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 638
    .line 639
    .line 640
    move-result-object v6

    .line 641
    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v6

    .line 645
    check-cast v6, Landroid/view/SurfaceControl;

    .line 646
    .line 647
    iget-object v7, v4, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 648
    .line 649
    if-nez v7, :cond_18

    .line 650
    .line 651
    goto :goto_d

    .line 652
    :cond_18
    invoke-virtual {v2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 653
    .line 654
    .line 655
    goto :goto_d

    .line 656
    :cond_19
    move-object/from16 v4, v23

    .line 657
    .line 658
    :cond_1a
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 659
    .line 660
    .line 661
    new-instance v8, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda0;

    .line 662
    .line 663
    move-object v2, v8

    .line 664
    move-object/from16 v5, p2

    .line 665
    .line 666
    move-object v6, v12

    .line 667
    move-object/from16 v7, p4

    .line 668
    .line 669
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/util/CounterRotator;Lcom/android/wm/shell/util/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 670
    .line 671
    .line 672
    iget-object v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 673
    .line 674
    monitor-enter v2

    .line 675
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    .line 676
    .line 677
    invoke-virtual {v3, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    iget-object v4, v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    .line 682
    .line 683
    const/4 v5, 0x0

    .line 684
    new-instance v9, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;

    .line 685
    .line 686
    invoke-direct {v9, v0, v1, v8}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    .line 687
    .line 688
    .line 689
    move-object/from16 v6, v25

    .line 690
    .line 691
    move-object v7, v14

    .line 692
    move-object/from16 v8, v24

    .line 693
    .line 694
    invoke-interface/range {v4 .. v9}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 695
    .line 696
    .line 697
    return-void

    .line 698
    :catchall_0
    move-exception v0

    .line 699
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    throw v0
.end method
