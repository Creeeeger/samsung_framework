.class public final Lcom/android/systemui/keyguard/KeyguardService$1;
.super Landroid/window/IRemoteTransition$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCounterRotator:Lcom/android/wm/shell/util/CounterRotator;

.field public final mFinishCallbacks:Ljava/util/Map;

.field public final mLeashMap:Landroid/util/ArrayMap;

.field public final synthetic val$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final synthetic val$lockscreenLiveWallpaperEnabled:Z

.field public final synthetic val$runner:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$lockscreenLiveWallpaperEnabled:Z

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    .line 16
    .line 17
    new-instance p1, Lcom/android/wm/shell/util/CounterRotator;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mCounterRotator:Lcom/android/wm/shell/util/CounterRotator;

    .line 23
    .line 24
    new-instance p1, Ljava/util/WeakHashMap;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mFinishCallbacks:Ljava/util/Map;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final finish(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mCounterRotator:Lcom/android/wm/shell/util/CounterRotator;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mCounterRotator:Lcom/android/wm/shell/util/CounterRotator;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/wm/shell/util/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    move-object v1, v2

    .line 36
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mFinishCallbacks:Ljava/util/Map;

    .line 42
    .line 43
    check-cast p0, Ljava/util/WeakHashMap;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroid/window/IRemoteTransitionFinishedCallback;

    .line 50
    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-interface {p0, v2, v1}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_1
    return-void

    .line 64
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    and-int/lit16 p1, p1, 0x800

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelKeyguardExitAnimation()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    .line 22
    .line 23
    invoke-interface {p1}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p4}, Lcom/android/systemui/keyguard/KeyguardService$1;->finish(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
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
    move-object/from16 v3, p3

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, "Starts IRemoteAnimationRunner: info="

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "KeyguardService"

    .line 24
    .line 25
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    sget-object v6, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static {v5, v6, v4, v7}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    new-array v12, v4, [Landroid/view/RemoteAnimationTarget;

    .line 36
    .line 37
    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    .line 38
    .line 39
    monitor-enter v5

    .line 40
    :try_start_0
    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    .line 41
    .line 42
    iget-object v8, v0, Lcom/android/systemui/keyguard/KeyguardService$1;->mCounterRotator:Lcom/android/wm/shell/util/CounterRotator;

    .line 43
    .line 44
    invoke-static {v2, v4, v3, v6, v8}, Lcom/android/systemui/keyguard/KeyguardService;->-$$Nest$smwrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/wm/shell/util/CounterRotator;)[Landroid/view/RemoteAnimationTarget;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    .line 49
    .line 50
    iget-object v8, v0, Lcom/android/systemui/keyguard/KeyguardService$1;->mCounterRotator:Lcom/android/wm/shell/util/CounterRotator;

    .line 51
    .line 52
    const/4 v9, 0x1

    .line 53
    invoke-static {v2, v9, v3, v6, v8}, Lcom/android/systemui/keyguard/KeyguardService;->-$$Nest$smwrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/wm/shell/util/CounterRotator;)[Landroid/view/RemoteAnimationTarget;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardService$1;->mFinishCallbacks:Ljava/util/Map;

    .line 58
    .line 59
    check-cast v6, Ljava/util/WeakHashMap;

    .line 60
    .line 61
    move-object/from16 v8, p4

    .line 62
    .line 63
    invoke-virtual {v6, v1, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const/high16 v8, 0x3f800000    # 1.0f

    .line 80
    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 88
    .line 89
    invoke-static {v6, v2}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    if-eqz v13, :cond_0

    .line 94
    .line 95
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v3, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget-object v5, v0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 104
    .line 105
    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 106
    .line 107
    iget-object v6, v0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    .line 108
    .line 109
    iget-object v13, v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->exitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

    .line 110
    .line 111
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-nez v6, :cond_2

    .line 116
    .line 117
    move v5, v4

    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_2
    iget-object v6, v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 121
    .line 122
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    if-eqz v13, :cond_4

    .line 127
    .line 128
    iget-boolean v6, v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    .line 129
    .line 130
    if-eqz v6, :cond_3

    .line 131
    .line 132
    iget-object v6, v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    .line 133
    .line 134
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Lcom/android/systemui/keyguard/KeyguardSurfaceController;

    .line 139
    .line 140
    check-cast v6, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    .line 141
    .line 142
    invoke-virtual {v6, v3}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->setKeyguardSurfaceVisible(Landroid/view/SurfaceControl$Transaction;)V

    .line 143
    .line 144
    .line 145
    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->wallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->hideLockOnlyLiveWallpaperImmediately()V

    .line 148
    .line 149
    .line 150
    :cond_3
    move v5, v9

    .line 151
    goto :goto_1

    .line 152
    :cond_4
    move v5, v4

    .line 153
    :goto_1
    if-eqz v5, :cond_9

    .line 154
    .line 155
    new-instance v6, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    array-length v13, v10

    .line 161
    move v14, v4

    .line 162
    :goto_2
    if-ge v14, v13, :cond_7

    .line 163
    .line 164
    aget-object v15, v10, v14

    .line 165
    .line 166
    iget v9, v15, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 167
    .line 168
    if-nez v9, :cond_5

    .line 169
    .line 170
    const/4 v9, 0x1

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    move v9, v4

    .line 173
    :goto_3
    if-eqz v9, :cond_6

    .line 174
    .line 175
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 179
    .line 180
    const/4 v9, 0x1

    .line 181
    goto :goto_2

    .line 182
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    .line 183
    .line 184
    const/16 v13, 0xa

    .line 185
    .line 186
    invoke-static {v6, v13}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-eqz v13, :cond_8

    .line 202
    .line 203
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    check-cast v13, Landroid/view/RemoteAnimationTarget;

    .line 208
    .line 209
    iget-object v13, v13, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 210
    .line 211
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-eqz v9, :cond_9

    .line 224
    .line 225
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    check-cast v9, Landroid/view/SurfaceControl;

    .line 230
    .line 231
    invoke-virtual {v3, v9, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_9
    :goto_6
    const/4 v6, 0x0

    .line 236
    if-nez v5, :cond_b

    .line 237
    .line 238
    array-length v5, v10

    .line 239
    move v8, v4

    .line 240
    :goto_7
    if-ge v8, v5, :cond_b

    .line 241
    .line 242
    aget-object v9, v10, v8

    .line 243
    .line 244
    iget v13, v9, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 245
    .line 246
    if-eqz v13, :cond_a

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_a
    iget-object v9, v9, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 250
    .line 251
    invoke-virtual {v3, v9, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 252
    .line 253
    .line 254
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_b
    iget-boolean v5, v0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$lockscreenLiveWallpaperEnabled:Z

    .line 258
    .line 259
    if-eqz v5, :cond_d

    .line 260
    .line 261
    array-length v5, v11

    .line 262
    move v8, v4

    .line 263
    :goto_9
    if-ge v8, v5, :cond_d

    .line 264
    .line 265
    aget-object v9, v11, v8

    .line 266
    .line 267
    iget v13, v9, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 268
    .line 269
    if-eqz v13, :cond_c

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_c
    iget-object v9, v9, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 273
    .line 274
    invoke-virtual {v3, v9, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 275
    .line 276
    .line 277
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 281
    .line 282
    .line 283
    iget-object v8, v0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    .line 284
    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    const/4 v5, 0x7

    .line 294
    if-eq v3, v5, :cond_13

    .line 295
    .line 296
    and-int/lit16 v2, v2, 0x100

    .line 297
    .line 298
    if-eqz v2, :cond_e

    .line 299
    .line 300
    goto :goto_b

    .line 301
    :cond_e
    const/16 v2, 0x8

    .line 302
    .line 303
    if-ne v3, v2, :cond_11

    .line 304
    .line 305
    array-length v2, v10

    .line 306
    if-lez v2, :cond_f

    .line 307
    .line 308
    aget-object v2, v10, v4

    .line 309
    .line 310
    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 311
    .line 312
    if-eqz v2, :cond_f

    .line 313
    .line 314
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 315
    .line 316
    const/4 v3, 0x5

    .line 317
    if-ne v2, v3, :cond_f

    .line 318
    .line 319
    const/4 v4, 0x1

    .line 320
    :cond_f
    if-eqz v4, :cond_10

    .line 321
    .line 322
    const/16 v4, 0x21

    .line 323
    .line 324
    goto :goto_d

    .line 325
    :cond_10
    const/16 v4, 0x16

    .line 326
    .line 327
    goto :goto_d

    .line 328
    :cond_11
    const/16 v2, 0x9

    .line 329
    .line 330
    if-ne v3, v2, :cond_12

    .line 331
    .line 332
    const/16 v4, 0x17

    .line 333
    .line 334
    goto :goto_d

    .line 335
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v5, "Unexpected transit type: "

    .line 338
    .line 339
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    const-string v3, "KeyguardService"

    .line 350
    .line 351
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 355
    .line 356
    invoke-static {v3, v5, v2, v7}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    goto :goto_d

    .line 360
    :cond_13
    :goto_b
    array-length v2, v10

    .line 361
    if-nez v2, :cond_14

    .line 362
    .line 363
    const/16 v2, 0x15

    .line 364
    .line 365
    goto :goto_c

    .line 366
    :cond_14
    const/16 v2, 0x14

    .line 367
    .line 368
    :goto_c
    move v4, v2

    .line 369
    :goto_d
    move v9, v4

    .line 370
    new-instance v13, Lcom/android/systemui/keyguard/KeyguardService$1$1;

    .line 371
    .line 372
    invoke-direct {v13, v0, v1}, Lcom/android/systemui/keyguard/KeyguardService$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardService$1;Landroid/os/IBinder;)V

    .line 373
    .line 374
    .line 375
    invoke-interface/range {v8 .. v13}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :catchall_0
    move-exception v0

    .line 380
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    throw v0
.end method
