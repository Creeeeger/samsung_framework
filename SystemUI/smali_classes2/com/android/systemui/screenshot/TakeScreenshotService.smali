.class public Lcom/android/systemui/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sConfigured:Z


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public mBundle:Landroid/os/Bundle;

.field public final mCloseSystemDialogs:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

.field public final mProcessor:Lcom/android/systemui/screenshot/RequestProcessor;

.field public mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

.field public final mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ScreenshotNotificationsController;Landroid/content/Context;Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;Ljava/util/concurrent/Executor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/screenshot/RequestProcessor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    .line 5
    .line 6
    invoke-direct {p3, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mCloseSystemDialogs:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    .line 10
    .line 11
    new-instance p3, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object p9

    .line 17
    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p3, p9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 23
    .line 24
    .line 25
    iput-object p3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUserManager:Landroid/os/UserManager;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 32
    .line 33
    iput-object p5, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    .line 34
    .line 35
    iput-object p6, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iput-object p8, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    iput-object p10, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mProcessor:Lcom/android/systemui/screenshot/RequestProcessor;

    .line 40
    .line 41
    iput-object p7, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/android/internal/util/ScreenshotRequest;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ScreenshotRequest;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUserManager:Landroid/os/UserManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "Screenshot"

    .line 17
    .line 18
    const-string v6, "Skipping screenshot because storage is locked!"

    .line 19
    .line 20
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->logFailedRequest(Lcom/android/internal/util/ScreenshotRequest;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    .line 27
    .line 28
    const v1, 0x7f130ec6

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    .line 32
    .line 33
    .line 34
    move-object v0, v2

    .line 35
    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    .line 36
    .line 37
    const-string v1, "ignored remote exception"

    .line 38
    .line 39
    const-string v2, "Screenshot"

    .line 40
    .line 41
    iget-object v6, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->mReplyTo:Landroid/os/Messenger;

    .line 42
    .line 43
    :try_start_0
    invoke-static {v5, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v6, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    :try_start_1
    invoke-static {v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v6, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_1
    move-exception v0

    .line 64
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void

    .line 68
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v6, "sys.shutdown.requested"

    .line 74
    .line 75
    .line 76
    invoke-static {v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    const/4 v8, 0x0

    .line 85
    if-lez v7, :cond_1

    .line 86
    .line 87
    move v7, v4

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    move v7, v8

    .line 90
    :goto_2
    if-eqz v7, :cond_3

    .line 91
    .line 92
    const-string v7, "0"

    .line 93
    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_2

    .line 99
    .line 100
    const-string v7, "1"

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->TAG:Ljava/lang/String;

    .line 109
    .line 110
    const-string v6, "Device is in shutdown state"

    .line 111
    .line 112
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move v0, v4

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    move v0, v8

    .line 118
    :goto_3
    if-nez v0, :cond_23

    .line 119
    .line 120
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    sget-object v6, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_d

    .line 137
    .line 138
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    const-string v7, "CscFeature_Common_ConfigYuva"

    .line 143
    .line 144
    const-string v9, ""

    .line 145
    .line 146
    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    if-eqz v6, :cond_4

    .line 151
    .line 152
    const-string/jumbo v10, "powerplanning"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_4

    .line 160
    .line 161
    const-string/jumbo v10, "reserve"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-eqz v6, :cond_4

    .line 169
    .line 170
    move v6, v4

    .line 171
    goto :goto_4

    .line 172
    :cond_4
    move v6, v8

    .line 173
    :goto_4
    if-nez v6, :cond_5

    .line 174
    .line 175
    goto/16 :goto_a

    .line 176
    .line 177
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    if-eqz v6, :cond_6

    .line 186
    .line 187
    const-string v7, "downloadable_spowerplanning"

    .line 188
    .line 189
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_6

    .line 194
    .line 195
    move v6, v4

    .line 196
    goto :goto_5

    .line 197
    :cond_6
    move v6, v8

    .line 198
    :goto_5
    const-string v7, "enable_reserve_max_mode"

    .line 199
    .line 200
    const-string/jumbo v9, "reserve_battery_on"

    .line 201
    .line 202
    .line 203
    if-eqz v6, :cond_8

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-eqz v6, :cond_7

    .line 214
    .line 215
    move v6, v4

    .line 216
    goto :goto_6

    .line 217
    :cond_7
    move v6, v8

    .line 218
    :goto_6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-static {v9, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-eqz v7, :cond_a

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-eqz v6, :cond_9

    .line 238
    .line 239
    move v6, v4

    .line 240
    goto :goto_7

    .line 241
    :cond_9
    move v6, v8

    .line 242
    :goto_7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    invoke-static {v9, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    if-eqz v7, :cond_a

    .line 251
    .line 252
    :goto_8
    move v7, v4

    .line 253
    goto :goto_9

    .line 254
    :cond_a
    move v7, v8

    .line 255
    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v10, "isReserveBatteryOn : "

    .line 258
    .line 259
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v10, " isEnableReserveMaxMode : "

    .line 266
    .line 267
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    const-string v10, "Screenshot"

    .line 278
    .line 279
    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    if-eqz v6, :cond_b

    .line 283
    .line 284
    if-eqz v7, :cond_b

    .line 285
    .line 286
    move v6, v4

    .line 287
    goto :goto_b

    .line 288
    :cond_b
    :goto_a
    move v6, v8

    .line 289
    :goto_b
    if-eqz v6, :cond_c

    .line 290
    .line 291
    const v6, 0x7f130e38

    .line 292
    .line 293
    .line 294
    invoke-static {v0, v6}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 295
    .line 296
    .line 297
    goto :goto_c

    .line 298
    :cond_c
    const v6, 0x7f130524

    .line 299
    .line 300
    .line 301
    invoke-static {v0, v6}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 302
    .line 303
    .line 304
    :goto_c
    move v0, v4

    .line 305
    goto :goto_d

    .line 306
    :cond_d
    move v0, v8

    .line 307
    :goto_d
    if-nez v0, :cond_23

    .line 308
    .line 309
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    const-string v7, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    .line 319
    .line 320
    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    const v7, 0x7f130ec2

    .line 325
    .line 326
    .line 327
    if-eqz v6, :cond_e

    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    .line 330
    .line 331
    invoke-static {v7, v0}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->showToast(ILandroid/content/Context;)V

    .line 332
    .line 333
    .line 334
    move v0, v4

    .line 335
    goto :goto_e

    .line 336
    :cond_e
    move v0, v8

    .line 337
    :goto_e
    if-nez v0, :cond_23

    .line 338
    .line 339
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    .line 340
    .line 341
    const-string/jumbo v6, "storage"

    .line 342
    .line 343
    .line 344
    iget-object v9, v0, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    .line 345
    .line 346
    invoke-virtual {v9, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    check-cast v6, Landroid/os/storage/StorageManager;

    .line 351
    .line 352
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    iget-object v0, v0, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->TAG:Ljava/lang/String;

    .line 357
    .line 358
    const/4 v10, -0x1

    .line 359
    if-eqz v6, :cond_f

    .line 360
    .line 361
    const-string v6, "getCapacityState: Usb mass storage is enabled."

    .line 362
    .line 363
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    goto :goto_f

    .line 367
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    if-nez v6, :cond_10

    .line 372
    .line 373
    const-string v6, "getCapacityState: an external storage directory is null."

    .line 374
    .line 375
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    goto :goto_f

    .line 379
    :cond_10
    :try_start_2
    new-instance v11, Landroid/os/StatFs;

    .line 380
    .line 381
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    invoke-direct {v11, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 386
    .line 387
    .line 388
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 389
    .line 390
    .line 391
    move-result-wide v12

    .line 392
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 393
    .line 394
    .line 395
    move-result-wide v14

    .line 396
    mul-long/2addr v14, v12

    .line 397
    const-wide/32 v11, 0x200000

    .line 398
    .line 399
    .line 400
    cmp-long v6, v14, v11

    .line 401
    .line 402
    if-gez v6, :cond_11

    .line 403
    .line 404
    new-instance v6, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string v11, "getCapacityState: availableSpace="

    .line 407
    .line 408
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    move v0, v8

    .line 422
    goto :goto_10

    .line 423
    :cond_11
    move v0, v4

    .line 424
    goto :goto_10

    .line 425
    :catch_2
    const-string v6, "getCapacityState: IllegalArgumentException occurred."

    .line 426
    .line 427
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    :goto_f
    move v0, v10

    .line 431
    :goto_10
    if-ne v0, v4, :cond_12

    .line 432
    .line 433
    move v0, v4

    .line 434
    goto :goto_12

    .line 435
    :cond_12
    if-eq v0, v10, :cond_14

    .line 436
    .line 437
    if-eqz v0, :cond_13

    .line 438
    .line 439
    goto :goto_11

    .line 440
    :cond_13
    const v0, 0x7f130ec8

    .line 441
    .line 442
    .line 443
    invoke-static {v0, v9}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->showToast(ILandroid/content/Context;)V

    .line 444
    .line 445
    .line 446
    goto :goto_11

    .line 447
    :cond_14
    invoke-static {v7, v9}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->showToast(ILandroid/content/Context;)V

    .line 448
    .line 449
    .line 450
    :goto_11
    move v0, v8

    .line 451
    :goto_12
    if-eqz v0, :cond_23

    .line 452
    .line 453
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    .line 454
    .line 455
    iget-object v6, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mBundle:Landroid/os/Bundle;

    .line 456
    .line 457
    iget-object v7, v0, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    .line 458
    .line 459
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    const-string v9, "device_provisioned"

    .line 464
    .line 465
    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 466
    .line 467
    .line 468
    move-result v7

    .line 469
    const-string v9, "capturedOrigin"

    .line 470
    .line 471
    invoke-virtual {v6, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    if-nez v7, :cond_15

    .line 476
    .line 477
    if-ne v6, v3, :cond_15

    .line 478
    .line 479
    const-string v9, "isPalmScreenshotInSetupWizard: setUpWizardRunning="

    .line 480
    .line 481
    const-string v10, ", origin="

    .line 482
    .line 483
    invoke-static {v9, v7, v10, v6}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v6

    .line 487
    iget-object v0, v0, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->TAG:Ljava/lang/String;

    .line 488
    .line 489
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    move v0, v4

    .line 493
    goto :goto_13

    .line 494
    :cond_15
    move v0, v8

    .line 495
    :goto_13
    if-nez v0, :cond_23

    .line 496
    .line 497
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    sget-object v6, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    .line 503
    .line 504
    monitor-enter v6

    .line 505
    :try_start_3
    sget-boolean v0, Lcom/android/systemui/screenshot/ScreenshotController;->isSnackBarShowing:Z

    .line 506
    .line 507
    if-eqz v0, :cond_16

    .line 508
    .line 509
    const-string v0, "Screenshot"

    .line 510
    .line 511
    const-string v7, "handleRequest: isSnackBarShowing"

    .line 512
    .line 513
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    :cond_16
    sget-boolean v0, Lcom/android/systemui/screenshot/ScreenshotController;->isSnackBarShowing:Z

    .line 517
    .line 518
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 519
    if-nez v0, :cond_23

    .line 520
    .line 521
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    monitor-enter v6

    .line 527
    :try_start_4
    sget-boolean v0, Lcom/android/systemui/screenshot/ScreenshotController;->isAnimationRunning:Z

    .line 528
    .line 529
    if-eqz v0, :cond_17

    .line 530
    .line 531
    const-string v0, "Screenshot"

    .line 532
    .line 533
    const-string v7, "handleRequest: isAnimationRunning"

    .line 534
    .line 535
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    :cond_17
    sget-boolean v0, Lcom/android/systemui/screenshot/ScreenshotController;->isAnimationRunning:Z

    .line 539
    .line 540
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 541
    if-nez v0, :cond_23

    .line 542
    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getType()I

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    if-ne v0, v3, :cond_19

    .line 548
    .line 549
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 550
    .line 551
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    .line 552
    .line 553
    if-eqz v0, :cond_18

    .line 554
    .line 555
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-nez v0, :cond_18

    .line 560
    .line 561
    move v8, v4

    .line 562
    :cond_18
    if-eqz v8, :cond_19

    .line 563
    .line 564
    goto/16 :goto_19

    .line 565
    .line 566
    :cond_19
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mContext:Landroid/content/Context;

    .line 567
    .line 568
    iget-object v6, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 569
    .line 570
    iget v7, v6, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    .line 571
    .line 572
    iget v6, v6, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureOrigin:I

    .line 573
    .line 574
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 575
    .line 576
    .line 577
    move-result-object v8

    .line 578
    const-string v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 579
    .line 580
    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 581
    .line 582
    .line 583
    move-result v8

    .line 584
    const/4 v9, 0x3

    .line 585
    if-eqz v8, :cond_20

    .line 586
    .line 587
    const-string v8, "Dex mode"

    .line 588
    .line 589
    const-string v10, "900"

    .line 590
    .line 591
    const-string v11, "9001"

    .line 592
    .line 593
    const/4 v12, 0x4

    .line 594
    if-ne v7, v4, :cond_1d

    .line 595
    .line 596
    if-ne v6, v4, :cond_1a

    .line 597
    .line 598
    const-string v6, "TPKE"

    .line 599
    .line 600
    invoke-static {v0, v6}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    const-string v0, "HW key"

    .line 604
    .line 605
    invoke-static {v10, v11, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    goto :goto_14

    .line 609
    :cond_1a
    if-ne v6, v3, :cond_1b

    .line 610
    .line 611
    const-string v6, "TPPL"

    .line 612
    .line 613
    invoke-static {v0, v6}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    const-string v0, "Palm swipe"

    .line 617
    .line 618
    invoke-static {v10, v11, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    goto :goto_14

    .line 622
    :cond_1b
    if-ne v6, v9, :cond_1c

    .line 623
    .line 624
    const-string v6, "TPQP"

    .line 625
    .line 626
    invoke-static {v0, v6}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    const-string v0, "Quick panel"

    .line 630
    .line 631
    invoke-static {v10, v11, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    goto :goto_14

    .line 635
    :cond_1c
    if-ne v6, v12, :cond_20

    .line 636
    .line 637
    const-string v6, "KNFU"

    .line 638
    .line 639
    invoke-static {v0, v6}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    invoke-static {v10, v11, v8}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    goto :goto_14

    .line 646
    :cond_1d
    if-ne v7, v3, :cond_1f

    .line 647
    .line 648
    if-ne v6, v12, :cond_1e

    .line 649
    .line 650
    const-string v6, "KNPA"

    .line 651
    .line 652
    invoke-static {v0, v6}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-static {v10, v11, v8}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_1e
    const-string v6, "TPPA"

    .line 660
    .line 661
    invoke-static {v0, v6}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    goto :goto_14

    .line 665
    :cond_1f
    const/16 v6, 0x64

    .line 666
    .line 667
    if-ne v7, v6, :cond_20

    .line 668
    .line 669
    const-string v6, "TPWI"

    .line 670
    .line 671
    invoke-static {v0, v6}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    :cond_20
    :goto_14
    const-string v0, "Screenshot"

    .line 675
    .line 676
    const-string v6, "Processing screenshot data"

    .line 677
    .line 678
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotData;->Companion:Lcom/android/systemui/screenshot/ScreenshotData$Companion;

    .line 682
    .line 683
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    .line 685
    .line 686
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotData;

    .line 687
    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getType()I

    .line 689
    .line 690
    .line 691
    move-result v11

    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getSource()I

    .line 693
    .line 694
    .line 695
    move-result v12

    .line 696
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getUserId()I

    .line 697
    .line 698
    .line 699
    move-result v6

    .line 700
    if-ltz v6, :cond_21

    .line 701
    .line 702
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getUserId()I

    .line 703
    .line 704
    .line 705
    move-result v6

    .line 706
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 707
    .line 708
    .line 709
    move-result-object v6

    .line 710
    move-object v13, v6

    .line 711
    goto :goto_15

    .line 712
    :cond_21
    move-object v13, v5

    .line 713
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getTopComponent()Landroid/content/ComponentName;

    .line 714
    .line 715
    .line 716
    move-result-object v14

    .line 717
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getBoundsInScreen()Landroid/graphics/Rect;

    .line 718
    .line 719
    .line 720
    move-result-object v15

    .line 721
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getTaskId()I

    .line 722
    .line 723
    .line 724
    move-result v16

    .line 725
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getInsets()Landroid/graphics/Insets;

    .line 726
    .line 727
    .line 728
    move-result-object v17

    .line 729
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getBitmap()Landroid/graphics/Bitmap;

    .line 730
    .line 731
    .line 732
    move-result-object v18

    .line 733
    const/16 v19, 0x0

    .line 734
    .line 735
    const/16 v20, 0x0

    .line 736
    .line 737
    const/16 v21, 0x0

    .line 738
    .line 739
    const/16 v22, 0x0

    .line 740
    .line 741
    const/16 v23, 0xf00

    .line 742
    .line 743
    const/16 v24, 0x0

    .line 744
    .line 745
    move-object v10, v0

    .line 746
    invoke-direct/range {v10 .. v24}, Lcom/android/systemui/screenshot/ScreenshotData;-><init>(IILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/graphics/Rect;ILandroid/graphics/Insets;Landroid/graphics/Bitmap;Landroid/net/Uri;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 747
    .line 748
    .line 749
    iget-object v6, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 750
    .line 751
    iget-object v7, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 752
    .line 753
    iput-object v7, v6, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 754
    .line 755
    iget-object v8, v6, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 756
    .line 757
    if-eqz v8, :cond_22

    .line 758
    .line 759
    const-string v6, "Screenshot"

    .line 760
    .line 761
    const-string v7, "initSemScreenshotLayout: SemScreenshotLayout is already initialized."

    .line 762
    .line 763
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    goto :goto_16

    .line 767
    :cond_22
    iget-object v7, v7, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 768
    .line 769
    new-instance v8, Landroid/view/ContextThemeWrapper;

    .line 770
    .line 771
    const v10, 0x7f1404c0

    .line 772
    .line 773
    .line 774
    invoke-direct {v8, v7, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 775
    .line 776
    .line 777
    const-string v7, "layout_inflater"

    .line 778
    .line 779
    invoke-virtual {v8, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v7

    .line 783
    check-cast v7, Landroid/view/LayoutInflater;

    .line 784
    .line 785
    const v8, 0x7f0d018c

    .line 786
    .line 787
    .line 788
    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 789
    .line 790
    .line 791
    move-result-object v7

    .line 792
    check-cast v7, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 793
    .line 794
    iput-object v7, v6, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    .line 795
    .line 796
    const v8, 0x7f0a0436

    .line 797
    .line 798
    .line 799
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 800
    .line 801
    .line 802
    move-result-object v7

    .line 803
    check-cast v7, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    .line 804
    .line 805
    iput-object v7, v6, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    .line 806
    .line 807
    invoke-virtual {v7, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 808
    .line 809
    .line 810
    iget-object v6, v6, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    .line 811
    .line 812
    invoke-virtual {v6, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 813
    .line 814
    .line 815
    :goto_16
    iget-object v6, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 816
    .line 817
    iget v6, v6, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    .line 818
    .line 819
    iput v6, v0, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    .line 820
    .line 821
    :try_start_5
    iget-object v6, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mProcessor:Lcom/android/systemui/screenshot/RequestProcessor;

    .line 822
    .line 823
    new-instance v7, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;

    .line 824
    .line 825
    move-object/from16 v8, p2

    .line 826
    .line 827
    invoke-direct {v7, v1, v8, v2}, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V

    .line 828
    .line 829
    .line 830
    iget-object v8, v6, Lcom/android/systemui/screenshot/RequestProcessor;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    .line 831
    .line 832
    new-instance v10, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;

    .line 833
    .line 834
    invoke-direct {v10, v6, v0, v7, v5}, Lcom/android/systemui/screenshot/RequestProcessor$processAsync$2;-><init>(Lcom/android/systemui/screenshot/RequestProcessor;Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    .line 835
    .line 836
    .line 837
    invoke-static {v8, v5, v5, v10, v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    .line 838
    .line 839
    .line 840
    goto :goto_18

    .line 841
    :catch_3
    move-exception v0

    .line 842
    const-string v6, "Screenshot"

    .line 843
    .line 844
    const-string v7, "Failed to process screenshot request!"

    .line 845
    .line 846
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    .line 848
    .line 849
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->logFailedRequest(Lcom/android/internal/util/ScreenshotRequest;)V

    .line 850
    .line 851
    .line 852
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    .line 853
    .line 854
    const v1, 0x7f130ec3

    .line 855
    .line 856
    .line 857
    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    .line 858
    .line 859
    .line 860
    move-object v0, v2

    .line 861
    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    .line 862
    .line 863
    const-string v1, "ignored remote exception"

    .line 864
    .line 865
    const-string v2, "Screenshot"

    .line 866
    .line 867
    iget-object v6, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->mReplyTo:Landroid/os/Messenger;

    .line 868
    .line 869
    :try_start_6
    invoke-static {v5, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v6, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 874
    .line 875
    .line 876
    goto :goto_17

    .line 877
    :catch_4
    move-exception v0

    .line 878
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    .line 880
    .line 881
    :goto_17
    :try_start_7
    invoke-static {v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    invoke-virtual {v6, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 886
    .line 887
    .line 888
    goto :goto_18

    .line 889
    :catch_5
    move-exception v0

    .line 890
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    .line 892
    .line 893
    :goto_18
    return-void

    .line 894
    :catchall_0
    move-exception v0

    .line 895
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 896
    throw v0

    .line 897
    :catchall_1
    move-exception v0

    .line 898
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 899
    throw v0

    .line 900
    :cond_23
    :goto_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->logFailedRequest(Lcom/android/internal/util/ScreenshotRequest;)V

    .line 901
    .line 902
    .line 903
    move-object v0, v2

    .line 904
    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    .line 905
    .line 906
    const-string v1, "ignored remote exception"

    .line 907
    .line 908
    const-string v2, "Screenshot"

    .line 909
    .line 910
    iget-object v6, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->mReplyTo:Landroid/os/Messenger;

    .line 911
    .line 912
    :try_start_a
    invoke-static {v5, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-virtual {v6, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    .line 917
    .line 918
    .line 919
    goto :goto_1a

    .line 920
    :catch_6
    move-exception v0

    .line 921
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    .line 923
    .line 924
    :goto_1a
    :try_start_b
    invoke-static {v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    invoke-virtual {v6, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    .line 929
    .line 930
    .line 931
    goto :goto_1b

    .line 932
    :catch_7
    move-exception v0

    .line 933
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    .line 935
    .line 936
    :goto_1b
    return-void
.end method

.method public final logFailedRequest(Lcom/android/internal/util/ScreenshotRequest;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/util/ScreenshotRequest;->getTopComponent()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/internal/util/ScreenshotRequest;->getSource()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotEvent;->getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 29
    .line 30
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_CAPTURE_FAILED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 31
    .line 32
    invoke-interface {p0, p1, v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mCloseSystemDialogs:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    .line 2
    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    .line 4
    .line 5
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/os/Messenger;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final onCreate()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->removeWindow()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 24
    .line 25
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    const-wide/16 v2, 0x1

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/media/MediaPlayer;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->cancel(Z)Z

    .line 44
    .line 45
    .line 46
    const-string v0, "Screenshot"

    .line 47
    .line 48
    const-string v2, "Error releasing shutter sound"

    .line 49
    .line 50
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCopyBroadcastReceiver:Lcom/android/systemui/screenshot/ScreenshotController$2;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/window/WindowContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/window/WindowContext;->release()V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mBgExecutor:Ljava/util/concurrent/ExecutorService;

    .line 64
    .line 65
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotController;->removeWindow()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mCloseSystemDialogs:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0
.end method
