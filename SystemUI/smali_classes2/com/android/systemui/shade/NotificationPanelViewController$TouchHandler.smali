.class public final Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public mLastTouchDownTime:J

.field public final mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    .line 9
    .line 10
    new-instance p1, Lcom/android/systemui/log/SecTouchLogHelper;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/android/systemui/log/SecTouchLogHelper;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final handleTouch(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    const-string v6, "NPVC"

    .line 18
    .line 19
    const-string v7, "handleTouch"

    .line 20
    .line 21
    const-string v8, ""

    .line 22
    .line 23
    if-eq v1, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v6, v7, v2, v8}, Lcom/android/systemui/log/SecTouchLogHelper;->printLogInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v4, v0, Lcom/android/systemui/log/SecTouchLogHelper;->shouldPrintOnInterceptTouchEventMove:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/log/SecTouchLogHelper;->shouldPrintOnInterceptTouchEventMove:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v6, v7, v2, v8}, Lcom/android/systemui/log/SecTouchLogHelper;->printLogInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-boolean v5, v0, Lcom/android/systemui/log/SecTouchLogHelper;->shouldPrintOnInterceptTouchEventMove:Z

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 41
    .line 42
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 43
    .line 44
    const-string v2, "[NPVC]|[handleTouch]"

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 49
    .line 50
    const-string v1, "handleTouch: touch ignored due to instant expanding"

    .line 51
    .line 52
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 58
    .line 59
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "mInstantExpanding"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1, v2, v0, v5}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 72
    .line 73
    .line 74
    return v5

    .line 75
    :cond_2
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    .line 76
    .line 77
    const/4 v1, 0x3

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eq v0, v1, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 89
    .line 90
    const-string v1, "handleTouch: non-cancel action, touch disabled"

    .line 91
    .line 92
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 98
    .line 99
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v1, "mTouchDisabled && action != CANCEL"

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1, v2, v0, v5}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 112
    .line 113
    .line 114
    return v5

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 116
    .line 117
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 118
    .line 119
    const/16 v6, 0x2002

    .line 120
    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 144
    .line 145
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 146
    .line 147
    if-nez v1, :cond_6

    .line 148
    .line 149
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 150
    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_4

    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 160
    .line 161
    iput-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 162
    .line 163
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-ne v0, v4, :cond_5

    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 170
    .line 171
    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    .line 172
    .line 173
    .line 174
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 177
    .line 178
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 179
    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v1, "On expanding, single mouse click expands the panel instead of dragging"

    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1, v2, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 191
    .line 192
    .line 193
    return v4

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 195
    .line 196
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 199
    .line 200
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 201
    .line 202
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 203
    .line 204
    const-string v3, "handleTouch: non-down action, motion was aborted"

    .line 205
    .line 206
    invoke-virtual {v1, p1, v0, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 212
    .line 213
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v1, "mMotionAborted && action != DOWN"

    .line 221
    .line 222
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, p1, v2, v0, v5}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 226
    .line 227
    .line 228
    return v5

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 230
    .line 231
    iget-boolean v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    .line 232
    .line 233
    if-nez v7, :cond_9

    .line 234
    .line 235
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 236
    .line 237
    if-eqz v1, :cond_8

    .line 238
    .line 239
    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    .line 240
    .line 241
    .line 242
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 243
    .line 244
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 245
    .line 246
    const-string v1, "handleTouch: drag not enabled"

    .line 247
    .line 248
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 252
    .line 253
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 259
    .line 260
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v1, "!mNotificationsDragEnabled"

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v1, ", mTracking: "

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 273
    .line 274
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 280
    .line 281
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 282
    .line 283
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-virtual {v0, p1, v2, p0, v5}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 288
    .line 289
    .line 290
    return v5

    .line 291
    :cond_9
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_b

    .line 296
    .line 297
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_b

    .line 302
    .line 303
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 304
    .line 305
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 306
    .line 307
    if-nez v0, :cond_b

    .line 308
    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-ne v0, v4, :cond_a

    .line 314
    .line 315
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 316
    .line 317
    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    .line 318
    .line 319
    .line 320
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 321
    .line 322
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v1, "!isFullyCollapsed and from mouse"

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 337
    .line 338
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 339
    .line 340
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 341
    .line 342
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-virtual {v0, p1, v2, p0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 345
    .line 346
    .line 347
    return v4

    .line 348
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 349
    .line 350
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-gez v0, :cond_c

    .line 357
    .line 358
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 359
    .line 360
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    iput v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 365
    .line 366
    move v0, v5

    .line 367
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    if-eqz v7, :cond_d

    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    if-ne v7, v3, :cond_11

    .line 386
    .line 387
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 388
    .line 389
    iget-boolean v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 390
    .line 391
    if-eqz v8, :cond_e

    .line 392
    .line 393
    iput-boolean v5, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 394
    .line 395
    goto :goto_1

    .line 396
    :cond_e
    invoke-virtual {v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    if-nez v8, :cond_10

    .line 401
    .line 402
    iget v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 403
    .line 404
    if-eqz v8, :cond_f

    .line 405
    .line 406
    goto :goto_2

    .line 407
    :cond_f
    :goto_1
    move v8, v5

    .line 408
    goto :goto_3

    .line 409
    :cond_10
    :goto_2
    move v8, v4

    .line 410
    :goto_3
    iput-boolean v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 411
    .line 412
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 413
    .line 414
    iput-boolean v4, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    .line 415
    .line 416
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    const/4 v8, 0x0

    .line 421
    const-string/jumbo v9, "systemui.shade"

    .line 422
    .line 423
    .line 424
    const-string v10, "NotificationPanelView"

    .line 425
    .line 426
    const/4 v11, 0x0

    .line 427
    if-eqz v7, :cond_27

    .line 428
    .line 429
    if-eq v7, v4, :cond_23

    .line 430
    .line 431
    if-eq v7, v3, :cond_15

    .line 432
    .line 433
    if-eq v7, v1, :cond_23

    .line 434
    .line 435
    const/4 v1, 0x5

    .line 436
    if-eq v7, v1, :cond_14

    .line 437
    .line 438
    const/4 v0, 0x6

    .line 439
    if-eq v7, v0, :cond_12

    .line 440
    .line 441
    goto/16 :goto_c

    .line 442
    .line 443
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 444
    .line 445
    sget-object v1, Lcom/android/systemui/shade/NotificationPanelViewController;->ADDITIONAL_TAP_REQUIRED_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 459
    .line 460
    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 461
    .line 462
    if-ne v1, v0, :cond_2f

    .line 463
    .line 464
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    if-eq v1, v0, :cond_13

    .line 469
    .line 470
    move v0, v5

    .line 471
    goto :goto_4

    .line 472
    :cond_13
    move v0, v4

    .line 473
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 482
    .line 483
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    iput v0, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 488
    .line 489
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 490
    .line 491
    iput-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    .line 492
    .line 493
    iget v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 494
    .line 495
    invoke-static {v0, v3, v1, v4, v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    .line 496
    .line 497
    .line 498
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 499
    .line 500
    iput-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    .line 501
    .line 502
    goto/16 :goto_c

    .line 503
    .line 504
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 505
    .line 506
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 507
    .line 508
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 509
    .line 510
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 511
    .line 512
    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 513
    .line 514
    const-string v7, "handleTouch: pointer down action"

    .line 515
    .line 516
    invoke-virtual {v3, p1, v1, v7}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 520
    .line 521
    sget-object v3, Lcom/android/systemui/shade/NotificationPanelViewController;->ADDITIONAL_TAP_REQUIRED_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 522
    .line 523
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 527
    .line 528
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 529
    .line 530
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 531
    .line 532
    iget v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 533
    .line 534
    if-ne v3, v4, :cond_2f

    .line 535
    .line 536
    iput-boolean v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 537
    .line 538
    invoke-static {v1, p1, v6, v0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mendMotionEvent(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;FFZ)V

    .line 539
    .line 540
    .line 541
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 542
    .line 543
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 544
    .line 545
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 546
    .line 547
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    .line 549
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    const-string v1, "!isTrackpadMotionEvent && SB state == KEYGUARD"

    .line 553
    .line 554
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p0, p1, v2, v0, v5}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 558
    .line 559
    .line 560
    return v5

    .line 561
    :cond_15
    sget-boolean v1, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 562
    .line 563
    if-eqz v1, :cond_16

    .line 564
    .line 565
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 566
    .line 567
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 571
    .line 572
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    if-eqz v1, :cond_17

    .line 577
    .line 578
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 579
    .line 580
    iput-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    .line 581
    .line 582
    iget v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 583
    .line 584
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 585
    .line 586
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    sget-object v7, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 590
    .line 591
    sget-object v12, Lcom/android/systemui/shade/ShadeLogger$logHasVibrated$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logHasVibrated$2;

    .line 592
    .line 593
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 594
    .line 595
    invoke-virtual {v1, v9, v7, v12, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    invoke-interface {v7, v5}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 600
    .line 601
    .line 602
    float-to-double v8, v3

    .line 603
    invoke-interface {v7, v8, v9}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v1, v7}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 607
    .line 608
    .line 609
    :cond_17
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 610
    .line 611
    invoke-static {v1, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 612
    .line 613
    .line 614
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 615
    .line 616
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    if-nez v1, :cond_18

    .line 621
    .line 622
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 623
    .line 624
    invoke-virtual {v1, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->maybeVibrateOnOpening(Z)V

    .line 625
    .line 626
    .line 627
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 628
    .line 629
    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 630
    .line 631
    sub-float v1, v0, v1

    .line 632
    .line 633
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 638
    .line 639
    invoke-virtual {v7, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    .line 640
    .line 641
    .line 642
    move-result v7

    .line 643
    cmpl-float v3, v3, v7

    .line 644
    .line 645
    if-lez v3, :cond_1b

    .line 646
    .line 647
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 652
    .line 653
    iget v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 654
    .line 655
    sub-float v7, v6, v7

    .line 656
    .line 657
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 658
    .line 659
    .line 660
    move-result v7

    .line 661
    cmpl-float v3, v3, v7

    .line 662
    .line 663
    if-gtz v3, :cond_19

    .line 664
    .line 665
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 666
    .line 667
    iget-boolean v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    .line 668
    .line 669
    if-eqz v3, :cond_1b

    .line 670
    .line 671
    :cond_19
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 672
    .line 673
    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    .line 674
    .line 675
    iget-boolean v7, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 676
    .line 677
    if-eqz v7, :cond_1b

    .line 678
    .line 679
    iget-boolean v7, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 680
    .line 681
    if-nez v7, :cond_1b

    .line 682
    .line 683
    iget-boolean v7, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    .line 684
    .line 685
    if-nez v7, :cond_1b

    .line 686
    .line 687
    iget v7, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    .line 688
    .line 689
    cmpl-float v7, v7, v11

    .line 690
    .line 691
    if-eqz v7, :cond_1a

    .line 692
    .line 693
    iget v1, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 694
    .line 695
    invoke-static {v3, v6, v0, v5, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    .line 696
    .line 697
    .line 698
    move v1, v11

    .line 699
    :cond_1a
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 700
    .line 701
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 702
    .line 703
    .line 704
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 705
    .line 706
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted()V

    .line 707
    .line 708
    .line 709
    :cond_1b
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 710
    .line 711
    iget v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    .line 712
    .line 713
    add-float/2addr v3, v1

    .line 714
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 719
    .line 720
    iget v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinExpandHeight:F

    .line 721
    .line 722
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    .line 723
    .line 724
    .line 725
    move-result v3

    .line 726
    neg-float v7, v1

    .line 727
    iget-object v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 728
    .line 729
    invoke-virtual {v8}, Lcom/android/systemui/shade/NotificationPanelViewController;->getFalsingThreshold()I

    .line 730
    .line 731
    .line 732
    move-result v8

    .line 733
    int-to-float v8, v8

    .line 734
    cmpl-float v7, v7, v8

    .line 735
    .line 736
    if-ltz v7, :cond_1e

    .line 737
    .line 738
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 739
    .line 740
    iput-boolean v4, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    .line 741
    .line 742
    iget v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 743
    .line 744
    sub-float/2addr v6, v8

    .line 745
    iget v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 746
    .line 747
    sub-float/2addr v0, v8

    .line 748
    cmpl-float v8, v0, v11

    .line 749
    .line 750
    if-ltz v8, :cond_1c

    .line 751
    .line 752
    goto :goto_5

    .line 753
    :cond_1c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 758
    .line 759
    .line 760
    move-result v6

    .line 761
    cmpl-float v0, v0, v6

    .line 762
    .line 763
    if-ltz v0, :cond_1d

    .line 764
    .line 765
    move v0, v4

    .line 766
    goto :goto_6

    .line 767
    :cond_1d
    :goto_5
    move v0, v5

    .line 768
    :goto_6
    iput-boolean v0, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpwardsWhenThresholdReached:Z

    .line 769
    .line 770
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 771
    .line 772
    iget-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 773
    .line 774
    if-eqz v6, :cond_1f

    .line 775
    .line 776
    iget-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 777
    .line 778
    if-eqz v6, :cond_22

    .line 779
    .line 780
    :cond_1f
    iget-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    .line 781
    .line 782
    if-nez v6, :cond_22

    .line 783
    .line 784
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 785
    .line 786
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->isTrackingBlocked()Z

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    if-nez v0, :cond_22

    .line 791
    .line 792
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 793
    .line 794
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 795
    .line 796
    cmpg-float v1, v1, v11

    .line 797
    .line 798
    if-gtz v1, :cond_20

    .line 799
    .line 800
    move v1, v4

    .line 801
    goto :goto_7

    .line 802
    :cond_20
    move v1, v5

    .line 803
    :goto_7
    if-nez v1, :cond_21

    .line 804
    .line 805
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 806
    .line 807
    if-eqz v7, :cond_21

    .line 808
    .line 809
    iput-boolean v4, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    .line 810
    .line 811
    :cond_21
    iput-boolean v1, v6, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 812
    .line 813
    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeightInternal(F)V

    .line 814
    .line 815
    .line 816
    goto/16 :goto_c

    .line 817
    .line 818
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 819
    .line 820
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 821
    .line 822
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 823
    .line 824
    .line 825
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 826
    .line 827
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 828
    .line 829
    const-string v1, "Panel is Not Being handled. :: "

    .line 830
    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    const-string v1, "mGestureWaitForTouchSlop : "

    .line 835
    .line 836
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 840
    .line 841
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 842
    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    const-string v1, ", mTracking : "

    .line 847
    .line 848
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 852
    .line 853
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 854
    .line 855
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    const-string v1, ", mBlockingExpansionForCurrentTouch:"

    .line 859
    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 864
    .line 865
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    .line 866
    .line 867
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    const-string v1, ", mQsController.isTrackingBlocked():"

    .line 871
    .line 872
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 876
    .line 877
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 878
    .line 879
    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsController;->isTrackingBlocked()Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 887
    .line 888
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 889
    .line 890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .line 896
    .line 897
    goto/16 :goto_c

    .line 898
    .line 899
    :cond_23
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 900
    .line 901
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 902
    .line 903
    const-string v3, "onTouch: up/cancel action"

    .line 904
    .line 905
    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 909
    .line 910
    invoke-static {v1, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 911
    .line 912
    .line 913
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 914
    .line 915
    invoke-static {v1, p1, v6, v0, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mendMotionEvent(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;FFZ)V

    .line 916
    .line 917
    .line 918
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 919
    .line 920
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 921
    .line 922
    if-nez v0, :cond_2f

    .line 923
    .line 924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    if-ne v0, v4, :cond_25

    .line 929
    .line 930
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 931
    .line 932
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 933
    .line 934
    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 935
    .line 936
    if-nez v0, :cond_24

    .line 937
    .line 938
    goto/16 :goto_c

    .line 939
    .line 940
    :cond_24
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    invoke-virtual {v0, v5}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 945
    .line 946
    .line 947
    goto/16 :goto_c

    .line 948
    .line 949
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 950
    .line 951
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 952
    .line 953
    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 954
    .line 955
    if-nez v0, :cond_26

    .line 956
    .line 957
    goto/16 :goto_c

    .line 958
    .line 959
    :cond_26
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-virtual {v0, v5}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 964
    .line 965
    .line 966
    goto/16 :goto_c

    .line 967
    .line 968
    :cond_27
    sget-boolean v1, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 969
    .line 970
    if-eqz v1, :cond_28

    .line 971
    .line 972
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 973
    .line 974
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 975
    .line 976
    .line 977
    :cond_28
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 978
    .line 979
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 980
    .line 981
    const-string v3, "onTouch: down action"

    .line 982
    .line 983
    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 987
    .line 988
    iget v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 989
    .line 990
    invoke-static {v1, v6, v0, v5, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    .line 991
    .line 992
    .line 993
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 994
    .line 995
    iput v11, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinExpandHeight:F

    .line 996
    .line 997
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 998
    .line 999
    .line 1000
    move-result v1

    .line 1001
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    .line 1002
    .line 1003
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1004
    .line 1005
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1006
    .line 1007
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    .line 1008
    .line 1009
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 1010
    .line 1011
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1012
    .line 1013
    .line 1014
    sget-object v6, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 1015
    .line 1016
    sget-object v7, Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;

    .line 1017
    .line 1018
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 1019
    .line 1020
    invoke-virtual {v1, v9, v6, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v6

    .line 1024
    const-string v7, "handle down touch"

    .line 1025
    .line 1026
    invoke-interface {v6, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-interface {v6, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 1030
    .line 1031
    .line 1032
    float-to-double v7, v0

    .line 1033
    invoke-interface {v6, v7, v8}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v1, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 1037
    .line 1038
    .line 1039
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1040
    .line 1041
    iput-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    .line 1042
    .line 1043
    iput-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    .line 1044
    .line 1045
    iput-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 1046
    .line 1047
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 1048
    .line 1049
    check-cast v1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 1050
    .line 1051
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1052
    .line 1053
    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1055
    .line 1056
    .line 1057
    move-result-wide v6

    .line 1058
    iput-wide v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownTime:J

    .line 1059
    .line 1060
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1061
    .line 1062
    iput-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    .line 1063
    .line 1064
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1065
    .line 1066
    .line 1067
    move-result v1

    .line 1068
    if-eqz v1, :cond_29

    .line 1069
    .line 1070
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1071
    .line 1072
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1073
    .line 1074
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 1075
    .line 1076
    if-eqz v1, :cond_29

    .line 1077
    .line 1078
    move v1, v4

    .line 1079
    goto :goto_8

    .line 1080
    :cond_29
    move v1, v5

    .line 1081
    :goto_8
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    .line 1082
    .line 1083
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1084
    .line 1085
    invoke-static {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 1086
    .line 1087
    .line 1088
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1089
    .line 1090
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1091
    .line 1092
    if-eqz v1, :cond_2a

    .line 1093
    .line 1094
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 1095
    .line 1096
    if-nez v1, :cond_2a

    .line 1097
    .line 1098
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    .line 1099
    .line 1100
    if-nez v1, :cond_2a

    .line 1101
    .line 1102
    move v1, v4

    .line 1103
    goto :goto_9

    .line 1104
    :cond_2a
    move v1, v5

    .line 1105
    :goto_9
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 1106
    .line 1107
    if-eqz v3, :cond_2b

    .line 1108
    .line 1109
    if-eqz v1, :cond_2e

    .line 1110
    .line 1111
    :cond_2b
    if-nez v1, :cond_2d

    .line 1112
    .line 1113
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    .line 1114
    .line 1115
    if-eqz v1, :cond_2c

    .line 1116
    .line 1117
    goto :goto_a

    .line 1118
    :cond_2c
    move v1, v5

    .line 1119
    goto :goto_b

    .line 1120
    :cond_2d
    :goto_a
    move v1, v4

    .line 1121
    :goto_b
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    .line 1122
    .line 1123
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 1124
    .line 1125
    .line 1126
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1127
    .line 1128
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted()V

    .line 1129
    .line 1130
    .line 1131
    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1132
    .line 1133
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1136
    .line 1137
    .line 1138
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1139
    .line 1140
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    const-string v1, "ACTION_DOWN: "

    .line 1143
    .line 1144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    .line 1147
    const-string v1, "isFullyCollapsed:"

    .line 1148
    .line 1149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    .line 1152
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1153
    .line 1154
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1155
    .line 1156
    .line 1157
    move-result v1

    .line 1158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    const-string v1, ", hasPinnedHeadsUp:"

    .line 1162
    .line 1163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1167
    .line 1168
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1169
    .line 1170
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 1171
    .line 1172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1173
    .line 1174
    .line 1175
    const-string v1, ", isBouncerShowing:"

    .line 1176
    .line 1177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    .line 1180
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1181
    .line 1182
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1183
    .line 1184
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 1185
    .line 1186
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 1187
    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    const-string v1, ", mGestureWaitForTouchSlop:"

    .line 1192
    .line 1193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    .line 1196
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1197
    .line 1198
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 1199
    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    .line 1203
    const-string v1, ", mIgnoreXTouchSlop:"

    .line 1204
    .line 1205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    .line 1208
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1209
    .line 1210
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    .line 1211
    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1213
    .line 1214
    .line 1215
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1216
    .line 1217
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v0

    .line 1223
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    .line 1225
    .line 1226
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1227
    .line 1228
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v0

    .line 1232
    if-eqz v0, :cond_2f

    .line 1233
    .line 1234
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1235
    .line 1236
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1237
    .line 1238
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 1239
    .line 1240
    if-nez v1, :cond_2f

    .line 1241
    .line 1242
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1243
    .line 1244
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 1245
    .line 1246
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 1247
    .line 1248
    if-nez v1, :cond_2f

    .line 1249
    .line 1250
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 1251
    .line 1252
    .line 1253
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1254
    .line 1255
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 1256
    .line 1257
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1258
    .line 1259
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1260
    .line 1261
    int-to-float v6, v6

    .line 1262
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1263
    .line 1264
    int-to-float v3, v3

    .line 1265
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    .line 1266
    .line 1267
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 1268
    .line 1269
    .line 1270
    move-result v1

    .line 1271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 1272
    .line 1273
    .line 1274
    move-result v7

    .line 1275
    div-float/2addr v7, v6

    .line 1276
    const/high16 v6, 0x42c80000    # 100.0f

    .line 1277
    .line 1278
    mul-float/2addr v7, v6

    .line 1279
    float-to-int v7, v7

    .line 1280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 1281
    .line 1282
    .line 1283
    move-result v8

    .line 1284
    div-float/2addr v8, v3

    .line 1285
    mul-float/2addr v8, v6

    .line 1286
    float-to-int v3, v8

    .line 1287
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 1288
    .line 1289
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1290
    .line 1291
    .line 1292
    new-instance v6, Landroid/metrics/LogMaker;

    .line 1293
    .line 1294
    const/16 v8, 0x530

    .line 1295
    .line 1296
    invoke-direct {v6, v8}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1297
    .line 1298
    .line 1299
    const/4 v8, 0x4

    .line 1300
    invoke-virtual {v6, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v6

    .line 1304
    const/16 v8, 0x52e

    .line 1305
    .line 1306
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v7

    .line 1310
    invoke-virtual {v6, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v6

    .line 1314
    const/16 v7, 0x52f

    .line 1315
    .line 1316
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v3

    .line 1320
    invoke-virtual {v6, v7, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v3

    .line 1324
    const/16 v6, 0x531

    .line 1325
    .line 1326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v1

    .line 1330
    invoke-virtual {v3, v6, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v1

    .line 1334
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1335
    .line 1336
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1337
    .line 1338
    .line 1339
    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCKED_NOTIFICATION_PANEL_EXPAND:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 1340
    .line 1341
    new-instance v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 1342
    .line 1343
    invoke-direct {v1}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 1347
    .line 1348
    .line 1349
    :cond_2f
    :goto_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1350
    .line 1351
    .line 1352
    move-result v0

    .line 1353
    if-nez v0, :cond_32

    .line 1354
    .line 1355
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1356
    .line 1357
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1360
    .line 1361
    .line 1362
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1363
    .line 1364
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    const-string v1, "FINAL: onTouch(ACTION_DOWN): "

    .line 1367
    .line 1368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    .line 1371
    const-string v1, "mGestureWaitForTouchSlop:"

    .line 1372
    .line 1373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    .line 1376
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1377
    .line 1378
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 1379
    .line 1380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1381
    .line 1382
    .line 1383
    const-string v1, ", mTracking:"

    .line 1384
    .line 1385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    .line 1387
    .line 1388
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1389
    .line 1390
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 1391
    .line 1392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    .line 1395
    const-string v1, ", isFullyCollapsed:"

    .line 1396
    .line 1397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    .line 1399
    .line 1400
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1401
    .line 1402
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1403
    .line 1404
    .line 1405
    move-result v1

    .line 1406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1407
    .line 1408
    .line 1409
    const-string v1, ", isFullyExpanded:"

    .line 1410
    .line 1411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    .line 1413
    .line 1414
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1415
    .line 1416
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 1417
    .line 1418
    .line 1419
    move-result v1

    .line 1420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1421
    .line 1422
    .line 1423
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1424
    .line 1425
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 1426
    .line 1427
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 1428
    .line 1429
    if-eqz v3, :cond_31

    .line 1430
    .line 1431
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 1432
    .line 1433
    if-eqz v3, :cond_30

    .line 1434
    .line 1435
    goto :goto_d

    .line 1436
    :cond_30
    move v3, v5

    .line 1437
    goto :goto_e

    .line 1438
    :cond_31
    :goto_d
    move v3, v4

    .line 1439
    :goto_e
    check-cast v1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1440
    .line 1441
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 1442
    .line 1443
    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1444
    .line 1445
    .line 1446
    :cond_32
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1447
    .line 1448
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 1449
    .line 1450
    if-eqz p1, :cond_34

    .line 1451
    .line 1452
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 1453
    .line 1454
    if-eqz p0, :cond_33

    .line 1455
    .line 1456
    goto :goto_f

    .line 1457
    :cond_33
    move v4, v5

    .line 1458
    :cond_34
    :goto_f
    return v4
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 4
    .line 5
    const-string v1, "NPVC onInterceptTouchEvent"

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 11
    .line 12
    const-string v1, "NPVC"

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnInterceptTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->disallowTouches()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 33
    .line 34
    const-string v2, "NPVC not intercepting touch, panel touches disallowed"

    .line 35
    .line 36
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 42
    .line 43
    const-string v0, "disallowPanelTouches"

    .line 44
    .line 45
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 46
    .line 47
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 52
    .line 53
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDetailViewCollapseAnimating:Z

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    if-nez v3, :cond_66

    .line 57
    .line 58
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsExpandedViewCollapseAnimating:Z

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    goto/16 :goto_28

    .line 63
    .line 64
    :cond_1
    sget-boolean v3, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 79
    .line 80
    const-string/jumbo v0, "unlockedScreenOff animation playing"

    .line 81
    .line 82
    .line 83
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 84
    .line 85
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    return v4

    .line 89
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    .line 90
    .line 91
    const/4 v3, 0x2

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 95
    .line 96
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 97
    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 101
    .line 102
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 103
    .line 104
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 105
    .line 106
    if-ne v0, v4, :cond_4

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    float-to-int v0, v0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    float-to-int v5, v5

    .line 118
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 119
    .line 120
    iget-object v6, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 121
    .line 122
    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 123
    .line 124
    if-eqz v7, :cond_3

    .line 125
    .line 126
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-nez v7, :cond_3

    .line 131
    .line 132
    new-array v7, v3, [I

    .line 133
    .line 134
    iget-object v8, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 135
    .line 136
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 137
    .line 138
    .line 139
    aget v8, v7, v1

    .line 140
    .line 141
    if-lt v0, v8, :cond_3

    .line 142
    .line 143
    iget-object v9, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 144
    .line 145
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    add-int/2addr v9, v8

    .line 150
    if-gt v0, v9, :cond_3

    .line 151
    .line 152
    aget v0, v7, v4

    .line 153
    .line 154
    if-lt v5, v0, :cond_3

    .line 155
    .line 156
    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 157
    .line 158
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    add-int/2addr v6, v0

    .line 163
    if-gt v5, v6, :cond_3

    .line 164
    .line 165
    move v0, v4

    .line 166
    goto :goto_0

    .line 167
    :cond_3
    move v0, v1

    .line 168
    :goto_0
    if-eqz v0, :cond_4

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 171
    .line 172
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 173
    .line 174
    const-string v0, "LsRune.LOCKUI_MULTI_USER"

    .line 175
    .line 176
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 177
    .line 178
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 179
    .line 180
    .line 181
    return v1

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 183
    .line 184
    invoke-static {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$minitDownStates(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 188
    .line 189
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 190
    .line 191
    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 192
    .line 193
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 194
    .line 195
    if-eqz v5, :cond_5

    .line 196
    .line 197
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 198
    .line 199
    const-string v1, "NotificationPanelViewController MotionEvent intercepted: bouncer is showing"

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 205
    .line 206
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 207
    .line 208
    const-string v0, "isBouncerShowing"

    .line 209
    .line 210
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 211
    .line 212
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 213
    .line 214
    .line 215
    return v4

    .line 216
    :cond_5
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_8

    .line 223
    .line 224
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 225
    .line 226
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 229
    .line 230
    if-eqz v0, :cond_6

    .line 231
    .line 232
    move v0, v4

    .line 233
    goto :goto_1

    .line 234
    :cond_6
    move v0, v1

    .line 235
    :goto_1
    if-eqz v0, :cond_7

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_8

    .line 242
    .line 243
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 244
    .line 245
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 246
    .line 247
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_8

    .line 252
    .line 253
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 256
    .line 257
    const-string/jumbo v1, "panel_open"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 264
    .line 265
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 266
    .line 267
    const-string/jumbo v1, "panel_open_peek"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 274
    .line 275
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 276
    .line 277
    const-string v1, "NotificationPanelViewController MotionEvent intercepted: HeadsUpTouchHelper"

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 283
    .line 284
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 285
    .line 286
    const-string v0, "no long press and HUN consume"

    .line 287
    .line 288
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 289
    .line 290
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 291
    .line 292
    .line 293
    return v4

    .line 294
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 295
    .line 296
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 297
    .line 298
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    .line 299
    .line 300
    if-eqz v5, :cond_a

    .line 301
    .line 302
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 303
    .line 304
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 305
    .line 306
    if-eqz v0, :cond_9

    .line 307
    .line 308
    move v0, v4

    .line 309
    goto :goto_2

    .line 310
    :cond_9
    move v0, v1

    .line 311
    :goto_2
    if-eqz v0, :cond_a

    .line 312
    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-ne v0, v3, :cond_a

    .line 318
    .line 319
    return v1

    .line 320
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 321
    .line 322
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 323
    .line 324
    iget-object v5, v5, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 325
    .line 326
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    new-instance v6, Lcom/android/systemui/shade/SecQuickSettingsController$interceptMediaTouchEvent$1;

    .line 330
    .line 331
    invoke-direct {v6, v5}, Lcom/android/systemui/shade/SecQuickSettingsController$interceptMediaTouchEvent$1;-><init>(Lcom/android/systemui/shade/SecQuickSettingsController;)V

    .line 332
    .line 333
    .line 334
    iget-object v5, v5, Lcom/android/systemui/shade/SecQuickSettingsController;->mediaTouchHelper:Lcom/android/systemui/shade/SecQsMediaTouchHelper;

    .line 335
    .line 336
    iget-object v7, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 337
    .line 338
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 339
    .line 340
    iget v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 341
    .line 342
    if-lez v8, :cond_b

    .line 343
    .line 344
    move v8, v4

    .line 345
    goto :goto_3

    .line 346
    :cond_b
    move v8, v1

    .line 347
    :goto_3
    const/4 v9, 0x3

    .line 348
    const/4 v10, 0x6

    .line 349
    const/4 v11, 0x0

    .line 350
    if-eqz v8, :cond_c

    .line 351
    .line 352
    goto/16 :goto_b

    .line 353
    .line 354
    :cond_c
    invoke-virtual {v5, p1, v11}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->updateMediaPlayerBar(Landroid/view/MotionEvent;Lcom/android/systemui/shade/SecQsMediaTouchHelper$onTouch$1;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-nez v1, :cond_d

    .line 362
    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 368
    .line 369
    .line 370
    move-result v8

    .line 371
    invoke-virtual {v5, v1, v8}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->isInMediaPlayer(FF)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    iput-boolean v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->actionDownStartInMediaPlayer:Z

    .line 376
    .line 377
    :cond_d
    iget-boolean v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->actionDownStartInMediaPlayer:Z

    .line 378
    .line 379
    if-eqz v1, :cond_1b

    .line 380
    .line 381
    sget-object v1, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    .line 382
    .line 383
    iget-object v8, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 384
    .line 385
    invoke-virtual {v8, v1}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerSize(Lcom/android/systemui/media/MediaType;)I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-nez v1, :cond_e

    .line 390
    .line 391
    goto/16 :goto_8

    .line 392
    .line 393
    :cond_e
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-eqz v1, :cond_f

    .line 398
    .line 399
    goto/16 :goto_8

    .line 400
    .line 401
    :cond_f
    invoke-virtual {v5, p1}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->preparePointerIndex(Landroid/view/MotionEvent;)I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 406
    .line 407
    .line 408
    move-result v11

    .line 409
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    iget-object v12, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->trackMovementConsumer:Ljava/util/function/Consumer;

    .line 414
    .line 415
    invoke-interface {v12, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 419
    .line 420
    .line 421
    move-result v12

    .line 422
    iget-object v13, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

    .line 423
    .line 424
    if-eqz v12, :cond_19

    .line 425
    .line 426
    if-eq v12, v4, :cond_18

    .line 427
    .line 428
    if-eq v12, v3, :cond_12

    .line 429
    .line 430
    if-eq v12, v9, :cond_18

    .line 431
    .line 432
    if-eq v12, v10, :cond_10

    .line 433
    .line 434
    goto/16 :goto_8

    .line 435
    .line 436
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    iget-object v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->trackingPointerSupplier:Ljava/util/function/IntSupplier;

    .line 445
    .line 446
    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-ne v1, v0, :cond_1a

    .line 451
    .line 452
    const/4 v1, 0x0

    .line 453
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-eq v1, v0, :cond_11

    .line 458
    .line 459
    const/4 v0, 0x0

    .line 460
    goto :goto_4

    .line 461
    :cond_11
    move v0, v4

    .line 462
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    invoke-virtual {v5, v1, v0}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->updateInitialTouchPosition(FF)V

    .line 471
    .line 472
    .line 473
    goto/16 :goto_8

    .line 474
    .line 475
    :cond_12
    iget-object v10, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initialTouchYSupplier:Ljava/util/function/DoubleSupplier;

    .line 476
    .line 477
    invoke-interface {v10}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 478
    .line 479
    .line 480
    move-result-wide v12

    .line 481
    double-to-float v10, v12

    .line 482
    sub-float v10, v1, v10

    .line 483
    .line 484
    iput v10, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaDraggedHeight:F

    .line 485
    .line 486
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 487
    .line 488
    .line 489
    move-result v10

    .line 490
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    .line 491
    .line 492
    .line 493
    move-result v12

    .line 494
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 495
    .line 496
    .line 497
    move-result-object v12

    .line 498
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 499
    .line 500
    .line 501
    move-result v12

    .line 502
    cmpl-float v10, v10, v12

    .line 503
    .line 504
    if-lez v10, :cond_1a

    .line 505
    .line 506
    iget v10, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaDraggedHeight:F

    .line 507
    .line 508
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 509
    .line 510
    .line 511
    move-result v10

    .line 512
    iget-object v12, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initialTouchXSupplier:Ljava/util/function/DoubleSupplier;

    .line 513
    .line 514
    invoke-interface {v12}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 515
    .line 516
    .line 517
    move-result-wide v12

    .line 518
    double-to-float v12, v12

    .line 519
    sub-float v12, v11, v12

    .line 520
    .line 521
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 522
    .line 523
    .line 524
    move-result v12

    .line 525
    cmpl-float v10, v10, v12

    .line 526
    .line 527
    if-lez v10, :cond_1a

    .line 528
    .line 529
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 530
    .line 531
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 532
    .line 533
    .line 534
    move-result-object v10

    .line 535
    invoke-interface {v10, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v5, v11, v1}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->updateInitialTouchPosition(FF)V

    .line 539
    .line 540
    .line 541
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 542
    .line 543
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v5, p1}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->preparePointerIndex(Landroid/view/MotionEvent;)I

    .line 547
    .line 548
    .line 549
    move-result v7

    .line 550
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    .line 551
    .line 552
    .line 553
    move-result v10

    .line 554
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    .line 555
    .line 556
    .line 557
    move-result v7

    .line 558
    iget-object v8, v8, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 559
    .line 560
    iget v8, v8, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerBarState:I

    .line 561
    .line 562
    if-ne v8, v4, :cond_13

    .line 563
    .line 564
    move v8, v4

    .line 565
    goto :goto_5

    .line 566
    :cond_13
    const/4 v8, 0x0

    .line 567
    :goto_5
    if-eqz v8, :cond_15

    .line 568
    .line 569
    iget v8, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaDraggedHeight:F

    .line 570
    .line 571
    const/4 v11, 0x0

    .line 572
    cmpl-float v8, v8, v11

    .line 573
    .line 574
    if-lez v8, :cond_14

    .line 575
    .line 576
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v6}, Lcom/android/systemui/shade/SecQuickSettingsController$interceptMediaTouchEvent$1;->run()V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v5, v10, v7}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->updateInitialTouchPosition(FF)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 590
    .line 591
    .line 592
    goto :goto_8

    .line 593
    :cond_14
    iput-boolean v4, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerExpanding:Z

    .line 594
    .line 595
    goto :goto_7

    .line 596
    :cond_15
    iget v0, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaDraggedHeight:F

    .line 597
    .line 598
    const/4 v6, 0x0

    .line 599
    cmpl-float v0, v0, v6

    .line 600
    .line 601
    if-lez v0, :cond_16

    .line 602
    .line 603
    iput-boolean v4, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerExpanding:Z

    .line 604
    .line 605
    goto :goto_7

    .line 606
    :cond_16
    iget v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    .line 607
    .line 608
    iget v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 609
    .line 610
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    iget v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 615
    .line 616
    if-ge v0, v6, :cond_17

    .line 617
    .line 618
    move v0, v4

    .line 619
    goto :goto_6

    .line 620
    :cond_17
    const/4 v0, 0x0

    .line 621
    :goto_6
    if-eqz v0, :cond_1a

    .line 622
    .line 623
    iput-boolean v4, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerScrolling:Z

    .line 624
    .line 625
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldMediaPlayerDraggingStarted:Z

    .line 626
    .line 627
    :goto_7
    move v0, v4

    .line 628
    goto :goto_9

    .line 629
    :cond_18
    const/4 v0, 0x0

    .line 630
    iput-boolean v0, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerExpanding:Z

    .line 631
    .line 632
    iput-boolean v0, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerScrolling:Z

    .line 633
    .line 634
    iget-object v1, v8, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 635
    .line 636
    invoke-interface {v13}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 637
    .line 638
    .line 639
    move-result-wide v6

    .line 640
    double-to-float v6, v6

    .line 641
    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setTracking(FZ)Z

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    or-int/2addr v0, v1

    .line 646
    iget-object v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->clearVelocityTrackerRunnable:Ljava/lang/Runnable;

    .line 647
    .line 648
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 649
    .line 650
    .line 651
    goto :goto_9

    .line 652
    :cond_19
    invoke-virtual {v5, v11, v1}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->updateInitialTouchPosition(FF)V

    .line 653
    .line 654
    .line 655
    iget-object v0, v8, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 656
    .line 657
    invoke-interface {v13}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 658
    .line 659
    .line 660
    move-result-wide v6

    .line 661
    double-to-float v1, v6

    .line 662
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setTracking(FZ)Z

    .line 663
    .line 664
    .line 665
    iget-object v0, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initVelocityTrackerRunnable:Ljava/lang/Runnable;

    .line 666
    .line 667
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 668
    .line 669
    .line 670
    :cond_1a
    :goto_8
    const/4 v0, 0x0

    .line 671
    :goto_9
    if-eqz v0, :cond_1b

    .line 672
    .line 673
    new-instance v0, Lcom/android/systemui/shade/SecQsMediaTouchHelper$onInterceptTouchEvent$1;

    .line 674
    .line 675
    iget-object v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->panelLogger$delegate:Lkotlin/Lazy;

    .line 676
    .line 677
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    check-cast v1, Lcom/android/systemui/log/SecPanelLogger;

    .line 682
    .line 683
    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecQsMediaTouchHelper$onInterceptTouchEvent$1;-><init>(Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    invoke-static {p1, v0, v2}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->log(Landroid/view/MotionEvent;Lkotlin/jvm/functions/Function3;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    move v1, v4

    .line 690
    goto :goto_a

    .line 691
    :cond_1b
    const/4 v0, 0x0

    .line 692
    move v1, v0

    .line 693
    :goto_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-eq v0, v9, :cond_1c

    .line 698
    .line 699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    if-ne v0, v4, :cond_1d

    .line 704
    .line 705
    :cond_1c
    const/4 v0, 0x0

    .line 706
    iput-boolean v0, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->actionDownStartInMediaPlayer:Z

    .line 707
    .line 708
    :cond_1d
    :goto_b
    if-eqz v1, :cond_1e

    .line 709
    .line 710
    return v4

    .line 711
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 712
    .line 713
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 714
    .line 715
    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    .line 716
    .line 717
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    .line 718
    .line 719
    const/4 v5, 0x0

    .line 720
    invoke-virtual {v1, v2, v0, v5}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    if-nez v0, :cond_1f

    .line 725
    .line 726
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 727
    .line 728
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 729
    .line 730
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    if-eqz v0, :cond_1f

    .line 735
    .line 736
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 737
    .line 738
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 739
    .line 740
    const-string v1, "NotificationPanelViewController MotionEvent intercepted: PulseExpansionHandler"

    .line 741
    .line 742
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 746
    .line 747
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 748
    .line 749
    const-string v0, "!shouldQuickSettingsIntercept and pulseExpansion consume"

    .line 750
    .line 751
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 752
    .line 753
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 754
    .line 755
    .line 756
    return v4

    .line 757
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 758
    .line 759
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 760
    .line 761
    .line 762
    move-result v0

    .line 763
    const-string/jumbo v1, "systemui.shade"

    .line 764
    .line 765
    .line 766
    if-nez v0, :cond_3d

    .line 767
    .line 768
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 769
    .line 770
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 771
    .line 772
    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 773
    .line 774
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 775
    .line 776
    .line 777
    move-result v2

    .line 778
    if-gez v2, :cond_20

    .line 779
    .line 780
    const/4 v2, 0x0

    .line 781
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 782
    .line 783
    .line 784
    move-result v2

    .line 785
    iput v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 786
    .line 787
    const/4 v2, 0x0

    .line 788
    :cond_20
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 789
    .line 790
    .line 791
    move-result v5

    .line 792
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 793
    .line 794
    .line 795
    move-result v2

    .line 796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 797
    .line 798
    .line 799
    move-result v6

    .line 800
    iget-object v7, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 801
    .line 802
    iget-object v8, v0, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 803
    .line 804
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 805
    .line 806
    iget-object v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 807
    .line 808
    iget-object v12, v0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 809
    .line 810
    if-eqz v6, :cond_30

    .line 811
    .line 812
    if-eq v6, v4, :cond_2f

    .line 813
    .line 814
    if-eq v6, v3, :cond_23

    .line 815
    .line 816
    if-eq v6, v9, :cond_2f

    .line 817
    .line 818
    const/4 v2, 0x6

    .line 819
    if-eq v6, v2, :cond_21

    .line 820
    .line 821
    goto/16 :goto_17

    .line 822
    .line 823
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 824
    .line 825
    .line 826
    move-result v2

    .line 827
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 828
    .line 829
    .line 830
    move-result v2

    .line 831
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 832
    .line 833
    if-ne v3, v2, :cond_3c

    .line 834
    .line 835
    const/4 v3, 0x0

    .line 836
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 837
    .line 838
    .line 839
    move-result v3

    .line 840
    if-eq v3, v2, :cond_22

    .line 841
    .line 842
    const/4 v4, 0x0

    .line 843
    :cond_22
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    iput v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 848
    .line 849
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 850
    .line 851
    .line 852
    move-result v2

    .line 853
    iput v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 854
    .line 855
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 856
    .line 857
    .line 858
    move-result v2

    .line 859
    iput v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 860
    .line 861
    goto/16 :goto_17

    .line 862
    .line 863
    :cond_23
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 864
    .line 865
    sub-float v3, v2, v3

    .line 866
    .line 867
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 868
    .line 869
    .line 870
    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 871
    .line 872
    if-eqz v6, :cond_24

    .line 873
    .line 874
    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 875
    .line 876
    add-float/2addr v3, v2

    .line 877
    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 881
    .line 882
    .line 883
    goto/16 :goto_18

    .line 884
    .line 885
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 886
    .line 887
    .line 888
    move-result v6

    .line 889
    if-ne v6, v4, :cond_25

    .line 890
    .line 891
    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTouchSlop:I

    .line 892
    .line 893
    int-to-float v6, v6

    .line 894
    iget v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSlopMultiplier:F

    .line 895
    .line 896
    mul-float/2addr v6, v9

    .line 897
    goto :goto_c

    .line 898
    :cond_25
    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTouchSlop:I

    .line 899
    .line 900
    int-to-float v6, v6

    .line 901
    :goto_c
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 905
    .line 906
    .line 907
    move-result v9

    .line 908
    cmpg-float v9, v9, v6

    .line 909
    .line 910
    if-gtz v9, :cond_26

    .line 911
    .line 912
    goto :goto_f

    .line 913
    :cond_26
    const/4 v9, 0x0

    .line 914
    cmpg-float v13, v3, v9

    .line 915
    .line 916
    if-gez v13, :cond_27

    .line 917
    .line 918
    move v13, v4

    .line 919
    goto :goto_d

    .line 920
    :cond_27
    const/4 v13, 0x0

    .line 921
    :goto_d
    cmpl-float v9, v3, v9

    .line 922
    .line 923
    if-lez v9, :cond_28

    .line 924
    .line 925
    move v9, v4

    .line 926
    goto :goto_e

    .line 927
    :cond_28
    const/4 v9, 0x0

    .line 928
    :goto_e
    if-eqz v13, :cond_29

    .line 929
    .line 930
    iget-boolean v13, v11, Lcom/android/systemui/shade/SecQuickSettingsController;->canScrollUp:Z

    .line 931
    .line 932
    if-nez v13, :cond_2a

    .line 933
    .line 934
    :cond_29
    if-eqz v9, :cond_2b

    .line 935
    .line 936
    iget-boolean v9, v11, Lcom/android/systemui/shade/SecQuickSettingsController;->canScrollDown:Z

    .line 937
    .line 938
    if-eqz v9, :cond_2b

    .line 939
    .line 940
    :cond_2a
    move v9, v4

    .line 941
    goto :goto_10

    .line 942
    :cond_2b
    :goto_f
    const/4 v9, 0x0

    .line 943
    :goto_10
    if-eqz v9, :cond_2c

    .line 944
    .line 945
    goto/16 :goto_17

    .line 946
    .line 947
    :cond_2c
    cmpl-float v9, v3, v6

    .line 948
    .line 949
    if-gtz v9, :cond_2d

    .line 950
    .line 951
    neg-float v9, v6

    .line 952
    cmpg-float v9, v3, v9

    .line 953
    .line 954
    if-gez v9, :cond_2e

    .line 955
    .line 956
    iget-boolean v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 957
    .line 958
    if-eqz v9, :cond_2e

    .line 959
    .line 960
    :cond_2d
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 961
    .line 962
    .line 963
    move-result v9

    .line 964
    iget v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 965
    .line 966
    sub-float v11, v5, v11

    .line 967
    .line 968
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 969
    .line 970
    .line 971
    move-result v11

    .line 972
    cmpl-float v9, v9, v11

    .line 973
    .line 974
    if-lez v9, :cond_2e

    .line 975
    .line 976
    iget v9, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 977
    .line 978
    iget v11, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 979
    .line 980
    invoke-virtual {v0, v9, v11, v3}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 981
    .line 982
    .line 983
    move-result v9

    .line 984
    if-eqz v9, :cond_2e

    .line 985
    .line 986
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 987
    .line 988
    .line 989
    move-result-object v6

    .line 990
    invoke-interface {v6, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 994
    .line 995
    .line 996
    sget-object v6, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 997
    .line 998
    sget-object v7, Lcom/android/systemui/shade/ShadeLogger$onQsInterceptMoveQsTrackingEnabled$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$onQsInterceptMoveQsTrackingEnabled$2;

    .line 999
    .line 1000
    iget-object v9, v12, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 1001
    .line 1002
    const/4 v11, 0x0

    .line 1003
    invoke-virtual {v9, v1, v6, v7, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v6

    .line 1007
    float-to-double v11, v3

    .line 1008
    invoke-interface {v6, v11, v12}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v9, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/QuickSettingsController;->setTracking(Z)V

    .line 1015
    .line 1016
    .line 1017
    const/4 v3, 0x0

    .line 1018
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->onExpansionStarted()V

    .line 1022
    .line 1023
    .line 1024
    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v3

    .line 1028
    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1029
    .line 1030
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 1031
    .line 1032
    .line 1033
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 1034
    .line 1035
    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 1036
    .line 1037
    iput v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 1038
    .line 1039
    iput v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 1040
    .line 1041
    iget-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1042
    .line 1043
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 1044
    .line 1045
    .line 1046
    goto/16 :goto_18

    .line 1047
    .line 1048
    :cond_2e
    iget v4, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 1049
    .line 1050
    iget-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 1051
    .line 1052
    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v7

    .line 1056
    check-cast v7, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1057
    .line 1058
    invoke-virtual {v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v7

    .line 1062
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v0

    .line 1066
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 1067
    .line 1068
    .line 1069
    move-result-wide v8

    .line 1070
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1071
    .line 1072
    .line 1073
    sget-object v10, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 1074
    .line 1075
    sget-object v11, Lcom/android/systemui/shade/ShadeLogger$logQsTrackingNotStarted$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logQsTrackingNotStarted$2;

    .line 1076
    .line 1077
    iget-object v12, v12, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 1078
    .line 1079
    const/4 v13, 0x0

    .line 1080
    invoke-virtual {v12, v1, v10, v11, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v10

    .line 1084
    float-to-int v4, v4

    .line 1085
    invoke-interface {v10, v4}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 1086
    .line 1087
    .line 1088
    float-to-int v2, v2

    .line 1089
    invoke-interface {v10, v2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 1090
    .line 1091
    .line 1092
    float-to-long v2, v3

    .line 1093
    invoke-interface {v10, v2, v3}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 1094
    .line 1095
    .line 1096
    float-to-double v2, v6

    .line 1097
    invoke-interface {v10, v2, v3}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 1098
    .line 1099
    .line 1100
    invoke-interface {v10, v5}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 1101
    .line 1102
    .line 1103
    invoke-interface {v10, v7}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 1104
    .line 1105
    .line 1106
    invoke-interface {v10, v0}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 1107
    .line 1108
    .line 1109
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    invoke-interface {v10, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v12, v10}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 1117
    .line 1118
    .line 1119
    goto/16 :goto_17

    .line 1120
    .line 1121
    :cond_2f
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1122
    .line 1123
    .line 1124
    const-string v2, "onQsIntercept: up action, QS tracking disabled"

    .line 1125
    .line 1126
    invoke-virtual {v12, p1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    const/4 v2, 0x0

    .line 1130
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/QuickSettingsController;->setTracking(Z)V

    .line 1131
    .line 1132
    .line 1133
    const/4 v0, 0x1

    .line 1134
    invoke-virtual {v11, v0}, Lcom/android/systemui/shade/SecQuickSettingsController;->updateScrollableDirection(Z)V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_17

    .line 1138
    .line 1139
    :cond_30
    const/4 v3, 0x0

    .line 1140
    iput v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 1141
    .line 1142
    iput v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 1143
    .line 1144
    invoke-virtual {v11, v3}, Lcom/android/systemui/shade/SecQuickSettingsController;->updateScrollableDirection(Z)V

    .line 1145
    .line 1146
    .line 1147
    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 1148
    .line 1149
    if-eqz v2, :cond_31

    .line 1150
    .line 1151
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 1152
    .line 1153
    .line 1154
    :cond_31
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v2

    .line 1158
    iput-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 1159
    .line 1160
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 1164
    .line 1165
    .line 1166
    move-result v2

    .line 1167
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 1168
    .line 1169
    iget v4, v11, Lcom/android/systemui/shade/SecQuickSettingsController;->naviBarGestureMode:I

    .line 1170
    .line 1171
    const/4 v5, 0x2

    .line 1172
    if-ne v4, v5, :cond_39

    .line 1173
    .line 1174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1175
    .line 1176
    .line 1177
    move-result v4

    .line 1178
    if-nez v4, :cond_39

    .line 1179
    .line 1180
    iget-object v4, v11, Lcom/android/systemui/shade/SecQuickSettingsController;->panelExpansionStateNotifier:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 1181
    .line 1182
    iget-object v4, v4, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 1183
    .line 1184
    iget v4, v4, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 1185
    .line 1186
    if-ne v4, v5, :cond_32

    .line 1187
    .line 1188
    const/4 v4, 0x1

    .line 1189
    goto :goto_11

    .line 1190
    :cond_32
    const/4 v4, 0x0

    .line 1191
    :goto_11
    if-eqz v4, :cond_39

    .line 1192
    .line 1193
    if-eqz v3, :cond_33

    .line 1194
    .line 1195
    goto :goto_15

    .line 1196
    :cond_33
    iget-object v3, v11, Lcom/android/systemui/shade/SecQuickSettingsController;->navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 1197
    .line 1198
    iget-object v4, v3, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 1199
    .line 1200
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    .line 1202
    .line 1203
    const/4 v4, 0x0

    .line 1204
    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v5

    .line 1208
    sget-boolean v6, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_TASKBAR:Z

    .line 1209
    .line 1210
    if-eqz v6, :cond_34

    .line 1211
    .line 1212
    iget-object v6, v3, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 1213
    .line 1214
    invoke-virtual {v6, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled(Z)Z

    .line 1215
    .line 1216
    .line 1217
    move-result v4

    .line 1218
    if-eqz v4, :cond_34

    .line 1219
    .line 1220
    const/4 v4, 0x1

    .line 1221
    goto :goto_12

    .line 1222
    :cond_34
    const/4 v4, 0x0

    .line 1223
    :goto_12
    if-eqz v4, :cond_36

    .line 1224
    .line 1225
    iget-object v3, v3, Lcom/android/systemui/navigationbar/NavigationBarController;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 1226
    .line 1227
    iget-object v3, v3, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 1228
    .line 1229
    if-nez v3, :cond_35

    .line 1230
    .line 1231
    goto :goto_13

    .line 1232
    :cond_35
    invoke-virtual {v3, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isBackGestureAllowed(Landroid/view/MotionEvent;)Z

    .line 1233
    .line 1234
    .line 1235
    move-result v3

    .line 1236
    goto :goto_14

    .line 1237
    :cond_36
    if-eqz v5, :cond_38

    .line 1238
    .line 1239
    iget-object v3, v5, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 1240
    .line 1241
    if-nez v3, :cond_37

    .line 1242
    .line 1243
    goto :goto_13

    .line 1244
    :cond_37
    invoke-virtual {v3, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isBackGestureAllowed(Landroid/view/MotionEvent;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v3

    .line 1248
    goto :goto_14

    .line 1249
    :cond_38
    :goto_13
    const/4 v3, 0x0

    .line 1250
    :goto_14
    iput-boolean v3, v11, Lcom/android/systemui/shade/SecQuickSettingsController;->isBackGestureAllowed:Z

    .line 1251
    .line 1252
    :cond_39
    :goto_15
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 1253
    .line 1254
    if-nez v3, :cond_3a

    .line 1255
    .line 1256
    float-to-double v2, v2

    .line 1257
    const-wide/16 v4, 0x0

    .line 1258
    .line 1259
    cmpl-double v4, v2, v4

    .line 1260
    .line 1261
    if-lez v4, :cond_3a

    .line 1262
    .line 1263
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1264
    .line 1265
    cmpg-double v2, v2, v4

    .line 1266
    .line 1267
    if-gez v2, :cond_3a

    .line 1268
    .line 1269
    const-string v0, "onQsIntercept: down action, QS partially expanded/collapsed"

    .line 1270
    .line 1271
    invoke-virtual {v12, p1, v0}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    const/4 v4, 0x1

    .line 1275
    goto :goto_18

    .line 1276
    :cond_3a
    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v2

    .line 1280
    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1281
    .line 1282
    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing()Z

    .line 1283
    .line 1284
    .line 1285
    move-result v2

    .line 1286
    if-eqz v2, :cond_3b

    .line 1287
    .line 1288
    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 1289
    .line 1290
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 1291
    .line 1292
    const/4 v4, 0x0

    .line 1293
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v2

    .line 1297
    if-eqz v2, :cond_3b

    .line 1298
    .line 1299
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v2

    .line 1303
    const/4 v3, 0x1

    .line 1304
    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1305
    .line 1306
    .line 1307
    goto :goto_16

    .line 1308
    :cond_3b
    const/4 v3, 0x1

    .line 1309
    :goto_16
    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 1310
    .line 1311
    if-eqz v2, :cond_3c

    .line 1312
    .line 1313
    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 1314
    .line 1315
    iput v2, v0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 1316
    .line 1317
    const-string v2, "onQsIntercept: down action, QS tracking enabled"

    .line 1318
    .line 1319
    invoke-virtual {v12, p1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/QuickSettingsController;->setTracking(Z)V

    .line 1323
    .line 1324
    .line 1325
    const/4 v2, 0x0

    .line 1326
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 1327
    .line 1328
    .line 1329
    iget-object v0, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1330
    .line 1331
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 1332
    .line 1333
    .line 1334
    :cond_3c
    :goto_17
    const/4 v4, 0x0

    .line 1335
    :goto_18
    if-eqz v4, :cond_3d

    .line 1336
    .line 1337
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1338
    .line 1339
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    .line 1341
    .line 1342
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1343
    .line 1344
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1345
    .line 1346
    const-string v1, "NotificationPanelViewController MotionEvent intercepted: QsIntercept"

    .line 1347
    .line 1348
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1352
    .line 1353
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 1354
    .line 1355
    const-string v0, "!isFullyCollapsed and onIntercept"

    .line 1356
    .line 1357
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1358
    .line 1359
    const/4 v1, 0x1

    .line 1360
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1361
    .line 1362
    .line 1363
    return v1

    .line 1364
    :cond_3d
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1365
    .line 1366
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 1367
    .line 1368
    const-string v3, "[NPVC]|[InterceptTouch]"

    .line 1369
    .line 1370
    iget-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    .line 1371
    .line 1372
    if-nez v2, :cond_65

    .line 1373
    .line 1374
    if-eqz v4, :cond_65

    .line 1375
    .line 1376
    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    .line 1377
    .line 1378
    if-eqz v5, :cond_3e

    .line 1379
    .line 1380
    goto/16 :goto_27

    .line 1381
    .line 1382
    :cond_3e
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 1383
    .line 1384
    if-eqz v0, :cond_3f

    .line 1385
    .line 1386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1387
    .line 1388
    .line 1389
    move-result v0

    .line 1390
    if-eqz v0, :cond_3f

    .line 1391
    .line 1392
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1393
    .line 1394
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1395
    .line 1396
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 1397
    .line 1398
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 1399
    .line 1400
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 1401
    .line 1402
    const-string v2, "NPVC MotionEvent not intercepted: non-down action, motion was aborted"

    .line 1403
    .line 1404
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    .line 1405
    .line 1406
    .line 1407
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1408
    .line 1409
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 1410
    .line 1411
    const-string v0, "mMotionAborted && action != DOWN"

    .line 1412
    .line 1413
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1414
    .line 1415
    const/4 v1, 0x0

    .line 1416
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1417
    .line 1418
    .line 1419
    return v1

    .line 1420
    :cond_3f
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1421
    .line 1422
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 1423
    .line 1424
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 1425
    .line 1426
    .line 1427
    move-result v0

    .line 1428
    if-eqz v0, :cond_40

    .line 1429
    .line 1430
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1431
    .line 1432
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1433
    .line 1434
    iget-boolean v2, v2, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 1435
    .line 1436
    if-nez v2, :cond_40

    .line 1437
    .line 1438
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 1439
    .line 1440
    if-eqz v0, :cond_40

    .line 1441
    .line 1442
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->isIconsOnlyInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1443
    .line 1444
    .line 1445
    move-result v0

    .line 1446
    if-eqz v0, :cond_40

    .line 1447
    .line 1448
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1449
    .line 1450
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 1451
    .line 1452
    const-string v0, "LsRune.LOCKUI_NOTI_ICON_TYPE"

    .line 1453
    .line 1454
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1455
    .line 1456
    const/4 v1, 0x1

    .line 1457
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1458
    .line 1459
    .line 1460
    return v1

    .line 1461
    :cond_40
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1462
    .line 1463
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    .line 1464
    .line 1465
    const-string v4, "LsRune.LOCKUI_FACE_WIDGET"

    .line 1466
    .line 1467
    if-eqz v2, :cond_41

    .line 1468
    .line 1469
    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 1470
    .line 1471
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1472
    .line 1473
    const/4 v0, 0x0

    .line 1474
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1475
    .line 1476
    .line 1477
    return v0

    .line 1478
    :cond_41
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInFaceWidgetContainer(Landroid/view/MotionEvent;)Z

    .line 1479
    .line 1480
    .line 1481
    move-result v0

    .line 1482
    if-eqz v0, :cond_44

    .line 1483
    .line 1484
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1485
    .line 1486
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1487
    .line 1488
    iget-boolean v2, v2, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 1489
    .line 1490
    if-nez v2, :cond_44

    .line 1491
    .line 1492
    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 1493
    .line 1494
    const/4 v5, 0x1

    .line 1495
    if-ne v2, v5, :cond_44

    .line 1496
    .line 1497
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 1498
    .line 1499
    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 1500
    .line 1501
    const/16 v2, 0x8

    .line 1502
    .line 1503
    if-nez v0, :cond_42

    .line 1504
    .line 1505
    goto :goto_19

    .line 1506
    :cond_42
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    .line 1507
    .line 1508
    if-eqz v0, :cond_43

    .line 1509
    .line 1510
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 1511
    .line 1512
    .line 1513
    move-result v2

    .line 1514
    :cond_43
    :goto_19
    if-nez v2, :cond_44

    .line 1515
    .line 1516
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1517
    .line 1518
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmKeyguardStatusViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v0

    .line 1522
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1523
    .line 1524
    .line 1525
    move-result v0

    .line 1526
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1527
    .line 1528
    invoke-static {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/log/SecPanelLogger;

    .line 1529
    .line 1530
    .line 1531
    move-result-object p0

    .line 1532
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1533
    .line 1534
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1535
    .line 1536
    .line 1537
    return v0

    .line 1538
    :cond_44
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1539
    .line 1540
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarEnabled:Z

    .line 1541
    .line 1542
    if-eqz v2, :cond_45

    .line 1543
    .line 1544
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInLockStarContainer(Landroid/view/MotionEvent;)Z

    .line 1545
    .line 1546
    .line 1547
    move-result v0

    .line 1548
    if-eqz v0, :cond_45

    .line 1549
    .line 1550
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1551
    .line 1552
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmQsController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/QuickSettingsController;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded()Z

    .line 1557
    .line 1558
    .line 1559
    move-result v0

    .line 1560
    if-nez v0, :cond_45

    .line 1561
    .line 1562
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1563
    .line 1564
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmBarState(Lcom/android/systemui/shade/NotificationPanelViewController;)I

    .line 1565
    .line 1566
    .line 1567
    move-result v0

    .line 1568
    const/4 v2, 0x1

    .line 1569
    if-ne v0, v2, :cond_45

    .line 1570
    .line 1571
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1572
    .line 1573
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPluginLockStarContainer(Lcom/android/systemui/shade/NotificationPanelViewController;)Landroid/view/View;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v0

    .line 1577
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 1578
    .line 1579
    .line 1580
    move-result v0

    .line 1581
    if-nez v0, :cond_45

    .line 1582
    .line 1583
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1584
    .line 1585
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPluginLockStarManagerLazy(Lcom/android/systemui/shade/NotificationPanelViewController;)Ldagger/Lazy;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v0

    .line 1589
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v0

    .line 1593
    if-eqz v0, :cond_45

    .line 1594
    .line 1595
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1596
    .line 1597
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPluginLockStarManagerLazy(Lcom/android/systemui/shade/NotificationPanelViewController;)Ldagger/Lazy;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v0

    .line 1601
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v0

    .line 1605
    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 1606
    .line 1607
    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1608
    .line 1609
    .line 1610
    move-result v0

    .line 1611
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1612
    .line 1613
    invoke-static {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/log/SecPanelLogger;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v2

    .line 1617
    const-string v4, "LsRune.PLUGIN_LOCK_STAR"

    .line 1618
    .line 1619
    check-cast v2, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1620
    .line 1621
    invoke-virtual {v2, p1, v4, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    .line 1623
    .line 1624
    return v0

    .line 1625
    :catchall_0
    move-exception v0

    .line 1626
    sget-object v2, Lcom/android/systemui/shade/NotificationPanelViewController;->ADDITIONAL_TAP_REQUIRED_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 1627
    .line 1628
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1629
    .line 1630
    const-string v4, "onInterceptTouchEvent() error in LockStar - "

    .line 1631
    .line 1632
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1633
    .line 1634
    .line 1635
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v0

    .line 1639
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v0

    .line 1646
    const-string v2, "NotificationPanelView"

    .line 1647
    .line 1648
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    .line 1650
    .line 1651
    :cond_45
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    .line 1652
    .line 1653
    if-eqz v0, :cond_46

    .line 1654
    .line 1655
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1656
    .line 1657
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmQsController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/QuickSettingsController;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v0

    .line 1661
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded()Z

    .line 1662
    .line 1663
    .line 1664
    move-result v0

    .line 1665
    if-nez v0, :cond_46

    .line 1666
    .line 1667
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1668
    .line 1669
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmBarState(Lcom/android/systemui/shade/NotificationPanelViewController;)I

    .line 1670
    .line 1671
    .line 1672
    move-result v0

    .line 1673
    const/4 v2, 0x1

    .line 1674
    if-ne v0, v2, :cond_46

    .line 1675
    .line 1676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1677
    .line 1678
    .line 1679
    move-result v0

    .line 1680
    if-nez v0, :cond_46

    .line 1681
    .line 1682
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1683
    .line 1684
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmKeyguardBottomArea(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v0

    .line 1688
    if-eqz v0, :cond_46

    .line 1689
    .line 1690
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1691
    .line 1692
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmKeyguardBottomArea(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z

    .line 1697
    .line 1698
    .line 1699
    move-result v0

    .line 1700
    if-eqz v0, :cond_46

    .line 1701
    .line 1702
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1703
    .line 1704
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/log/SecPanelLogger;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v0

    .line 1708
    const-string v1, "LsRune.LOCKUI_BOTTOM_USIM_TEXT"

    .line 1709
    .line 1710
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1711
    .line 1712
    const/4 v2, 0x0

    .line 1713
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1714
    .line 1715
    .line 1716
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1717
    .line 1718
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMotionAborted()V

    .line 1719
    .line 1720
    .line 1721
    return v2

    .line 1722
    :cond_46
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1723
    .line 1724
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmQsController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/QuickSettingsController;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v0

    .line 1728
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded()Z

    .line 1729
    .line 1730
    .line 1731
    move-result v0

    .line 1732
    if-nez v0, :cond_47

    .line 1733
    .line 1734
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1735
    .line 1736
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmBarState(Lcom/android/systemui/shade/NotificationPanelViewController;)I

    .line 1737
    .line 1738
    .line 1739
    move-result v0

    .line 1740
    const/4 v2, 0x1

    .line 1741
    if-ne v0, v2, :cond_47

    .line 1742
    .line 1743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1744
    .line 1745
    .line 1746
    move-result v0

    .line 1747
    if-nez v0, :cond_47

    .line 1748
    .line 1749
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1750
    .line 1751
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmKeyguardIndicationController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v0

    .line 1755
    if-eqz v0, :cond_47

    .line 1756
    .line 1757
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1758
    .line 1759
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmKeyguardIndicationController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v0

    .line 1763
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isInLifeStyleArea(Landroid/view/MotionEvent;)Z

    .line 1764
    .line 1765
    .line 1766
    move-result v0

    .line 1767
    if-eqz v0, :cond_47

    .line 1768
    .line 1769
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1770
    .line 1771
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/log/SecPanelLogger;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v0

    .line 1775
    const-string v1, "LsRune.LOCKUI_LIFE_STYLE"

    .line 1776
    .line 1777
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1778
    .line 1779
    const/4 v2, 0x0

    .line 1780
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1781
    .line 1782
    .line 1783
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1784
    .line 1785
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMotionAborted()V

    .line 1786
    .line 1787
    .line 1788
    return v2

    .line 1789
    :cond_47
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1790
    .line 1791
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPluginLock(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v0

    .line 1795
    if-eqz v0, :cond_4b

    .line 1796
    .line 1797
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1798
    .line 1799
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPluginLock(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v0

    .line 1803
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v0

    .line 1807
    if-eqz v0, :cond_4b

    .line 1808
    .line 1809
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1810
    .line 1811
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmQsController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/QuickSettingsController;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v0

    .line 1815
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded()Z

    .line 1816
    .line 1817
    .line 1818
    move-result v0

    .line 1819
    if-nez v0, :cond_4b

    .line 1820
    .line 1821
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1822
    .line 1823
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v0

    .line 1827
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 1828
    .line 1829
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->getState()I

    .line 1830
    .line 1831
    .line 1832
    move-result v0

    .line 1833
    const/4 v2, 0x1

    .line 1834
    if-ne v0, v2, :cond_4b

    .line 1835
    .line 1836
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1837
    .line 1838
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPluginLock(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v0

    .line 1842
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v0

    .line 1846
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->isTouchOnItemViewArea(Landroid/view/MotionEvent;)Z

    .line 1847
    .line 1848
    .line 1849
    move-result v0

    .line 1850
    if-eqz v0, :cond_49

    .line 1851
    .line 1852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1853
    .line 1854
    .line 1855
    move-result v0

    .line 1856
    if-nez v0, :cond_48

    .line 1857
    .line 1858
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1859
    .line 1860
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPluginLock(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v0

    .line 1864
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v0

    .line 1868
    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->setIntercept(Z)V

    .line 1869
    .line 1870
    .line 1871
    :cond_48
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1872
    .line 1873
    invoke-static {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/log/SecPanelLogger;

    .line 1874
    .line 1875
    .line 1876
    move-result-object p0

    .line 1877
    const-string v0, "LsRune.PLUGIN_LOCK"

    .line 1878
    .line 1879
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1880
    .line 1881
    const/4 v1, 0x0

    .line 1882
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1883
    .line 1884
    .line 1885
    return v1

    .line 1886
    :cond_49
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1887
    .line 1888
    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    .line 1889
    .line 1890
    if-nez v2, :cond_4a

    .line 1891
    .line 1892
    const/4 v2, 0x1

    .line 1893
    goto :goto_1a

    .line 1894
    :cond_4a
    const/4 v2, 0x0

    .line 1895
    :goto_1a
    if-eqz v2, :cond_4b

    .line 1896
    .line 1897
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPluginLock(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v0

    .line 1901
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v0

    .line 1905
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->isIntercepting()Z

    .line 1906
    .line 1907
    .line 1908
    move-result v0

    .line 1909
    if-eqz v0, :cond_4b

    .line 1910
    .line 1911
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1912
    .line 1913
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPluginLock(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v0

    .line 1917
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v0

    .line 1921
    const/4 v2, 0x0

    .line 1922
    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->setIntercept(Z)V

    .line 1923
    .line 1924
    .line 1925
    :cond_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1926
    .line 1927
    .line 1928
    move-result v0

    .line 1929
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1930
    .line 1931
    invoke-static {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmQsController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/QuickSettingsController;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v4

    .line 1935
    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded()Z

    .line 1936
    .line 1937
    .line 1938
    move-result v4

    .line 1939
    if-nez v4, :cond_4d

    .line 1940
    .line 1941
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1942
    .line 1943
    invoke-static {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmQsController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/QuickSettingsController;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v4

    .line 1947
    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsController;->getFullyExpanded()Z

    .line 1948
    .line 1949
    .line 1950
    move-result v4

    .line 1951
    if-eqz v4, :cond_4c

    .line 1952
    .line 1953
    goto :goto_1b

    .line 1954
    :cond_4c
    const/4 v4, 0x0

    .line 1955
    goto :goto_1c

    .line 1956
    :cond_4d
    :goto_1b
    const/4 v4, 0x1

    .line 1957
    :goto_1c
    invoke-static {v2, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmQsExpandedOnTouchDown(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    .line 1958
    .line 1959
    .line 1960
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1961
    .line 1962
    invoke-static {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmQsController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/QuickSettingsController;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v2

    .line 1966
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded()Z

    .line 1967
    .line 1968
    .line 1969
    move-result v2

    .line 1970
    if-nez v2, :cond_4e

    .line 1971
    .line 1972
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1973
    .line 1974
    invoke-static {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmBarState(Lcom/android/systemui/shade/NotificationPanelViewController;)I

    .line 1975
    .line 1976
    .line 1977
    move-result v2

    .line 1978
    const/4 v4, 0x1

    .line 1979
    if-ne v2, v4, :cond_4e

    .line 1980
    .line 1981
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1982
    .line 1983
    invoke-virtual {v2, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTouchOnEmptyArea(Landroid/view/MotionEvent;)Z

    .line 1984
    .line 1985
    .line 1986
    move-result v2

    .line 1987
    if-eqz v2, :cond_4e

    .line 1988
    .line 1989
    if-nez v0, :cond_4f

    .line 1990
    .line 1991
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1992
    .line 1993
    invoke-static {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmKeyguardTouchAnimator(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 1994
    .line 1995
    .line 1996
    move-result-object v2

    .line 1997
    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    .line 1998
    .line 1999
    .line 2000
    goto :goto_1d

    .line 2001
    :cond_4e
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2002
    .line 2003
    invoke-static {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmKeyguardTouchAnimator(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v2

    .line 2007
    const/4 v4, 0x0

    .line 2008
    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    .line 2009
    .line 2010
    .line 2011
    :cond_4f
    :goto_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2012
    .line 2013
    .line 2014
    move-result v2

    .line 2015
    const/4 v4, 0x2

    .line 2016
    if-eq v2, v4, :cond_50

    .line 2017
    .line 2018
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v0

    .line 2022
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2023
    .line 2024
    invoke-static {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmQsController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/QuickSettingsController;

    .line 2025
    .line 2026
    .line 2027
    move-result-object v2

    .line 2028
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded()Z

    .line 2029
    .line 2030
    .line 2031
    move-result v2

    .line 2032
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2033
    .line 2034
    .line 2035
    move-result-object v2

    .line 2036
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2037
    .line 2038
    invoke-static {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmQsController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/QuickSettingsController;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v4

    .line 2042
    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsController;->getFullyExpanded()Z

    .line 2043
    .line 2044
    .line 2045
    move-result v4

    .line 2046
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v4

    .line 2050
    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    .line 2051
    .line 2052
    .line 2053
    move-result-object v0

    .line 2054
    const-string v2, "KeyguardTouchAnimator"

    .line 2055
    .line 2056
    const-string v4, "intercepted: action=%d mQsExpanded=%b, mQsFullyExpanded=%b"

    .line 2057
    .line 2058
    invoke-static {v2, v4, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2059
    .line 2060
    .line 2061
    :cond_50
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2062
    .line 2063
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmKeyguardTouchAnimator(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v0

    .line 2067
    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2068
    .line 2069
    .line 2070
    move-result v0

    .line 2071
    if-eqz v0, :cond_51

    .line 2072
    .line 2073
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2074
    .line 2075
    invoke-static {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/log/SecPanelLogger;

    .line 2076
    .line 2077
    .line 2078
    move-result-object p0

    .line 2079
    const-string v0, "LsRune.KEYGUARD_ALL_DIRECTIONS_SWIPE_UNLOCK"

    .line 2080
    .line 2081
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 2082
    .line 2083
    const/4 v1, 0x1

    .line 2084
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 2085
    .line 2086
    .line 2087
    return v1

    .line 2088
    :cond_51
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2089
    .line 2090
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmTrackingPointer(Lcom/android/systemui/shade/NotificationPanelViewController;)I

    .line 2091
    .line 2092
    .line 2093
    move-result v0

    .line 2094
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 2095
    .line 2096
    .line 2097
    move-result v0

    .line 2098
    if-gez v0, :cond_52

    .line 2099
    .line 2100
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2101
    .line 2102
    const/4 v2, 0x0

    .line 2103
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 2104
    .line 2105
    .line 2106
    move-result v2

    .line 2107
    invoke-static {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmTrackingPointer(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 2108
    .line 2109
    .line 2110
    const/4 v0, 0x0

    .line 2111
    :cond_52
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 2112
    .line 2113
    .line 2114
    move-result v2

    .line 2115
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 2116
    .line 2117
    .line 2118
    move-result v0

    .line 2119
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2120
    .line 2121
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->canCollapsePanelOnTouch()Z

    .line 2122
    .line 2123
    .line 2124
    move-result v4

    .line 2125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2126
    .line 2127
    .line 2128
    move-result v5

    .line 2129
    if-eqz v5, :cond_5f

    .line 2130
    .line 2131
    const/4 v1, 0x1

    .line 2132
    if-eq v5, v1, :cond_5e

    .line 2133
    .line 2134
    const/4 v1, 0x2

    .line 2135
    if-eq v5, v1, :cond_56

    .line 2136
    .line 2137
    const/4 v0, 0x3

    .line 2138
    if-eq v5, v0, :cond_5e

    .line 2139
    .line 2140
    const/4 v0, 0x5

    .line 2141
    if-eq v5, v0, :cond_55

    .line 2142
    .line 2143
    const/4 v0, 0x6

    .line 2144
    if-eq v5, v0, :cond_53

    .line 2145
    .line 2146
    goto/16 :goto_26

    .line 2147
    .line 2148
    :cond_53
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2149
    .line 2150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2151
    .line 2152
    .line 2153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2154
    .line 2155
    .line 2156
    move-result v0

    .line 2157
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 2158
    .line 2159
    .line 2160
    move-result v0

    .line 2161
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2162
    .line 2163
    invoke-static {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmTrackingPointer(Lcom/android/systemui/shade/NotificationPanelViewController;)I

    .line 2164
    .line 2165
    .line 2166
    move-result v1

    .line 2167
    if-ne v1, v0, :cond_64

    .line 2168
    .line 2169
    const/4 v1, 0x0

    .line 2170
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 2171
    .line 2172
    .line 2173
    move-result v1

    .line 2174
    if-eq v1, v0, :cond_54

    .line 2175
    .line 2176
    const/4 v0, 0x0

    .line 2177
    goto :goto_1e

    .line 2178
    :cond_54
    const/4 v0, 0x1

    .line 2179
    :goto_1e
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2180
    .line 2181
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 2182
    .line 2183
    .line 2184
    move-result v2

    .line 2185
    invoke-static {v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmTrackingPointer(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    .line 2186
    .line 2187
    .line 2188
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2189
    .line 2190
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 2191
    .line 2192
    .line 2193
    move-result v2

    .line 2194
    invoke-static {v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmInitialExpandX(Lcom/android/systemui/shade/NotificationPanelViewController;F)V

    .line 2195
    .line 2196
    .line 2197
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2198
    .line 2199
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 2200
    .line 2201
    .line 2202
    move-result p1

    .line 2203
    invoke-static {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmInitialExpandY(Lcom/android/systemui/shade/NotificationPanelViewController;F)V

    .line 2204
    .line 2205
    .line 2206
    goto/16 :goto_26

    .line 2207
    .line 2208
    :cond_55
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2209
    .line 2210
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmShadeLog(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/ShadeLogger;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v0

    .line 2214
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2215
    .line 2216
    invoke-static {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v1

    .line 2220
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 2221
    .line 2222
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->getState()I

    .line 2223
    .line 2224
    .line 2225
    move-result v1

    .line 2226
    const-string v2, "onInterceptTouchEvent: pointer down action"

    .line 2227
    .line 2228
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    .line 2229
    .line 2230
    .line 2231
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2232
    .line 2233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2234
    .line 2235
    .line 2236
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2237
    .line 2238
    invoke-static {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmStatusBarStateController(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2239
    .line 2240
    .line 2241
    move-result-object p1

    .line 2242
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 2243
    .line 2244
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->getState()I

    .line 2245
    .line 2246
    .line 2247
    move-result p1

    .line 2248
    const/4 v0, 0x1

    .line 2249
    if-ne p1, v0, :cond_64

    .line 2250
    .line 2251
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2252
    .line 2253
    invoke-static {p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmMotionAborted(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    .line 2254
    .line 2255
    .line 2256
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2257
    .line 2258
    invoke-static {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmVelocityTracker(Lcom/android/systemui/shade/NotificationPanelViewController;)Landroid/view/VelocityTracker;

    .line 2259
    .line 2260
    .line 2261
    move-result-object p0

    .line 2262
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 2263
    .line 2264
    .line 2265
    goto/16 :goto_26

    .line 2266
    .line 2267
    :cond_56
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2268
    .line 2269
    invoke-static {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmInitialExpandY(Lcom/android/systemui/shade/NotificationPanelViewController;)F

    .line 2270
    .line 2271
    .line 2272
    move-result v1

    .line 2273
    sub-float v1, v0, v1

    .line 2274
    .line 2275
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2276
    .line 2277
    invoke-static {v5, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 2278
    .line 2279
    .line 2280
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2281
    .line 2282
    invoke-static {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPanelClosedOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2283
    .line 2284
    .line 2285
    move-result v5

    .line 2286
    if-eqz v5, :cond_57

    .line 2287
    .line 2288
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2289
    .line 2290
    invoke-static {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmCollapsedAndHeadsUpOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2291
    .line 2292
    .line 2293
    move-result v5

    .line 2294
    if-nez v5, :cond_57

    .line 2295
    .line 2296
    const/4 v5, 0x1

    .line 2297
    goto :goto_1f

    .line 2298
    :cond_57
    const/4 v5, 0x0

    .line 2299
    :goto_1f
    if-nez v4, :cond_58

    .line 2300
    .line 2301
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2302
    .line 2303
    invoke-static {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmTouchStartedInEmptyArea(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2304
    .line 2305
    .line 2306
    move-result v4

    .line 2307
    if-nez v4, :cond_58

    .line 2308
    .line 2309
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2310
    .line 2311
    invoke-static {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmAnimatingOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2312
    .line 2313
    .line 2314
    move-result v4

    .line 2315
    if-nez v4, :cond_58

    .line 2316
    .line 2317
    if-eqz v5, :cond_64

    .line 2318
    .line 2319
    :cond_58
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 2320
    .line 2321
    .line 2322
    move-result v4

    .line 2323
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2324
    .line 2325
    invoke-virtual {v6, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    .line 2326
    .line 2327
    .line 2328
    move-result v6

    .line 2329
    neg-float v7, v6

    .line 2330
    cmpg-float v8, v1, v7

    .line 2331
    .line 2332
    if-ltz v8, :cond_5a

    .line 2333
    .line 2334
    if-nez v5, :cond_59

    .line 2335
    .line 2336
    iget-object v9, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2337
    .line 2338
    invoke-static {v9}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmAnimatingOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2339
    .line 2340
    .line 2341
    move-result v9

    .line 2342
    if-eqz v9, :cond_64

    .line 2343
    .line 2344
    :cond_59
    cmpl-float v6, v4, v6

    .line 2345
    .line 2346
    if-lez v6, :cond_64

    .line 2347
    .line 2348
    :cond_5a
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2349
    .line 2350
    invoke-static {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmInitialExpandX(Lcom/android/systemui/shade/NotificationPanelViewController;)F

    .line 2351
    .line 2352
    .line 2353
    move-result v6

    .line 2354
    sub-float v6, v2, v6

    .line 2355
    .line 2356
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 2357
    .line 2358
    .line 2359
    move-result v6

    .line 2360
    cmpl-float v6, v4, v6

    .line 2361
    .line 2362
    if-lez v6, :cond_64

    .line 2363
    .line 2364
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2365
    .line 2366
    invoke-static {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmBarState(Lcom/android/systemui/shade/NotificationPanelViewController;)I

    .line 2367
    .line 2368
    .line 2369
    move-result v6

    .line 2370
    const/4 v9, 0x1

    .line 2371
    if-eq v6, v9, :cond_64

    .line 2372
    .line 2373
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2374
    .line 2375
    invoke-virtual {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 2376
    .line 2377
    .line 2378
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2379
    .line 2380
    invoke-static {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmExpandedHeight(Lcom/android/systemui/shade/NotificationPanelViewController;)F

    .line 2381
    .line 2382
    .line 2383
    move-result v10

    .line 2384
    invoke-static {v6, v2, v0, v9, v10}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    .line 2385
    .line 2386
    .line 2387
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2388
    .line 2389
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmShadeLog(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/ShadeLogger;

    .line 2390
    .line 2391
    .line 2392
    move-result-object v0

    .line 2393
    const-string v6, "NotificationPanelViewController MotionEvent intercepted: startExpandMotion"

    .line 2394
    .line 2395
    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 2396
    .line 2397
    .line 2398
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2399
    .line 2400
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmLogBuilder(Lcom/android/systemui/shade/NotificationPanelViewController;)Ljava/lang/StringBuilder;

    .line 2401
    .line 2402
    .line 2403
    move-result-object v0

    .line 2404
    const/4 v6, 0x0

    .line 2405
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2406
    .line 2407
    .line 2408
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2409
    .line 2410
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmLogBuilder(Lcom/android/systemui/shade/NotificationPanelViewController;)Ljava/lang/StringBuilder;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v0

    .line 2414
    const-string v6, "ACTION_MOVE: "

    .line 2415
    .line 2416
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2417
    .line 2418
    .line 2419
    const-string v6, "mInitialTouchY: "

    .line 2420
    .line 2421
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    .line 2423
    .line 2424
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2425
    .line 2426
    invoke-static {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmInitialExpandY(Lcom/android/systemui/shade/NotificationPanelViewController;)F

    .line 2427
    .line 2428
    .line 2429
    move-result v6

    .line 2430
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2431
    .line 2432
    .line 2433
    const-string v6, " [h: "

    .line 2434
    .line 2435
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2436
    .line 2437
    .line 2438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2439
    .line 2440
    .line 2441
    const-string v1, " < -touchSlop: "

    .line 2442
    .line 2443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    .line 2445
    .line 2446
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2447
    .line 2448
    .line 2449
    const-string v1, "]: "

    .line 2450
    .line 2451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    .line 2453
    .line 2454
    if-gez v8, :cond_5b

    .line 2455
    .line 2456
    const/4 v6, 0x1

    .line 2457
    goto :goto_20

    .line 2458
    :cond_5b
    const/4 v6, 0x0

    .line 2459
    :goto_20
    const-string v7, "[openShadeWithoutHun: "

    .line 2460
    .line 2461
    const-string v8, " || mAnimatingOnDown: "

    .line 2462
    .line 2463
    invoke-static {v0, v6, v7, v5, v8}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 2464
    .line 2465
    .line 2466
    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2467
    .line 2468
    invoke-static {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmAnimatingOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2469
    .line 2470
    .line 2471
    move-result v6

    .line 2472
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2473
    .line 2474
    .line 2475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2476
    .line 2477
    .line 2478
    if-nez v5, :cond_5d

    .line 2479
    .line 2480
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2481
    .line 2482
    invoke-static {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmAnimatingOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2483
    .line 2484
    .line 2485
    move-result v5

    .line 2486
    if-eqz v5, :cond_5c

    .line 2487
    .line 2488
    goto :goto_21

    .line 2489
    :cond_5c
    const/4 v5, 0x0

    .line 2490
    goto :goto_22

    .line 2491
    :cond_5d
    :goto_21
    const/4 v5, 0x1

    .line 2492
    :goto_22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2493
    .line 2494
    .line 2495
    const-string v5, "hAbs: "

    .line 2496
    .line 2497
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2498
    .line 2499
    .line 2500
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2501
    .line 2502
    .line 2503
    const-string v4, "[x: "

    .line 2504
    .line 2505
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    .line 2507
    .line 2508
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2509
    .line 2510
    .line 2511
    const-string v4, " - mInitialExpandX: "

    .line 2512
    .line 2513
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    .line 2515
    .line 2516
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2517
    .line 2518
    invoke-static {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmInitialExpandX(Lcom/android/systemui/shade/NotificationPanelViewController;)F

    .line 2519
    .line 2520
    .line 2521
    move-result v4

    .line 2522
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2523
    .line 2524
    .line 2525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2526
    .line 2527
    .line 2528
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2529
    .line 2530
    invoke-static {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmInitialExpandX(Lcom/android/systemui/shade/NotificationPanelViewController;)F

    .line 2531
    .line 2532
    .line 2533
    move-result v1

    .line 2534
    sub-float/2addr v2, v1

    .line 2535
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2536
    .line 2537
    .line 2538
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2539
    .line 2540
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/log/SecPanelLogger;

    .line 2541
    .line 2542
    .line 2543
    move-result-object v0

    .line 2544
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2545
    .line 2546
    invoke-static {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmLogBuilder(Lcom/android/systemui/shade/NotificationPanelViewController;)Ljava/lang/StringBuilder;

    .line 2547
    .line 2548
    .line 2549
    move-result-object p0

    .line 2550
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 2551
    .line 2552
    const/4 v1, 0x1

    .line 2553
    invoke-virtual {v0, p1, v3, p0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2554
    .line 2555
    .line 2556
    return v1

    .line 2557
    :cond_5e
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2558
    .line 2559
    invoke-static {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmVelocityTracker(Lcom/android/systemui/shade/NotificationPanelViewController;)Landroid/view/VelocityTracker;

    .line 2560
    .line 2561
    .line 2562
    move-result-object p0

    .line 2563
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 2564
    .line 2565
    .line 2566
    goto/16 :goto_26

    .line 2567
    .line 2568
    :cond_5f
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2569
    .line 2570
    invoke-static {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmCentralSurfaces(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2571
    .line 2572
    .line 2573
    move-result-object v3

    .line 2574
    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2575
    .line 2576
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    .line 2577
    .line 2578
    .line 2579
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2580
    .line 2581
    invoke-static {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmHeightAnimator(Lcom/android/systemui/shade/NotificationPanelViewController;)Landroid/animation/ValueAnimator;

    .line 2582
    .line 2583
    .line 2584
    move-result-object v4

    .line 2585
    if-eqz v4, :cond_60

    .line 2586
    .line 2587
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2588
    .line 2589
    invoke-static {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmIsSpringBackAnimation(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2590
    .line 2591
    .line 2592
    move-result v4

    .line 2593
    if-nez v4, :cond_60

    .line 2594
    .line 2595
    const/4 v4, 0x1

    .line 2596
    goto :goto_23

    .line 2597
    :cond_60
    const/4 v4, 0x0

    .line 2598
    :goto_23
    invoke-static {v3, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmAnimatingOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    .line 2599
    .line 2600
    .line 2601
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2602
    .line 2603
    invoke-static {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmMinExpandHeight(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 2604
    .line 2605
    .line 2606
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2607
    .line 2608
    invoke-static {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmSystemClock(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/util/time/SystemClock;

    .line 2609
    .line 2610
    .line 2611
    move-result-object v4

    .line 2612
    check-cast v4, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 2613
    .line 2614
    invoke-virtual {v4}, Lcom/android/systemui/util/time/SystemClockImpl;->uptimeMillis()J

    .line 2615
    .line 2616
    .line 2617
    move-result-wide v4

    .line 2618
    invoke-static {v3, v4, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmDownTime(Lcom/android/systemui/shade/NotificationPanelViewController;J)V

    .line 2619
    .line 2620
    .line 2621
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2622
    .line 2623
    invoke-static {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmAnimatingOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2624
    .line 2625
    .line 2626
    move-result v3

    .line 2627
    if-eqz v3, :cond_61

    .line 2628
    .line 2629
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2630
    .line 2631
    invoke-static {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmClosing(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2632
    .line 2633
    .line 2634
    move-result v3

    .line 2635
    if-eqz v3, :cond_61

    .line 2636
    .line 2637
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2638
    .line 2639
    invoke-static {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmHintAnimationRunning(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2640
    .line 2641
    .line 2642
    move-result v3

    .line 2643
    if-nez v3, :cond_61

    .line 2644
    .line 2645
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2646
    .line 2647
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 2648
    .line 2649
    .line 2650
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2651
    .line 2652
    const/4 v1, 0x1

    .line 2653
    invoke-static {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmTouchSlopExceeded(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    .line 2654
    .line 2655
    .line 2656
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2657
    .line 2658
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmShadeLog(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/ShadeLogger;

    .line 2659
    .line 2660
    .line 2661
    move-result-object v0

    .line 2662
    const-string v2, "NotificationPanelViewController MotionEvent intercepted: mAnimatingOnDown: true, mClosing: true, mHintAnimationRunning: false"

    .line 2663
    .line 2664
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 2665
    .line 2666
    .line 2667
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2668
    .line 2669
    invoke-static {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/log/SecPanelLogger;

    .line 2670
    .line 2671
    .line 2672
    move-result-object p0

    .line 2673
    const-string v0, "ACTION_DOWN: mAnimatingOnDown && mClosing && !mHintAnimationRunning"

    .line 2674
    .line 2675
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 2676
    .line 2677
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 2678
    .line 2679
    .line 2680
    return v1

    .line 2681
    :cond_61
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2682
    .line 2683
    invoke-static {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmTracking(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2684
    .line 2685
    .line 2686
    move-result v3

    .line 2687
    if-eqz v3, :cond_63

    .line 2688
    .line 2689
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2690
    .line 2691
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 2692
    .line 2693
    .line 2694
    move-result v3

    .line 2695
    if-eqz v3, :cond_62

    .line 2696
    .line 2697
    goto :goto_24

    .line 2698
    :cond_62
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2699
    .line 2700
    invoke-static {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmShadeLog(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/ShadeLogger;

    .line 2701
    .line 2702
    .line 2703
    move-result-object v3

    .line 2704
    const-string v4, "not setting mInitialExpandY in onInterceptTouch"

    .line 2705
    .line 2706
    invoke-virtual {v3, v4}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    .line 2707
    .line 2708
    .line 2709
    goto :goto_25

    .line 2710
    :cond_63
    :goto_24
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2711
    .line 2712
    invoke-static {v3, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmInitialExpandY(Lcom/android/systemui/shade/NotificationPanelViewController;F)V

    .line 2713
    .line 2714
    .line 2715
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2716
    .line 2717
    invoke-static {v3, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmInitialExpandX(Lcom/android/systemui/shade/NotificationPanelViewController;F)V

    .line 2718
    .line 2719
    .line 2720
    :goto_25
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2721
    .line 2722
    invoke-static {v3, v2, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$misInContentBounds(Lcom/android/systemui/shade/NotificationPanelViewController;FF)Z

    .line 2723
    .line 2724
    .line 2725
    move-result v0

    .line 2726
    xor-int/lit8 v0, v0, 0x1

    .line 2727
    .line 2728
    invoke-static {v3, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmTouchStartedInEmptyArea(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    .line 2729
    .line 2730
    .line 2731
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2732
    .line 2733
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmTouchSlopExceededBeforeDown(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2734
    .line 2735
    .line 2736
    move-result v2

    .line 2737
    invoke-static {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmTouchSlopExceeded(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    .line 2738
    .line 2739
    .line 2740
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2741
    .line 2742
    const/4 v2, 0x0

    .line 2743
    invoke-static {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmMotionAborted(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    .line 2744
    .line 2745
    .line 2746
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2747
    .line 2748
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 2749
    .line 2750
    .line 2751
    move-result v2

    .line 2752
    invoke-static {v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmPanelClosedOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    .line 2753
    .line 2754
    .line 2755
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2756
    .line 2757
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmShadeLog(Lcom/android/systemui/shade/NotificationPanelViewController;)Lcom/android/systemui/shade/ShadeLogger;

    .line 2758
    .line 2759
    .line 2760
    move-result-object v0

    .line 2761
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2762
    .line 2763
    invoke-static {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmPanelClosedOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;)Z

    .line 2764
    .line 2765
    .line 2766
    move-result v2

    .line 2767
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2768
    .line 2769
    invoke-static {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fgetmExpandedFraction(Lcom/android/systemui/shade/NotificationPanelViewController;)F

    .line 2770
    .line 2771
    .line 2772
    move-result v3

    .line 2773
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2774
    .line 2775
    .line 2776
    sget-object v4, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2777
    .line 2778
    sget-object v5, Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;

    .line 2779
    .line 2780
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 2781
    .line 2782
    const/4 v6, 0x0

    .line 2783
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 2784
    .line 2785
    .line 2786
    move-result-object v1

    .line 2787
    const-string v4, "intercept down touch"

    .line 2788
    .line 2789
    invoke-interface {v1, v4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 2790
    .line 2791
    .line 2792
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 2793
    .line 2794
    .line 2795
    float-to-double v2, v3

    .line 2796
    invoke-interface {v1, v2, v3}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 2797
    .line 2798
    .line 2799
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 2800
    .line 2801
    .line 2802
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2803
    .line 2804
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmCollapsedAndHeadsUpOnDown(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 2805
    .line 2806
    .line 2807
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2808
    .line 2809
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmHasLayoutedSinceDown(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 2810
    .line 2811
    .line 2812
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2813
    .line 2814
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmUpdateFlingOnLayout(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 2815
    .line 2816
    .line 2817
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2818
    .line 2819
    invoke-static {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$fputmTouchAboveFalsingThreshold(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 2820
    .line 2821
    .line 2822
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2823
    .line 2824
    invoke-static {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 2825
    .line 2826
    .line 2827
    :cond_64
    :goto_26
    const/4 p0, 0x0

    .line 2828
    return p0

    .line 2829
    :cond_65
    :goto_27
    xor-int/lit8 v4, v4, 0x1

    .line 2830
    .line 2831
    iget-boolean v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    .line 2832
    .line 2833
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 2834
    .line 2835
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2836
    .line 2837
    .line 2838
    sget-object v6, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2839
    .line 2840
    sget-object v7, Lcom/android/systemui/shade/ShadeLogger$logNotInterceptingTouchInstantExpanding$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logNotInterceptingTouchInstantExpanding$2;

    .line 2841
    .line 2842
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 2843
    .line 2844
    const/4 v8, 0x0

    .line 2845
    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 2846
    .line 2847
    .line 2848
    move-result-object v1

    .line 2849
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 2850
    .line 2851
    .line 2852
    invoke-interface {v1, v4}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 2853
    .line 2854
    .line 2855
    invoke-interface {v1, v5}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 2856
    .line 2857
    .line 2858
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 2859
    .line 2860
    .line 2861
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2862
    .line 2863
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2864
    .line 2865
    const/4 v1, 0x0

    .line 2866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2867
    .line 2868
    .line 2869
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2870
    .line 2871
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2872
    .line 2873
    const-string v1, "[mInstantExpanding: "

    .line 2874
    .line 2875
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    .line 2877
    .line 2878
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2879
    .line 2880
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 2881
    .line 2882
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2883
    .line 2884
    .line 2885
    const-string v1, " || !mNotificationsDragEnabled: "

    .line 2886
    .line 2887
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    .line 2889
    .line 2890
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2891
    .line 2892
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    .line 2893
    .line 2894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2895
    .line 2896
    .line 2897
    const-string v1, " || mTouchDisabled: "

    .line 2898
    .line 2899
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2900
    .line 2901
    .line 2902
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2903
    .line 2904
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    .line 2905
    .line 2906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2907
    .line 2908
    .line 2909
    const-string v1, "]"

    .line 2910
    .line 2911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2912
    .line 2913
    .line 2914
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2915
    .line 2916
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 2917
    .line 2918
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2919
    .line 2920
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 2921
    .line 2922
    const/4 v1, 0x0

    .line 2923
    invoke-virtual {v0, p1, v3, p0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2924
    .line 2925
    .line 2926
    return v1

    .line 2927
    :cond_66
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2928
    .line 2929
    const-string v2, "mDetailViewCollapseAnimating : "

    .line 2930
    .line 2931
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2932
    .line 2933
    .line 2934
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2935
    .line 2936
    iget-boolean v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mDetailViewCollapseAnimating:Z

    .line 2937
    .line 2938
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2939
    .line 2940
    .line 2941
    const-string v2, " mQsExpandedViewCollapseAnimating : "

    .line 2942
    .line 2943
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    .line 2945
    .line 2946
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2947
    .line 2948
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsExpandedViewCollapseAnimating:Z

    .line 2949
    .line 2950
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2951
    .line 2952
    .line 2953
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2954
    .line 2955
    .line 2956
    move-result-object p0

    .line 2957
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 2958
    .line 2959
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 2960
    .line 2961
    const/4 v1, 0x1

    .line 2962
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcInterceptTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 2963
    .line 2964
    .line 2965
    return v1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAODDoubleTouchListener:Landroid/view/View$OnTouchListener;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    const-string v0, "NotificationPanelView"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, "NPVC"

    .line 8
    .line 9
    invoke-virtual {v1, p1, v3, v2}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    iget-wide v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    .line 26
    .line 27
    cmp-long v1, v6, v8

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 34
    .line 35
    const-string v1, "onTouch: duplicate down event detected... ignoring"

    .line 36
    .line 37
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 43
    .line 44
    const-string/jumbo v0, "same touch down time"

    .line 45
    .line 46
    .line 47
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 48
    .line 49
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    return v4

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    iput-wide v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v1, v4, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 67
    .line 68
    iget-object v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 69
    .line 70
    check-cast v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 71
    .line 72
    iget v6, v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 73
    .line 74
    if-eq v6, v4, :cond_2

    .line 75
    .line 76
    if-ne v6, v2, :cond_3

    .line 77
    .line 78
    :cond_2
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 87
    .line 88
    iget-object v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 89
    .line 90
    iget-boolean v6, v6, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 91
    .line 92
    if-nez v6, :cond_3

    .line 93
    .line 94
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 95
    .line 96
    invoke-virtual {v1, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_4

    .line 108
    .line 109
    iget-boolean v6, v1, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 110
    .line 111
    if-eqz v6, :cond_4

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsController;->disallowTouches()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_4

    .line 118
    .line 119
    move v1, v4

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    move v1, v5

    .line 122
    :goto_1
    if-eqz v1, :cond_5

    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 127
    .line 128
    const-string v1, "onTouch: ignore touch, panel touches disallowed and qs fully expanded"

    .line 129
    .line 130
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 136
    .line 137
    const-string v0, "isFullyExpandedAndTouchesDisallowed"

    .line 138
    .line 139
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 140
    .line 141
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    return v5

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 146
    .line 147
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDetailViewCollapseAnimating:Z

    .line 148
    .line 149
    if-nez v6, :cond_68

    .line 150
    .line 151
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsExpandedViewCollapseAnimating:Z

    .line 152
    .line 153
    if-eqz v6, :cond_6

    .line 154
    .line 155
    goto/16 :goto_29

    .line 156
    .line 157
    :cond_6
    sget-boolean v6, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    .line 158
    .line 159
    if-eqz v6, :cond_7

    .line 160
    .line 161
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_7

    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 172
    .line 173
    const-string/jumbo v0, "unlockedScreenOff animation playing"

    .line 174
    .line 175
    .line 176
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 177
    .line 178
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 179
    .line 180
    .line 181
    return v4

    .line 182
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 183
    .line 184
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_a

    .line 191
    .line 192
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 193
    .line 194
    iget v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    .line 195
    .line 196
    if-nez v6, :cond_8

    .line 197
    .line 198
    move v6, v4

    .line 199
    goto :goto_2

    .line 200
    :cond_8
    move v6, v5

    .line 201
    :goto_2
    if-eqz v6, :cond_a

    .line 202
    .line 203
    iget-object v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 204
    .line 205
    iget-boolean v6, v6, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 206
    .line 207
    if-nez v6, :cond_a

    .line 208
    .line 209
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 210
    .line 211
    if-eqz v1, :cond_a

    .line 212
    .line 213
    iget-object v1, v1, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 214
    .line 215
    iget-object v1, v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 216
    .line 217
    if-eqz v1, :cond_9

    .line 218
    .line 219
    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->isIconsOnlyTouchEvent(Landroid/view/MotionEvent;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    goto :goto_3

    .line 224
    :cond_9
    move v1, v5

    .line 225
    :goto_3
    if-eqz v1, :cond_a

    .line 226
    .line 227
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 228
    .line 229
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 230
    .line 231
    const-string v0, "iconsOnlyTouchEvent is true"

    .line 232
    .line 233
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 234
    .line 235
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 236
    .line 237
    .line 238
    return v4

    .line 239
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 240
    .line 241
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    .line 242
    .line 243
    const-string v7, "LsRune.LOCKUI_FACE_WIDGET"

    .line 244
    .line 245
    if-eqz v6, :cond_b

    .line 246
    .line 247
    iget-object p0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 248
    .line 249
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 250
    .line 251
    invoke-virtual {p0, p1, v7, v5}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 252
    .line 253
    .line 254
    return v5

    .line 255
    :cond_b
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 256
    .line 257
    iget-object v5, v5, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 258
    .line 259
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    new-instance v6, Lcom/android/systemui/shade/SecQuickSettingsController$mediaTouchEvent$1;

    .line 263
    .line 264
    invoke-direct {v6, v5}, Lcom/android/systemui/shade/SecQuickSettingsController$mediaTouchEvent$1;-><init>(Lcom/android/systemui/shade/SecQuickSettingsController;)V

    .line 265
    .line 266
    .line 267
    iget-object v5, v5, Lcom/android/systemui/shade/SecQuickSettingsController;->mediaTouchHelper:Lcom/android/systemui/shade/SecQsMediaTouchHelper;

    .line 268
    .line 269
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    sget-object v8, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    .line 273
    .line 274
    iget-object v9, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 275
    .line 276
    invoke-virtual {v9, v8}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerSize(Lcom/android/systemui/media/MediaType;)I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-nez v8, :cond_c

    .line 281
    .line 282
    goto/16 :goto_a

    .line 283
    .line 284
    :cond_c
    new-instance v8, Lcom/android/systemui/shade/SecQsMediaTouchHelper$onTouch$1;

    .line 285
    .line 286
    invoke-direct {v8, v5, p1}, Lcom/android/systemui/shade/SecQsMediaTouchHelper$onTouch$1;-><init>(Lcom/android/systemui/shade/SecQsMediaTouchHelper;Landroid/view/MotionEvent;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5, p1, v8}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->updateMediaPlayerBar(Landroid/view/MotionEvent;Lcom/android/systemui/shade/SecQsMediaTouchHelper$onTouch$1;)V

    .line 290
    .line 291
    .line 292
    iget-boolean v8, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerExpanding:Z

    .line 293
    .line 294
    iget-object v10, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->panelLogger$delegate:Lkotlin/Lazy;

    .line 295
    .line 296
    if-eqz v8, :cond_19

    .line 297
    .line 298
    new-instance v8, Lcom/android/systemui/shade/SecQsMediaTouchHelper$onTouch$2;

    .line 299
    .line 300
    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    check-cast v10, Lcom/android/systemui/log/SecPanelLogger;

    .line 305
    .line 306
    invoke-direct {v8, v10}, Lcom/android/systemui/shade/SecQsMediaTouchHelper$onTouch$2;-><init>(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    const-string v10, "mediaPlayerExpanding is true"

    .line 310
    .line 311
    invoke-static {p1, v8, v10}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->log(Landroid/view/MotionEvent;Lkotlin/jvm/functions/Function3;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, p1}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->preparePointerIndex(Landroid/view/MotionEvent;)I

    .line 315
    .line 316
    .line 317
    move-result v8

    .line 318
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    iget-object v11, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initialTouchYSupplier:Ljava/util/function/DoubleSupplier;

    .line 327
    .line 328
    invoke-interface {v11}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 329
    .line 330
    .line 331
    move-result-wide v11

    .line 332
    double-to-float v11, v11

    .line 333
    sub-float v11, v10, v11

    .line 334
    .line 335
    iget-object v12, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->trackMovementConsumer:Ljava/util/function/Consumer;

    .line 336
    .line 337
    invoke-interface {v12, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    iget-object v13, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

    .line 345
    .line 346
    if-eqz v12, :cond_16

    .line 347
    .line 348
    iget-object v8, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->trackingPointerConsumer:Ljava/util/function/IntConsumer;

    .line 349
    .line 350
    if-eq v12, v4, :cond_15

    .line 351
    .line 352
    if-eq v12, v2, :cond_f

    .line 353
    .line 354
    const/4 v1, 0x3

    .line 355
    if-eq v12, v1, :cond_15

    .line 356
    .line 357
    const/4 v1, 0x6

    .line 358
    if-eq v12, v1, :cond_d

    .line 359
    .line 360
    goto/16 :goto_8

    .line 361
    .line 362
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    iget-object v2, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->trackingPointerSupplier:Ljava/util/function/IntSupplier;

    .line 371
    .line 372
    invoke-interface {v2}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-ne v2, v1, :cond_17

    .line 377
    .line 378
    const/4 v2, 0x0

    .line 379
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eq v2, v1, :cond_e

    .line 384
    .line 385
    const/4 v1, 0x0

    .line 386
    goto :goto_4

    .line 387
    :cond_e
    move v1, v4

    .line 388
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    invoke-interface {v8, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-virtual {v5, v2, v1}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->updateInitialTouchPosition(FF)V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_8

    .line 407
    .line 408
    :cond_f
    iget-object v8, v9, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 409
    .line 410
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    sget-boolean v9, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 414
    .line 415
    if-eqz v9, :cond_10

    .line 416
    .line 417
    goto :goto_5

    .line 418
    :cond_10
    iget-object v9, v8, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->context:Landroid/content/Context;

    .line 419
    .line 420
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    .line 429
    .line 430
    if-ne v9, v2, :cond_11

    .line 431
    .line 432
    move v2, v4

    .line 433
    goto :goto_6

    .line 434
    :cond_11
    :goto_5
    const/4 v2, 0x0

    .line 435
    :goto_6
    if-eqz v2, :cond_12

    .line 436
    .line 437
    goto :goto_7

    .line 438
    :cond_12
    iget v2, v8, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->initialBarHeight:I

    .line 439
    .line 440
    int-to-float v2, v2

    .line 441
    add-float/2addr v2, v11

    .line 442
    invoke-virtual {v8}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    .line 443
    .line 444
    .line 445
    move-result v9

    .line 446
    int-to-float v9, v9

    .line 447
    cmpg-float v10, v2, v9

    .line 448
    .line 449
    if-gez v10, :cond_13

    .line 450
    .line 451
    move v2, v9

    .line 452
    :cond_13
    invoke-virtual {v8}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getExpandedHeight()I

    .line 453
    .line 454
    .line 455
    move-result v9

    .line 456
    int-to-float v9, v9

    .line 457
    cmpl-float v10, v2, v9

    .line 458
    .line 459
    if-lez v10, :cond_14

    .line 460
    .line 461
    move v2, v9

    .line 462
    :cond_14
    invoke-virtual {v8, v2, v4}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setPlayerBarExpansion(FZ)V

    .line 463
    .line 464
    .line 465
    iput-boolean v4, v8, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->isGestureExpand:Z

    .line 466
    .line 467
    :goto_7
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getFalsingThreshold()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    int-to-float v1, v1

    .line 472
    cmpl-float v1, v11, v1

    .line 473
    .line 474
    if-ltz v1, :cond_17

    .line 475
    .line 476
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 477
    .line 478
    invoke-virtual {v6, v1}, Lcom/android/systemui/shade/SecQuickSettingsController$mediaTouchEvent$1;->accept(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_15
    const/4 v1, -0x1

    .line 483
    invoke-interface {v8, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 484
    .line 485
    .line 486
    iget-object v1, v9, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 487
    .line 488
    invoke-interface {v13}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 489
    .line 490
    .line 491
    move-result-wide v8

    .line 492
    double-to-float v2, v8

    .line 493
    const/4 v6, 0x0

    .line 494
    invoke-virtual {v1, v2, v6}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setTracking(FZ)Z

    .line 495
    .line 496
    .line 497
    iget-object v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->clearVelocityTrackerRunnable:Ljava/lang/Runnable;

    .line 498
    .line 499
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 500
    .line 501
    .line 502
    goto :goto_8

    .line 503
    :cond_16
    invoke-virtual {v5, v8, v10}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->updateInitialTouchPosition(FF)V

    .line 504
    .line 505
    .line 506
    iget-object v1, v9, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 507
    .line 508
    invoke-interface {v13}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 509
    .line 510
    .line 511
    move-result-wide v8

    .line 512
    double-to-float v2, v8

    .line 513
    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setTracking(FZ)Z

    .line 514
    .line 515
    .line 516
    iget-object v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initVelocityTrackerRunnable:Ljava/lang/Runnable;

    .line 517
    .line 518
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 519
    .line 520
    .line 521
    :cond_17
    :goto_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-eq v1, v4, :cond_18

    .line 526
    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    const/4 v2, 0x3

    .line 532
    if-ne v1, v2, :cond_1b

    .line 533
    .line 534
    :cond_18
    const/4 v1, 0x0

    .line 535
    iput-boolean v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerExpanding:Z

    .line 536
    .line 537
    goto :goto_9

    .line 538
    :cond_19
    iget-boolean v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerScrolling:Z

    .line 539
    .line 540
    if-eqz v1, :cond_1c

    .line 541
    .line 542
    new-instance v1, Lcom/android/systemui/shade/SecQsMediaTouchHelper$onTouch$3;

    .line 543
    .line 544
    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    check-cast v2, Lcom/android/systemui/log/SecPanelLogger;

    .line 549
    .line 550
    invoke-direct {v1, v2}, Lcom/android/systemui/shade/SecQsMediaTouchHelper$onTouch$3;-><init>(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    const-string v2, "mediaPlayerScrolling is true"

    .line 554
    .line 555
    invoke-static {p1, v1, v2}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->log(Landroid/view/MotionEvent;Lkotlin/jvm/functions/Function3;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    iget-object v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 559
    .line 560
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 561
    .line 562
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onMediaPlayerScroll(Landroid/view/MotionEvent;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    if-eq v1, v4, :cond_1a

    .line 570
    .line 571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    const/4 v2, 0x3

    .line 576
    if-ne v1, v2, :cond_1b

    .line 577
    .line 578
    :cond_1a
    const/4 v1, 0x0

    .line 579
    iput-boolean v1, v5, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerScrolling:Z

    .line 580
    .line 581
    :cond_1b
    :goto_9
    move v1, v4

    .line 582
    goto :goto_b

    .line 583
    :cond_1c
    :goto_a
    const/4 v1, 0x0

    .line 584
    :goto_b
    if-eqz v1, :cond_1d

    .line 585
    .line 586
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 587
    .line 588
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 589
    .line 590
    const-string v0, "mediaTouchEvent"

    .line 591
    .line 592
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 593
    .line 594
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 595
    .line 596
    .line 597
    return v4

    .line 598
    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 599
    .line 600
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 601
    .line 602
    if-eqz v1, :cond_1f

    .line 603
    .line 604
    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->interceptTouchForCornerGesture(Landroid/view/MotionEvent;)Z

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    if-eqz v1, :cond_1f

    .line 609
    .line 610
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 611
    .line 612
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 613
    .line 614
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isGestureDetected()Z

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    if-eqz v0, :cond_1e

    .line 619
    .line 620
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 621
    .line 622
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setMotionAborted()V

    .line 623
    .line 624
    .line 625
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 626
    .line 627
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 628
    .line 629
    const-string v1, "MultiWindowEdgeDetector - motion aborted."

    .line 630
    .line 631
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 635
    .line 636
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 637
    .line 638
    const-string v0, "interceptTouchForCornerGesture"

    .line 639
    .line 640
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 641
    .line 642
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 643
    .line 644
    .line 645
    return v4

    .line 646
    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 647
    .line 648
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 649
    .line 650
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 651
    .line 652
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 653
    .line 654
    if-eqz v2, :cond_20

    .line 655
    .line 656
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 657
    .line 658
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerNeedsScrimming()Z

    .line 659
    .line 660
    .line 661
    move-result v1

    .line 662
    if-eqz v1, :cond_20

    .line 663
    .line 664
    move v1, v4

    .line 665
    goto :goto_c

    .line 666
    :cond_20
    const/4 v1, 0x0

    .line 667
    :goto_c
    const-string v2, "[NPVC]|[onTouch]"

    .line 668
    .line 669
    if-nez v1, :cond_66

    .line 670
    .line 671
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 672
    .line 673
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 674
    .line 675
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 676
    .line 677
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowingOverDream:Z

    .line 678
    .line 679
    if-eqz v1, :cond_21

    .line 680
    .line 681
    goto/16 :goto_27

    .line 682
    .line 683
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    if-eq v1, v4, :cond_22

    .line 688
    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    const/4 v5, 0x3

    .line 694
    if-ne v1, v5, :cond_23

    .line 695
    .line 696
    :cond_22
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 697
    .line 698
    const/4 v5, 0x0

    .line 699
    iput-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    .line 700
    .line 701
    :cond_23
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 702
    .line 703
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    .line 704
    .line 705
    if-eqz v1, :cond_24

    .line 706
    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 708
    .line 709
    .line 710
    move-result v1

    .line 711
    if-ne v1, v4, :cond_24

    .line 712
    .line 713
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 714
    .line 715
    invoke-virtual {v1, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    .line 716
    .line 717
    .line 718
    :cond_24
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 719
    .line 720
    invoke-static {v1, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$minitDownStates(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 721
    .line 722
    .line 723
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 724
    .line 725
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 726
    .line 727
    const/4 v6, 0x0

    .line 728
    if-nez v5, :cond_25

    .line 729
    .line 730
    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    .line 731
    .line 732
    iget v8, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    .line 733
    .line 734
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 735
    .line 736
    invoke-virtual {v1, v5, v8, v6}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    if-eqz v1, :cond_26

    .line 741
    .line 742
    :cond_25
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 743
    .line 744
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 745
    .line 746
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 747
    .line 748
    if-eqz v1, :cond_27

    .line 749
    .line 750
    :cond_26
    move v1, v4

    .line 751
    goto :goto_d

    .line 752
    :cond_27
    const/4 v1, 0x0

    .line 753
    :goto_d
    if-eqz v1, :cond_28

    .line 754
    .line 755
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 756
    .line 757
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 758
    .line 759
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-eqz v1, :cond_28

    .line 764
    .line 765
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 766
    .line 767
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 768
    .line 769
    const-string v1, "onTouch: PulseExpansionHandler handled event"

    .line 770
    .line 771
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 775
    .line 776
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 777
    .line 778
    const/4 v1, 0x0

    .line 779
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 780
    .line 781
    .line 782
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 783
    .line 784
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 785
    .line 786
    const-string v1, "!mIsExpandingOrCollapsing: "

    .line 787
    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 792
    .line 793
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 794
    .line 795
    xor-int/2addr v1, v4

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    const-string v1, "!shouldQuickSettingsIntercept: "

    .line 800
    .line 801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 805
    .line 806
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 807
    .line 808
    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    .line 809
    .line 810
    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    .line 811
    .line 812
    invoke-virtual {v3, v5, v1, v6}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 813
    .line 814
    .line 815
    move-result v1

    .line 816
    xor-int/2addr v1, v4

    .line 817
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    const-string v1, "isExpanding: "

    .line 821
    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 826
    .line 827
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 828
    .line 829
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 830
    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 835
    .line 836
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 837
    .line 838
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 839
    .line 840
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 841
    .line 842
    invoke-virtual {v0, p1, v2, p0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 843
    .line 844
    .line 845
    return v4

    .line 846
    :cond_28
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 847
    .line 848
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    .line 849
    .line 850
    if-eqz v2, :cond_29

    .line 851
    .line 852
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 853
    .line 854
    const-string v1, "onTouch: eat touch, device pulsing"

    .line 855
    .line 856
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 860
    .line 861
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 862
    .line 863
    const-string v0, "mPulsing"

    .line 864
    .line 865
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 866
    .line 867
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 868
    .line 869
    .line 870
    return v4

    .line 871
    :cond_29
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    .line 872
    .line 873
    if-eqz v2, :cond_2b

    .line 874
    .line 875
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 876
    .line 877
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    .line 878
    .line 879
    if-nez v5, :cond_2b

    .line 880
    .line 881
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 882
    .line 883
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 884
    .line 885
    if-eqz v1, :cond_2a

    .line 886
    .line 887
    move v1, v4

    .line 888
    goto :goto_e

    .line 889
    :cond_2a
    const/4 v1, 0x0

    .line 890
    :goto_e
    if-nez v1, :cond_2b

    .line 891
    .line 892
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 893
    .line 894
    .line 895
    move-result v1

    .line 896
    if-eqz v1, :cond_2b

    .line 897
    .line 898
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 899
    .line 900
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 901
    .line 902
    const-string/jumbo v2, "panel_open_peek"

    .line 903
    .line 904
    .line 905
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 906
    .line 907
    .line 908
    :cond_2b
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 909
    .line 910
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 911
    .line 912
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 917
    .line 918
    iget-boolean v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 919
    .line 920
    const/4 v8, 0x5

    .line 921
    if-eqz v5, :cond_2c

    .line 922
    .line 923
    iget-boolean v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 924
    .line 925
    if-eqz v5, :cond_3f

    .line 926
    .line 927
    :cond_2c
    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 928
    .line 929
    iget-boolean v5, v5, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 930
    .line 931
    if-nez v5, :cond_3f

    .line 932
    .line 933
    iget v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 934
    .line 935
    if-eqz v5, :cond_3f

    .line 936
    .line 937
    iget-boolean v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 938
    .line 939
    if-nez v5, :cond_3f

    .line 940
    .line 941
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 942
    .line 943
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 944
    .line 945
    .line 946
    move-result v2

    .line 947
    if-nez v2, :cond_3f

    .line 948
    .line 949
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 950
    .line 951
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    .line 952
    .line 953
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 954
    .line 955
    .line 956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 957
    .line 958
    .line 959
    move-result v5

    .line 960
    iget-boolean v9, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mMotionCancelled:Z

    .line 961
    .line 962
    if-eqz v9, :cond_2d

    .line 963
    .line 964
    if-eqz v5, :cond_2d

    .line 965
    .line 966
    goto/16 :goto_16

    .line 967
    .line 968
    :cond_2d
    sget-boolean v9, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 969
    .line 970
    if-eqz v9, :cond_2e

    .line 971
    .line 972
    const-class v9, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 973
    .line 974
    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v9

    .line 978
    check-cast v9, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 979
    .line 980
    invoke-interface {v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    .line 981
    .line 982
    .line 983
    move-result v9

    .line 984
    if-eqz v9, :cond_2e

    .line 985
    .line 986
    goto/16 :goto_16

    .line 987
    .line 988
    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 989
    .line 990
    .line 991
    move-result v9

    .line 992
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 993
    .line 994
    .line 995
    move-result v10

    .line 996
    if-eqz v5, :cond_36

    .line 997
    .line 998
    if-eq v5, v4, :cond_33

    .line 999
    .line 1000
    const/4 v9, 0x3

    .line 1001
    if-eq v5, v9, :cond_33

    .line 1002
    .line 1003
    if-eq v5, v8, :cond_30

    .line 1004
    .line 1005
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1006
    .line 1007
    if-nez v2, :cond_2f

    .line 1008
    .line 1009
    const/4 v2, 0x0

    .line 1010
    goto/16 :goto_14

    .line 1011
    .line 1012
    :cond_2f
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    goto/16 :goto_14

    .line 1017
    .line 1018
    :cond_30
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mMotionCancelled:Z

    .line 1019
    .line 1020
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1021
    .line 1022
    if-nez v5, :cond_31

    .line 1023
    .line 1024
    goto/16 :goto_16

    .line 1025
    .line 1026
    :cond_31
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1027
    .line 1028
    .line 1029
    move-result v5

    .line 1030
    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1031
    .line 1032
    if-nez v9, :cond_32

    .line 1033
    .line 1034
    goto/16 :goto_17

    .line 1035
    .line 1036
    :cond_32
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->endMotion()V

    .line 1037
    .line 1038
    .line 1039
    goto :goto_f

    .line 1040
    :cond_33
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1041
    .line 1042
    if-nez v5, :cond_34

    .line 1043
    .line 1044
    goto/16 :goto_16

    .line 1045
    .line 1046
    :cond_34
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v5

    .line 1050
    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1051
    .line 1052
    if-nez v9, :cond_35

    .line 1053
    .line 1054
    goto/16 :goto_17

    .line 1055
    .line 1056
    :cond_35
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->endMotion()V

    .line 1057
    .line 1058
    .line 1059
    :goto_f
    move v2, v5

    .line 1060
    goto/16 :goto_14

    .line 1061
    .line 1062
    :cond_36
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1063
    .line 1064
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    .line 1068
    .line 1069
    .line 1070
    move-result v5

    .line 1071
    if-nez v5, :cond_37

    .line 1072
    .line 1073
    move v5, v4

    .line 1074
    goto :goto_10

    .line 1075
    :cond_37
    const/4 v5, 0x0

    .line 1076
    :goto_10
    if-eqz v5, :cond_38

    .line 1077
    .line 1078
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1079
    .line 1080
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v2, v5, v10, v9}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isOnIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FF)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v5

    .line 1087
    if-eqz v5, :cond_38

    .line 1088
    .line 1089
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1090
    .line 1091
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1092
    .line 1093
    .line 1094
    goto :goto_12

    .line 1095
    :cond_38
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1096
    .line 1097
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    .line 1101
    .line 1102
    .line 1103
    move-result v5

    .line 1104
    if-nez v5, :cond_39

    .line 1105
    .line 1106
    move v5, v4

    .line 1107
    goto :goto_11

    .line 1108
    :cond_39
    const/4 v5, 0x0

    .line 1109
    :goto_11
    if-eqz v5, :cond_3a

    .line 1110
    .line 1111
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1112
    .line 1113
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v2, v5, v10, v9}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isOnIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FF)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v5

    .line 1120
    if-eqz v5, :cond_3a

    .line 1121
    .line 1122
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1123
    .line 1124
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_12

    .line 1128
    :cond_3a
    const/4 v5, 0x0

    .line 1129
    :goto_12
    const-string v9, "KeyguardSecAffordanceHelper"

    .line 1130
    .line 1131
    const-string v10, "onTouchEvent: After selecting target view"

    .line 1132
    .line 1133
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    .line 1135
    .line 1136
    if-eqz v5, :cond_3e

    .line 1137
    .line 1138
    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1139
    .line 1140
    if-eqz v9, :cond_3b

    .line 1141
    .line 1142
    if-eq v9, v5, :cond_3b

    .line 1143
    .line 1144
    goto :goto_15

    .line 1145
    :cond_3b
    const/4 v9, 0x0

    .line 1146
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mMotionCancelled:Z

    .line 1147
    .line 1148
    iput-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1149
    .line 1150
    iget-object v10, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1151
    .line 1152
    if-ne v5, v10, :cond_3c

    .line 1153
    .line 1154
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1155
    .line 1156
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1157
    .line 1158
    .line 1159
    iput-boolean v9, v5, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    .line 1160
    .line 1161
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1162
    .line 1163
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1164
    .line 1165
    .line 1166
    iput-boolean v4, v5, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    .line 1167
    .line 1168
    goto :goto_13

    .line 1169
    :cond_3c
    iget-object v11, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1170
    .line 1171
    if-ne v5, v11, :cond_3d

    .line 1172
    .line 1173
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1174
    .line 1175
    .line 1176
    iput-boolean v9, v10, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    .line 1177
    .line 1178
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1179
    .line 1180
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1181
    .line 1182
    .line 1183
    iput-boolean v4, v5, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTargetView:Z

    .line 1184
    .line 1185
    :cond_3d
    :goto_13
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1186
    .line 1187
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->startPreviewAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V

    .line 1191
    .line 1192
    .line 1193
    const-class v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1194
    .line 1195
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v5

    .line 1199
    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1200
    .line 1201
    invoke-interface {v5, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setShortcutLaunchInProgress(Z)V

    .line 1202
    .line 1203
    .line 1204
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 1205
    .line 1206
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1210
    .line 1211
    .line 1212
    move-result v2

    .line 1213
    :goto_14
    move v5, v2

    .line 1214
    goto :goto_17

    .line 1215
    :cond_3e
    :goto_15
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mMotionCancelled:Z

    .line 1216
    .line 1217
    :goto_16
    const/4 v5, 0x0

    .line 1218
    :goto_17
    or-int/2addr v1, v5

    .line 1219
    :cond_3f
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1220
    .line 1221
    iget-boolean v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    .line 1222
    .line 1223
    if-eqz v5, :cond_40

    .line 1224
    .line 1225
    const-string p0, "mOnlyAffordanceInThisMotion"

    .line 1226
    .line 1227
    iget-object v0, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 1228
    .line 1229
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1230
    .line 1231
    invoke-virtual {v0, p1, p0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1232
    .line 1233
    .line 1234
    return v4

    .line 1235
    :cond_40
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mIndicatorTouchHandler:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;

    .line 1236
    .line 1237
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 1238
    .line 1239
    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 1240
    .line 1241
    iget-object v5, v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 1242
    .line 1243
    if-eqz v5, :cond_41

    .line 1244
    .line 1245
    iget-boolean v5, v5, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomDoubleTapState:Z

    .line 1246
    .line 1247
    if-eqz v5, :cond_41

    .line 1248
    .line 1249
    move v5, v4

    .line 1250
    goto :goto_18

    .line 1251
    :cond_41
    const/4 v5, 0x0

    .line 1252
    :goto_18
    const-string v9, "IndicatorTouchHandler"

    .line 1253
    .line 1254
    if-eqz v5, :cond_46

    .line 1255
    .line 1256
    iget v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapCount:I

    .line 1257
    .line 1258
    if-nez v5, :cond_42

    .line 1259
    .line 1260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1261
    .line 1262
    .line 1263
    move-result v5

    .line 1264
    if-eqz v5, :cond_44

    .line 1265
    .line 1266
    :cond_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1267
    .line 1268
    .line 1269
    move-result v5

    .line 1270
    if-eq v5, v4, :cond_44

    .line 1271
    .line 1272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1273
    .line 1274
    .line 1275
    move-result v5

    .line 1276
    const/4 v10, 0x3

    .line 1277
    if-ne v5, v10, :cond_43

    .line 1278
    .line 1279
    goto :goto_19

    .line 1280
    :cond_43
    const/4 v5, 0x0

    .line 1281
    goto :goto_1a

    .line 1282
    :cond_44
    :goto_19
    move v5, v4

    .line 1283
    :goto_1a
    if-eqz v5, :cond_46

    .line 1284
    .line 1285
    iget v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapCount:I

    .line 1286
    .line 1287
    add-int/2addr v5, v4

    .line 1288
    iput v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapCount:I

    .line 1289
    .line 1290
    iget-object v10, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapTimeoutRunnable:Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler$doubleTapTimeoutRunnable$1;

    .line 1291
    .line 1292
    iget-object v11, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->mainHandler:Landroid/os/Handler;

    .line 1293
    .line 1294
    if-ne v5, v4, :cond_45

    .line 1295
    .line 1296
    invoke-virtual {v11, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1297
    .line 1298
    .line 1299
    const-wide/16 v12, 0x1f4

    .line 1300
    .line 1301
    invoke-virtual {v11, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1302
    .line 1303
    .line 1304
    const-string v5, "Post double tap timeout runnable"

    .line 1305
    .line 1306
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    .line 1308
    .line 1309
    goto :goto_1b

    .line 1310
    :cond_45
    const/4 v12, 0x3

    .line 1311
    if-lt v5, v12, :cond_46

    .line 1312
    .line 1313
    const-string v5, "Go to sleep by knox double tap"

    .line 1314
    .line 1315
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    .line 1317
    .line 1318
    const/4 v5, 0x0

    .line 1319
    iput v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->doubleTapCount:I

    .line 1320
    .line 1321
    invoke-virtual {v11, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1322
    .line 1323
    .line 1324
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->powerManager:Landroid/os/PowerManager;

    .line 1325
    .line 1326
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1327
    .line 1328
    .line 1329
    move-result-wide v10

    .line 1330
    invoke-virtual {v5, v10, v11}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1331
    .line 1332
    .line 1333
    :cond_46
    :goto_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1334
    .line 1335
    .line 1336
    move-result v5

    .line 1337
    iget-object v10, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardCallChipRect:Landroid/graphics/Rect;

    .line 1338
    .line 1339
    iget-object v11, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->callChipRect:Landroid/graphics/Rect;

    .line 1340
    .line 1341
    iget-object v12, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1342
    .line 1343
    if-eqz v5, :cond_4e

    .line 1344
    .line 1345
    if-eq v5, v4, :cond_4b

    .line 1346
    .line 1347
    const/4 v10, 0x3

    .line 1348
    if-eq v5, v10, :cond_49

    .line 1349
    .line 1350
    if-eq v5, v8, :cond_47

    .line 1351
    .line 1352
    const/4 v8, 0x6

    .line 1353
    if-eq v5, v8, :cond_49

    .line 1354
    .line 1355
    goto/16 :goto_1e

    .line 1356
    .line 1357
    :cond_47
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    .line 1358
    .line 1359
    if-eqz v5, :cond_48

    .line 1360
    .line 1361
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    const-string/jumbo v8, "pointer down x="

    .line 1364
    .line 1365
    .line 1366
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    .line 1372
    const-string v8, ".rawX ,y="

    .line 1373
    .line 1374
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    .line 1380
    const-string v8, ".rawY"

    .line 1381
    .line 1382
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v5

    .line 1389
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    .line 1391
    .line 1392
    :cond_48
    const/4 v5, 0x0

    .line 1393
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    .line 1394
    .line 1395
    goto/16 :goto_1e

    .line 1396
    .line 1397
    :cond_49
    const/4 v5, 0x0

    .line 1398
    iget-boolean v8, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    .line 1399
    .line 1400
    if-eqz v8, :cond_4a

    .line 1401
    .line 1402
    const-string v8, "cancel or pointer up -> block to jump to call in multi touch"

    .line 1403
    .line 1404
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    .line 1406
    .line 1407
    :cond_4a
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    .line 1408
    .line 1409
    goto :goto_1e

    .line 1410
    :cond_4b
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    .line 1411
    .line 1412
    if-eqz v5, :cond_4d

    .line 1413
    .line 1414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 1415
    .line 1416
    .line 1417
    move-result v5

    .line 1418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 1419
    .line 1420
    .line 1421
    move-result v8

    .line 1422
    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 1423
    .line 1424
    iget-boolean v9, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 1425
    .line 1426
    if-eqz v9, :cond_4c

    .line 1427
    .line 1428
    goto :goto_1c

    .line 1429
    :cond_4c
    move-object v10, v11

    .line 1430
    :goto_1c
    float-to-int v5, v5

    .line 1431
    float-to-int v8, v8

    .line 1432
    invoke-virtual {v10, v5, v8}, Landroid/graphics/Rect;->contains(II)Z

    .line 1433
    .line 1434
    .line 1435
    move-result v5

    .line 1436
    if-eqz v5, :cond_4d

    .line 1437
    .line 1438
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->ongoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 1439
    .line 1440
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    .line 1441
    .line 1442
    if-eqz v5, :cond_4d

    .line 1443
    .line 1444
    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    .line 1445
    .line 1446
    .line 1447
    :cond_4d
    const/4 v5, 0x0

    .line 1448
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    .line 1449
    .line 1450
    goto :goto_1e

    .line 1451
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1452
    .line 1453
    .line 1454
    move-result v5

    .line 1455
    iput v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->touchDownX:F

    .line 1456
    .line 1457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1458
    .line 1459
    .line 1460
    move-result v5

    .line 1461
    iput v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->touchDownY:F

    .line 1462
    .line 1463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 1464
    .line 1465
    .line 1466
    move-result v5

    .line 1467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 1468
    .line 1469
    .line 1470
    move-result v8

    .line 1471
    move-object v13, v12

    .line 1472
    check-cast v13, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 1473
    .line 1474
    iget-boolean v13, v13, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 1475
    .line 1476
    if-eqz v13, :cond_4f

    .line 1477
    .line 1478
    goto :goto_1d

    .line 1479
    :cond_4f
    move-object v10, v11

    .line 1480
    :goto_1d
    float-to-int v5, v5

    .line 1481
    float-to-int v8, v8

    .line 1482
    invoke-virtual {v10, v5, v8}, Landroid/graphics/Rect;->contains(II)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v5

    .line 1486
    if-eqz v5, :cond_50

    .line 1487
    .line 1488
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->isTouchOnCallChip:Z

    .line 1489
    .line 1490
    iget v5, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->touchDownX:F

    .line 1491
    .line 1492
    iget v2, v2, Lcom/android/systemui/statusbar/phone/IndicatorTouchHandler;->touchDownY:F

    .line 1493
    .line 1494
    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 1495
    .line 1496
    iget-boolean v8, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 1497
    .line 1498
    const-string v10, "ACTION_DOWN x="

    .line 1499
    .line 1500
    const-string v11, ", y="

    .line 1501
    .line 1502
    const-string v12, ", on the callChip=true, keyguardShowing="

    .line 1503
    .line 1504
    invoke-static {v10, v5, v11, v2, v12}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v2

    .line 1508
    invoke-static {v2, v8, v9}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 1509
    .line 1510
    .line 1511
    :cond_50
    :goto_1e
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1512
    .line 1513
    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 1514
    .line 1515
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    .line 1516
    .line 1517
    if-nez v5, :cond_53

    .line 1518
    .line 1519
    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1520
    .line 1521
    .line 1522
    move-result v5

    .line 1523
    iget-object v8, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1524
    .line 1525
    iget-object v9, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1526
    .line 1527
    if-eqz v9, :cond_51

    .line 1528
    .line 1529
    iget-boolean v9, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 1530
    .line 1531
    if-nez v9, :cond_51

    .line 1532
    .line 1533
    iget-boolean v8, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    .line 1534
    .line 1535
    if-nez v8, :cond_51

    .line 1536
    .line 1537
    move v8, v4

    .line 1538
    goto :goto_1f

    .line 1539
    :cond_51
    const/4 v8, 0x0

    .line 1540
    :goto_1f
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1541
    .line 1542
    invoke-virtual {v2, p1, v5, v8}, Lcom/android/systemui/shade/QuickSettingsController;->handleTouch(Landroid/view/MotionEvent;ZZ)Z

    .line 1543
    .line 1544
    .line 1545
    move-result v2

    .line 1546
    if-eqz v2, :cond_53

    .line 1547
    .line 1548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1549
    .line 1550
    .line 1551
    move-result v0

    .line 1552
    const/4 v1, 0x2

    .line 1553
    if-eq v0, v1, :cond_52

    .line 1554
    .line 1555
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1556
    .line 1557
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1558
    .line 1559
    const-string v1, "onTouch: handleQsTouch handled event"

    .line 1560
    .line 1561
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 1562
    .line 1563
    .line 1564
    :cond_52
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1565
    .line 1566
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 1567
    .line 1568
    const-string v0, "isTrackingHeadsUp && handleTouch"

    .line 1569
    .line 1570
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1571
    .line 1572
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1573
    .line 1574
    .line 1575
    return v4

    .line 1576
    :cond_53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1577
    .line 1578
    .line 1579
    move-result v2

    .line 1580
    if-nez v2, :cond_55

    .line 1581
    .line 1582
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1583
    .line 1584
    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1585
    .line 1586
    .line 1587
    move-result v2

    .line 1588
    if-eqz v2, :cond_55

    .line 1589
    .line 1590
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1591
    .line 1592
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1593
    .line 1594
    const-string/jumbo v2, "panel_open"

    .line 1595
    .line 1596
    .line 1597
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1598
    .line 1599
    .line 1600
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    .line 1601
    .line 1602
    if-eqz v1, :cond_54

    .line 1603
    .line 1604
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1605
    .line 1606
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1607
    .line 1608
    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mSecQuickSettingsController:Lcom/android/systemui/shade/SecQuickSettingsController;

    .line 1609
    .line 1610
    iget-object v1, v1, Lcom/android/systemui/shade/SecQuickSettingsController;->tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    .line 1611
    .line 1612
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1613
    .line 1614
    .line 1615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 1616
    .line 1617
    .line 1618
    move-result v2

    .line 1619
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->updateTabletHorizontalPanelPosition(F)V

    .line 1620
    .line 1621
    .line 1622
    :cond_54
    move v1, v4

    .line 1623
    :cond_55
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1624
    .line 1625
    invoke-virtual {v2, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInFaceWidgetContainer(Landroid/view/MotionEvent;)Z

    .line 1626
    .line 1627
    .line 1628
    move-result v2

    .line 1629
    if-eqz v2, :cond_5a

    .line 1630
    .line 1631
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1632
    .line 1633
    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1634
    .line 1635
    iget-boolean v5, v5, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 1636
    .line 1637
    if-nez v5, :cond_5a

    .line 1638
    .line 1639
    iget v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 1640
    .line 1641
    if-ne v5, v4, :cond_5a

    .line 1642
    .line 1643
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 1644
    .line 1645
    iget-object v2, v2, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 1646
    .line 1647
    const/16 v5, 0x8

    .line 1648
    .line 1649
    if-nez v2, :cond_56

    .line 1650
    .line 1651
    goto :goto_20

    .line 1652
    :cond_56
    iget-object v2, v2, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    .line 1653
    .line 1654
    if-eqz v2, :cond_57

    .line 1655
    .line 1656
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 1657
    .line 1658
    .line 1659
    move-result v5

    .line 1660
    :cond_57
    :goto_20
    if-nez v5, :cond_5a

    .line 1661
    .line 1662
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1663
    .line 1664
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 1665
    .line 1666
    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 1667
    .line 1668
    if-nez v0, :cond_58

    .line 1669
    .line 1670
    goto :goto_21

    .line 1671
    :cond_58
    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    .line 1672
    .line 1673
    if-eqz v0, :cond_59

    .line 1674
    .line 1675
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1676
    .line 1677
    .line 1678
    move-result v0

    .line 1679
    goto :goto_22

    .line 1680
    :cond_59
    :goto_21
    const/4 v0, 0x0

    .line 1681
    :goto_22
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1682
    .line 1683
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 1684
    .line 1685
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1686
    .line 1687
    invoke-virtual {p0, p1, v7, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1688
    .line 1689
    .line 1690
    return v0

    .line 1691
    :cond_5a
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1692
    .line 1693
    iget-boolean v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockStarEnabled:Z

    .line 1694
    .line 1695
    if-eqz v5, :cond_5b

    .line 1696
    .line 1697
    invoke-virtual {v2, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInLockStarContainer(Landroid/view/MotionEvent;)Z

    .line 1698
    .line 1699
    .line 1700
    move-result v2

    .line 1701
    if-eqz v2, :cond_5b

    .line 1702
    .line 1703
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1704
    .line 1705
    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1706
    .line 1707
    iget-boolean v5, v5, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 1708
    .line 1709
    if-nez v5, :cond_5b

    .line 1710
    .line 1711
    iget v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 1712
    .line 1713
    if-ne v5, v4, :cond_5b

    .line 1714
    .line 1715
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    .line 1716
    .line 1717
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 1718
    .line 1719
    .line 1720
    move-result v2

    .line 1721
    if-nez v2, :cond_5b

    .line 1722
    .line 1723
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1724
    .line 1725
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    .line 1726
    .line 1727
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v2

    .line 1731
    if-eqz v2, :cond_5b

    .line 1732
    .line 1733
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1734
    .line 1735
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    .line 1736
    .line 1737
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v2

    .line 1741
    check-cast v2, Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 1742
    .line 1743
    invoke-virtual {v2, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1744
    .line 1745
    .line 1746
    move-result v2

    .line 1747
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1748
    .line 1749
    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 1750
    .line 1751
    const-string v7, "LsRune.PLUGIN_LOCK_STAR"

    .line 1752
    .line 1753
    check-cast v5, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1754
    .line 1755
    invoke-virtual {v5, p1, v7, v2}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    .line 1757
    .line 1758
    return v2

    .line 1759
    :catchall_0
    move-exception v2

    .line 1760
    sget-object v5, Lcom/android/systemui/shade/NotificationPanelViewController;->ADDITIONAL_TAP_REQUIRED_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 1761
    .line 1762
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1763
    .line 1764
    const-string v7, "onTouchEvent() error in LockStar - "

    .line 1765
    .line 1766
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1767
    .line 1768
    .line 1769
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v2

    .line 1773
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v2

    .line 1780
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    .line 1782
    .line 1783
    :cond_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1784
    .line 1785
    .line 1786
    move-result v2

    .line 1787
    if-nez v2, :cond_5c

    .line 1788
    .line 1789
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1790
    .line 1791
    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 1792
    .line 1793
    .line 1794
    move-result v2

    .line 1795
    if-eqz v2, :cond_5c

    .line 1796
    .line 1797
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1798
    .line 1799
    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 1800
    .line 1801
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 1802
    .line 1803
    if-eqz v5, :cond_5c

    .line 1804
    .line 1805
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1806
    .line 1807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 1808
    .line 1809
    .line 1810
    move-result v5

    .line 1811
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateKeyguardPosition(F)V

    .line 1812
    .line 1813
    .line 1814
    :cond_5c
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1815
    .line 1816
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1817
    .line 1818
    if-eqz v2, :cond_60

    .line 1819
    .line 1820
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v2

    .line 1824
    if-eqz v2, :cond_60

    .line 1825
    .line 1826
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1827
    .line 1828
    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1829
    .line 1830
    iget-boolean v5, v5, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 1831
    .line 1832
    if-nez v5, :cond_60

    .line 1833
    .line 1834
    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 1835
    .line 1836
    check-cast v5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 1837
    .line 1838
    iget v5, v5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 1839
    .line 1840
    if-ne v5, v4, :cond_60

    .line 1841
    .line 1842
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1843
    .line 1844
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v2

    .line 1848
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->isIntercepting()Z

    .line 1849
    .line 1850
    .line 1851
    move-result v2

    .line 1852
    if-eqz v2, :cond_60

    .line 1853
    .line 1854
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1855
    .line 1856
    const-string v2, "onTouch() event.getAction() : "

    .line 1857
    .line 1858
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1859
    .line 1860
    .line 1861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1862
    .line 1863
    .line 1864
    move-result v2

    .line 1865
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1866
    .line 1867
    .line 1868
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v1

    .line 1872
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    .line 1874
    .line 1875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1876
    .line 1877
    .line 1878
    move-result v0

    .line 1879
    if-eq v0, v4, :cond_5d

    .line 1880
    .line 1881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1882
    .line 1883
    .line 1884
    move-result v0

    .line 1885
    const/4 v1, 0x3

    .line 1886
    if-ne v0, v1, :cond_5f

    .line 1887
    .line 1888
    :cond_5d
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1889
    .line 1890
    iget v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    .line 1891
    .line 1892
    if-nez v1, :cond_5e

    .line 1893
    .line 1894
    goto :goto_23

    .line 1895
    :cond_5e
    const/4 v4, 0x0

    .line 1896
    :goto_23
    if-eqz v4, :cond_5f

    .line 1897
    .line 1898
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1899
    .line 1900
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v0

    .line 1904
    const/4 v1, 0x0

    .line 1905
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->setIntercept(Z)V

    .line 1906
    .line 1907
    .line 1908
    :cond_5f
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1909
    .line 1910
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1911
    .line 1912
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1913
    .line 1914
    .line 1915
    move-result-object v0

    .line 1916
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1917
    .line 1918
    .line 1919
    move-result v0

    .line 1920
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1921
    .line 1922
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 1923
    .line 1924
    const-string v1, "LsRune.PLUGIN_LOCK"

    .line 1925
    .line 1926
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 1927
    .line 1928
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 1929
    .line 1930
    .line 1931
    return v0

    .line 1932
    :cond_60
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1933
    .line 1934
    invoke-static {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mhandleKeyguardEmptySpaceClick(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 1935
    .line 1936
    .line 1937
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1938
    .line 1939
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsExpandedOnTouchDown:Z

    .line 1940
    .line 1941
    if-nez v2, :cond_62

    .line 1942
    .line 1943
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1944
    .line 1945
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 1946
    .line 1947
    .line 1948
    move-result v0

    .line 1949
    cmpl-float v0, v0, v6

    .line 1950
    .line 1951
    if-gtz v0, :cond_62

    .line 1952
    .line 1953
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1954
    .line 1955
    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 1956
    .line 1957
    if-ne v2, v4, :cond_61

    .line 1958
    .line 1959
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1960
    .line 1961
    if-eqz v0, :cond_61

    .line 1962
    .line 1963
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v0

    .line 1967
    if-eqz v0, :cond_61

    .line 1968
    .line 1969
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1970
    .line 1971
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 1972
    .line 1973
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getTouchManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v0

    .line 1977
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockTouchManager;->onAnimatorTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1978
    .line 1979
    .line 1980
    move-result v0

    .line 1981
    goto :goto_24

    .line 1982
    :cond_61
    const/4 v0, 0x0

    .line 1983
    :goto_24
    if-nez v0, :cond_62

    .line 1984
    .line 1985
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1986
    .line 1987
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 1988
    .line 1989
    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1990
    .line 1991
    .line 1992
    move-result v0

    .line 1993
    if-eqz v0, :cond_62

    .line 1994
    .line 1995
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1996
    .line 1997
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    .line 1998
    .line 1999
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->cancelIndicationAreaAnim()V

    .line 2000
    .line 2001
    .line 2002
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2003
    .line 2004
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 2005
    .line 2006
    const-string v0, "LsRune.KEYGUARD_ALL_DIRECTIONS_SWIPE_UNLOCK"

    .line 2007
    .line 2008
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 2009
    .line 2010
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 2011
    .line 2012
    .line 2013
    return v4

    .line 2014
    :cond_62
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2015
    .line 2016
    iget v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 2017
    .line 2018
    if-ne v2, v4, :cond_63

    .line 2019
    .line 2020
    const-string v2, "No handleTouch() in KEYGUARD state"

    .line 2021
    .line 2022
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 2023
    .line 2024
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 2025
    .line 2026
    invoke-virtual {v0, p1, v2, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 2027
    .line 2028
    .line 2029
    goto :goto_25

    .line 2030
    :cond_63
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->handleTouch(Landroid/view/MotionEvent;)Z

    .line 2031
    .line 2032
    .line 2033
    move-result v0

    .line 2034
    or-int/2addr v1, v0

    .line 2035
    :goto_25
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2036
    .line 2037
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2038
    .line 2039
    const/4 v2, 0x0

    .line 2040
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2041
    .line 2042
    .line 2043
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2044
    .line 2045
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2046
    .line 2047
    const-string v2, "FINAL (!mDozing: "

    .line 2048
    .line 2049
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    .line 2051
    .line 2052
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2053
    .line 2054
    iget-boolean v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 2055
    .line 2056
    xor-int/2addr v2, v4

    .line 2057
    const-string v5, " || handled: "

    .line 2058
    .line 2059
    const-string v6, ")"

    .line 2060
    .line 2061
    invoke-static {v0, v2, v5, v1, v6}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 2062
    .line 2063
    .line 2064
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 2065
    .line 2066
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2067
    .line 2068
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2069
    .line 2070
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v2

    .line 2074
    invoke-virtual {v0, p1, v3, v2}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    .line 2076
    .line 2077
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2078
    .line 2079
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 2080
    .line 2081
    if-eqz p0, :cond_65

    .line 2082
    .line 2083
    if-eqz v1, :cond_64

    .line 2084
    .line 2085
    goto :goto_26

    .line 2086
    :cond_64
    const/4 v4, 0x0

    .line 2087
    :cond_65
    :goto_26
    return v4

    .line 2088
    :cond_66
    :goto_27
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2089
    .line 2090
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 2091
    .line 2092
    const-string v1, "onTouch: ignore touch, bouncer scrimmed or showing over dream"

    .line 2093
    .line 2094
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 2095
    .line 2096
    .line 2097
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2098
    .line 2099
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2100
    .line 2101
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2102
    .line 2103
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 2104
    .line 2105
    if-eqz v1, :cond_67

    .line 2106
    .line 2107
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2108
    .line 2109
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerNeedsScrimming()Z

    .line 2110
    .line 2111
    .line 2112
    move-result v0

    .line 2113
    if-eqz v0, :cond_67

    .line 2114
    .line 2115
    goto :goto_28

    .line 2116
    :cond_67
    const/4 v4, 0x0

    .line 2117
    :goto_28
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2118
    .line 2119
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2120
    .line 2121
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2122
    .line 2123
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowingOverDream:Z

    .line 2124
    .line 2125
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2126
    .line 2127
    const/4 v3, 0x0

    .line 2128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2129
    .line 2130
    .line 2131
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2132
    .line 2133
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2134
    .line 2135
    const-string v3, "[isBouncerShowingScrimmed: "

    .line 2136
    .line 2137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    .line 2139
    .line 2140
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2141
    .line 2142
    .line 2143
    const-string v3, " || isBouncerShowingOverDream: "

    .line 2144
    .line 2145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2146
    .line 2147
    .line 2148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2149
    .line 2150
    .line 2151
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2152
    .line 2153
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 2154
    .line 2155
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 2156
    .line 2157
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2158
    .line 2159
    const/4 v1, 0x0

    .line 2160
    invoke-virtual {v0, p1, v2, p0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addPanelLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2161
    .line 2162
    .line 2163
    return v1

    .line 2164
    :cond_68
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2165
    .line 2166
    const-string v2, "mDetailViewCollapseAnimating : "

    .line 2167
    .line 2168
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2169
    .line 2170
    .line 2171
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2172
    .line 2173
    iget-boolean v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mDetailViewCollapseAnimating:Z

    .line 2174
    .line 2175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2176
    .line 2177
    .line 2178
    const-string v2, " mQsExpandedViewCollapseAnimating : "

    .line 2179
    .line 2180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    .line 2182
    .line 2183
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2184
    .line 2185
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsExpandedViewCollapseAnimating:Z

    .line 2186
    .line 2187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2188
    .line 2189
    .line 2190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2191
    .line 2192
    .line 2193
    move-result-object p0

    .line 2194
    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 2195
    .line 2196
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 2197
    .line 2198
    invoke-virtual {v0, p1, p0, v4}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addNpvcOnTouchLog(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    .line 2199
    .line 2200
    .line 2201
    return v4
.end method
