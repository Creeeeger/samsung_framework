.class public final Lcom/android/systemui/util/MemoryMonitor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

.field public mCurrentNotiCount:I

.field public final mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

.field public mIsInCalcMemInfo:Z

.field public mLastMemoryInfoCalcTime:Ljava/lang/Long;

.field public mLastMemoryInfoLogTime:Ljava/lang/String;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final mPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

.field public mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/BootCompleteCache;Lcom/android/systemui/HeapDumpHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, -0x2bf20

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mLastMemoryInfoCalcTime:Ljava/lang/Long;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mIsInCalcMemInfo:Z

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    .line 19
    .line 20
    iput v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mCurrentNotiCount:I

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/util/MemoryMonitor;->mMainHandler:Landroid/os/Handler;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/systemui/util/MemoryMonitor;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    .line 25
    .line 26
    iput-object p3, p0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    .line 27
    .line 28
    invoke-virtual {p4, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 29
    .line 30
    .line 31
    iput-object p5, p0, Lcom/android/systemui/util/MemoryMonitor;->mPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    .line 32
    .line 33
    iput-object p6, p0, Lcom/android/systemui/util/MemoryMonitor;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 34
    .line 35
    new-instance p2, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 p3, 0x1

    .line 38
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/MemoryMonitor;I)V

    .line 39
    .line 40
    .line 41
    const-wide/32 p3, 0x36ee80

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final dispatchTrimMemory()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mBootCompleteCache:Lcom/android/systemui/BootCompleteCache;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/BootCompleteCacheImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/BootCompleteCacheImpl;->isBootComplete()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "MemoryMonitor"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p0, "didn\'t receive BOOT_COMPLETED"

    .line 14
    .line 15
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mLastMemoryInfoCalcTime:Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/32 v4, 0x2bf20

    .line 26
    .line 27
    .line 28
    add-long/2addr v2, v4

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    cmp-long v0, v2, v4

    .line 34
    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor;->mLastMemoryInfoLogTime:Ljava/lang/String;

    .line 38
    .line 39
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v0, "Last Info is %s. It still remains until reset time. So skip this."

    .line 44
    .line 45
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/util/MemoryMonitor;->startMonitoring(IZ)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    .line 2
    .line 3
    iget-boolean v0, p2, Lcom/android/systemui/HeapDumpHelper;->isDumped:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "SystemUI Leak Info"

    .line 8
    .line 9
    const-string v1, "    isLeakSuspect : "

    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "    path : "

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p2, Lcom/android/systemui/HeapDumpHelper;->mHeapDumpFilePath:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p0, p2, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final isLeakSuspect(Landroid/os/Debug$MemoryInfo;JJ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/systemui/util/MemoryMonitor;->mHeapDumpHelper:Lcom/android/systemui/HeapDumpHelper;

    .line 8
    .line 9
    iget-boolean v4, v4, Lcom/android/systemui/HeapDumpHelper;->isDumped:Z

    .line 10
    .line 11
    if-nez v4, :cond_9

    .line 12
    .line 13
    const-string/jumbo v4, "summary.java-heap"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const-string/jumbo v5, "summary.native-heap"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v5}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 40
    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    iget v6, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget v6, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 47
    .line 48
    :goto_0
    add-int/2addr v5, v6

    .line 49
    const-string/jumbo v6, "summary.graphics"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string/jumbo v7, "summary.total-pss"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const-wide/16 v7, 0x4e20

    .line 72
    .line 73
    const-wide/16 v9, 0x32

    .line 74
    .line 75
    const v11, 0xfa000

    .line 76
    .line 77
    .line 78
    const v12, 0x7d000

    .line 79
    .line 80
    .line 81
    const v13, 0xc8000

    .line 82
    .line 83
    .line 84
    const v14, 0x37000

    .line 85
    .line 86
    .line 87
    if-gt v4, v14, :cond_2

    .line 88
    .line 89
    if-gt v5, v13, :cond_2

    .line 90
    .line 91
    if-gt v6, v12, :cond_2

    .line 92
    .line 93
    if-gt v1, v11, :cond_2

    .line 94
    .line 95
    cmp-long v15, v2, v7

    .line 96
    .line 97
    if-lez v15, :cond_1

    .line 98
    .line 99
    iget v15, v0, Lcom/android/systemui/util/MemoryMonitor;->mCurrentNotiCount:I

    .line 100
    .line 101
    const/16 v7, 0x64

    .line 102
    .line 103
    if-lt v15, v7, :cond_2

    .line 104
    .line 105
    :cond_1
    cmp-long v7, p4, v9

    .line 106
    .line 107
    if-lez v7, :cond_9

    .line 108
    .line 109
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v8, "J="

    .line 112
    .line 113
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    if-le v4, v14, :cond_3

    .line 117
    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 124
    .line 125
    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v4, ", N="

    .line 129
    .line 130
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    if-le v5, v13, :cond_4

    .line 134
    .line 135
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 141
    .line 142
    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v4, ", G="

    .line 146
    .line 147
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    if-le v6, v12, :cond_5

    .line 151
    .line 152
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 158
    .line 159
    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v4, ", T="

    .line 163
    .line 164
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    if-le v1, v11, :cond_6

    .line 168
    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    goto :goto_4

    .line 174
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 175
    .line 176
    :goto_4
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, ", V="

    .line 180
    .line 181
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-wide/16 v4, 0x4e20

    .line 185
    .line 186
    cmp-long v1, v2, v4

    .line 187
    .line 188
    if-lez v1, :cond_7

    .line 189
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, "/"

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget v2, v0, Lcom/android/systemui/util/MemoryMonitor;->mCurrentNotiCount:I

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    goto :goto_5

    .line 213
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 214
    .line 215
    :goto_5
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, ", VR="

    .line 219
    .line 220
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    cmp-long v1, p4, v9

    .line 224
    .line 225
    if-lez v1, :cond_8

    .line 226
    .line 227
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    goto :goto_6

    .line 232
    :cond_8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 233
    .line 234
    :goto_6
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    iput-object v1, v0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    .line 242
    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string v2, "isLeakSuspect :"

    .line 246
    .line 247
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, v0, Lcom/android/systemui/util/MemoryMonitor;->mReason:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string v1, "MemoryMonitor"

    .line 260
    .line 261
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    const/4 v0, 0x1

    .line 265
    return v0

    .line 266
    :cond_9
    const/4 v0, 0x0

    .line 267
    return v0
.end method

.method public final printMemoryInfo(Z)V
    .locals 14

    .line 1
    const-string v0, "MemoryMonitor"

    .line 2
    .line 3
    const-string v1, " - Memory Information -"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 14
    .line 15
    .line 16
    const-class v2, Landroid/view/View;

    .line 17
    .line 18
    invoke-static {v2}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    const-class v2, Landroid/view/ViewRootImpl;

    .line 23
    .line 24
    invoke-static {v2}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    const-class v2, Landroid/app/Notification;

    .line 29
    .line 30
    invoke-static {v2}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v9, "Dalvik Heap : "

    .line 37
    .line 38
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v9, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 42
    .line 43
    iget-boolean v10, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 44
    .line 45
    if-eqz v10, :cond_0

    .line 46
    .line 47
    iget v10, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget v10, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 51
    .line 52
    :goto_0
    const/4 v11, 0x0

    .line 53
    invoke-virtual {v1, v11}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    iget-boolean v13, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 58
    .line 59
    if-eqz v13, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v1, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    :goto_1
    add-int/2addr v9, v10

    .line 71
    add-int/2addr v9, v12

    .line 72
    add-int/2addr v9, v11

    .line 73
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v9, "Native Heap : "

    .line 86
    .line 87
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v9, "summary.native-heap"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v9}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    iget-boolean v10, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 106
    .line 107
    if-eqz v10, :cond_2

    .line 108
    .line 109
    iget v10, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    iget v10, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 113
    .line 114
    :goto_2
    add-int/2addr v9, v10

    .line 115
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    new-instance v8, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v9, "Graphics : "

    .line 128
    .line 129
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string/jumbo v9, "summary.graphics"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v9}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v9, "Total PSS : "

    .line 152
    .line 153
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string/jumbo v9, "summary.total-pss"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v9}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    const-string v8, " - View count -"

    .line 174
    .line 175
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v10, "View="

    .line 181
    .line 182
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v10, "ViewRootImpl="

    .line 198
    .line 199
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    new-instance v8, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v10, "Notification="

    .line 215
    .line 216
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-object v2, p0

    .line 230
    move-object v3, v1

    .line 231
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/util/MemoryMonitor;->isLeakSuspect(Landroid/os/Debug$MemoryInfo;JJ)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    iget-object v2, p0, Lcom/android/systemui/util/MemoryMonitor;->mMainHandler:Landroid/os/Handler;

    .line 236
    .line 237
    if-eqz v0, :cond_3

    .line 238
    .line 239
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 244
    .line 245
    .line 246
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 251
    .line 252
    .line 253
    new-instance v0, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;

    .line 254
    .line 255
    const/4 v3, 0x2

    .line 256
    invoke-direct {v0, p0, v3}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/MemoryMonitor;I)V

    .line 257
    .line 258
    .line 259
    const-wide/16 v3, 0x1388

    .line 260
    .line 261
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    .line 263
    .line 264
    :cond_3
    if-eqz p1, :cond_6

    .line 265
    .line 266
    invoke-virtual {v1, v9}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    const v1, 0x7d000

    .line 275
    .line 276
    .line 277
    if-ge v0, v1, :cond_4

    .line 278
    .line 279
    const v0, 0xa4cb80

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_4
    const v1, 0xc8000

    .line 284
    .line 285
    .line 286
    if-ge v0, v1, :cond_5

    .line 287
    .line 288
    const v0, 0x36ee80

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_5
    const v0, 0xdbba0

    .line 293
    .line 294
    .line 295
    :goto_3
    new-instance v1, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;

    .line 296
    .line 297
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/util/MemoryMonitor;ZI)V

    .line 298
    .line 299
    .line 300
    int-to-long p0, v0

    .line 301
    invoke-virtual {v2, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    .line 303
    .line 304
    :cond_6
    return-void
.end method

.method public final startMonitoring(IZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mIsInCalcMemInfo:Z

    .line 2
    .line 3
    const-string v1, "MemoryMonitor"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Already in calculating memory info. So skip this."

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/util/MemoryMonitor;->mIsInCalcMemInfo:Z

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Starting getMemoryInfo in MemoryInfoReporter thread. Delay Time: "

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/MemoryMonitor;I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/util/MemoryMonitor;->mMainHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-direct {p1, p0, p2, v0}, Lcom/android/systemui/util/MemoryMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/util/MemoryMonitor;ZI)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v2, 0xbb8

    .line 50
    .line 51
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method
