.class public final Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field public final synthetic val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

.field public final synthetic val$connectionStartTime:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;JLcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$connectionStartTime:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onConnectionResult(Z)V
    .locals 8

    .line 1
    sget v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "Screenshot"

    .line 4
    .line 5
    const-string v1, "onConnectionResult : success = "

    .line 6
    .line 7
    const-string v2, " / elapsed = "

    .line 8
    .line 9
    invoke-static {v1, p1, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-wide v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$connectionStartTime:J

    .line 18
    .line 19
    sub-long/2addr v2, v4

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 31
    .line 32
    iget-boolean v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne v1, v3, :cond_0

    .line 37
    .line 38
    iget-object p1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->disconnect()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 44
    .line 45
    iput-object v2, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 46
    .line 47
    const-string p1, "Screenshot"

    .line 48
    .line 49
    const-string v0, "SaveImageInBackgroundTask : Disconnect ScrollCapture service because saving image failed"

    .line 50
    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_0
    if-ne p1, v3, :cond_7

    .line 57
    .line 58
    new-instance p1, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v0, "originId"

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 67
    .line 68
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureOrigin:I

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string v0, "captureMode"

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 76
    .line 77
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    const-string v0, "captureDisplay"

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 85
    .line 86
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    const-string/jumbo v0, "rotation"

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 95
    .line 96
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayRotation:I

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    const-string/jumbo v0, "safeInsetLeft"

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 105
    .line 106
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetLeft:I

    .line 107
    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    const-string/jumbo v0, "safeInsetTop"

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 115
    .line 116
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    const-string/jumbo v0, "safeInsetRight"

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 125
    .line 126
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetRight:I

    .line 127
    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    const-string/jumbo v0, "safeInsetBottom"

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 135
    .line 136
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    .line 137
    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    const-string v0, "isSubDisplayCapture"

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 144
    .line 145
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    .line 146
    .line 147
    sget-object v2, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 148
    .line 149
    const-string v4, "WATCHFACE"

    .line 150
    .line 151
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    const/4 v4, 0x0

    .line 156
    if-eqz v2, :cond_1

    .line 157
    .line 158
    if-ne v1, v3, :cond_1

    .line 159
    .line 160
    move v1, v3

    .line 161
    goto :goto_0

    .line 162
    :cond_1
    move v1, v4

    .line 163
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 171
    .line 172
    iget v1, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    .line 173
    .line 174
    if-ne v1, v3, :cond_2

    .line 175
    .line 176
    move v1, v3

    .line 177
    goto :goto_1

    .line 178
    :cond_2
    move v1, v4

    .line 179
    :goto_1
    if-eqz v1, :cond_3

    .line 180
    .line 181
    const-string/jumbo v1, "statusBarVisible"

    .line 182
    .line 183
    .line 184
    iget-boolean v0, v0, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isStatusBarVisible:Z

    .line 185
    .line 186
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    .line 188
    .line 189
    const-string v0, "navigationBarVisible"

    .line 190
    .line 191
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 192
    .line 193
    iget-boolean v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    .line 194
    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    const-string/jumbo v0, "statusBarHeight"

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 202
    .line 203
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    .line 204
    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    const-string v0, "navigationBarHeight"

    .line 209
    .line 210
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 211
    .line 212
    iget v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    .line 213
    .line 214
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 218
    .line 219
    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    .line 220
    .line 221
    if-eqz v0, :cond_4

    .line 222
    .line 223
    const-string v0, "isSmartCaptureVisible"

    .line 224
    .line 225
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    .line 227
    .line 228
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 229
    .line 230
    iget-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 231
    .line 232
    iget-wide v5, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    .line 233
    .line 234
    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    const-string v2, "notifyGlobalScreenshotStarted"

    .line 240
    .line 241
    const-string v7, "[ScrCap]_RemoteScrollCaptureInterface"

    .line 242
    .line 243
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    iget-object v1, v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    .line 247
    .line 248
    if-eqz v1, :cond_5

    .line 249
    .line 250
    move v4, v3

    .line 251
    :cond_5
    if-nez v4, :cond_6

    .line 252
    .line 253
    const-string p1, "notifyGlobalScreenshotStarted : No service connection"

    .line 254
    .line 255
    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_6
    :try_start_0
    check-cast v1, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;

    .line 260
    .line 261
    invoke-virtual {v1, v5, v6, v0, p1}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;->onGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :catch_0
    move-exception p1

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v1, "notifyGlobalScreenshotStarted : e="

    .line 269
    .line 270
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_7
    const-string p1, "Screenshot"

    .line 288
    .line 289
    const-string v0, "SaveImageInBackgroundTask : Failed to connect to ScrollCapture service"

    .line 290
    .line 291
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 295
    .line 296
    iput-object v2, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 297
    .line 298
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 299
    .line 300
    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 301
    .line 302
    if-eqz p1, :cond_8

    .line 303
    .line 304
    monitor-enter p1

    .line 305
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 306
    .line 307
    iput-boolean v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    .line 308
    .line 309
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 310
    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 312
    .line 313
    .line 314
    monitor-exit p1

    .line 315
    goto :goto_3

    .line 316
    :catchall_0
    move-exception p0

    .line 317
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    throw p0

    .line 319
    :cond_8
    :goto_3
    return-void
.end method
