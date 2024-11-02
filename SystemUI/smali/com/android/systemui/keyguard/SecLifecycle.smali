.class public Lcom/android/systemui/keyguard/SecLifecycle;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final QUEUE_MAX:I

.field public mIsDispatching:Z

.field public mLastScreenState:I

.field public mLastWakefulness:I

.field public mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public final mMsgForLifecycle:Ljava/util/Queue;

.field public final mObservers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastScreenState:I

    .line 16
    .line 17
    iput v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastWakefulness:I

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    iput v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->QUEUE_MAX:I

    .line 22
    .line 23
    new-instance v0, Ljava/util/LinkedList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 29
    .line 30
    return-void
.end method

.method public static createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/keyguard/SecLifecycle$Msg;-><init>(III)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final addObserver(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "do not add or remove a observer on dispatching: "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final dispatch(Ljava/util/function/Consumer;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SecLifecycle;->getScreenState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SecLifecycle;->getWakefulness()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    iget v3, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastScreenState:I

    .line 16
    .line 17
    if-eq v3, v0, :cond_0

    .line 18
    .line 19
    const-string/jumbo v3, "screenState="

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iput v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastScreenState:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v3, ""

    .line 30
    .line 31
    :goto_0
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastWakefulness:I

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "wakefulness="

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iput v1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLastWakefulness:I

    .line 59
    .line 60
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    const-string v0, "SecLifecycle"

    .line 67
    .line 68
    invoke-static {v0, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    move v0, v3

    .line 79
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-ge v0, v4, :cond_7

    .line 84
    .line 85
    iget-object v4, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 86
    .line 87
    if-nez v4, :cond_3

    .line 88
    .line 89
    const-class v4, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 90
    .line 91
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 96
    .line 97
    iput-object v4, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 98
    .line 99
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 100
    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    check-cast v4, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->isEnabled()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    invoke-static {v2}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    move v5, v4

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    move v5, v2

    .line 118
    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    if-ltz v5, :cond_5

    .line 126
    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v7, "dispatch "

    .line 130
    .line 131
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    new-array v4, v3, [Ljava/lang/Object;

    .line 142
    .line 143
    const/16 v6, 0x14

    .line 144
    .line 145
    const-string v8, "LooperSlow"

    .line 146
    .line 147
    sget-object v7, Lcom/android/systemui/util/LogUtil;->beginTimes:Ljava/util/Map;

    .line 148
    .line 149
    const/4 v7, 0x0

    .line 150
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-static/range {v5 .. v10}, Lcom/android/systemui/util/LogUtil;->internalEndTime(IILjava/util/function/LongConsumer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    move v0, v3

    .line 161
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-ge v0, v2, :cond_7

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    .line 178
    .line 179
    return-void
.end method

.method public getScreenState()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public getWakefulness()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final removeObserver(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mIsDispatching:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mObservers:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "do not add or remove a observer on dispatching: "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final setLifecycle(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 5
    .line 6
    check-cast v1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v2, p0, Lcom/android/systemui/keyguard/SecLifecycle;->QUEUE_MAX:I

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    const-string v1, "SecLifecycle"

    .line 17
    .line 18
    const-string v2, "Saved message is over the max"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 24
    .line 25
    check-cast v1, Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x3

    .line 32
    const/4 v3, 0x2

    .line 33
    const/4 v4, 0x1

    .line 34
    packed-switch p1, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    goto :goto_0

    .line 39
    :pswitch_0
    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    invoke-static {v2, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :pswitch_2
    invoke-static {v3, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :pswitch_3
    invoke-static {v4, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto :goto_0

    .line 59
    :pswitch_4
    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_0

    .line 64
    :pswitch_5
    invoke-static {v2, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_0

    .line 69
    :pswitch_6
    invoke-static {v3, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    :pswitch_7
    invoke-static {v4, p2}, Lcom/android/systemui/keyguard/SecLifecycle;->createMsg(II)Lcom/android/systemui/keyguard/SecLifecycle$Msg;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_0
    if-eqz p1, :cond_1

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 81
    .line 82
    check-cast p0, Ljava/util/LinkedList;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    monitor-exit v0

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
