.class public final Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x3

    .line 7
    if-eq v0, v1, :cond_9

    .line 8
    .line 9
    const/16 v1, 0xc

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-eq v0, v1, :cond_8

    .line 13
    .line 14
    const-wide/16 v5, 0x1000

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v7, 0x4

    .line 18
    const/4 v8, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "Unknown message: "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 45
    .line 46
    iget v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_0
    iput v8, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 53
    .line 54
    const-string/jumbo v1, "wakefulness"

    .line 55
    .line 56
    .line 57
    invoke-static {v5, v6, v1, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    invoke-direct {v1, v2}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 73
    .line 74
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 75
    .line 76
    iget v9, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 77
    .line 78
    if-ne v9, v3, :cond_1

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_1
    iput v3, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 83
    .line 84
    const-string/jumbo v9, "wakefulness"

    .line 85
    .line 86
    .line 87
    invoke-static {v5, v6, v9, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    iput v2, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 91
    .line 92
    iput-object v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 93
    .line 94
    if-eq v2, v7, :cond_2

    .line 95
    .line 96
    new-instance v1, Landroid/graphics/Point;

    .line 97
    .line 98
    iget-object v2, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 99
    .line 100
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 101
    .line 102
    div-int/2addr v5, v4

    .line 103
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 104
    .line 105
    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 106
    .line 107
    .line 108
    iput-object v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getPowerButtonOrigin()Landroid/graphics/Point;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 116
    .line 117
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    .line 118
    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 122
    .line 123
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 124
    .line 125
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 126
    .line 127
    new-instance v5, Landroid/os/Bundle;

    .line 128
    .line 129
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-interface {v1, v4, v2, v5}, Landroid/app/IWallpaperManager;->notifyGoingToSleep(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catch_0
    move-exception v1

    .line 137
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    :cond_3
    :goto_1
    new-instance v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    invoke-direct {v1, v8}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 153
    .line 154
    iget v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 155
    .line 156
    if-ne v1, v4, :cond_4

    .line 157
    .line 158
    goto/16 :goto_4

    .line 159
    .line 160
    :cond_4
    iput v4, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 161
    .line 162
    const-string/jumbo v1, "wakefulness"

    .line 163
    .line 164
    .line 165
    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    new-instance v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    invoke-direct {v1, v4}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    invoke-direct {v1, v3}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_4

    .line 185
    .line 186
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 187
    .line 188
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 189
    .line 190
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 191
    .line 192
    iget v9, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 193
    .line 194
    if-ne v9, v2, :cond_5

    .line 195
    .line 196
    goto/16 :goto_4

    .line 197
    .line 198
    :cond_5
    iput v2, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 199
    .line 200
    const-string/jumbo v9, "wakefulness"

    .line 201
    .line 202
    .line 203
    invoke-static {v5, v6, v9, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    iput v8, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 207
    .line 208
    iget-object v5, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 209
    .line 210
    check-cast v5, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 216
    .line 217
    .line 218
    iput-object v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 219
    .line 220
    iget v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 221
    .line 222
    if-eq v1, v2, :cond_6

    .line 223
    .line 224
    new-instance v1, Landroid/graphics/Point;

    .line 225
    .line 226
    iget-object v2, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 227
    .line 228
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 229
    .line 230
    div-int/2addr v5, v4

    .line 231
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 232
    .line 233
    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 234
    .line 235
    .line 236
    iput-object v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getPowerButtonOrigin()Landroid/graphics/Point;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    iput-object v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 244
    .line 245
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    .line 246
    .line 247
    if-eqz v1, :cond_7

    .line 248
    .line 249
    :try_start_1
    iget-object v2, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 250
    .line 251
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 252
    .line 253
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 254
    .line 255
    new-instance v5, Landroid/os/Bundle;

    .line 256
    .line 257
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-interface {v1, v4, v2, v5}, Landroid/app/IWallpaperManager;->notifyWakingUp(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :catch_1
    move-exception v1

    .line 265
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 266
    .line 267
    .line 268
    :cond_7
    :goto_3
    new-instance v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    .line 269
    .line 270
    invoke-direct {v1, v7}, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_4

    .line 277
    .line 278
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 279
    .line 280
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 281
    .line 282
    iput v8, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 283
    .line 284
    const-string/jumbo v1, "screenState"

    .line 285
    .line 286
    .line 287
    invoke-static {v5, v6, v1, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    new-instance v1, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    .line 291
    .line 292
    const/4 v2, 0x5

    .line 293
    invoke-direct {v1, v2}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 301
    .line 302
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 303
    .line 304
    iput v3, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 305
    .line 306
    const-string/jumbo v1, "screenState"

    .line 307
    .line 308
    .line 309
    invoke-static {v5, v6, v1, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 310
    .line 311
    .line 312
    new-instance v1, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    .line 313
    .line 314
    invoke-direct {v1, v7}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 322
    .line 323
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 324
    .line 325
    iput v4, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 326
    .line 327
    const-string/jumbo v1, "screenState"

    .line 328
    .line 329
    .line 330
    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    new-instance v1, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    .line 334
    .line 335
    invoke-direct {v1, v3}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 339
    .line 340
    .line 341
    goto :goto_4

    .line 342
    :pswitch_7
    const-string v0, "KeyguardLifecyclesDispatcher#SCREEN_TURNING_ON"

    .line 343
    .line 344
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 348
    .line 349
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 350
    .line 351
    iput v2, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 352
    .line 353
    const-string/jumbo v1, "screenState"

    .line 354
    .line 355
    .line 356
    invoke-static {v5, v6, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    new-instance v1, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    .line 360
    .line 361
    invoke-direct {v1, v8}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 365
    .line 366
    .line 367
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 368
    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 372
    .line 373
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    new-instance v1, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    .line 379
    .line 380
    invoke-direct {v1, v4}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 384
    .line 385
    .line 386
    goto :goto_4

    .line 387
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 388
    .line 389
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    new-instance v1, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;

    .line 395
    .line 396
    invoke-direct {v1, v2}, Lcom/android/systemui/keyguard/ScreenLifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 400
    .line 401
    .line 402
    :goto_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 403
    .line 404
    if-nez v0, :cond_a

    .line 405
    .line 406
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LARGE_FRONT:Z

    .line 407
    .line 408
    if-eqz v0, :cond_c

    .line 409
    .line 410
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->this$0:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 411
    .line 412
    iget p1, p1, Landroid/os/Message;->what:I

    .line 413
    .line 414
    if-gt p1, v3, :cond_b

    .line 415
    .line 416
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 417
    .line 418
    iget-object p1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 419
    .line 420
    monitor-enter p1

    .line 421
    :try_start_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 422
    .line 423
    check-cast p0, Ljava/util/LinkedList;

    .line 424
    .line 425
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    monitor-exit p1

    .line 429
    goto :goto_5

    .line 430
    :catchall_0
    move-exception p0

    .line 431
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    throw p0

    .line 433
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 434
    .line 435
    iget-object p1, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 436
    .line 437
    monitor-enter p1

    .line 438
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/SecLifecycle;->mMsgForLifecycle:Ljava/util/Queue;

    .line 439
    .line 440
    check-cast p0, Ljava/util/LinkedList;

    .line 441
    .line 442
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    monitor-exit p1

    .line 446
    :cond_c
    :goto_5
    return-void

    .line 447
    :catchall_1
    move-exception p0

    .line 448
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 449
    throw p0

    .line 450
    nop

    .line 451
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
