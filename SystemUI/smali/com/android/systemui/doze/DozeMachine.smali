.class public Lcom/android/systemui/doze/DozeMachine;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field public mMODReason:I

.field public final mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

.field public mPulseReason:I

.field public final mQueuedRequests:Ljava/util/ArrayList;

.field public mState:Lcom/android/systemui/doze/DozeMachine$State;

.field public mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

.field public mUiModeType:I

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field public mWakeLockHeldForCurrentState:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/doze/DozeHost;[Lcom/android/systemui/doze/DozeMachine$Part;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    .line 10
    .line 11
    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    .line 17
    .line 18
    const/4 p6, 0x1

    .line 19
    iput p6, p0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 26
    .line 27
    iput-object p5, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 28
    .line 29
    iput-object p7, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 30
    .line 31
    iput-object p8, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 32
    .line 33
    array-length p1, p8

    .line 34
    :goto_0
    if-ge p4, p1, :cond_0

    .line 35
    .line 36
    aget-object p2, p8, p4

    .line 37
    .line 38
    invoke-interface {p2, p0}, Lcom/android/systemui/doze/DozeMachine$Part;->setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 p4, p4, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public final getState()Lcom/android/systemui/doze/DozeMachine$State;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Cannot get state because there were pending transitions: "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public final isExecutingTransition()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public final requestState(Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V

    return-void
.end method

.method public final requestState(Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 4

    .line 3
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "request: current="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "DozeMachine"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 7
    iget-object v1, p0, Lcom/android/systemui/doze/DozeMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v0, "DozeMachine#requestState"

    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/doze/DozeMachine;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 12
    invoke-interface {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 6
    .line 7
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x6

    .line 12
    const/4 v6, 0x7

    .line 13
    const/4 v7, 0x5

    .line 14
    const-string v8, "DozeMachine"

    .line 15
    .line 16
    const-string v9, "DozeLog"

    .line 17
    .line 18
    iget-object v10, v1, Lcom/android/systemui/doze/DozeMachine;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 19
    .line 20
    const/4 v11, 0x1

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    move-object v2, v3

    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    iget v2, v1, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    .line 27
    .line 28
    const/4 v12, 0x4

    .line 29
    const/4 v13, 0x2

    .line 30
    const/4 v14, 0x3

    .line 31
    if-ne v2, v14, :cond_4

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v15

    .line 42
    aget v15, v2, v15

    .line 43
    .line 44
    if-eq v15, v11, :cond_1

    .line 45
    .line 46
    if-eq v15, v13, :cond_1

    .line 47
    .line 48
    if-eq v15, v14, :cond_1

    .line 49
    .line 50
    if-eq v15, v12, :cond_1

    .line 51
    .line 52
    if-eq v15, v7, :cond_1

    .line 53
    .line 54
    const/4 v15, 0x0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v15, v11

    .line 57
    :goto_0
    if-nez v15, :cond_3

    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v15

    .line 63
    aget v2, v2, v15

    .line 64
    .line 65
    if-eq v2, v7, :cond_2

    .line 66
    .line 67
    if-eq v2, v5, :cond_2

    .line 68
    .line 69
    if-eq v2, v6, :cond_2

    .line 70
    .line 71
    if-eq v2, v4, :cond_2

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move v2, v11

    .line 76
    :goto_1
    if-eqz v2, :cond_4

    .line 77
    .line 78
    :cond_3
    const-string v2, "Doze is suppressed with all triggers disabled as car mode is active"

    .line 79
    .line 80
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v2, v10, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    sget-object v4, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 89
    .line 90
    sget-object v12, Lcom/android/systemui/doze/DozeLogger$logCarModeStarted$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logCarModeStarted$2;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 93
    .line 94
    const/4 v13, 0x0

    .line 95
    invoke-virtual {v2, v9, v4, v12, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 100
    .line 101
    .line 102
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/doze/DozeMachine$State;

    .line 103
    .line 104
    goto/16 :goto_7

    .line 105
    .line 106
    :cond_4
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 107
    .line 108
    check-cast v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 109
    .line 110
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAlwaysOnSuppressed:Z

    .line 111
    .line 112
    if-eqz v2, :cond_7

    .line 113
    .line 114
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 118
    .line 119
    if-eq v0, v2, :cond_6

    .line 120
    .line 121
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 122
    .line 123
    if-ne v0, v2, :cond_5

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    const/4 v2, 0x0

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    :goto_2
    move v2, v11

    .line 129
    :goto_3
    if-eqz v2, :cond_7

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v4, "Doze is suppressed by an app. Suppressing state: "

    .line 134
    .line 135
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    iget-object v2, v10, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    sget-object v4, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 154
    .line 155
    sget-object v12, Lcom/android/systemui/doze/DozeLogger$logAlwaysOnSuppressed$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logAlwaysOnSuppressed$2;

    .line 156
    .line 157
    iget-object v2, v2, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 158
    .line 159
    const/4 v13, 0x0

    .line 160
    invoke-virtual {v2, v9, v4, v12, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    invoke-interface {v4, v12}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v12, "app"

    .line 172
    .line 173
    invoke-interface {v4, v12}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 177
    .line 178
    .line 179
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 180
    .line 181
    goto/16 :goto_7

    .line 182
    .line 183
    :cond_7
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 184
    .line 185
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 186
    .line 187
    if-eq v2, v4, :cond_8

    .line 188
    .line 189
    sget-object v15, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 190
    .line 191
    if-eq v2, v15, :cond_8

    .line 192
    .line 193
    sget-object v15, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 194
    .line 195
    if-eq v2, v15, :cond_8

    .line 196
    .line 197
    sget-object v15, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 198
    .line 199
    if-eq v2, v15, :cond_8

    .line 200
    .line 201
    sget-object v15, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 202
    .line 203
    if-eq v2, v15, :cond_8

    .line 204
    .line 205
    sget-object v15, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_SUSPEND_TRIGGERS:Lcom/android/systemui/doze/DozeMachine$State;

    .line 206
    .line 207
    if-ne v2, v15, :cond_9

    .line 208
    .line 209
    :cond_8
    sget-object v15, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 210
    .line 211
    if-ne v0, v15, :cond_9

    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v4, "Dropping pulse done because current state is already done: "

    .line 216
    .line 217
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 221
    .line 222
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 233
    .line 234
    goto/16 :goto_7

    .line 235
    .line 236
    :cond_9
    sget-object v15, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 237
    .line 238
    if-ne v0, v15, :cond_b

    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    sget-object v15, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    aget v2, v15, v2

    .line 250
    .line 251
    if-eq v2, v11, :cond_a

    .line 252
    .line 253
    if-eq v2, v13, :cond_a

    .line 254
    .line 255
    if-eq v2, v14, :cond_a

    .line 256
    .line 257
    if-eq v2, v12, :cond_a

    .line 258
    .line 259
    if-eq v2, v7, :cond_a

    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    goto :goto_4

    .line 263
    :cond_a
    move v2, v11

    .line 264
    :goto_4
    if-nez v2, :cond_b

    .line 265
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v4, "Dropping pulse request because current state can\'t pulse: "

    .line 269
    .line 270
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 274
    .line 275
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 286
    .line 287
    goto/16 :goto_7

    .line 288
    .line 289
    :cond_b
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 290
    .line 291
    if-ne v0, v2, :cond_d

    .line 292
    .line 293
    iget-object v12, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 294
    .line 295
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    sget-object v13, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    .line 299
    .line 300
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    aget v12, v13, v12

    .line 305
    .line 306
    if-eq v12, v11, :cond_c

    .line 307
    .line 308
    if-eq v12, v14, :cond_c

    .line 309
    .line 310
    const/4 v12, 0x0

    .line 311
    goto :goto_5

    .line 312
    :cond_c
    move v12, v11

    .line 313
    :goto_5
    if-nez v12, :cond_d

    .line 314
    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string v4, "Dropping MOD because current state is "

    .line 318
    .line 319
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 323
    .line 324
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_d
    sget-object v12, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 338
    .line 339
    if-eq v0, v12, :cond_e

    .line 340
    .line 341
    if-ne v0, v4, :cond_f

    .line 342
    .line 343
    :cond_e
    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 344
    .line 345
    if-ne v4, v2, :cond_f

    .line 346
    .line 347
    iget v2, v1, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    .line 348
    .line 349
    if-eqz v2, :cond_f

    .line 350
    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v4, "Dropping "

    .line 354
    .line 355
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v4, " because current state is MOD : "

    .line 362
    .line 363
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    iget v4, v1, Lcom/android/systemui/doze/DozeMachine;->mMODReason:I

    .line 367
    .line 368
    invoke-static {v2, v4, v8}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iput-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 372
    .line 373
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_f
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->SCRIM_AOD_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 377
    .line 378
    if-eq v0, v2, :cond_10

    .line 379
    .line 380
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 381
    .line 382
    if-ne v0, v2, :cond_12

    .line 383
    .line 384
    :cond_10
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    aget v2, v4, v2

    .line 396
    .line 397
    const/16 v4, 0xa

    .line 398
    .line 399
    if-eq v2, v4, :cond_11

    .line 400
    .line 401
    const/16 v4, 0xc

    .line 402
    .line 403
    if-eq v2, v4, :cond_11

    .line 404
    .line 405
    const/16 v4, 0xd

    .line 406
    .line 407
    if-eq v2, v4, :cond_11

    .line 408
    .line 409
    const/4 v2, 0x0

    .line 410
    goto :goto_6

    .line 411
    :cond_11
    move v2, v11

    .line 412
    :goto_6
    if-nez v2, :cond_12

    .line 413
    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    const-string v4, "Dropping clockTransition because current state is "

    .line 417
    .line 418
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 422
    .line 423
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    iget-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 434
    .line 435
    goto :goto_7

    .line 436
    :cond_12
    move-object v2, v0

    .line 437
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const-string/jumbo v12, "transition: old="

    .line 440
    .line 441
    .line 442
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object v12, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 446
    .line 447
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v12, " req="

    .line 451
    .line 452
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string v0, " new="

    .line 459
    .line 460
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 474
    .line 475
    if-ne v2, v0, :cond_13

    .line 476
    .line 477
    return-void

    .line 478
    :cond_13
    :try_start_0
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    aget v0, v4, v0

    .line 485
    .line 486
    const/16 v8, 0x9

    .line 487
    .line 488
    if-eq v0, v8, :cond_16

    .line 489
    .line 490
    const/16 v12, 0x10

    .line 491
    .line 492
    if-eq v0, v12, :cond_14

    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_14
    if-ne v2, v3, :cond_15

    .line 496
    .line 497
    move v0, v11

    .line 498
    goto :goto_8

    .line 499
    :cond_15
    const/4 v0, 0x0

    .line 500
    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 501
    .line 502
    .line 503
    goto :goto_a

    .line 504
    :cond_16
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 505
    .line 506
    if-ne v2, v0, :cond_17

    .line 507
    .line 508
    move v0, v11

    .line 509
    goto :goto_9

    .line 510
    :cond_17
    const/4 v0, 0x0

    .line 511
    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 512
    .line 513
    .line 514
    :goto_a
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    aget v0, v4, v0

    .line 519
    .line 520
    const/16 v3, 0x11

    .line 521
    .line 522
    if-eq v0, v6, :cond_21

    .line 523
    .line 524
    const/16 v4, 0xf

    .line 525
    .line 526
    if-eq v0, v4, :cond_1e

    .line 527
    .line 528
    if-eq v0, v3, :cond_1b

    .line 529
    .line 530
    if-eq v0, v8, :cond_1a

    .line 531
    .line 532
    const/16 v4, 0xa

    .line 533
    .line 534
    if-eq v0, v4, :cond_18

    .line 535
    .line 536
    goto :goto_11

    .line 537
    :cond_18
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 538
    .line 539
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 540
    .line 541
    if-ne v0, v4, :cond_19

    .line 542
    .line 543
    move v0, v11

    .line 544
    goto :goto_b

    .line 545
    :cond_19
    const/4 v0, 0x0

    .line 546
    :goto_b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 547
    .line 548
    .line 549
    goto :goto_11

    .line 550
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 551
    .line 552
    const-string v3, "can\'t transition to UNINITIALIZED"

    .line 553
    .line 554
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v0

    .line 558
    :cond_1b
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 559
    .line 560
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 561
    .line 562
    if-eq v0, v4, :cond_1d

    .line 563
    .line 564
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 565
    .line 566
    if-eq v0, v4, :cond_1d

    .line 567
    .line 568
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    .line 569
    .line 570
    if-ne v0, v4, :cond_1c

    .line 571
    .line 572
    goto :goto_c

    .line 573
    :cond_1c
    const/4 v0, 0x0

    .line 574
    goto :goto_d

    .line 575
    :cond_1d
    :goto_c
    move v0, v11

    .line 576
    :goto_d
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 577
    .line 578
    .line 579
    goto :goto_11

    .line 580
    :cond_1e
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 581
    .line 582
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 583
    .line 584
    if-eq v0, v4, :cond_20

    .line 585
    .line 586
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 587
    .line 588
    if-ne v0, v4, :cond_1f

    .line 589
    .line 590
    goto :goto_e

    .line 591
    :cond_1f
    const/4 v0, 0x0

    .line 592
    goto :goto_f

    .line 593
    :cond_20
    :goto_e
    move v0, v11

    .line 594
    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 595
    .line 596
    .line 597
    goto :goto_11

    .line 598
    :cond_21
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 599
    .line 600
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 601
    .line 602
    if-ne v0, v4, :cond_22

    .line 603
    .line 604
    move v0, v11

    .line 605
    goto :goto_10

    .line 606
    :cond_22
    const/4 v0, 0x0

    .line 607
    :goto_10
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .line 609
    .line 610
    :goto_11
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 611
    .line 612
    iput-object v2, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 613
    .line 614
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_MOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 615
    .line 616
    if-ne v2, v4, :cond_23

    .line 617
    .line 618
    iput-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 619
    .line 620
    goto :goto_12

    .line 621
    :cond_23
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 622
    .line 623
    iput-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mStateBeforeMOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 624
    .line 625
    :goto_12
    iget-object v4, v10, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 626
    .line 627
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    sget-object v8, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 631
    .line 632
    sget-object v12, Lcom/android/systemui/doze/DozeLogger$logDozeStateChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDozeStateChanged$2;

    .line 633
    .line 634
    iget-object v4, v4, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 635
    .line 636
    const/4 v13, 0x0

    .line 637
    invoke-virtual {v4, v9, v8, v12, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 638
    .line 639
    .line 640
    move-result-object v8

    .line 641
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v12

    .line 645
    invoke-interface {v8, v12}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v4, v8}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 652
    .line 653
    .line 654
    move-result v4

    .line 655
    const-wide/16 v12, 0x1000

    .line 656
    .line 657
    const-string v8, "doze_machine_state"

    .line 658
    .line 659
    invoke-static {v12, v13, v8, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 660
    .line 661
    .line 662
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 663
    .line 664
    const/4 v8, -0x1

    .line 665
    if-ne v2, v4, :cond_24

    .line 666
    .line 667
    move/from16 v4, p2

    .line 668
    .line 669
    iput v4, v1, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    .line 670
    .line 671
    goto :goto_13

    .line 672
    :cond_24
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 673
    .line 674
    if-ne v0, v4, :cond_25

    .line 675
    .line 676
    iput v8, v1, Lcom/android/systemui/doze/DozeMachine;->mPulseReason:I

    .line 677
    .line 678
    :cond_25
    :goto_13
    iget-object v4, v1, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    .line 679
    .line 680
    array-length v12, v4

    .line 681
    const/4 v13, 0x0

    .line 682
    :goto_14
    if-ge v13, v12, :cond_26

    .line 683
    .line 684
    aget-object v14, v4, v13

    .line 685
    .line 686
    invoke-interface {v14, v0, v2}, Lcom/android/systemui/doze/DozeMachine$Part;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 687
    .line 688
    .line 689
    add-int/lit8 v13, v13, 0x1

    .line 690
    .line 691
    goto :goto_14

    .line 692
    :cond_26
    iget-object v0, v10, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    .line 693
    .line 694
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 695
    .line 696
    .line 697
    sget-object v4, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 698
    .line 699
    sget-object v10, Lcom/android/systemui/doze/DozeLogger$logStateChangedSent$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logStateChangedSent$2;

    .line 700
    .line 701
    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 702
    .line 703
    const/4 v12, 0x0

    .line 704
    invoke-virtual {v0, v9, v4, v10, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v9

    .line 712
    invoke-interface {v4, v9}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v0, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 716
    .line 717
    .line 718
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 719
    .line 720
    if-ne v2, v0, :cond_27

    .line 721
    .line 722
    iget-object v0, v1, Lcom/android/systemui/doze/DozeMachine;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 723
    .line 724
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeMachine$Service;->finish()V

    .line 725
    .line 726
    .line 727
    :cond_27
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    .line 728
    .line 729
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 730
    .line 731
    .line 732
    move-result v4

    .line 733
    aget v4, v0, v4

    .line 734
    .line 735
    if-eq v4, v7, :cond_28

    .line 736
    .line 737
    if-eq v4, v5, :cond_28

    .line 738
    .line 739
    if-eq v4, v6, :cond_28

    .line 740
    .line 741
    const/16 v5, 0x8

    .line 742
    .line 743
    if-eq v4, v5, :cond_28

    .line 744
    .line 745
    const/4 v4, 0x0

    .line 746
    goto :goto_15

    .line 747
    :cond_28
    move v4, v11

    .line 748
    :goto_15
    iget-boolean v5, v1, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    .line 749
    .line 750
    const-string v6, "DozeMachine#heldForState"

    .line 751
    .line 752
    iget-object v7, v1, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 753
    .line 754
    if-eqz v5, :cond_29

    .line 755
    .line 756
    if-nez v4, :cond_29

    .line 757
    .line 758
    invoke-interface {v7, v6}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    const/4 v4, 0x0

    .line 762
    iput-boolean v4, v1, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    .line 763
    .line 764
    goto :goto_16

    .line 765
    :cond_29
    if-nez v5, :cond_2a

    .line 766
    .line 767
    if-eqz v4, :cond_2a

    .line 768
    .line 769
    invoke-interface {v7, v6}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    iput-boolean v11, v1, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    .line 773
    .line 774
    :cond_2a
    :goto_16
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 775
    .line 776
    .line 777
    move-result v2

    .line 778
    aget v0, v0, v2

    .line 779
    .line 780
    const/16 v2, 0xa

    .line 781
    .line 782
    if-eq v0, v2, :cond_2b

    .line 783
    .line 784
    if-eq v0, v3, :cond_2b

    .line 785
    .line 786
    goto :goto_17

    .line 787
    :cond_2b
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    .line 788
    .line 789
    if-nez v0, :cond_2c

    .line 790
    .line 791
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 792
    .line 793
    invoke-virtual {v1, v0, v8}, Lcom/android/systemui/doze/DozeMachine;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;I)V

    .line 794
    .line 795
    .line 796
    :cond_2c
    :goto_17
    return-void

    .line 797
    :catch_0
    move-exception v0

    .line 798
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 799
    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    const-string v5, "Illegal Transition: "

    .line 803
    .line 804
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    iget-object v1, v1, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    .line 808
    .line 809
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    const-string v1, " -> "

    .line 813
    .line 814
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 825
    .line 826
    .line 827
    throw v3
.end method
