.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTransactEnded(Ljava/lang/Object;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    instance-of v0, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    check-cast p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->startTime:J

    .line 20
    .line 21
    sub-long/2addr v0, v2

    .line 22
    iget-wide v2, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->compareDuration:J

    .line 23
    .line 24
    cmp-long v2, v0, v2

    .line 25
    .line 26
    if-ltz v2, :cond_8

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    sget v4, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->sSkipCallCount:I

    .line 42
    .line 43
    const/4 v5, -0x1

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    if-ne v4, v5, :cond_3

    .line 47
    .line 48
    array-length v4, v2

    .line 49
    move v5, v6

    .line 50
    move v8, v5

    .line 51
    move-object v9, v7

    .line 52
    :goto_0
    if-ge v5, v4, :cond_2

    .line 53
    .line 54
    aget-object v10, v2, v5

    .line 55
    .line 56
    add-int/lit8 v8, v8, 0x1

    .line 57
    .line 58
    if-eqz v9, :cond_1

    .line 59
    .line 60
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    const-string v11, "onTransactEnded"

    .line 65
    .line 66
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_1

    .line 71
    .line 72
    if-eqz v10, :cond_1

    .line 73
    .line 74
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    const-string/jumbo v11, "transact"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    move-object v9, v10

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const/4 v8, 0x2

    .line 93
    :goto_1
    sput v8, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->sSkipCallCount:I

    .line 94
    .line 95
    :cond_3
    move-object v4, v7

    .line 96
    :goto_2
    const/16 v5, 0x14

    .line 97
    .line 98
    if-ge v6, v5, :cond_7

    .line 99
    .line 100
    sget v5, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->sSkipCallCount:I

    .line 101
    .line 102
    add-int/2addr v5, v6

    .line 103
    array-length v8, v2

    .line 104
    if-lt v5, v8, :cond_4

    .line 105
    .line 106
    move-object v5, v7

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    aget-object v5, v2, v5

    .line 109
    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v9, "."

    .line 123
    .line 124
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v9, ":"

    .line 135
    .line 136
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    :goto_3
    if-nez v5, :cond_5

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    if-nez v6, :cond_6

    .line 154
    .line 155
    move-object v4, v5

    .line 156
    :cond_6
    const-string v8, "    "

    .line 157
    .line 158
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const/16 v5, 0xa

    .line 165
    .line 166
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    add-int/lit8 v6, v6, 0x1

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iput-object v2, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->stackTrace:Ljava/lang/String;

    .line 177
    .line 178
    const-string v2, "** "

    .line 179
    .line 180
    const-string v3, " "

    .line 181
    .line 182
    invoke-static {v2, v4, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const-wide/32 v3, 0xf4240

    .line 187
    .line 188
    .line 189
    div-long/2addr v0, v3

    .line 190
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v3, "ms"

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const-string v3, "BinderCallMonitor"

    .line 203
    .line 204
    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 210
    .line 211
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 212
    .line 213
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object p1, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;->stackTrace:Ljava/lang/String;

    .line 218
    .line 219
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const-string v0, "   * %dms\n%s"

    .line 224
    .line 225
    invoke-static {v0, p1}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    .line 230
    .line 231
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_8
    :goto_5
    return-void
.end method

.method public final onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;
    .locals 10

    const/4 p1, 0x1

    and-int/lit8 p2, p3, 0x1

    if-eq p2, p1, :cond_4

    .line 2
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 4
    sget-wide v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    .line 5
    iget-object v2, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v3, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_2

    .line 7
    iget-object v7, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mMonitorInfo:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;

    .line 8
    iget-boolean v8, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->enabled:Z

    if-eqz v8, :cond_0

    iget-boolean v8, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->infinite:Z

    if-nez v8, :cond_0

    iget-wide v8, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->timeOut:J

    cmp-long v8, v8, p2

    if-gtz v8, :cond_0

    .line 9
    iput-boolean v4, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->enabled:Z

    .line 10
    :cond_0
    iget-boolean v8, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->enabled:Z

    if-eqz v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 11
    iget-wide v7, v7, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$MonitorInfo;->duration:J

    cmp-long v9, v7, v0

    if-gez v9, :cond_1

    move-wide v0, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iput-wide v0, p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mDuration:J

    if-nez v6, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    new-instance p1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$1;->this$0:Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    iget-wide p2, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mDuration:J

    invoke-direct {p1, p2, p3, v4}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl$Item;-><init>(JI)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
