.class public final Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController;


# instance fields
.field public final binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field public final context:Landroid/content/Context;

.field public final dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

.field public final foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

.field public final foldOpenModeListeners:Ljava/util/List;

.field public foldOpenState:I

.field public foldState:I

.field public handler:Landroid/os/Handler;

.field public final highRankedStateListeners:Ljava/util/List;

.field public volatile initShowTime:J

.field public final looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public final normalRankedStateListeners:Ljava/util/List;

.field public final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final viewControllerLazy:Ldagger/Lazy;

.field public final viewMediator$delegate:Lkotlin/Lazy;

.field public final viewMediatorHelper$delegate:Lkotlin/Lazy;

.field public final viewMediatorLazy:Ldagger/Lazy;

.field public wakeReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;",
            "Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewControllerLazy:Ldagger/Lazy;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorLazy:Ldagger/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$viewMediator$2;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$viewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediator$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$viewMediatorHelper$2;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$viewMediatorHelper$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldState:I

    .line 44
    .line 45
    new-instance p1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->highRankedStateListeners:Ljava/util/List;

    .line 51
    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->normalRankedStateListeners:Ljava/util/List;

    .line 58
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenModeListeners:Ljava/util/List;

    .line 65
    .line 66
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 67
    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$1;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    move-result p0

    return p0
.end method

.method public final addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z
    .locals 3

    const/16 v0, 0x3e8

    if-lt p2, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->highRankedStateListeners:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->normalRankedStateListeners:Ljava/util/List;

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/RankedStateListener;

    .line 5
    iget-object v2, v1, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    .line 6
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_3
    new-instance v0, Lcom/android/systemui/keyguard/RankedStateListener;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/keyguard/RankedStateListener;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_4

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$addCallback$lambda$9$$inlined$sortBy$1;

    invoke-direct {p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$addCallback$lambda$9$$inlined$sortBy$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    return p2
.end method

.method public final changeFoldState(Z)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    xor-int/2addr p1, v0

    .line 3
    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldState:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    if-eq v1, v3, :cond_1

    .line 8
    .line 9
    if-eq v1, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v4, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v4, v0

    .line 15
    :goto_1
    if-ne v1, v3, :cond_2

    .line 16
    .line 17
    move v1, v0

    .line 18
    goto :goto_2

    .line 19
    :cond_2
    move v1, v2

    .line 20
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    .line 23
    .line 24
    check-cast v6, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    .line 25
    .line 26
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;->isDebug()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_6

    .line 31
    .line 32
    if-eq p1, v3, :cond_5

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    if-eq p1, v0, :cond_3

    .line 37
    .line 38
    const-string v0, ""

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    const-string v0, "FOLD_OPEN"

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_4
    const-string v0, "FOLD_CLOSE"

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_5
    const-string v0, "FOLD_NONE"

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v6, "changeFoldState: foldState="

    .line 57
    .line 58
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", changed="

    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v5, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const-string v3, "KeyguardFoldController"

    .line 82
    .line 83
    invoke-static {v3, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    if-eqz v4, :cond_d

    .line 87
    .line 88
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldState:I

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    .line 91
    .line 92
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;->isDebug()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 101
    .line 102
    const/4 v5, 0x2

    .line 103
    const-wide/16 v6, 0xa

    .line 104
    .line 105
    const-wide/16 v8, 0x14

    .line 106
    .line 107
    const-wide/16 v10, 0xbb8

    .line 108
    .line 109
    move-object v4, v0

    .line 110
    check-cast v4, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 111
    .line 112
    const/4 v12, 0x0

    .line 113
    const/4 v13, 0x0

    .line 114
    invoke-virtual/range {v4 .. v13}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    .line 115
    .line 116
    .line 117
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    .line 118
    .line 119
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    .line 125
    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    .line 129
    .line 130
    move-object v4, v0

    .line 131
    check-cast v4, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    .line 132
    .line 133
    const/4 v5, 0x4

    .line 134
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    const-wide/16 v8, 0xbb8

    .line 138
    .line 139
    sget-wide v6, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    .line 140
    .line 141
    const-wide/32 v10, 0xf4240

    .line 142
    .line 143
    .line 144
    div-long/2addr v6, v10

    .line 145
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->startMonitoring(IJJ)Z

    .line 146
    .line 147
    .line 148
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->handler:Landroid/os/Handler;

    .line 149
    .line 150
    if-nez v0, :cond_9

    .line 151
    .line 152
    const/4 v0, 0x0

    .line 153
    :cond_9
    const/16 v4, 0x3eb

    .line 154
    .line 155
    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_a

    .line 160
    .line 161
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 162
    .line 163
    check-cast v5, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    const-string/jumbo v5, "notifyFoldStateChanged remove previous msg"

    .line 169
    .line 170
    .line 171
    invoke-static {v3, v5}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    .line 176
    .line 177
    :cond_a
    xor-int/lit8 v3, v1, 0x1

    .line 178
    .line 179
    invoke-virtual {v0, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 184
    .line 185
    .line 186
    if-nez v1, :cond_c

    .line 187
    .line 188
    if-eqz p1, :cond_c

    .line 189
    .line 190
    iget-wide v3, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->initShowTime:J

    .line 191
    .line 192
    const-wide/16 v5, 0x0

    .line 193
    .line 194
    cmp-long v0, v3, v5

    .line 195
    .line 196
    if-lez v0, :cond_c

    .line 197
    .line 198
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 199
    .line 200
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_b

    .line 205
    .line 206
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 207
    .line 208
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_c

    .line 217
    .line 218
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    .line 219
    .line 220
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    .line 225
    .line 226
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetPendingLock:Lkotlin/jvm/functions/Function0;

    .line 233
    .line 234
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeShowMsg()V

    .line 238
    .line 239
    .line 240
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->highRankedStateListeners:Ljava/util/List;

    .line 241
    .line 242
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->onFoldStateChanged(Ljava/util/List;ZZZ)V

    .line 243
    .line 244
    .line 245
    :cond_d
    return-void
.end method

.method public final getFoldOpenModeStr(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;->isDebug()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_4

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    if-eq p1, p0, :cond_2

    .line 15
    .line 16
    const/4 p0, 0x2

    .line 17
    if-eq p1, p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    if-eq p1, p0, :cond_0

    .line 21
    .line 22
    const-string p0, ""

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, "MODE_WAKE_UNLOCK"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p0, "MODE_UNLOCK"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string p0, "MODE_BOUNCER"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const-string p0, "MODE_RESET"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    return-object p0
.end method

.method public final getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediator$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 8
    .line 9
    return-object p0
.end method

.method public final isBouncerOnFoldOpened()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final isFoldOpened()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final isUnlockOnFoldOpened()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final onFoldStateChanged(Ljava/util/List;ZZZ)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v4, v1

    .line 25
    check-cast v4, Lcom/android/systemui/keyguard/RankedStateListener;

    .line 26
    .line 27
    iget-boolean v4, v4, Lcom/android/systemui/keyguard/RankedStateListener;->skipInitState:Z

    .line 28
    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    if-nez p3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v2, v3

    .line 35
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_5

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Lcom/android/systemui/keyguard/RankedStateListener;

    .line 56
    .line 57
    if-eqz p4, :cond_4

    .line 58
    .line 59
    iget v0, p3, Lcom/android/systemui/keyguard/RankedStateListener;->rank:I

    .line 60
    .line 61
    const-string/jumbo v1, "onFoldStateChanged "

    .line 62
    .line 63
    .line 64
    const-string v4, " "

    .line 65
    .line 66
    invoke-static {v1, v0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p3, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;

    .line 80
    .line 81
    invoke-direct {v0, p3, p2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;-><init>(Lcom/android/systemui/keyguard/RankedStateListener;Z)V

    .line 82
    .line 83
    .line 84
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 85
    .line 86
    check-cast p3, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-array p3, v3, [Ljava/lang/Object;

    .line 92
    .line 93
    const-string v7, "LooperSlow"

    .line 94
    .line 95
    const/16 v5, 0xa

    .line 96
    .line 97
    const/4 v1, -0x1

    .line 98
    invoke-static {v1}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;->run()V

    .line 103
    .line 104
    .line 105
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    const/4 v6, 0x0

    .line 110
    invoke-static {p3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-static/range {v4 .. v9}, Lcom/android/systemui/util/LogUtil;->internalEndTime(IILjava/util/function/LongConsumer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    iget-object p3, p3, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    .line 119
    .line 120
    invoke-interface {p3, p2}, Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;->onFoldStateChanged(Z)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    return-void
.end method

.method public final resetFoldOpenState(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isBouncerOnFoldOpened()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isEarlyWakeUp()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 36
    :goto_1
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 39
    .line 40
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-string p0, "KeyguardFoldController"

    .line 46
    .line 47
    const-string/jumbo p1, "skip resetFoldOpenState"

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final setFoldOpenState(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    .line 2
    .line 3
    const-string v1, "KeyguardFoldController"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    .line 6
    .line 7
    if-ne v0, p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    .line 10
    .line 11
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;->isDebug()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getFoldOpenModeStr(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "already "

    .line 24
    .line 25
    invoke-static {p1, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getFoldOpenModeStr(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getFoldOpenModeStr(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string/jumbo v4, "setFoldOpenState "

    .line 47
    .line 48
    .line 49
    const-string v5, " -> "

    .line 50
    .line 51
    invoke-static {v4, v0, v5, v3}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    .line 64
    .line 65
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenModeListeners:Ljava/util/List;

    .line 68
    .line 69
    check-cast v1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v3, 0x0

    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;

    .line 87
    .line 88
    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    if-nez v4, :cond_2

    .line 94
    .line 95
    const-string/jumbo v4, "request stackScroller forceLayout"

    .line 96
    .line 97
    .line 98
    const-string v5, "StackScrollerController"

    .line 99
    .line 100
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x2

    .line 104
    if-ne v0, v4, :cond_3

    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    :cond_3
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 108
    .line 109
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHasDelayedForceLayout:Z

    .line 110
    .line 111
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mForceLayoutTimeOutRunnable:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;

    .line 112
    .line 113
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 114
    .line 115
    if-eqz v3, :cond_4

    .line 116
    .line 117
    const-string v3, "do stackScroller DelayedForceLayout"

    .line 118
    .line 119
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    const-wide/16 v5, 0x1388

    .line 123
    .line 124
    invoke-virtual {v2, v4, v5, v6}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    const-string v3, "do stackScroller forceLayout"

    .line 129
    .line 130
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/view/ViewGroup;->forceLayout()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    if-nez p1, :cond_6

    .line 141
    .line 142
    iput v3, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->wakeReason:I

    .line 143
    .line 144
    :cond_6
    return-void
.end method
