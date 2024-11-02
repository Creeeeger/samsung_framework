.class public final Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    .line 4
    .line 5
    const v2, 0x3e23d70a    # 0.16f

    .line 6
    .line 7
    .line 8
    cmpg-float v1, v1, v2

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-gtz v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v3

    .line 17
    :goto_0
    iget-boolean v4, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    .line 18
    .line 19
    const-class v5, Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    if-nez v4, :cond_9

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->inputManager:Landroid/hardware/input/InputManager;

    .line 25
    .line 26
    sget-object v4, Lcom/android/systemui/stylus/StylusUsiPowerUI$hasConnectedBluetoothStylus$1;->INSTANCE:Lcom/android/systemui/stylus/StylusUsiPowerUI$hasConnectedBluetoothStylus$1;

    .line 27
    .line 28
    invoke-static {v0, v4}, Lcom/android/systemui/shared/hardware/InputManagerKt;->hasInputDevice(Landroid/hardware/input/InputManager;Lkotlin/jvm/functions/Function1;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_9

    .line 33
    .line 34
    if-eqz v1, :cond_9

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 37
    .line 38
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    .line 41
    .line 42
    const-string v4, "BAT"

    .line 43
    .line 44
    invoke-direct {v0, v1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 48
    .line 49
    const v7, 0x7f080a3d

    .line 50
    .line 51
    .line 52
    iput v7, v4, Landroid/app/Notification;->icon:I

    .line 53
    .line 54
    const-string v7, "StylusUsiPowerUI.dismiss"

    .line 55
    .line 56
    new-instance v8, Landroid/content/Intent;

    .line 57
    .line 58
    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v7, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    const/high16 v9, 0x4000000

    .line 72
    .line 73
    invoke-static {v7, v3, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iput-object v7, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 78
    .line 79
    const-string v4, "StylusUsiPowerUI.click"

    .line 80
    .line 81
    new-instance v7, Landroid/content/Intent;

    .line 82
    .line 83
    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v4, v3, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 101
    .line 102
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget v7, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    .line 107
    .line 108
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v4, v7}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const v7, 0x7f1310c8

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 132
    .line 133
    const v4, 0x7f1310c9

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iput-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 145
    .line 146
    iput v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 147
    .line 148
    iput-boolean v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 149
    .line 150
    const/16 v1, 0x10

    .line 151
    .line 152
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 153
    .line 154
    .line 155
    new-instance v1, Landroidx/core/app/NotificationCompatBuilder;

    .line 156
    .line 157
    invoke-direct {v1, v0}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v1, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 161
    .line 162
    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 163
    .line 164
    if-eqz v4, :cond_1

    .line 165
    .line 166
    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Style;->apply(Landroidx/core/app/NotificationCompatBuilder;)V

    .line 167
    .line 168
    .line 169
    :cond_1
    if-eqz v4, :cond_2

    .line 170
    .line 171
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Style;->makeContentView()V

    .line 172
    .line 173
    .line 174
    :cond_2
    iget-object v1, v1, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    if-eqz v4, :cond_3

    .line 181
    .line 182
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Style;->makeBigContentView()V

    .line 183
    .line 184
    .line 185
    :cond_3
    if-eqz v4, :cond_4

    .line 186
    .line 187
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Style;->makeHeadsUpContentView()V

    .line 190
    .line 191
    .line 192
    :cond_4
    if-eqz v4, :cond_5

    .line 193
    .line 194
    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 195
    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    .line 202
    .line 203
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 204
    .line 205
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    sget-object v0, Lcom/android/systemui/stylus/StylusUiEvent;->STYLUS_LOW_BATTERY_NOTIFICATION_SHOWN:Lcom/android/systemui/stylus/StylusUiEvent;

    .line 213
    .line 214
    invoke-virtual {p0, v0}, Lcom/android/systemui/stylus/StylusUsiPowerUI;->logUiEvent(Lcom/android/systemui/stylus/StylusUiEvent;)V

    .line 215
    .line 216
    .line 217
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 218
    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 223
    .line 224
    if-eqz v0, :cond_6

    .line 225
    .line 226
    const-string v4, "android.support.useSideChannel"

    .line 227
    .line 228
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_6

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_6
    move v2, v3

    .line 236
    :goto_1
    sget v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->USI_NOTIFICATION_ID:I

    .line 237
    .line 238
    iget-object v4, p0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 239
    .line 240
    if-eqz v2, :cond_8

    .line 241
    .line 242
    new-instance v2, Landroidx/core/app/NotificationManagerCompat$NotifyTask;

    .line 243
    .line 244
    iget-object v5, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 245
    .line 246
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-direct {v2, v5, v0, v6, v1}, Landroidx/core/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    .line 251
    .line 252
    .line 253
    sget-object v5, Landroidx/core/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    .line 254
    .line 255
    monitor-enter v5

    .line 256
    :try_start_0
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 257
    .line 258
    if-nez v1, :cond_7

    .line 259
    .line 260
    new-instance v1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 261
    .line 262
    iget-object p0, p0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-direct {v1, p0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;-><init>(Landroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    sput-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 272
    .line 273
    :cond_7
    sget-object p0, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 274
    .line 275
    iget-object p0, p0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    .line 276
    .line 277
    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 282
    .line 283
    .line 284
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-virtual {v4, v6, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    goto :goto_2

    .line 289
    :catchall_0
    move-exception p0

    .line 290
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    throw p0

    .line 292
    :cond_8
    invoke-virtual {v4, v6, v0, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 293
    .line 294
    .line 295
    :goto_2
    return-void

    .line 296
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 297
    .line 298
    iget-boolean v2, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    .line 299
    .line 300
    if-nez v2, :cond_a

    .line 301
    .line 302
    if-nez v1, :cond_b

    .line 303
    .line 304
    :cond_a
    sget v2, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    .line 305
    .line 306
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 307
    .line 308
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    iput-object v6, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 316
    .line 317
    iget-object v0, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 318
    .line 319
    iget-object v0, v0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 320
    .line 321
    sget v2, Lcom/android/systemui/stylus/StylusUsiPowerUI;->USI_NOTIFICATION_ID:I

    .line 322
    .line 323
    invoke-virtual {v0, v6, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 324
    .line 325
    .line 326
    :cond_b
    if-nez v1, :cond_c

    .line 327
    .line 328
    iget-object p0, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 329
    .line 330
    iput-boolean v3, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    .line 331
    .line 332
    :cond_c
    return-void
.end method
