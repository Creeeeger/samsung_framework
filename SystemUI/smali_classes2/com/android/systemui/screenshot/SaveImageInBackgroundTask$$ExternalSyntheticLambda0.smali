.class public final synthetic Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/net/Uri;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/content/Context;Landroid/net/Uri;ZLandroid/content/res/Resources;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$4:Landroid/content/res/Resources;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/net/Uri;Landroid/content/Context;ZLandroid/content/res/Resources;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$4:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-string v4, "android:smart_actions_enabled"

    .line 6
    .line 7
    const-string v5, "android:screenshot_id"

    .line 8
    .line 9
    const-string v6, "android:screenshot_action_intent"

    .line 10
    .line 11
    const v7, 0x10008000

    .line 12
    .line 13
    .line 14
    const/4 v8, 0x2

    .line 15
    const/4 v9, 0x1

    .line 16
    const-string v10, "image/png"

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 24
    .line 25
    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v11, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    .line 28
    .line 29
    iget-boolean v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$3:Z

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$4:Landroid/content/res/Resources;

    .line 32
    .line 33
    iget-object v12, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSharedElementTransition:Ljava/util/function/Supplier;

    .line 34
    .line 35
    invoke-interface {v12}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    move-object v13, v12

    .line 40
    check-cast v13, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 41
    .line 42
    const v12, 0x7f13037e

    .line 43
    .line 44
    .line 45
    invoke-virtual {v15, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    new-instance v2, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v3, "android.intent.action.EDIT"

    .line 52
    .line 53
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v16

    .line 60
    if-nez v16, :cond_0

    .line 61
    .line 62
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    invoke-virtual {v2, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    const/4 v12, 0x0

    .line 82
    const/high16 v7, 0x4000000

    .line 83
    .line 84
    iget-object v8, v13, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->bundle:Landroid/os/Bundle;

    .line 85
    .line 86
    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 87
    .line 88
    move-object v11, v15

    .line 89
    move-object v10, v13

    .line 90
    move-object v13, v2

    .line 91
    move v2, v14

    .line 92
    move v14, v7

    .line 93
    move-object v7, v15

    .line 94
    move-object v15, v8

    .line 95
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    new-instance v12, Landroid/content/Intent;

    .line 106
    .line 107
    const-class v13, Lcom/android/systemui/screenshot/ActionProxyReceiver;

    .line 108
    .line 109
    invoke-direct {v12, v7, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    iget-object v1, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v6, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v2, "android:screenshot_override_transition"

    .line 127
    .line 128
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const/high16 v2, 0x10000000

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 143
    .line 144
    const/high16 v3, 0x14000000

    .line 145
    .line 146
    invoke-static {v7, v11, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 151
    .line 152
    const v3, 0x7f080aa3

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    const v4, 0x1040c5f

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-direct {v2, v3, v0, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 170
    .line 171
    .line 172
    return-object v10

    .line 173
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 174
    .line 175
    iget-object v2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    .line 176
    .line 177
    iget-object v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 178
    .line 179
    iget-boolean v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$3:Z

    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$4:Landroid/content/res/Resources;

    .line 182
    .line 183
    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSharedElementTransition:Ljava/util/function/Supplier;

    .line 184
    .line 185
    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    move-object v14, v11

    .line 190
    check-cast v14, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 191
    .line 192
    new-instance v11, Landroid/content/Intent;

    .line 193
    .line 194
    const-string v13, "android.intent.action.SEND"

    .line 195
    .line 196
    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v11, v2, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    const-string v10, "android.intent.extra.STREAM"

    .line 203
    .line 204
    invoke-virtual {v11, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    new-instance v10, Landroid/content/ClipData;

    .line 208
    .line 209
    new-instance v12, Landroid/content/ClipDescription;

    .line 210
    .line 211
    const-string/jumbo v16, "text/plain"

    .line 212
    .line 213
    .line 214
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    const-string v8, "content"

    .line 219
    .line 220
    invoke-direct {v12, v8, v7}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    new-instance v7, Landroid/content/ClipData$Item;

    .line 224
    .line 225
    invoke-direct {v7, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v10, v12, v7}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v11, v10}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 232
    .line 233
    .line 234
    iget-wide v7, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 235
    .line 236
    invoke-static {v7, v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getSubjectString(J)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    const-string v7, "android.intent.extra.SUBJECT"

    .line 241
    .line 242
    invoke-virtual {v11, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v11, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    const/4 v7, 0x2

    .line 250
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    const/4 v7, 0x0

    .line 258
    invoke-static {v11, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    const v8, 0x10008000

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    const/4 v12, 0x0

    .line 274
    const/high16 v8, 0x14000000

    .line 275
    .line 276
    iget-object v10, v14, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->bundle:Landroid/os/Bundle;

    .line 277
    .line 278
    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 279
    .line 280
    move-object v11, v3

    .line 281
    move-object/from16 v17, v13

    .line 282
    .line 283
    move-object v13, v7

    .line 284
    move-object v7, v14

    .line 285
    move v14, v8

    .line 286
    move v8, v15

    .line 287
    move-object v15, v10

    .line 288
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    new-instance v11, Landroid/content/Intent;

    .line 293
    .line 294
    const-class v12, Lcom/android/systemui/screenshot/ActionProxyReceiver;

    .line 295
    .line 296
    invoke-direct {v11, v3, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v11, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    const-string v10, "android:screenshot_disallow_enter_pip"

    .line 304
    .line 305
    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    iget-object v1, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v6, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    move-object/from16 v4, v17

    .line 320
    .line 321
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    const/high16 v4, 0x10000000

    .line 326
    .line 327
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 332
    .line 333
    const/high16 v5, 0x14000000

    .line 334
    .line 335
    invoke-static {v3, v2, v1, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 340
    .line 341
    const v3, 0x7f080aa5

    .line 342
    .line 343
    .line 344
    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    const v4, 0x1040d71

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-direct {v2, v3, v0, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 359
    .line 360
    .line 361
    return-object v7

    .line 362
    nop

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
