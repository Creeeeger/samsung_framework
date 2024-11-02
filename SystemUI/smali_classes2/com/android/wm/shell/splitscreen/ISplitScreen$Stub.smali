.class public abstract Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "com.android.wm.shell.splitscreen.ISplitScreen"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-lt v0, v4, :cond_0

    .line 11
    .line 12
    const v5, 0xffffff

    .line 13
    .line 14
    .line 15
    if-gt v0, v5, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const v5, 0x5f4e5446

    .line 21
    .line 22
    .line 23
    if-eq v0, v5, :cond_a

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const-string v5, "com.android.wm.shell.splitscreen.ISplitScreenListener"

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    const/4 v7, 0x0

    .line 30
    if-eq v0, v6, :cond_7

    .line 31
    .line 32
    const/4 v8, 0x3

    .line 33
    if-eq v0, v8, :cond_4

    .line 34
    .line 35
    const/16 v5, 0x66

    .line 36
    .line 37
    if-eq v0, v5, :cond_3

    .line 38
    .line 39
    const/16 v5, 0x67

    .line 40
    .line 41
    if-eq v0, v5, :cond_2

    .line 42
    .line 43
    const-string/jumbo v5, "startTasks"

    .line 44
    .line 45
    .line 46
    packed-switch v0, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0

    .line 54
    :pswitch_0
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move-object v9, v0

    .line 61
    check-cast v9, Landroid/app/PendingIntent;

    .line 62
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v11, v0

    .line 74
    check-cast v11, Landroid/content/pm/ShortcutInfo;

    .line 75
    .line 76
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    move-object v12, v2

    .line 83
    check-cast v12, Landroid/os/Bundle;

    .line 84
    .line 85
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    move-object v13, v2

    .line 92
    check-cast v13, Landroid/app/PendingIntent;

    .line 93
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    sget-object v2, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    move-object v15, v2

    .line 105
    check-cast v15, Landroid/content/pm/ShortcutInfo;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-object/from16 v16, v0

    .line 112
    .line 113
    check-cast v16, Landroid/os/Bundle;

    .line 114
    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result v17

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 120
    .line 121
    .line 122
    move-result v18

    .line 123
    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    move-object/from16 v19, v0

    .line 130
    .line 131
    check-cast v19, Landroid/window/RemoteTransition;

    .line 132
    .line 133
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    move-object/from16 v20, v0

    .line 140
    .line 141
    check-cast v20, Lcom/android/internal/logging/InstanceId;

    .line 142
    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    .line 145
    .line 146
    move-object/from16 v0, p0

    .line 147
    .line 148
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 151
    .line 152
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;

    .line 153
    .line 154
    const/16 v21, 0x1

    .line 155
    .line 156
    move-object v8, v1

    .line 157
    invoke-direct/range {v8 .. v21}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;-><init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 158
    .line 159
    .line 160
    const-string/jumbo v2, "startIntents"

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v2, v1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_1
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    move-object v9, v0

    .line 175
    check-cast v9, Landroid/app/PendingIntent;

    .line 176
    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    move-object v11, v0

    .line 188
    check-cast v11, Landroid/content/pm/ShortcutInfo;

    .line 189
    .line 190
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    move-object v12, v2

    .line 197
    check-cast v12, Landroid/os/Bundle;

    .line 198
    .line 199
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    move-object v13, v2

    .line 206
    check-cast v13, Landroid/app/PendingIntent;

    .line 207
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result v14

    .line 212
    sget-object v2, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    move-object v15, v2

    .line 219
    check-cast v15, Landroid/content/pm/ShortcutInfo;

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    move-object/from16 v16, v0

    .line 226
    .line 227
    check-cast v16, Landroid/os/Bundle;

    .line 228
    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 230
    .line 231
    .line 232
    move-result v17

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 234
    .line 235
    .line 236
    move-result v18

    .line 237
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 238
    .line 239
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    move-object/from16 v19, v0

    .line 244
    .line 245
    check-cast v19, Landroid/view/RemoteAnimationAdapter;

    .line 246
    .line 247
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 248
    .line 249
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    move-object/from16 v20, v0

    .line 254
    .line 255
    check-cast v20, Lcom/android/internal/logging/InstanceId;

    .line 256
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    .line 259
    .line 260
    move-object/from16 v0, p0

    .line 261
    .line 262
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 265
    .line 266
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;

    .line 267
    .line 268
    const/16 v21, 0x0

    .line 269
    .line 270
    move-object v8, v1

    .line 271
    invoke-direct/range {v8 .. v21}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;-><init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 272
    .line 273
    .line 274
    const-string/jumbo v2, "startIntentsWithLegacyTransition"

    .line 275
    .line 276
    .line 277
    invoke-static {v0, v2, v1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_2

    .line 281
    .line 282
    :pswitch_2
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 283
    .line 284
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    move-object v9, v0

    .line 289
    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 290
    .line 291
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 292
    .line 293
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    move-object v10, v2

    .line 298
    check-cast v10, Landroid/os/Bundle;

    .line 299
    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    move-object v12, v0

    .line 309
    check-cast v12, Landroid/os/Bundle;

    .line 310
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 316
    .line 317
    .line 318
    move-result v14

    .line 319
    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 320
    .line 321
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    move-object v15, v0

    .line 326
    check-cast v15, Landroid/window/RemoteTransition;

    .line 327
    .line 328
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 329
    .line 330
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    move-object/from16 v16, v0

    .line 335
    .line 336
    check-cast v16, Lcom/android/internal/logging/InstanceId;

    .line 337
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    .line 340
    .line 341
    move-object/from16 v0, p0

    .line 342
    .line 343
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 344
    .line 345
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 346
    .line 347
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;

    .line 348
    .line 349
    const/16 v17, 0x0

    .line 350
    .line 351
    move-object v8, v1

    .line 352
    invoke-direct/range {v8 .. v17}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 353
    .line 354
    .line 355
    const-string/jumbo v2, "startShortcutAndTask"

    .line 356
    .line 357
    .line 358
    invoke-static {v0, v2, v1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_2

    .line 362
    .line 363
    :pswitch_3
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 364
    .line 365
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    move-object v9, v0

    .line 370
    check-cast v9, Landroid/app/PendingIntent;

    .line 371
    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 373
    .line 374
    .line 375
    move-result v10

    .line 376
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 377
    .line 378
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    move-object v11, v2

    .line 383
    check-cast v11, Landroid/os/Bundle;

    .line 384
    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 386
    .line 387
    .line 388
    move-result v12

    .line 389
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    move-object v13, v0

    .line 394
    check-cast v13, Landroid/os/Bundle;

    .line 395
    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 397
    .line 398
    .line 399
    move-result v14

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 401
    .line 402
    .line 403
    move-result v15

    .line 404
    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 405
    .line 406
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    move-object/from16 v16, v0

    .line 411
    .line 412
    check-cast v16, Landroid/window/RemoteTransition;

    .line 413
    .line 414
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 415
    .line 416
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    move-object/from16 v17, v0

    .line 421
    .line 422
    check-cast v17, Lcom/android/internal/logging/InstanceId;

    .line 423
    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    .line 426
    .line 427
    move-object/from16 v0, p0

    .line 428
    .line 429
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 430
    .line 431
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 432
    .line 433
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;

    .line 434
    .line 435
    const/16 v18, 0x1

    .line 436
    .line 437
    move-object v8, v1

    .line 438
    invoke-direct/range {v8 .. v18}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;-><init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 439
    .line 440
    .line 441
    const-string/jumbo v2, "startIntentAndTask"

    .line 442
    .line 443
    .line 444
    invoke-static {v0, v2, v1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_2

    .line 448
    .line 449
    :pswitch_4
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 450
    .line 451
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    move-object v9, v0

    .line 456
    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 457
    .line 458
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 459
    .line 460
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    move-object v10, v2

    .line 465
    check-cast v10, Landroid/os/Bundle;

    .line 466
    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 468
    .line 469
    .line 470
    move-result v11

    .line 471
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    move-object v12, v0

    .line 476
    check-cast v12, Landroid/os/Bundle;

    .line 477
    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 479
    .line 480
    .line 481
    move-result v13

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 483
    .line 484
    .line 485
    move-result v14

    .line 486
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 487
    .line 488
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    move-object v15, v0

    .line 493
    check-cast v15, Landroid/view/RemoteAnimationAdapter;

    .line 494
    .line 495
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 496
    .line 497
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    move-object/from16 v16, v0

    .line 502
    .line 503
    check-cast v16, Lcom/android/internal/logging/InstanceId;

    .line 504
    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    .line 507
    .line 508
    move-object/from16 v0, p0

    .line 509
    .line 510
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 511
    .line 512
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 513
    .line 514
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;

    .line 515
    .line 516
    const/16 v17, 0x1

    .line 517
    .line 518
    move-object v8, v1

    .line 519
    invoke-direct/range {v8 .. v17}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 520
    .line 521
    .line 522
    const-string/jumbo v2, "startShortcutAndTaskWithLegacyTransition"

    .line 523
    .line 524
    .line 525
    invoke-static {v0, v2, v1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_2

    .line 529
    .line 530
    :pswitch_5
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 531
    .line 532
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 537
    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    .line 540
    .line 541
    move-object/from16 v1, p0

    .line 542
    .line 543
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 544
    .line 545
    filled-new-array {v3}, [[Landroid/view/RemoteAnimationTarget;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 550
    .line 551
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;

    .line 552
    .line 553
    invoke-direct {v5, v4, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    const-string v0, "onStartingSplitLegacy"

    .line 557
    .line 558
    invoke-static {v1, v0, v5, v4}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 559
    .line 560
    .line 561
    aget-object v0, v3, v7

    .line 562
    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v0, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_2

    .line 570
    .line 571
    :pswitch_6
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 572
    .line 573
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 578
    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    .line 581
    .line 582
    move-object/from16 v1, p0

    .line 583
    .line 584
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 585
    .line 586
    filled-new-array {v3}, [[Landroid/view/RemoteAnimationTarget;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 591
    .line 592
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;

    .line 593
    .line 594
    invoke-direct {v5, v7, v3, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    const-string v0, "onGoingToRecentsLegacy"

    .line 598
    .line 599
    invoke-static {v1, v0, v5, v4}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 600
    .line 601
    .line 602
    aget-object v0, v3, v7

    .line 603
    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2, v0, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 608
    .line 609
    .line 610
    goto/16 :goto_2

    .line 611
    .line 612
    :pswitch_7
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 613
    .line 614
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    move-object v9, v0

    .line 619
    check-cast v9, Landroid/app/PendingIntent;

    .line 620
    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 622
    .line 623
    .line 624
    move-result v10

    .line 625
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 626
    .line 627
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    move-object v11, v2

    .line 632
    check-cast v11, Landroid/os/Bundle;

    .line 633
    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 635
    .line 636
    .line 637
    move-result v12

    .line 638
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    move-object v13, v0

    .line 643
    check-cast v13, Landroid/os/Bundle;

    .line 644
    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 646
    .line 647
    .line 648
    move-result v14

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 650
    .line 651
    .line 652
    move-result v15

    .line 653
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 654
    .line 655
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    move-object/from16 v16, v0

    .line 660
    .line 661
    check-cast v16, Landroid/view/RemoteAnimationAdapter;

    .line 662
    .line 663
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 664
    .line 665
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    move-object/from16 v17, v0

    .line 670
    .line 671
    check-cast v17, Lcom/android/internal/logging/InstanceId;

    .line 672
    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    .line 675
    .line 676
    move-object/from16 v0, p0

    .line 677
    .line 678
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 679
    .line 680
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 681
    .line 682
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;

    .line 683
    .line 684
    const/16 v18, 0x0

    .line 685
    .line 686
    move-object v8, v1

    .line 687
    invoke-direct/range {v8 .. v18}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;-><init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 688
    .line 689
    .line 690
    const-string/jumbo v2, "startIntentAndTaskWithLegacyTransition"

    .line 691
    .line 692
    .line 693
    invoke-static {v0, v2, v1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_2

    .line 697
    .line 698
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 699
    .line 700
    .line 701
    move-result v9

    .line 702
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 703
    .line 704
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v2

    .line 708
    move-object v10, v2

    .line 709
    check-cast v10, Landroid/os/Bundle;

    .line 710
    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 712
    .line 713
    .line 714
    move-result v11

    .line 715
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    move-object v12, v0

    .line 720
    check-cast v12, Landroid/os/Bundle;

    .line 721
    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 723
    .line 724
    .line 725
    move-result v13

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 727
    .line 728
    .line 729
    move-result v14

    .line 730
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 731
    .line 732
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    move-object v15, v0

    .line 737
    check-cast v15, Landroid/view/RemoteAnimationAdapter;

    .line 738
    .line 739
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 740
    .line 741
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    move-object/from16 v16, v0

    .line 746
    .line 747
    check-cast v16, Lcom/android/internal/logging/InstanceId;

    .line 748
    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    .line 751
    .line 752
    move-object/from16 v0, p0

    .line 753
    .line 754
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 755
    .line 756
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 757
    .line 758
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;

    .line 759
    .line 760
    const/16 v17, 0x0

    .line 761
    .line 762
    move-object v8, v1

    .line 763
    invoke-direct/range {v8 .. v17}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 764
    .line 765
    .line 766
    invoke-static {v0, v5, v1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 767
    .line 768
    .line 769
    goto/16 :goto_2

    .line 770
    .line 771
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 772
    .line 773
    .line 774
    move-result v0

    .line 775
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 776
    .line 777
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    check-cast v3, Landroid/os/Bundle;

    .line 782
    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 784
    .line 785
    .line 786
    move-result v6

    .line 787
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    check-cast v2, Landroid/os/Bundle;

    .line 792
    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 794
    .line 795
    .line 796
    move-result v8

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 798
    .line 799
    .line 800
    move-result v9

    .line 801
    sget-object v10, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 802
    .line 803
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v10

    .line 807
    check-cast v10, Landroid/window/RemoteTransition;

    .line 808
    .line 809
    sget-object v11, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 810
    .line 811
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v11

    .line 815
    check-cast v11, Lcom/android/internal/logging/InstanceId;

    .line 816
    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    .line 819
    .line 820
    move-object/from16 v1, p0

    .line 821
    .line 822
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 823
    .line 824
    const/4 v12, -0x1

    .line 825
    if-ne v6, v12, :cond_1

    .line 826
    .line 827
    new-instance v28, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;

    .line 828
    .line 829
    invoke-direct/range {v28 .. v28}, Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;-><init>()V

    .line 830
    .line 831
    .line 832
    iget-object v12, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 833
    .line 834
    new-instance v13, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;

    .line 835
    .line 836
    move-object/from16 v18, v13

    .line 837
    .line 838
    move-object/from16 v19, v1

    .line 839
    .line 840
    move/from16 v20, v0

    .line 841
    .line 842
    move-object/from16 v21, v3

    .line 843
    .line 844
    move/from16 v22, v6

    .line 845
    .line 846
    move-object/from16 v23, v2

    .line 847
    .line 848
    move/from16 v24, v8

    .line 849
    .line 850
    move/from16 v25, v9

    .line 851
    .line 852
    move-object/from16 v26, v10

    .line 853
    .line 854
    move-object/from16 v27, v11

    .line 855
    .line 856
    invoke-direct/range {v18 .. v28}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController$CallerInfo;)V

    .line 857
    .line 858
    .line 859
    invoke-static {v12, v5, v13, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 860
    .line 861
    .line 862
    goto/16 :goto_2

    .line 863
    .line 864
    :cond_1
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 865
    .line 866
    new-instance v12, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;

    .line 867
    .line 868
    const/16 v27, 0x1

    .line 869
    .line 870
    move-object/from16 v18, v12

    .line 871
    .line 872
    move/from16 v19, v0

    .line 873
    .line 874
    move-object/from16 v20, v3

    .line 875
    .line 876
    move/from16 v21, v6

    .line 877
    .line 878
    move-object/from16 v22, v2

    .line 879
    .line 880
    move/from16 v23, v8

    .line 881
    .line 882
    move/from16 v24, v9

    .line 883
    .line 884
    move-object/from16 v25, v10

    .line 885
    .line 886
    move-object/from16 v26, v11

    .line 887
    .line 888
    invoke-direct/range {v18 .. v27}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda5;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V

    .line 889
    .line 890
    .line 891
    invoke-static {v1, v5, v12, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 892
    .line 893
    .line 894
    goto/16 :goto_2

    .line 895
    .line 896
    :pswitch_a
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 897
    .line 898
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    move-object v9, v0

    .line 903
    check-cast v9, Landroid/app/PendingIntent;

    .line 904
    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 906
    .line 907
    .line 908
    move-result v10

    .line 909
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 910
    .line 911
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    move-object v11, v0

    .line 916
    check-cast v11, Landroid/content/Intent;

    .line 917
    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 919
    .line 920
    .line 921
    move-result v12

    .line 922
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 923
    .line 924
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    move-object v13, v0

    .line 929
    check-cast v13, Landroid/os/Bundle;

    .line 930
    .line 931
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 932
    .line 933
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    move-object v14, v0

    .line 938
    check-cast v14, Lcom/android/internal/logging/InstanceId;

    .line 939
    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    .line 942
    .line 943
    move-object/from16 v0, p0

    .line 944
    .line 945
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 946
    .line 947
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 948
    .line 949
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;

    .line 950
    .line 951
    move-object v8, v1

    .line 952
    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda8;-><init>(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V

    .line 953
    .line 954
    .line 955
    const-string/jumbo v2, "startIntent"

    .line 956
    .line 957
    .line 958
    invoke-static {v0, v2, v1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 959
    .line 960
    .line 961
    goto/16 :goto_2

    .line 962
    .line 963
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v9

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v10

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 972
    .line 973
    .line 974
    move-result v11

    .line 975
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 976
    .line 977
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    move-object v12, v0

    .line 982
    check-cast v12, Landroid/os/Bundle;

    .line 983
    .line 984
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 985
    .line 986
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    move-object v13, v0

    .line 991
    check-cast v13, Landroid/os/UserHandle;

    .line 992
    .line 993
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 994
    .line 995
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    move-object v14, v0

    .line 1000
    check-cast v14, Lcom/android/internal/logging/InstanceId;

    .line 1001
    .line 1002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    .line 1004
    .line 1005
    move-object/from16 v0, p0

    .line 1006
    .line 1007
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 1008
    .line 1009
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1010
    .line 1011
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;

    .line 1012
    .line 1013
    move-object v8, v1

    .line 1014
    invoke-direct/range {v8 .. v14}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V

    .line 1015
    .line 1016
    .line 1017
    const-string/jumbo v2, "startShortcut"

    .line 1018
    .line 1019
    .line 1020
    invoke-static {v0, v2, v1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1021
    .line 1022
    .line 1023
    goto/16 :goto_2

    .line 1024
    .line 1025
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1026
    .line 1027
    .line 1028
    move-result v0

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1030
    .line 1031
    .line 1032
    move-result v2

    .line 1033
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1034
    .line 1035
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v3

    .line 1039
    check-cast v3, Landroid/os/Bundle;

    .line 1040
    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    .line 1043
    .line 1044
    move-object/from16 v1, p0

    .line 1045
    .line 1046
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 1047
    .line 1048
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1049
    .line 1050
    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;

    .line 1051
    .line 1052
    invoke-direct {v5, v0, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda1;-><init>(IILandroid/os/Bundle;)V

    .line 1053
    .line 1054
    .line 1055
    const-string/jumbo v0, "startTask"

    .line 1056
    .line 1057
    .line 1058
    invoke-static {v1, v0, v5, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1059
    .line 1060
    .line 1061
    goto/16 :goto_2

    .line 1062
    .line 1063
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1064
    .line 1065
    .line 1066
    move-result v0

    .line 1067
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    .line 1069
    .line 1070
    move-object/from16 v1, p0

    .line 1071
    .line 1072
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 1073
    .line 1074
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1075
    .line 1076
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda8;

    .line 1077
    .line 1078
    invoke-direct {v2, v0, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda8;-><init>(ZI)V

    .line 1079
    .line 1080
    .line 1081
    const-string v0, "exitSplitScreenOnHide"

    .line 1082
    .line 1083
    invoke-static {v1, v0, v2, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1084
    .line 1085
    .line 1086
    goto/16 :goto_2

    .line 1087
    .line 1088
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1089
    .line 1090
    .line 1091
    move-result v0

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    .line 1094
    .line 1095
    move-object/from16 v1, p0

    .line 1096
    .line 1097
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 1098
    .line 1099
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1100
    .line 1101
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;

    .line 1102
    .line 1103
    invoke-direct {v2, v0, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;-><init>(II)V

    .line 1104
    .line 1105
    .line 1106
    const-string v0, "exitSplitScreen"

    .line 1107
    .line 1108
    invoke-static {v1, v0, v2, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1109
    .line 1110
    .line 1111
    goto/16 :goto_2

    .line 1112
    .line 1113
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1114
    .line 1115
    .line 1116
    move-result v0

    .line 1117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1118
    .line 1119
    .line 1120
    move-object/from16 v1, p0

    .line 1121
    .line 1122
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 1123
    .line 1124
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1125
    .line 1126
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;

    .line 1127
    .line 1128
    invoke-direct {v2, v0, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;-><init>(II)V

    .line 1129
    .line 1130
    .line 1131
    const-string/jumbo v0, "removeFromSideStage"

    .line 1132
    .line 1133
    .line 1134
    invoke-static {v1, v0, v2, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_2

    .line 1138
    .line 1139
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1140
    .line 1141
    .line 1142
    move-result v9

    .line 1143
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1144
    .line 1145
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v2

    .line 1149
    move-object v10, v2

    .line 1150
    check-cast v10, Landroid/os/Bundle;

    .line 1151
    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1153
    .line 1154
    .line 1155
    move-result v11

    .line 1156
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    move-object v12, v2

    .line 1161
    check-cast v12, Landroid/os/Bundle;

    .line 1162
    .line 1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1164
    .line 1165
    .line 1166
    move-result v13

    .line 1167
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v0

    .line 1171
    move-object v14, v0

    .line 1172
    check-cast v14, Landroid/os/Bundle;

    .line 1173
    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1175
    .line 1176
    .line 1177
    move-result v15

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 1179
    .line 1180
    .line 1181
    move-result v16

    .line 1182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1183
    .line 1184
    .line 1185
    move-result v17

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    .line 1187
    .line 1188
    .line 1189
    move-result v18

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v21

    .line 1194
    sget-object v0, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1195
    .line 1196
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    move-object/from16 v19, v0

    .line 1201
    .line 1202
    check-cast v19, Landroid/window/RemoteTransition;

    .line 1203
    .line 1204
    sget-object v0, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1205
    .line 1206
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v0

    .line 1210
    move-object/from16 v20, v0

    .line 1211
    .line 1212
    check-cast v20, Lcom/android/internal/logging/InstanceId;

    .line 1213
    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    .line 1216
    .line 1217
    move-object/from16 v0, p0

    .line 1218
    .line 1219
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 1220
    .line 1221
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1222
    .line 1223
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10;

    .line 1224
    .line 1225
    move-object v8, v1

    .line 1226
    invoke-direct/range {v8 .. v21}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda10;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/os/Bundle;IFIFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;I)V

    .line 1227
    .line 1228
    .line 1229
    const-string/jumbo v2, "startMultiTasks"

    .line 1230
    .line 1231
    .line 1232
    invoke-static {v0, v2, v1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1233
    .line 1234
    .line 1235
    goto/16 :goto_2

    .line 1236
    .line 1237
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1238
    .line 1239
    .line 1240
    move-result v0

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    .line 1243
    .line 1244
    move-object/from16 v1, p0

    .line 1245
    .line 1246
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 1247
    .line 1248
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1249
    .line 1250
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;

    .line 1251
    .line 1252
    invoke-direct {v2, v0, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda6;-><init>(II)V

    .line 1253
    .line 1254
    .line 1255
    const-string/jumbo v0, "startSplitByTwoTouchSwipeIfPossible"

    .line 1256
    .line 1257
    .line 1258
    invoke-static {v1, v0, v2, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1259
    .line 1260
    .line 1261
    goto :goto_2

    .line 1262
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    if-nez v0, :cond_5

    .line 1267
    .line 1268
    goto :goto_0

    .line 1269
    :cond_5
    invoke-interface {v0, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v2

    .line 1273
    if-eqz v2, :cond_6

    .line 1274
    .line 1275
    instance-of v3, v2, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 1276
    .line 1277
    if-eqz v3, :cond_6

    .line 1278
    .line 1279
    check-cast v2, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 1280
    .line 1281
    goto :goto_0

    .line 1282
    :cond_6
    new-instance v2, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;

    .line 1283
    .line 1284
    invoke-direct {v2, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 1285
    .line 1286
    .line 1287
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1288
    .line 1289
    .line 1290
    move-object/from16 v0, p0

    .line 1291
    .line 1292
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 1293
    .line 1294
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1295
    .line 1296
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;

    .line 1297
    .line 1298
    invoke-direct {v2, v0, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 1299
    .line 1300
    .line 1301
    const-string/jumbo v0, "unregisterSplitScreenListener"

    .line 1302
    .line 1303
    .line 1304
    invoke-static {v1, v0, v2, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1305
    .line 1306
    .line 1307
    goto :goto_2

    .line 1308
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    if-nez v0, :cond_8

    .line 1313
    .line 1314
    goto :goto_1

    .line 1315
    :cond_8
    invoke-interface {v0, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v2

    .line 1319
    if-eqz v2, :cond_9

    .line 1320
    .line 1321
    instance-of v3, v2, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 1322
    .line 1323
    if-eqz v3, :cond_9

    .line 1324
    .line 1325
    move-object v3, v2

    .line 1326
    check-cast v3, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 1327
    .line 1328
    goto :goto_1

    .line 1329
    :cond_9
    new-instance v3, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;

    .line 1330
    .line 1331
    invoke-direct {v3, v0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 1332
    .line 1333
    .line 1334
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1335
    .line 1336
    .line 1337
    move-object/from16 v0, p0

    .line 1338
    .line 1339
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 1340
    .line 1341
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 1342
    .line 1343
    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;

    .line 1344
    .line 1345
    invoke-direct {v2, v6, v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1346
    .line 1347
    .line 1348
    const-string/jumbo v0, "registerSplitScreenListener"

    .line 1349
    .line 1350
    .line 1351
    invoke-static {v1, v0, v2, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 1352
    .line 1353
    .line 1354
    :goto_2
    return v4

    .line 1355
    :cond_a
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    return v4

    .line 1359
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
