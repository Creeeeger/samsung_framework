.class public final Lcom/android/systemui/user/domain/interactor/UserInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activityManager:Landroid/app/ActivityManager;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final applicationContext:Landroid/content/Context;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final callbackMutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final callbacks:Ljava/util/Set;

.field public final dialogDismissRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dialogShowRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

.field public final headlessSystemUserMode:Lcom/android/systemui/user/domain/interactor/HeadlessSystemUserMode;

.field public final isGuestUserAutoCreated:Z

.field public final isGuestUserResetting:Z

.field public final isStatusBarUserChipEnabled:Z

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final manager:Landroid/os/UserManager;

.field public final refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

.field public final repository:Lcom/android/systemui/user/data/repository/UserRepository;

.field public final selectedUserRecord:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userInfos:Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;

.field public final userRecords:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/flags/FeatureFlags;Landroid/os/UserManager;Lcom/android/systemui/user/domain/interactor/HeadlessSystemUserMode;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/app/ActivityManager;Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object/from16 v2, p8

    .line 4
    .line 5
    move-object/from16 v3, p15

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    move-object v4, p1

    .line 11
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 14
    .line 15
    move-object v4, p3

    .line 16
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 17
    .line 18
    move-object v4, p4

    .line 19
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 20
    .line 21
    move-object/from16 v4, p5

    .line 22
    .line 23
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 24
    .line 25
    move-object/from16 v4, p6

    .line 26
    .line 27
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->manager:Landroid/os/UserManager;

    .line 28
    .line 29
    move-object/from16 v4, p7

    .line 30
    .line 31
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->headlessSystemUserMode:Lcom/android/systemui/user/domain/interactor/HeadlessSystemUserMode;

    .line 32
    .line 33
    iput-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 34
    .line 35
    move-object/from16 v4, p12

    .line 36
    .line 37
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 38
    .line 39
    move-object/from16 v4, p13

    .line 40
    .line 41
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->activityManager:Landroid/app/ActivityManager;

    .line 42
    .line 43
    move-object/from16 v4, p14

    .line 44
    .line 45
    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 46
    .line 47
    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 48
    .line 49
    move-object/from16 v5, p16

    .line 50
    .line 51
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 52
    .line 53
    move-object/from16 v5, p17

    .line 54
    .line 55
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 56
    .line 57
    sget-object v5, Lkotlinx/coroutines/sync/MutexKt;->UNLOCK_FAIL:Lkotlinx/coroutines/internal/Symbol;

    .line 58
    .line 59
    new-instance v5, Lkotlinx/coroutines/sync/MutexImpl;

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-direct {v5, v6}, Lkotlinx/coroutines/sync/MutexImpl;-><init>(Z)V

    .line 63
    .line 64
    .line 65
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->callbackMutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 66
    .line 67
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->callbacks:Ljava/util/Set;

    .line 73
    .line 74
    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 75
    .line 76
    iget-object v5, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userInfos:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 77
    .line 78
    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;

    .line 79
    .line 80
    invoke-direct {v6, v5}, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 81
    .line 82
    .line 83
    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->userInfos:Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;

    .line 84
    .line 85
    iget-object v5, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->getActions()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    iget-object v8, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 92
    .line 93
    new-instance v9, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;

    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    invoke-direct {v9, p0, v10}, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v6, v5, v7, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$2;

    .line 104
    .line 105
    invoke-direct {v6, p0, v10}, Lcom/android/systemui/user/domain/interactor/UserInteractor$userRecords$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 106
    .line 107
    .line 108
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 109
    .line 110
    invoke-direct {v7, v5, v6}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    .line 111
    .line 112
    .line 113
    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 119
    .line 120
    new-instance v6, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-static {v7, v2, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->userRecords:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 130
    .line 131
    iget-object v6, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 132
    .line 133
    new-instance v7, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$2;

    .line 134
    .line 135
    invoke-direct {v7, v6, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/domain/interactor/UserInteractor;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v7, v2, v5, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->selectedUserRecord:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 143
    .line 144
    iget-boolean v5, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    .line 145
    .line 146
    iput-boolean v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserAutoCreated:Z

    .line 147
    .line 148
    iget-boolean v3, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserResetting:Z

    .line 149
    .line 150
    iput-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserResetting:Z

    .line 151
    .line 152
    iget-boolean v3, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isStatusBarUserChipEnabled:Z

    .line 153
    .line 154
    iput-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isStatusBarUserChipEnabled:Z

    .line 155
    .line 156
    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 161
    .line 162
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->dialogShowRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 167
    .line 168
    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 173
    .line 174
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->dialogDismissRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 179
    .line 180
    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$keyguardUpdateMonitorCallback$1;

    .line 181
    .line 182
    invoke-direct {v3, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;)V

    .line 183
    .line 184
    .line 185
    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 186
    .line 187
    invoke-virtual/range {p14 .. p14}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->refreshIfNotPaused()V

    .line 188
    .line 189
    .line 190
    move-object/from16 v4, p9

    .line 191
    .line 192
    iget-object v4, v4, Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;->callState:Lkotlinx/coroutines/flow/Flow;

    .line 193
    .line 194
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserInteractor$1;

    .line 199
    .line 200
    invoke-direct {v5, p0, v10}, Lcom/android/systemui/user/domain/interactor/UserInteractor$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 201
    .line 202
    .line 203
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 204
    .line 205
    invoke-direct {v6, v4, v5}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v6, v2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 209
    .line 210
    .line 211
    new-instance v4, Landroid/content/IntentFilter;

    .line 212
    .line 213
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v5, "android.intent.action.USER_ADDED"

    .line 217
    .line 218
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v5, "android.intent.action.USER_REMOVED"

    .line 222
    .line 223
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v5, "android.intent.action.USER_INFO_CHANGED"

    .line 227
    .line 228
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v5, "android.intent.action.USER_SWITCHED"

    .line 232
    .line 233
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v5, "android.intent.action.USER_STOPPED"

    .line 237
    .line 238
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v5, "android.intent.action.USER_UNLOCKED"

    .line 242
    .line 243
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 247
    .line 248
    sget-object v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$3;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserInteractor$3;

    .line 249
    .line 250
    const/16 v7, 0xc

    .line 251
    .line 252
    move-object/from16 v8, p10

    .line 253
    .line 254
    invoke-static {v8, v4, v5, v6, v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    iget-object v1, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 259
    .line 260
    invoke-static {v1, v10}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$UserAndTiles;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserInteractor$4;

    .line 265
    .line 266
    invoke-direct {v5, v10}, Lcom/android/systemui/user/domain/interactor/UserInteractor$4;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 267
    .line 268
    .line 269
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 270
    .line 271
    invoke-direct {v6, v4, v1, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 272
    .line 273
    .line 274
    new-instance v1, Lcom/android/systemui/user/domain/interactor/UserInteractor$5;

    .line 275
    .line 276
    invoke-direct {v1, p0, v10}, Lcom/android/systemui/user/domain/interactor/UserInteractor$5;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 277
    .line 278
    .line 279
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 280
    .line 281
    invoke-direct {v0, v6, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 285
    .line 286
    .line 287
    move-object/from16 v0, p11

    .line 288
    .line 289
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 290
    .line 291
    .line 292
    return-void
.end method

.method public static final access$onBroadcastReceived(Lcom/android/systemui/user/domain/interactor/UserInteractor;Landroid/content/Intent;Landroid/content/pm/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p3, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p3

    .line 9
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;

    .line 10
    .line 11
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->label:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->label:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    .line 32
    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->label:I

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 43
    .line 44
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    if-eqz p3, :cond_c

    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const v5, -0xc02da2e

    .line 71
    .line 72
    .line 73
    if-eq v2, v5, :cond_b

    .line 74
    .line 75
    const v5, 0x31af1c32

    .line 76
    .line 77
    .line 78
    const/16 v6, -0x2710

    .line 79
    .line 80
    const-string v7, "android.intent.extra.user_handle"

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    if-eq v2, v5, :cond_8

    .line 84
    .line 85
    const v5, 0x392cb822

    .line 86
    .line 87
    .line 88
    if-eq v2, v5, :cond_3

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_3
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 93
    .line 94
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    if-nez p3, :cond_4

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->dismissDialog()V

    .line 103
    .line 104
    .line 105
    const/4 p3, -0x1

    .line 106
    invoke-virtual {p1, v7, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p2, :cond_5

    .line 111
    .line 112
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 113
    .line 114
    if-ne p2, p1, :cond_5

    .line 115
    .line 116
    move v8, v4

    .line 117
    :cond_5
    if-nez v8, :cond_7

    .line 118
    .line 119
    new-instance p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$notifyCallbacks$1;

    .line 120
    .line 121
    invoke-direct {p2, p0, v3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$notifyCallbacks$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 122
    .line 123
    .line 124
    const/4 p3, 0x3

    .line 125
    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 126
    .line 127
    invoke-static {v2, v3, v3, p2, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 128
    .line 129
    .line 130
    new-instance p2, Landroid/content/Intent;

    .line 131
    .line 132
    const-class p3, Lcom/android/systemui/SystemUISecondaryUserService;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-direct {p2, v2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .line 138
    .line 139
    iget-object p3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 140
    .line 141
    check-cast p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 142
    .line 143
    iget v5, p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->secondaryUserId:I

    .line 144
    .line 145
    if-eq v5, v6, :cond_6

    .line 146
    .line 147
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v2, p2, v5}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 152
    .line 153
    .line 154
    iput v6, p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->secondaryUserId:I

    .line 155
    .line 156
    :cond_6
    if-eqz p1, :cond_7

    .line 157
    .line 158
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v2, p2, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 163
    .line 164
    .line 165
    iput p1, p3, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->secondaryUserId:I

    .line 166
    .line 167
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 168
    .line 169
    iget-boolean p2, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    .line 170
    .line 171
    if-eqz p2, :cond_c

    .line 172
    .line 173
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->L$0:Ljava/lang/Object;

    .line 174
    .line 175
    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$onBroadcastReceived$1;->label:I

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->guaranteePresent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    if-ne p1, v1, :cond_c

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_8
    const-string p2, "android.intent.action.USER_UNLOCKED"

    .line 185
    .line 186
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-nez p2, :cond_9

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_9
    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-nez p1, :cond_a

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_a
    move v4, v8

    .line 201
    goto :goto_1

    .line 202
    :cond_b
    const-string p1, "android.intent.action.USER_INFO_CHANGED"

    .line 203
    .line 204
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_c
    :goto_1
    if-eqz v4, :cond_d

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    new-instance p1, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$unpauseAndRefresh$1;

    .line 215
    .line 216
    invoke-direct {p1, p0, v3}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$unpauseAndRefresh$1;-><init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V

    .line 217
    .line 218
    .line 219
    iget-object p2, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 220
    .line 221
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 222
    .line 223
    const/4 p3, 0x2

    .line 224
    invoke-static {p2, p0, v3, p1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 225
    .line 226
    .line 227
    :cond_d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 228
    .line 229
    :goto_2
    return-object v1
.end method

.method public static final access$toRecord(Lcom/android/systemui/user/domain/interactor/UserInteractor;Landroid/content/pm/UserInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;

    iget v5, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->result:Ljava/lang/Object;

    .line 3
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v6, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v8, :cond_1

    iget v0, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->I$0:I

    iget-object v1, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserManager;

    iget-object v2, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v4, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v4

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    sget-object v3, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    .line 6
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v2, :cond_3

    move v3, v8

    goto :goto_1

    :cond_3
    move v3, v7

    .line 7
    :goto_1
    iput-object v1, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$0:Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    iput-object v6, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$1:Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->manager:Landroid/os/UserManager;

    iput-object v9, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->L$2:Ljava/lang/Object;

    iput v3, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->I$0:I

    iput v8, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->label:I

    .line 8
    invoke-virtual {v0, v2, v4, v7}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_4

    goto/16 :goto_9

    :cond_4
    move-object v11, v1

    move-object v2, v6

    move-object v1, v9

    move/from16 v23, v3

    move-object v3, v0

    move/from16 v0, v23

    .line 9
    :goto_2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v0, :cond_5

    move v14, v8

    goto :goto_3

    :cond_5
    move v14, v7

    .line 10
    :goto_3
    sget-object v0, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    .line 11
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v13

    .line 12
    new-instance v5, Lcom/android/systemui/user/data/source/UserRecord;

    .line 13
    sget-object v0, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 15
    :cond_6
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_4
    const/4 v0, 0x0

    :goto_5
    move-object v12, v0

    goto :goto_6

    .line 16
    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07080e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 17
    invoke-static {v0, v1, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    :goto_6
    const/4 v15, 0x0

    const/16 v16, 0x0

    if-nez v3, :cond_9

    if-eqz v14, :cond_8

    if-nez v13, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v17, v7

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v17, v8

    :goto_8
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3b0

    const/16 v22, 0x0

    move-object v10, v5

    .line 18
    invoke-direct/range {v10 .. v22}, Lcom/android/systemui/user/data/source/UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_9
    return-object v5
.end method

.method public static final access$toRecord(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/user/shared/model/UserActionModel;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    .line 19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of v3, v2, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;

    iget v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->result:Ljava/lang/Object;

    .line 21
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 22
    iget v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-boolean v0, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->Z$0:Z

    iget v1, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->I$0:I

    iget-object v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/user/shared/model/UserActionModel;

    iget-object v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v3, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v13, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iput-object v0, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$0:Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    iput-object v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$1:Ljava/lang/Object;

    move-object/from16 v2, p1

    iput-object v2, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->L$2:Ljava/lang/Object;

    iput v1, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->I$0:I

    move/from16 v7, p3

    iput-boolean v7, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->Z$0:Z

    iput v6, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$2;->label:I

    invoke-virtual {v0, v1, v3, v6}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_3

    goto/16 :goto_9

    :cond_3
    move v13, v7

    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 24
    iget-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserAutoCreated:Z

    if-eqz v3, :cond_4

    iget-boolean v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserResetting:Z

    if-nez v0, :cond_5

    :cond_4
    move v14, v6

    goto :goto_2

    :cond_5
    move v14, v4

    .line 25
    :goto_2
    sget-object v0, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    .line 26
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_6

    move v10, v6

    goto :goto_3

    :cond_6
    move v10, v4

    .line 27
    :goto_3
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_7

    move v12, v6

    goto :goto_4

    :cond_7
    move v12, v4

    .line 28
    :goto_4
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_8

    move v15, v6

    goto :goto_5

    :cond_8
    move v15, v4

    .line 29
    :goto_5
    sget-object v0, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "no_add_user"

    .line 30
    invoke-static {v5, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    const/4 v7, 0x0

    if-nez v3, :cond_9

    move-object/from16 v16, v7

    goto :goto_7

    .line 31
    :cond_9
    invoke-static {v5, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    move-object v3, v7

    :goto_6
    move-object/from16 v16, v3

    .line 32
    :goto_7
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_b

    move/from16 v17, v6

    goto :goto_8

    :cond_b
    move/from16 v17, v4

    .line 33
    :goto_8
    new-instance v4, Lcom/android/systemui/user/data/source/UserRecord;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v18, 0xb

    const/16 v19, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v19}, Lcom/android/systemui/user/data/source/UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_9
    return-object v4
.end method

.method public static final access$toUserModels(Lcom/android/systemui/user/domain/interactor/UserInteractor;Ljava/util/List;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    instance-of v3, v2, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    move-object v3, v2

    .line 15
    check-cast v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;

    .line 16
    .line 17
    iget v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->label:I

    .line 18
    .line 19
    const/high16 v5, -0x80000000

    .line 20
    .line 21
    and-int v6, v4, v5

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    sub-int/2addr v4, v5

    .line 26
    iput v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->label:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;

    .line 30
    .line 31
    invoke-direct {v3, v0, v2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v2, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->result:Ljava/lang/Object;

    .line 35
    .line 36
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 37
    .line 38
    iget v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->label:I

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x1

    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    if-eq v5, v8, :cond_2

    .line 46
    .line 47
    if-ne v5, v6, :cond_1

    .line 48
    .line 49
    iget-boolean v0, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$1:Z

    .line 50
    .line 51
    iget-boolean v1, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$0:Z

    .line 52
    .line 53
    iget v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->I$0:I

    .line 54
    .line 55
    iget-object v6, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$2:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v6, Ljava/util/Iterator;

    .line 58
    .line 59
    iget-object v7, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v7, Ljava/util/Collection;

    .line 62
    .line 63
    iget-object v9, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v9, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 66
    .line 67
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object v10, v9

    .line 71
    move v9, v8

    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_2
    iget-boolean v0, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$0:Z

    .line 83
    .line 84
    iget v1, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->I$0:I

    .line 85
    .line 86
    iget-object v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v5, Ljava/util/List;

    .line 89
    .line 90
    iget-object v9, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v9, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 93
    .line 94
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    move-object/from16 v16, v5

    .line 98
    .line 99
    move v5, v0

    .line 100
    move-object v0, v9

    .line 101
    move-object v9, v2

    .line 102
    move-object/from16 v2, v16

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    move-object/from16 v2, p1

    .line 111
    .line 112
    iput-object v2, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    .line 113
    .line 114
    iput v1, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->I$0:I

    .line 115
    .line 116
    move/from16 v5, p3

    .line 117
    .line 118
    iput-boolean v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$0:Z

    .line 119
    .line 120
    iput v8, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->label:I

    .line 121
    .line 122
    invoke-virtual {v0, v1, v3, v7}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    if-ne v9, v4, :cond_4

    .line 127
    .line 128
    goto/16 :goto_a

    .line 129
    .line 130
    :cond_4
    :goto_1
    check-cast v9, Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    new-instance v10, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$$inlined$sortedBy$1;

    .line 137
    .line 138
    invoke-direct {v10}, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$$inlined$sortedBy$1;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    new-instance v10, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    move-object/from16 v16, v10

    .line 155
    .line 156
    move-object v10, v0

    .line 157
    move v0, v9

    .line 158
    move v9, v8

    .line 159
    move v8, v7

    .line 160
    move-object/from16 v7, v16

    .line 161
    .line 162
    move/from16 v17, v5

    .line 163
    .line 164
    move v5, v1

    .line 165
    move/from16 v1, v17

    .line 166
    .line 167
    move/from16 v18, v6

    .line 168
    .line 169
    move-object v6, v2

    .line 170
    move/from16 v2, v18

    .line 171
    .line 172
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_13

    .line 177
    .line 178
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    check-cast v11, Landroid/content/pm/UserInfo;

    .line 183
    .line 184
    iput-object v10, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v7, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    .line 187
    .line 188
    iput-object v6, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->L$2:Ljava/lang/Object;

    .line 189
    .line 190
    iput v5, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->I$0:I

    .line 191
    .line 192
    iput-boolean v1, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$0:Z

    .line 193
    .line 194
    iput-boolean v0, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->Z$1:Z

    .line 195
    .line 196
    iput v2, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModels$1;->label:I

    .line 197
    .line 198
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    if-nez v1, :cond_c

    .line 202
    .line 203
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isPrimary()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_c

    .line 208
    .line 209
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    .line 210
    .line 211
    if-eqz v2, :cond_b

    .line 212
    .line 213
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->supportsMultipleUsers()Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    iget-object v12, v10, Lcom/android/systemui/user/domain/interactor/UserInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 218
    .line 219
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneRegistered()Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->hasTwoPhoneAccount()Z

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    if-eqz v2, :cond_5

    .line 228
    .line 229
    if-eqz v13, :cond_5

    .line 230
    .line 231
    if-eqz v12, :cond_5

    .line 232
    .line 233
    move v8, v9

    .line 234
    :cond_5
    if-eqz v8, :cond_6

    .line 235
    .line 236
    const-string v14, "isOffTwoPhoneSetting: true [supportMultipleUsers:"

    .line 237
    .line 238
    const-string v15, " isTwoPhoneRegistered:"

    .line 239
    .line 240
    move/from16 p0, v1

    .line 241
    .line 242
    const-string v1, " hasTwoPhoneAccount:"

    .line 243
    .line 244
    invoke-static {v14, v2, v15, v13, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v2, "]"

    .line 252
    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    const-string v2, "UserInteractor"

    .line 261
    .line 262
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_6
    move/from16 p0, v1

    .line 267
    .line 268
    :goto_3
    xor-int/lit8 v1, v8, 0x1

    .line 269
    .line 270
    if-eqz v1, :cond_7

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_7
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-nez v1, :cond_8

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_8
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-nez v1, :cond_9

    .line 285
    .line 286
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_e

    .line 291
    .line 292
    :cond_9
    invoke-virtual {v10, v11, v5, v0, v3}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->toUserModel(Landroid/content/pm/UserInfo;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 297
    .line 298
    if-ne v1, v2, :cond_a

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_a
    check-cast v1, Lcom/android/systemui/user/shared/model/UserModel;

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_b
    move/from16 p0, v1

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_c
    move/from16 p0, v1

    .line 308
    .line 309
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-nez v1, :cond_d

    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_d
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_f

    .line 321
    .line 322
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_e

    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_e
    :goto_4
    const/4 v1, 0x0

    .line 330
    :goto_5
    move-object v2, v1

    .line 331
    goto :goto_8

    .line 332
    :cond_f
    :goto_6
    invoke-virtual {v10, v11, v5, v0, v3}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->toUserModel(Landroid/content/pm/UserInfo;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 337
    .line 338
    if-ne v1, v2, :cond_10

    .line 339
    .line 340
    :goto_7
    goto :goto_5

    .line 341
    :cond_10
    check-cast v1, Lcom/android/systemui/user/shared/model/UserModel;

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :goto_8
    if-ne v2, v4, :cond_11

    .line 345
    .line 346
    goto :goto_a

    .line 347
    :cond_11
    move/from16 v1, p0

    .line 348
    .line 349
    :goto_9
    check-cast v2, Lcom/android/systemui/user/shared/model/UserModel;

    .line 350
    .line 351
    if-eqz v2, :cond_12

    .line 352
    .line 353
    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    :cond_12
    const/4 v2, 0x2

    .line 357
    const/4 v8, 0x0

    .line 358
    goto/16 :goto_2

    .line 359
    .line 360
    :cond_13
    move-object v4, v7

    .line 361
    check-cast v4, Ljava/util/List;

    .line 362
    .line 363
    :goto_a
    return-object v4
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$addCallback$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v7, :cond_3

    .line 39
    .line 40
    if-eq v2, v5, :cond_2

    .line 41
    .line 42
    if-ne v2, v4, :cond_1

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    iget p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->I$0:I

    .line 58
    .line 59
    iget-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 62
    .line 63
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    iget-boolean p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->Z$0:Z

    .line 68
    .line 69
    iget p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->I$0:I

    .line 70
    .line 71
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 74
    .line 75
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$isHeadlessSystemUserMode$1;

    .line 83
    .line 84
    invoke-direct {p2, p0, v6}, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$isHeadlessSystemUserMode$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->I$0:I

    .line 90
    .line 91
    iput-boolean p3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->Z$0:Z

    .line 92
    .line 93
    iput v7, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 96
    .line 97
    invoke-static {v2, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-ne p2, v1, :cond_5

    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p3, :cond_8

    .line 111
    .line 112
    if-eqz p2, :cond_8

    .line 113
    .line 114
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->I$0:I

    .line 117
    .line 118
    iput v5, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isAnyUserUnlocked(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    if-ne p2, v1, :cond_6

    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_6
    move v8, p1

    .line 128
    move-object p1, p0

    .line 129
    move p0, v8

    .line 130
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_7

    .line 137
    .line 138
    move-object v8, p1

    .line 139
    move p1, p0

    .line 140
    move-object p0, v8

    .line 141
    goto :goto_3

    .line 142
    :cond_7
    move p2, v3

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    :goto_3
    move p2, v7

    .line 145
    move v8, p1

    .line 146
    move-object p1, p0

    .line 147
    move p0, v8

    .line 148
    :goto_4
    if-eqz p2, :cond_a

    .line 149
    .line 150
    iget-object p2, p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 151
    .line 152
    new-instance p3, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;

    .line 153
    .line 154
    invoke-direct {p3, p1, p0, v6}, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;ILkotlin/coroutines/Continuation;)V

    .line 155
    .line 156
    .line 157
    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$1;->label:I

    .line 160
    .line 161
    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    if-ne p2, v1, :cond_9

    .line 166
    .line 167
    return-object v1

    .line 168
    :cond_9
    :goto_5
    check-cast p2, Ljava/lang/Number;

    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-nez p0, :cond_a

    .line 175
    .line 176
    move v3, v7

    .line 177
    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0
.end method

.method public final dismissDialog()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final executeAction(Lcom/android/systemui/user/shared/model/UserActionModel;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq p1, v2, :cond_3

    .line 14
    .line 15
    const/4 p2, 0x2

    .line 16
    iget-object v3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 17
    .line 18
    if-eq p1, p2, :cond_2

    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 21
    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x4

    .line 25
    if-eq p1, p0, :cond_0

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 30
    .line 31
    const-string p1, "android.settings.USER_SETTINGS"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    sget-object p1, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->CREATE_RESTRICTED_USER_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    .line 42
    .line 43
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->dismissDialog()V

    .line 47
    .line 48
    .line 49
    new-instance p0, Landroid/content/Intent;

    .line 50
    .line 51
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string p1, "android.os.action.CREATE_SUPERVISED_USER"

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const p1, 0x104039a

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const/high16 p1, 0x10000000

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-interface {p2, p0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    sget-object p1, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->CREATE_USER_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    .line 82
    .line 83
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 87
    .line 88
    check-cast p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->dismissDialog()V

    .line 95
    .line 96
    .line 97
    iget-object v4, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 102
    .line 103
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 106
    .line 107
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 108
    .line 109
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 110
    .line 111
    sget p2, Lcom/android/systemui/user/CreateUserActivity;->$r8$clinit:I

    .line 112
    .line 113
    new-instance v5, Landroid/content/Intent;

    .line 114
    .line 115
    const-class p2, Lcom/android/systemui/user/CreateUserActivity;

    .line 116
    .line 117
    invoke-direct {v5, v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .line 119
    .line 120
    const/high16 p2, 0x14000000

    .line 121
    .line 122
    invoke-virtual {v5, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    const-string p2, "extra_is_keyguard_showing"

    .line 126
    .line 127
    invoke-virtual {v5, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    const/4 v6, 0x1

    .line 131
    const/4 v7, 0x0

    .line 132
    const/4 v8, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-interface/range {v4 .. v9}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    sget-object p1, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->CREATE_GUEST_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    .line 142
    .line 143
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 144
    .line 145
    .line 146
    new-instance v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$1;

    .line 147
    .line 148
    invoke-direct {v4, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$1;-><init>(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$2;

    .line 152
    .line 153
    invoke-direct {v5, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$2;-><init>(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$3;

    .line 157
    .line 158
    invoke-direct {v6, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$executeAction$3;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 159
    .line 160
    .line 161
    iget-object v3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 162
    .line 163
    iget-object p0, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 164
    .line 165
    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createAndSwitchTo$1;

    .line 166
    .line 167
    const/4 v7, 0x0

    .line 168
    move-object v2, p1

    .line 169
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createAndSwitchTo$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 170
    .line 171
    .line 172
    const/4 p2, 0x0

    .line 173
    invoke-static {p0, p2, p2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 174
    .line 175
    .line 176
    :goto_0
    return-void
.end method

.method public final exitGuestUser(IIZ)V
    .locals 9

    .line 1
    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$1;

    .line 2
    .line 3
    invoke-direct {v5, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$1;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$2;

    .line 7
    .line 8
    invoke-direct {v6, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$2;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v7, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$3;

    .line 12
    .line 13
    invoke-direct {v7, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$exitGuestUser$3;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 19
    .line 20
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    .line 27
    .line 28
    const-string v1, "User requesting to start a new session ("

    .line 29
    .line 30
    const-string v2, "GuestUserInteractor"

    .line 31
    .line 32
    if-eq v0, p1, :cond_0

    .line 33
    .line 34
    const-string p0, ") is not current user ("

    .line 35
    .line 36
    const-string p2, ")"

    .line 37
    .line 38
    invoke-static {v1, p1, p0, v0, p2}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, ") is not a guest"

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    move-object v0, p1

    .line 77
    move-object v1, p0

    .line 78
    move v2, p2

    .line 79
    move v4, p3

    .line 80
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;ILandroid/content/pm/UserInfo;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 81
    .line 82
    .line 83
    const/4 p2, 0x3

    .line 84
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 85
    .line 86
    const/4 p3, 0x0

    .line 87
    invoke-static {p0, p3, p3, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method

.method public final getActions()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    .line 12
    .line 13
    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/user/domain/interactor/UserInteractor$actions$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->userInfos:Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;

    .line 20
    .line 21
    invoke-static {v1, p0, v0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getUserImage(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->I$0:I

    .line 37
    .line 38
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 60
    .line 61
    const p1, 0x7f0807e1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string p1, "Required value was null."

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_4
    new-instance p2, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$userIcon$1;

    .line 84
    .line 85
    const/4 p3, 0x0

    .line 86
    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$userIcon$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;ILkotlin/coroutines/Continuation;)V

    .line 87
    .line 88
    .line 89
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->I$0:I

    .line 92
    .line 93
    iput v3, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$getUserImage$1;->label:I

    .line 94
    .line 95
    iget-object p3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 96
    .line 97
    invoke-static {p3, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-ne p2, v1, :cond_5

    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_5
    :goto_1
    check-cast p2, Landroid/graphics/Bitmap;

    .line 105
    .line 106
    if-eqz p2, :cond_6

    .line 107
    .line 108
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 109
    .line 110
    invoke-direct {p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const/4 p2, 0x0

    .line 121
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0
.end method

.method public final getUsers()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 8
    .line 9
    new-instance v2, Lcom/android/systemui/user/domain/interactor/UserInteractor$users$1;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$users$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->userInfos:Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$1;

    .line 16
    .line 17
    invoke-static {p0, v1, v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final isAnyUserUnlocked(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->L$1:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/util/Iterator;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->manager:Landroid/os/UserManager;

    .line 61
    .line 62
    invoke-virtual {p1, v4, v4, v4}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    move-object v8, p1

    .line 78
    move-object p1, p0

    .line 79
    move-object p0, v8

    .line 80
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_8

    .line 85
    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 91
    .line 92
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 93
    .line 94
    if-eqz v5, :cond_7

    .line 95
    .line 96
    iget-object v5, p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 97
    .line 98
    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$2$1;

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    invoke-direct {v6, p1, v2, v7}, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$2$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Landroid/content/pm/UserInfo;Lkotlin/coroutines/Continuation;)V

    .line 102
    .line 103
    .line 104
    iput-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->L$0:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->L$1:Ljava/lang/Object;

    .line 107
    .line 108
    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$isAnyUserUnlocked$1;->label:I

    .line 109
    .line 110
    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-ne v2, v1, :cond_5

    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_5
    move-object v8, v2

    .line 118
    move-object v2, p1

    .line 119
    move-object p1, v8

    .line 120
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    move-object p1, v2

    .line 129
    move v2, v4

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    move-object p1, v2

    .line 132
    :cond_7
    move v2, v3

    .line 133
    :goto_2
    if-eqz v2, :cond_4

    .line 134
    .line 135
    move v3, v4

    .line 136
    :cond_8
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0
.end method

.method public final removeCallback(Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeCallback$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeCallback$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeGuestUser(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;IILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    invoke-static {p0, v2, v2, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final selectUser(ILcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 12
    .line 13
    if-ne p1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    .line 22
    .line 23
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 24
    .line 25
    iget v6, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->lastSelectedNonGuestUserId:I

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    iget-object v0, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 32
    .line 33
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 36
    .line 37
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 38
    .line 39
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 40
    .line 41
    new-instance v9, Lcom/android/systemui/user/domain/interactor/UserInteractor$selectUser$1;

    .line 42
    .line 43
    invoke-direct {v9, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$selectUser$1;-><init>(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move-object v4, p1

    .line 47
    move-object v10, p2

    .line 48
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;-><init>(IIZZLkotlin/jvm/functions/Function3;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    new-instance v0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    .line 62
    .line 63
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    iget-object v1, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 70
    .line 71
    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 74
    .line 75
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 76
    .line 77
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 78
    .line 79
    new-instance v9, Lcom/android/systemui/user/domain/interactor/UserInteractor$selectUser$2;

    .line 80
    .line 81
    invoke-direct {v9, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor$selectUser$2;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    move-object v4, v0

    .line 85
    move v6, p1

    .line 86
    move-object v10, p2

    .line 87
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;-><init>(IIZZLkotlin/jvm/functions/Function3;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    if-eqz p2, :cond_2

    .line 95
    .line 96
    check-cast p2, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->dismiss()V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->switchUser(I)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->_dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final showUserSwitcher(Lcom/android/systemui/animation/Expandable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherFullscreenDialog;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherFullscreenDialog;-><init>(Lcom/android/systemui/animation/Expandable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherDialog;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherDialog;-><init>(Lcom/android/systemui/animation/Expandable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final switchUser(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    new-instance v2, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;-><init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 13
    .line 14
    invoke-static {v1, v0, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->activityManager:Landroid/app/ActivityManager;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string p1, "UserInteractor"

    .line 25
    .line 26
    const-string v0, "Couldn\'t switch user."

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final toUserModel(Landroid/content/pm/UserInfo;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

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
    move-object/from16 v3, p4

    .line 8
    .line 9
    instance-of v4, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;

    .line 15
    .line 16
    iget v5, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v6, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->label:I

    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x1

    .line 42
    if-eqz v6, :cond_3

    .line 43
    .line 44
    if-eq v6, v9, :cond_2

    .line 45
    .line 46
    if-ne v6, v7, :cond_1

    .line 47
    .line 48
    iget v0, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$1:I

    .line 49
    .line 50
    iget v1, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$0:I

    .line 51
    .line 52
    iget-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->Z$0:Z

    .line 53
    .line 54
    iget-object v4, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Lcom/android/systemui/common/shared/model/Text;

    .line 57
    .line 58
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move v11, v0

    .line 62
    move-object v12, v4

    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_2
    iget v0, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$1:I

    .line 74
    .line 75
    iget v1, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$0:I

    .line 76
    .line 77
    iget-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->Z$0:Z

    .line 78
    .line 79
    iget-object v4, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, Lcom/android/systemui/common/shared/model/Text;

    .line 82
    .line 83
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    move v11, v0

    .line 87
    move v15, v2

    .line 88
    move-object v12, v4

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    .line 94
    .line 95
    move/from16 v6, p2

    .line 96
    .line 97
    if-ne v3, v6, :cond_4

    .line 98
    .line 99
    move v6, v9

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move v6, v8

    .line 102
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-eqz v10, :cond_7

    .line 107
    .line 108
    new-instance v7, Lcom/android/systemui/common/shared/model/Text$Loaded;

    .line 109
    .line 110
    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 111
    .line 112
    invoke-direct {v7, v1}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iput-object v7, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    .line 116
    .line 117
    iput-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->Z$0:Z

    .line 118
    .line 119
    iput v6, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$0:I

    .line 120
    .line 121
    iput v3, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$1:I

    .line 122
    .line 123
    iput v9, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->label:I

    .line 124
    .line 125
    invoke-virtual {v0, v3, v4, v9}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->getUserImage(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-ne v0, v5, :cond_5

    .line 130
    .line 131
    return-object v5

    .line 132
    :cond_5
    move v15, v2

    .line 133
    move v11, v3

    .line 134
    move v1, v6

    .line 135
    move-object v12, v7

    .line 136
    move-object v3, v0

    .line 137
    :goto_2
    move-object v13, v3

    .line 138
    check-cast v13, Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    new-instance v0, Lcom/android/systemui/user/shared/model/UserModel;

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    move v14, v9

    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move v14, v8

    .line 147
    :goto_3
    const/16 v16, 0x1

    .line 148
    .line 149
    move-object v10, v0

    .line 150
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/user/shared/model/UserModel;-><init>(ILcom/android/systemui/common/shared/model/Text;Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 151
    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_7
    new-instance v10, Lcom/android/systemui/common/shared/model/Text$Loaded;

    .line 155
    .line 156
    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 157
    .line 158
    invoke-direct {v10, v1}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iput-object v10, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->Z$0:Z

    .line 164
    .line 165
    iput v6, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$0:I

    .line 166
    .line 167
    iput v3, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->I$1:I

    .line 168
    .line 169
    iput v7, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor$toUserModel$1;->label:I

    .line 170
    .line 171
    invoke-virtual {v0, v3, v4, v8}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->getUserImage(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-ne v0, v5, :cond_8

    .line 176
    .line 177
    return-object v5

    .line 178
    :cond_8
    move v11, v3

    .line 179
    move v1, v6

    .line 180
    move-object v12, v10

    .line 181
    move-object v3, v0

    .line 182
    :goto_4
    move-object v13, v3

    .line 183
    check-cast v13, Landroid/graphics/drawable/Drawable;

    .line 184
    .line 185
    if-nez v2, :cond_a

    .line 186
    .line 187
    if-eqz v1, :cond_9

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    move v15, v8

    .line 191
    goto :goto_6

    .line 192
    :cond_a
    :goto_5
    move v15, v9

    .line 193
    :goto_6
    new-instance v0, Lcom/android/systemui/user/shared/model/UserModel;

    .line 194
    .line 195
    if-eqz v1, :cond_b

    .line 196
    .line 197
    move v14, v9

    .line 198
    goto :goto_7

    .line 199
    :cond_b
    move v14, v8

    .line 200
    :goto_7
    const/16 v16, 0x0

    .line 201
    .line 202
    move-object v10, v0

    .line 203
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/user/shared/model/UserModel;-><init>(ILcom/android/systemui/common/shared/model/Text;Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 204
    .line 205
    .line 206
    :goto_8
    return-object v0
.end method
