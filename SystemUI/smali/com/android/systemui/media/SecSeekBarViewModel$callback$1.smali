.class public final Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;
.super Landroid/media/session/MediaController$Callback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 4
    .line 5
    if-eqz p1, :cond_b

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->checkIfPollingNeeded()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v0, v1

    .line 42
    :goto_0
    if-eqz v0, :cond_c

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/media/session/PlaybackState;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ne v2, v3, :cond_2

    .line 54
    .line 55
    move v2, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v2, p1

    .line 58
    :goto_1
    if-nez v2, :cond_c

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v4, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    .line 75
    .line 76
    const-wide/16 v4, 0x0

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 81
    .line 82
    .line 83
    move-result-wide v6

    .line 84
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    sub-long/2addr v6, v8

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    move-wide v6, v4

    .line 91
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    const-wide/16 v8, 0x5dc

    .line 96
    .line 97
    cmp-long v2, v6, v8

    .line 98
    .line 99
    if-gez v2, :cond_7

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    .line 102
    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-ne v2, v6, :cond_5

    .line 114
    .line 115
    move p1, v3

    .line 116
    :cond_5
    if-eqz p1, :cond_7

    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    sub-long v4, v2, v4

    .line 131
    .line 132
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    cmp-long p1, v2, v8

    .line 137
    .line 138
    if-gez p1, :cond_7

    .line 139
    .line 140
    iput-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    .line 141
    .line 142
    goto/16 :goto_6

    .line 143
    .line 144
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 149
    .line 150
    .line 151
    move-result-wide v2

    .line 152
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    goto :goto_3

    .line 157
    :cond_8
    move-object p1, v1

    .line 158
    :goto_3
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    .line 167
    .line 168
    if-eqz v3, :cond_9

    .line 169
    .line 170
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    goto :goto_4

    .line 179
    :cond_9
    move-object v3, v1

    .line 180
    :goto_4
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    iget-object v5, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    .line 189
    .line 190
    if-eqz v5, :cond_a

    .line 191
    .line 192
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    .line 193
    .line 194
    .line 195
    move-result-wide v5

    .line 196
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    :cond_a
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    .line 201
    .line 202
    .line 203
    move-result-wide v5

    .line 204
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v7, "last position : "

    .line 211
    .line 212
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string p1, ", after position : "

    .line 219
    .line 220
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string p1, ", last state : "

    .line 227
    .line 228
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string p1, ", after state : "

    .line 235
    .line 236
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string p1, " last update : "

    .line 243
    .line 244
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string p1, " after update : "

    .line 251
    .line 252
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    const-string v1, "CapsuleValue"

    .line 263
    .line 264
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    iput-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->lastState:Landroid/media/session/PlaybackState;

    .line 268
    .line 269
    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$1;

    .line 270
    .line 271
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfCapsuleUpdateNeeded$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/media/session/PlaybackState;)V

    .line 272
    .line 273
    .line 274
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 275
    .line 276
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 277
    .line 278
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_b
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 283
    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;

    .line 288
    .line 289
    invoke-direct {p1, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    .line 290
    .line 291
    .line 292
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 293
    .line 294
    check-cast p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 295
    .line 296
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 297
    .line 298
    .line 299
    :cond_c
    :goto_6
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 4
    .line 5
    new-instance v2, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1$onSessionDestroyed$1;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1$onSessionDestroyed$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    .line 8
    .line 9
    .line 10
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 26
    .line 27
    check-cast p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
